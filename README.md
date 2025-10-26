# saving_calculator

---------------------------------------------------------------------------
Saving Goal Calculator is a flutter application, used to calculate the week to reach the saving goal. By enter the target amount, starting amount and saving per week, this application will calculate the total week needed to reach the goal.

---------------------------------------------------------------------------
Input : Target Amount , Starting Amount ,Saving per week. all these input data type are double

Process :                  
Total Week = (Target Amount - Starting Amount) / Saving per week
                                    

Output : Total Weeks

---------------------------------------------------------------------------
The Widget used in this application:
1. Scaffold, the basic layout for this project
2. AppBar, a bar used to display the project title 
3. Text, used to display the text 
4. TextField, used to get the user input 
5. EvaulateButton, used to call the method for the calculation
6. Center, arrange the widget to the center 
7. Column, arrage the widget in vertical layout 
8. Padding, spacing the widget between the scaffold
9. SizedBox, a box used to separate between the widget 
10. Image, used to display the images

---------------------------------------------------------------------------
This application apporach a method claculate() for the calculation.
To validate the data type of the input values is daouble, im using the tryparse() to ensure the value is in double and throw null value if the value is not valid for double type to prevent system crashing.