# Containerized OpenPose
Simple containerization of OpenPose for simple plug-and-play (aka OpenPose without tears).

![openpose_result](https://user-images.githubusercontent.com/831215/56113534-71a95c80-5f5e-11e9-9e3c-fbb1c26f0d6c.png)

## Usage

**You will need a host system with drivers for cuda 10**

(1) clone this repository
```
git clone https://github.com/jutanke/openpose_docker.git
```

(2) build the docker container
```
cd openpose_docker && ./build.sh
```

(3) Usage:
```
./openpose.sh /your/img/input/dir /your/output/dir/keypoints/json
```

The keypoint json files will be located in the output folder.
