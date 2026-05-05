# A3C Project

## About

A3C Project part of the [AI A-Z 2026 Udemy Course](https://www.udemy.com/course/artificial-intelligence-az/?couponCode=MT260504JP). \
The goal of this project is to train an agent to solve the Gymnasium [KungFuMaster](https://ale.farama.org/environments/kung_fu_master/) environment. \
The final trained performance can be seen in `video.mp4`.

## Result

Due to limited local resources, the obtained results can be considered suboptimal as it can be seen in `video.mp4`, despite this, the approach taken was correct. \
\
Output of the code execution:

``` cmd
State shape:  (4, 42, 42)
Number actions:  14
Action names:  ['NOOP', 'UP', 'RIGHT', 'LEFT', 'DOWN', 'DOWNRIGHT', 'DOWNLEFT', 'RIGHTFIRE', 'LEFTFIRE', 'DOWNFIRE', 'UPRIGHTFIRE', 'UPLEFTFIRE', 'DOWNRIGHTFIRE', 'DOWNLEFTFIRE']
Average agent reward:  870.0
33%|█████████████████████████▉                                                    | 999/3001[01:10<00:14, 141.66it/s]
Average agent reward:  860.0
66%|██████████████████████████████████████████████████▉                          | 1986/3001 [02:10<00:06, 152.47it/s]
Average agent reward:  750.0
100%|████████████████████████████████████████████████████████████████████████████▋| 2988/3001 [03:10<00:00, 147.93it/s]
Average agent reward:  630.0
100%|██████████████████████████████████████████████████████████████████████████████| 3001/3001 [03:43<00:00, 13.46it/s]
```

In addition the file `video.mp4`, containing the visualization of the final episode, was created.