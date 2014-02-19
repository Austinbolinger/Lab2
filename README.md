Lab2
====

adder/subtractor

CE2 14 FEB 14


#Schematic
![schematic](https://github.com/Austinbolinger/Lab2/blob/master/schematic2.JPG?raw=true "Schematic") 

![full schematic](https://github.com/Austinbolinger/Lab2/blob/master/fullSchematic.JPG?raw=true "Full Schematic")


#Truth Table 
![truth table](https://github.com/Austinbolinger/Lab2/blob/master/truthtable2.JPG?raw=true "Truth Table")
 

#Image
Here is the image of the K Maps from which the logic equations are found
![equation](https://github.com/Austinbolinger/Lab2/blob/master/equation2.JPG?raw=true "equation") 

Here is the image of the gate
![gate](https://github.com/Austinbolinger/Lab2/blob/master/adder.JPG?raw=true "gate") 

Here is the testbench output full adder
![full adder](https://github.com/Austinbolinger/Lab2/blob/master/fullAdderTestbench.JPG?raw=true "testbench") 

Here is the testbench output for the four bit
![4 bit](https://github.com/Austinbolinger/Lab2/blob/master/testbench4bit.JPG?raw=true "4 bit testbench")

#Links
Full Adder
https://github.com/Austinbolinger/Lab2/blob/master/full_adder.vhd

testbench_behavior
https://github.com/Austinbolinger/Lab2/blob/master/fuller_adder_testbench.vhd

four bit structural
https://github.com/Austinbolinger/Lab2/blob/master/Four_Bit.vhd

four bit testbench
https://github.com/Austinbolinger/Lab2/blob/master/four_bit_testbench.vhd

ucf file
https://github.com/Austinbolinger/Lab2/blob/master/Implementation.ucf


#Analysis
The Truth Table created was created by using the given schematic.

The testbenches were coded to test the logic gate designs from the truth table.

The testbenches output matched the Truth Table line by line. Each output matched my truth table.

The testbench for the four bit works. The ucf file uploaded nicely is waiting to be tested.

####Test
Both addition and subtraction was checked in class.


#####Documentation
C3C Pluger and I worked through how to get the four bit code to work. He asked for help from Dr. Neebel, and Dr. Neebel suggested using signals for Cin and Cout instead of logic vectors.

I used this website for the for loop in the 4 bit testbench.
http://www.seas.upenn.edu/~ese171/vhdl/VHDLTestbench.pdf

I used this website to try and understand the subtractor method.
http://stackoverflow.com/questions/14493625/vhdl-incrementing-register-value-on-push-button-event
