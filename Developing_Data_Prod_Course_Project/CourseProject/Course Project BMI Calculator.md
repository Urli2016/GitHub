Course Project BMI Calculator
========================================================
author: Urli2016    
date:   04/24/2016
autosize: true


DESCRIPTION
========================================================

This app has been created following the instructions on Coursera´s "Developing Data Products".
It is a Body Mass Index (BMI) Calculator and will show your individual Body Mass Index after inserting your height and weight using the select boxes. You can select two different outputs, which will be either metric (kg/m) or imperial (lbn, in).


DEFINITION of Body Mass Index (BMI)

The Body Mass Index is a way to calculate wether your weight is considered to be underweight, overweight or normal.
The app will assist you with the calculation by giving any calculation for any input of individual height and weight.
Plus: the app includes a reference chart that tells what category your calculated BMI falls into. 


Slide With Code, Operations and Output
========================================================

The BMI calculation is as follows:
 ** bmi = mass / height^2 ** conversion_const

Example code with an input heigth of 5 feet 7 inches plus a weight of 155 lbs:


```r
inches <- (5 * 12) + 7
weight <- 155
conversion_const = 703
bmi <- (weight / (inches^2)) * conversion_const
bmi
```

```
[1] 24.27378
```


Slide With Informations for Repo on Github/shinyapps.io
========================================================

The app can be found on:
https://urli2017.shinyapps.io/CourseProject/
https://github.com/urli2016/developing-data-products-course-project/
