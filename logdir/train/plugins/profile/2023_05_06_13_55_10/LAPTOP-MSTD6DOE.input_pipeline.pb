  *	4333=��@2Z
#Iterator::Root::FiniteTake::BatchV2�=��R@!052�Q@)a����H@1����OG@:Preprocessing2�
MIterator::Root::FiniteTake::BatchV2::Prefetch::Shuffle::Zip[0]::ParallelMapV2�dT�-<@!��P�:@)�dT�-<@1��P�:@:Preprocessing2d
-Iterator::Root::FiniteTake::BatchV2::Prefetch .t%��9@!vm��a8@).t%��9@1vm��a8@:Preprocessing2r
;Iterator::Root::FiniteTake::BatchV2::Prefetch::Shuffle::Zipjl���=@!�g��d+<@)�+ٱ��?1rˮަ�?:Preprocessing2m
6Iterator::Root::FiniteTake::BatchV2::Prefetch::Shuffle(T����s>@!����<@)G=D�;��?1��1]�o�?:Preprocessing2�
KIterator::Root::FiniteTake::BatchV2::Prefetch::Shuffle::Zip[1]::TensorSlice����6�?!�j6���?)����6�?1�j6���?:Preprocessing2�
ZIterator::Root::FiniteTake::BatchV2::Prefetch::Shuffle::Zip[0]::ParallelMapV2::TensorSlice�Ue���?!�¸�M��?)�Ue���?1�¸�M��?:Preprocessing2Q
Iterator::Root::FiniteTake��ӹ��R@!gR�f��Q@)|�q7�?1��Fǖ�?:Preprocessing2E
Iterator::Roote��E�R@!�#\J�Q@)�t{Ic�?1L2o
�>�?:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysisk
unknownTNo step time measured. Therefore we cannot tell where the performance bottleneck is.no*noZno#You may skip the rest of this page.BZ
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown
  " * 2 : B J R Z b JGPUb��No step marker observed and hence the step time is unknown. This may happen if (1) training steps are not instrumented (e.g., if you are not using Keras) or (2) the profiling duration is shorter than the step time. For (1), you need to add step instrumentation; for (2), you may try to profile longer.