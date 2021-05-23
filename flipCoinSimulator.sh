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

flippingGame(){

    local headCount=0
    local tailCount=0

    count=1
    while [ $count -le 100 ]
    do
      if [ $(flipCoin) == 'Head' ]
      then
          ((headCount++))
      else
          ((tailCount++))
      fi

      ((count++))

    done

    echo "Head has won $headCount times"

    echo "Tail has won $tailCount times"

}

flippingGame
