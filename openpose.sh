if test "$#" -ne 2; then
    echo "Expected two keywords: \$data_dir \$output_dir"
    exit 1
fi

if [ ! -d "$1" ]; then
    echo "Input directory '$1' does not exist! (exit)"
    exit 1
fi

if [ ! -d "$2" ]; then
    echo "Output directory '$2' does not exist!"
    read -p "\tcreate it [y/n]? "  yn
    if [ "$yn" == "y" ]; then
        mkdir "$2"
    else
        echo "(exit)"
        exit 1
    fi
fi

nvidia-docker run\
    --privileged\
    --name='openpose_instance_generate'\
    -v "$1":/home/data\
    -v "$2":/home/output\
    --rm\
    -it jutanke/openpose\
    /bin/bash exec_img.sh