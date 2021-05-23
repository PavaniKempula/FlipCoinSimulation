#!/bin/bash -x

echo "Welcome to Flip Coin Simulation Program"

flipCoin(){

    if [ $(( RANDOM%2 )) -eq 1 ]
    then
        echo "Head"
    else
        echo "Tail"
    fi
}
flipCoin
