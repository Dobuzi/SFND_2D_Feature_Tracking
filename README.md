# SFND 2D Feature Tracking

<img src="images/keypoints.png" width="820" />

## Dependencies for Running Locally

1. cmake >= 2.8
2. make >= 4.1 (Linux, Mac), 3.81 (Windows)\
3. OpenCV >= 4.1
4. gcc/g++ >= 5.4

-   Tip: Use Docker Image from [Docker Hub kimjw7981/sfnd](https://hub.docker.com/r/kimjw7981/sfnd)
    -   Run it: `docker run -p 6080:80 -v /dev/shm:/dev/shm kimjw7981/sfnd`

## Basic Build Instructions

1. Clone this repo. (or Fork)
2. Make a build directory in the top level directory: `mkdir build && cd build`
3. Compile: `cmake .. && make`
4. Run it: `./2D_feature_tracking`
5. Run below script to get data on csv and check the \*.csv files.
    ```shell
    cd ../result
    ./MP7.sh
    ./MP8.sh
    ./MP9.sh
    ```

## Result

1. Count the number of keypoints

 <img src="images/MP7_table.png" width=400>
 <img src="images/MP7_chart.png" width=600>

2. Count the number of matches

 <img src="images/MP8_table.png" width=800>
 <img src="images/MP8_chart.png" width=600>

3. Count the runtime of processing each frame

 <img src="images/MP9_table.png" width=600>
 <img src="images/MP9_chart.png" width=600>

4. Calculate the score with weight

 <img src="images/Score.png" width=600>

5. Top 3 combinations of detector and descriptor

 <img src="images/Top3.png" width=400>
