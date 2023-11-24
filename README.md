# :eyes: Simulating Human Vision with MATLAB

:white_check_mark: Project from an undergraduate course, **"Information Processing Theory"** (COG4101.01-00) at Yonsei university

:calendar: **Fall, 2022**

## Purpose of this Project
This project shows how raw image information is processed, starting from the level of **pupil** to **V1 area**. 


## Theoretical Background

<div align="center">

|<img src="https://foundationsofvision.stanford.edu/wp-content/uploads/2012/02/cortexInput-300x300.png" alt="Overall Pathways" width="400"/>|
|:-:|
|**Fig . Overall Pathways to V1** (Wandell, 1995)|

</div>

### :one: World to Retina
Light from the source (sun, light bulb etc...) hits an object and then bounces off. That precise moment is when the light contains the information of the object. Depending on the substance and surface of the object, some range of the light does not bounce off. The bounced light reaches our pupil and that is when our vision system start its process.

<div align="center">

|<img src="https://foundationsofvision.stanford.edu/wp-content/uploads/2012/02/monitor.to_.retina1-1024x703.png" alt="Retinal Image Formation" width="400"/>|
|:-:|
|**Fig . Retinal Image Formation** (Wandell, 1995)|

</div>

Some might say, how come the pupil is the start of the process of the visual system. It is because the biological lens of the pupil modifies the input light. As you can see in Fig 1, the characteristic of the pupil as biological lens causes the input light to have inconsistent density. The input light creates a linespread function when it reaches retina. G. Westheimer (1986) estimated the linespread function as following when pupil diameter is nearly 3mm. 

$$ l_{i} = 0.47e^{-3.3i^2} + 0.53e^{-0.93|i|} $$

When light enters our retina system, it follows the path as follows. 
<div align="center">

 **Light - Ganglion Cell - Bipolar Cell/Horizontal Cell - Photoreceptor(Cone/Rod)**

</div>

The body of ganglion cell is located in Ganglionic layer and makes connection with bipolor cell and horizontal cell in Inner plexiform layer. The body of bipolar cell and horizontal cell is located in Inner nuclear layer and makes connection with the photoreceptors in Outer plexiform layer. The body of photoreceptor is located in Outer nuclear layer. 

<div align="center">

|<img src="https://foundationsofvision.stanford.edu/wp-content/uploads/2012/02/humanRetina1-1024x502.png" alt="Structure of Retina" width="400"/>|
|:-:|
|**Fig . Structure of Retina** (Wandell, 1995)|

</div>

You can classify Retinal Ganglion Cell (RGC) in to five types based on its functions and connection: 

* Midget Cell (Parvocellular, or P Cells)
* Parasol Cell (Magnocellular, or M Cells)
* Bistratisfied Cell (Koniocellular or K pathway)
* Photosensitive Ganglion Cells
* Other cells connected to superior colliculus
 

### :two: Retina to LGN 
RGC projects to a specific area in thalamus, which is called Lateral Geniculate Nucleus (LGN). There are two LGN in each Right/Left thalamus. LGN has 6 layers of neurons and it can be classified in to 2 layers(Magnocellular layer, Parvocellular layer) based on the connection with RGC. M Cells projects to layer 3,4,5, and 6 which are classified as Magnocellular layer. P Cells projects to layer 1 and 2 which are classified as Parvocellular layer. 

<div align="center">

|<img src="https://foundationsofvision.stanford.edu/wp-content/uploads/2012/02/lgn-1024x717.png" alt="Structure of LGN" width="400"/>|
|:-:|
|**Fig . Structure of LGN** (Wandell, 1995)|

</div>

M cells are more sensitive to low spatial & high temporal frequencies and P Cells are more sentitive to high spatial & low temporal frequencies. Therefore, Magnocellular layers recieves information related to motion, depth and small differences in brightness. In the other hand, Parvocellular layers recieves information related to color and detailed form. 

There is also Koniocellular layer, which is projected by Koniocellular cells. This layer is located between Magnocellular layers and Parvocellular layers. Research aboout this layer and K cells are ongoing.

### :three: LGN to V1
Signal starting from Retina reaches to Primary Visual Cortex(V1) via LGN. There are six layers(1-6). Signals from LGN is projected to layer 4, specifically layer 4C. Magnocellular layers are connected to V1 layer 4c&#945; and Parvocellular layers are connected to V1 layer 4c&#946;. 4B recieves information from 4C and then sends it to other cortical areas. Koniocellular layers are connected to V1 layer 2 and 3. V1 layer 6 sends feedback to LGN. 

<div align="center">

|<img src="https://foundationsofvision.stanford.edu/wp-content/uploads/2012/02/cortexLayers-1024x713.png" alt="Layers of V1" width="400"/>|
|:-:|
|**Fig . Layers of V1** (Wandell, 1995)|

</div>

### :four: Receptive fields in V1




:page_facing_up: **Reference** 
* Lecture notes from [prof. Sang Chul Chong](https://vcc.yonsei.ac.kr/pi) (Dept. Psychology, Yonsei univ.) 
* Wandell, B. A. (1995). [Foundations of Vision Science: Behavior, neuroscience, and computation](http://foundationsofvision.stanford.edu/). Sinauer Associates. 

## Result of the Project
<div align="center">

|<img src="images/image_1.jpg" alt="Result Image 1" width="600"/>|
|:-:|
|**Fig . Original Sample Image** (Andrei Tarkovsky)|

</div>
<div align="center">

|<img src="images/image_2.jpg" alt="Result Image 2" width="600"/>|
|:-:|
|**Fig . Vertical Receptive Field Orientation**|

</div>
<div align="center">

|<img src="images/image_3.jpg" alt="Result Image 3" width="600"/>|
|:-:|
|**Fig . Horizontal Receptive Field Orientation**|

</div>
<div align="center">

|<img src="images/image_4.jpg" alt="Result Image 4" width="600"/>|
|:-:|
|**Fig . 55 degree Receptive Field Orientation**|

</div>
<div align="center">

|<img src="images/image_5.jpg" alt="Result Image 5" width="400"/>|
|:-:|
|**Fig . V1 Simulation**|

</div>
