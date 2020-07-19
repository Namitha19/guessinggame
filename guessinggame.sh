#!/usr/bin/env bash

function guess(){
    true_ans=$(ls -l |grep "^-"|wc -l)
    while true;
    do
        echo "Please Enter Your Guess"
        read  number
        if [ $number -lt $true_ans ]
        then
            echo "Guess a greater number"
        elif [ $number -gt $true_ans ]
        then
            echo "Guess a lesser number"
        else
            echo " CONGRATULATIONS,you are right!"
        break;
        fi
    done
}
echo "Guess the Number of Files in the Current Directory!"
guess
