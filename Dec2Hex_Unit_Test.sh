#!/bin/bash

# Dec2Hex Unit Test Script


#javac Dec2Hex.java
#java Dec2Hex
#Unit test 1 will be testing the program for when there is no things on the command line arg
unit_test1() {
	echo "Unit Test 1: Testing Dec2Hex program for when there is no value on the command line arg"
	echo "Expected results: Dec2Hex should come up with message to say theres no values"
	echo "Running java Dec2Hex "
	java Dec2Hex > unit_1.txt
	unit_1=$(cat unit_1.txt)
	rm unit_1.txt
	echo "$unit_1"
		if [[ $unit_1 == *"there is no"* ]]; then
		echo "Unit Test 1 = passed"
	else
		echo "$unit_1"
		echo "Unit Test 1 = failed"
	fi
}


unit_test1


#Unit test 2 will be testing the program for when there is a letter on the command line arg
unit_test2() {
        echo "Unit Test 2: Testing Dec2Hex program for when there is a character on the command line arg"
        echo "Expected results: Dec2Hex should come up with message to say that there is no integers found"
        echo "Running java Dec2Hex c"
        java Dec2Hex c > unit_2.txt
        unit_2=$(cat unit_2.txt)
        rm unit_2.txt
        echo "$unit_2"
                if [[ $unit_2 == *"This isnt an"* ]]; then
                echo "Unit Test 2 = passed"
        else
                echo "$unit_2"
                echo "Unit Test 2 = failed"
        fi
}

unit_test2


#Unit test 3 will be testing the program for when there is a special characted on the command line arg
unit_test3() {
        echo "Unit Test 3: Testing Dec2Hex program for when there is a special character on the command line arg"
        echo "Expected results: Dec2Hex should come up with message to say that there is no integers found"
        echo "Running java Dec2Hex !"
        java Dec2Hex ! > unit_3.txt
        unit_3=$(cat unit_3.txt)
        rm unit_3.txt
        echo "$unit_3"
                if [[ $unit_3 == *"This isnt an"* ]]; then
                echo "Unit Test 3 = passed"
        else
                echo "$unit_3"
                echo "Unit Test 3 = failed"
        fi
}


unit_test3


#Unit test 4 will be testing the program for when there is a letter on the command line arg
unit_test4() {
        echo "Unit Test 4: Testing Dec2Hex program for when there is a decimal on the command line arg"
        echo "Expected results: Dec2Hex should run and convert the decimal to hexadecimal"
        echo "Running java Dec2Hex 10"
        java Dec2Hex 10 > unit_4.txt
        unit_4=$(cat unit_4.txt)
        rm unit_4.txt
        echo "$unit_4"
                if [[ $unit_4 == *"Hexadecimal"* ]]; then
                echo "Unit Test 4 = passed"
        else
                echo "$unit_4"
                echo "Unit Test 4 = failed"
        fi
}


unit_test4
