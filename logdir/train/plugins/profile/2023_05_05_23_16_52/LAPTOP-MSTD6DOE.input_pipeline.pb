  *	X9�@��@2d
-Iterator::Root::FiniteTake::BatchV2::Prefetch PS���.@!���婧A@)PS���.@1���婧A@:Preprocessing2�
MIterator::Root::FiniteTake::BatchV2::Prefetch::Shuffle::Zip[0]::ParallelMapV2��'�X-@!HU�
�9A@)��'�X-@1HU�
�9A@:Preprocessing2Z
#Iterator::Root::FiniteTake::BatchV2�aK��;@!�RZS�O@)�p�GR*(@1���R_<@:Preprocessing2m
6Iterator::Root::FiniteTake::BatchV2::Prefetch::Shuffle(X�2ı�.@!p�!*B@)��p!�?1*��0v�?:Preprocessing2r
;Iterator::Root::FiniteTake::BatchV2::Prefetch::Shuffle::Zip�I�?�-.@!�J�Q�A@)��M(D��?1�V���?:Preprocessing2�
KIterator::Root::FiniteTake::BatchV2::Prefetch::Shuffle::Zip[1]::TensorSlice� ��ǿ?!�Q�� ��?)� ��ǿ?1�Q�� ��?:Preprocessing2�
ZIterator::Root::FiniteTake::BatchV2::Prefetch::Shuffle::Zip[0]::ParallelMapV2::TensorSlice�����?!�D5J�}�?)�����?1�D5J�}�?:Preprocessing2Q
Iterator::Root::FiniteTake�Y�� ;@!N{��O@)�a�'֩�?1ɩ�H��?:Preprocessing2E
Iterator::RootW[���";@!L7�X�O@)y�Z?1���`�;�?:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysisk
unknownTNo step time measured. Therefore we cannot tell where the performance bottleneck is.no*noZno#You may skip the rest of this page.BZ
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown
  " * 2 : B J R Z b JGPUb��No step marker observed and hence the step time is unknown. This may happen if (1) training steps are not instrumented (e.g., if you are not using Keras) or (2) the profiling duration is shorter than the step time. For (1), you need to add step instrumentation; for (2), you may try to profile longer.