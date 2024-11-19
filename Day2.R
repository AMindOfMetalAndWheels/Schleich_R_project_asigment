##########
#Day 2 
#R Intermediate
#Fabian Schleich
#############
#Functions: 
#I use for loops, select sequences from datasets
#Definition: encapsulate tasks 
#Top to bottom from begin to end 
#return --> if not R assumes last number computed is the relevant one
#objects in functions are only used there, wont interfere with other things (encapsulation)
#null value --> missed return statement
#anonymous functions: 
#can not be called 
#can be used in other functions
#(...) ellipses as argument list, it is a Platzhalter
#recursion:
#can call itselfs to repeat tasks(?)
#optimal documentation
#docstrings --> #' 
#Hiher oder functions: 
#Takes other functions as input
#
##########
#Practical session
#Default values:
#when i call a function i need to provide inputs my_func(10,5) same order as in function defintion
#but eg my_func(X = 10, z = 5) 
#
#closures:
#tricky --> function factories, stores data inside of a function eg increments for time
#or how something has been clicked
#
#ellipse: paltzhatler for other values, other defined arguments have to be provided, 
#but ellipses can stay empty
#
#recursion:
#returns stuff until its return an exit value (use if else), it calls itself until this point is used
#
# #' @ for documentation with different rules 
# 
# higher-order functions:
# insert function like sum or mean into a function, the function needs to be specified
# add in ellipses => be able to add additional parameters from other functions into the function
# like trim from the mean function 
# function can be added as lists or vectors so multiple different functions can run
# 
##########
# Loops:
# apply, if else, while, for
# repeatedly repeatedly executed 
# searching and sorting
# similar to recursive functions 
# terminates when control variable is reached 
# While loop:
# We dont know finish line
# return is used to exit function
# next will skip iteration of a loop, could be used to ignore charecters or other things
# for better then while (while can get stuck more easily)
# 
# break stops loops 
# next skip function eg NAs or other non wanted things; adding next will skip if a conditional is not met
# with else if we can return place holder like NA for arguments not fitting the criteria
# 
# apply family
# wrapper function 
# tmp <- c() creates null vector to populate
# tmp can be reused and will overwrite and aggregate the information
# other programming languages might not like it
# 
# 
# 
# 
# 
# if else
# different paths 
# 
# conditionals
# Equality == or non-equality !=
# greater or less then > <
# and other Boolean expressions 
# 
# scripting = write code 
# programming language = generate binari input for computer to execute
# 
# 
# & vs == 
# & saver?
# guard class return if argument is not correct
# ifelse function for easy statements take arguments true and false value, can run on vectors!y
# switch for readability (is like ifselse function)
# one cans specifiy what they want to run (multiple functions can be called, based on what it wants)
# 
# 
# Classes:
# blueprint for creating objects
# properties of fields and methods and attributes
# abstraction, encapsulation, re usability, modularity, inheritance(tibble), organization
# --> mostly the run in the background
# S3 informal class
# R6 reference classes
# 
# S3 methods in R: generic function 
# functions can work differntly based on class of object of the class
# S3 class anatomy --> class() function into the () we can put lits 
#  
# based on class a function like plot will choose a different function to do so 
# use class(object/name) to see what class an object has
# methods(function) gives you method/function an how its altered by class
# 
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#