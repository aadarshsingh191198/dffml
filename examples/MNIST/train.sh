dffml train \
    -model tfdnnc \
    -model-batchsize 1000 \
    -model-hidden 30 50 25 \
    -model-clstype int \
    -model-predict label:int:1 \
    -model-classifications $(seq 0 9) \
    -model-features image:int:$((28 * 28)) \
    -sources images=idx3 label=idx1 \
    -source-images-filename train-images-idx3-ubyte.gz \
    -source-images-feature image \
    -source-label-filename train-labels-idx1-ubyte.gz \
    -source-label-feature label \
    -log debug