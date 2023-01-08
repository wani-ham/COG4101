# :eyes: Simulating Human Vision with MATLAB

:white_check_mark: Project from an undergraduate course, **"Information Processing Theory"** (COG4101.01-00) at Yonsei university

:calendar: **Fall, 2022**

## Purpose of this Project
This project shows how raw image information is processed, starting from the level of **pupil** to **V1 area**. 


## Theoretical Background

### :one: World to Retina
Light from the source (sun, light bulb etc...) hits an object and then bounces off. That precise moment is when the light contains the information of the object. Depending on the substance and surface of the object, some range of the light does not bounce off. The bounced light reaches our pupil and that is when our vision system start its process.

<div align="center">

|<img src="https://foundationsofvision.stanford.edu/wp-content/uploads/2012/02/monitor.to_.retina1-1024x703.png" alt="Retinal Image Formation" width="400"/>|
|:-:|
|**Fig 1. Retinal Image Formation** (Wandell, 1995)|

</div>

Some might say, how come the pupil is the start of the process of the visual system. It is because the biological lens of the pupil modifies the input light. As you can see in Fig 1, the characteristic of the pupil as biological lens causes the input light to have inconsistent density. The input light creates a linespread function when it reaches retina. G. Westheimer (1986) estimated the linespread function as following when pupil diameter is nearly 3mm. 

$$ l_{i} = 0.47e^{-3.3i^2} + 0.53e^{-0.93|i|} $$



### :two: Retina to LGN 
LGN(Lateral geniculate nucleus)

### :three: LGN to V1
Contents

:page_facing_up: **Reference** 
* Lecture notes from [prof. Sang Chul Chong](https://vcc.yonsei.ac.kr/pi) (Dept. Psychology, Yonsei univ.) 
* Wandell, B. A. (1995). [Foundations of Vision Science: Behavior, neuroscience, and computation](http://foundationsofvision.stanford.edu/). Sinauer Associates. 

## Result of the Project
