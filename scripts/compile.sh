#!/bin/bash
echo 'Compiling NMS module...'
(cd lib/nms; python3 setup_linux.py build_ext --inplace)
echo 'Compiling bbox module...'
(cd lib/bbox; python3 setup_linux.py build_ext --inplace)
echo 'Compiling chips module...'
(cd lib/chips; python3 setup.py)
echo 'Compiling coco api...'
(cd lib/dataset/pycocotools; python3 setup_linux.py build_ext --inplace)
echo 'All Done!'
