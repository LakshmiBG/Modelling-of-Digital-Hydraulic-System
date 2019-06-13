# Modelling-of-Digital-Hydraulic-System
The aim of this project work is to gain good basic in understanding the characteristics of digital  valve system (DVS) and model based control.  

## 1. Introduction 
The system is modelled using MATLAB & Simulink. The Simulink model of the individual components such as cylinder, orifice, dynamics etc. was obtained from another source. The work over here mainly involved in modelling of system components such as digital valve  system, controller using model based control methods with the pressure compensator, Sum flow  control, cost functions to reduce cross flow and valve switching. These digital control flow units  are implemented using binary and equal coding.    The important parts of the modelled system are 
* Controller - The controller has two parts upper level  control and core level model based controller, the modelling and operation principle is studied.  Further the results are analysed with or without feedback and feedforward  control. 
* Modelling of sum flow control. It also has sections for modelling  cost functions to reduce valve switching and cross flow.   
* The complete system with binary and equal coding. 
* The simulation study to study the behaviour of the system for change in parameters.  

## 2. System Modelling 
The modelled system contains a cylinder and load, digital valve system which houses 2 DFCU’s and orifice unit, core level model based valve controller (MBC) and an upper level motion controller, cylinder and auxiliary functions. The digital valve system is made up of 2 control edge DFCU.

The first step before modelling the controller was to validate the parametrization of the model. The next step is to implement the controller. The controller system consists of  
* Core level Model based controller  
* Upper level controller  The other part of the project involves modelling and implementation of the controller and its control methods.
