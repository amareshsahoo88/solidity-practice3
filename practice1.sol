// input and retrieve a number from a variable

// find the factorial of a number . input should be taken from the user

// find the largest number in an array . data should be given by the user

// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract storeData{

    // define a variable uint / string / bool

    uint num;

    // define a function to take the input

    function input(uint _num) public {
        num = _num;
    }

    // define the function to return the value of the variable

    function output() public view returns(uint){
        return num;
    }

}


contract facto{

    // define a variable to take the input number 

    uint num;

    function input(uint _num) public {
        num = _num;
    }

    // define the function to find the factorial , you can use for loop for that , return the value

    function factorial() public view returns(uint){
        uint temp=1;
        for(uint i = num ; i>1 ; i--) {
            temp = temp*i;
        }

        return temp;
    }

}

contract largest{

    // define an array

    uint[] arr;

    // input values to the array

    function pushNum(uint _num) public {
        arr.push(_num);
    }

    // function to see the values of the array

    function viewArr() public view returns(uint[] memory){
        return arr;
    }

    // find the largest number in the array

    function large() public view returns(uint){
        uint temp = arr[0];

        for(uint i=1; i< arr.length; i++){
            if(arr[i]>temp){
                temp = arr[i];
            }
            
        }
        return temp;
        
        
        
    }

}