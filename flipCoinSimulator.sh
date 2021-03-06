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

    while [[ $headCount -lt 21 && $tailCount -lt 21 ]]
    do
      if [ $(flipCoin) == 'Head' ]
      then
          ((headCount++))
      else
          ((tailCount++))
      fi
    done

    if [ $headCount -gt $tailCount ]
    then
          echo "Its win! Head won by " $(( headCount-tailCount ))

    elif [ $headCount -lt $tailCount ]
    then
          echo "Its win! Tail won by " $(( tailCount-headCount ))

    else
          echo "There is a Tie"

          while [ $(( headCount - tailCount )) -ne 2 ]
          do
               if [ $(flipCoin) == 'Head' ]
               then
                    ((headCount++))
               else
                    ((tailCount++))
               fi
         done
    fi


}

flippingGame
