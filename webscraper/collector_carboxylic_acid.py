import time
import cv2
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.wait import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.keys import Keys
import shutil
import pyautogui
from PIL import Image
import numpy as np

compound = "carboxylic_acid"

PATH = "D:\programlanguages\python-\vspython\spectroscopy-project\web-scraper\chromedriver.exe"

driver = webdriver.Chrome(PATH)

disclaimer = "https://sdbs.db.aist.go.jp/sdbs/cgi-bin/cre_disclaimer.cgi?REQURL=/sdbs/cgi-bin/direct_frame_top.cgi&amp;REFURL="

molecule_page = "https://sdbs.db.aist.go.jp/sdbs/cgi-bin/landingpage?sdbsno="
graph_pages = "https://sdbs.db.aist.go.jp/sdbs/cgi-bin/cre_frame_disp.cgi?spectrum_type=ir&amp;sdbsno="
img_src = "https://sdbs.db.aist.go.jp/sdbs/cgi-bin/IMG.cgi?imgdir=ir&amp;amp;fname=NIDA12389&amp;amp;sdbsno="

sdbs_ids = []

with open(rf'C:\Users\aftaa\Desktop\{compound}-ID.txt', 'r') as f:
    while True:
        line = f.readline()
        if not line:
            break        
        words = line.split()
        id_no = words[0]
        sdbs_ids.append(id_no)

    
def download_image(filename):
    pyautogui.rightClick(x=814, y=504)
    time.sleep(3)
    pyautogui.press('down')
    time.sleep(1)
    pyautogui.press('down')
    time.sleep(1)
    pyautogui.press('enter')
    time.sleep(3)
    pyautogui.write(filename)
    pyautogui.hotkey('enter')
    time.sleep(1)
    dowmload_path = r"C:\Users\aftaa\Downloads"
    pic_path = rf"D:\programlanguages\python-\vspython\spectroscopy-project\sbds-data-collect-raw\{compound}"
    crop_pic_path = rf"D:\programlanguages\python-\vspython\spectroscopy-project\sbds-data-collect-raw\{compound}_crop"
    shutil.move(f"{dowmload_path}\{file_name}",f"{pic_path}\{file_name}")
    img = Image.open(f"{pic_path}\{file_name}").convert('RGB')
    img.save("temp.jpg")
    cv2_img = cv2.imread("temp.jpg")
    # nimg = np.asarray(img)
    # cv2.imshow("first",nimg)
    # cv2_img = cv2.cvtColor(nimg, cv2.COLOR_RGB2BGR)
    print(cv2_img.shape)
    if cv2_img.shape != (553,715,3):
        print(f"wrong size skipped:{file_name}")
        return False
    graph = cv2_img[97:417,32:710]
    ret,thresh_graph = cv2.threshold(graph,127,255,cv2.THRESH_BINARY)
    cv2.imwrite(f"{crop_pic_path}\{filename}",thresh_graph)
    return True
    # PIL_image = Image.fromarray(np.uint8(thresh_graph)).convert('RGB')
    # PIL_image.save(f"{crop_pic_path}\{filename}")



print(sdbs_ids)

driver.get(disclaimer)
print(driver.title)

driver.find_element("xpath", '/html/body/center/form/table/tbody/tr[6]/td/input[4]').click()
driver.switch_to.window(driver.window_handles[1])

time.sleep(3)
c = 0
no_of_graphs = 0
for ids in sdbs_ids:
    driver.get(molecule_page + ids)
    
    driver.get(graph_pages + ids)
    driver.implicitly_wait(5)
    file_name = ids+".jpg"
    
    try:
        if download_image(file_name):
            no_of_graphs = no_of_graphs+1
    except Exception as e:
        print(f"failed:{ids}")
        print(e)

    c = c+1
    if no_of_graphs>180:
        break


print(no_of_graphs)
time.sleep(3)
# agree_button_locator = submit_locator = locate_with(By.TAG_NAME, "button").to_right_of({By.ID: "cancel"})


driver.close()


