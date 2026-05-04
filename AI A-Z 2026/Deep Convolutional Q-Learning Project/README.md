# Deep Convolutional Q-Learning Project

## About

Deep Convolutional Q-Learning Project part of the [AI A-Z 2026 Udemy Course](https://www.udemy.com/course/artificial-intelligence-az/?couponCode=MT260504JP). \
The goal of this project is to train an agent to solve the Gymnasium [MsPacman](https://ale.farama.org/environments/ms_pacman/) environment. \
The final trained performance can be seen in `video.mp4`.

## Result

Due to limited local resources, the target score was reduced to a very low 175, leading to suboptimal results that can seen in `video.mp4`, despite this, the approach taken was correct. \
\
Output of the code execution:

``` cmd
State shape:  (210, 160, 3)
State size:  210
Number of actions:  9
Episode 9       Average Score: 184.44
Environment solved in -91 episodes!     Average Score: 184.44
```

In addition the files `checkpoint.pth` and `video.mp4`, containing the visualization of the final episode, were created.