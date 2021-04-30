#!/bin/bash
function guess ()
{
echo "guess the number of files in the directory:"
read response
echo $response
file=$(ls -l |wc -l)
}
guess
	while [[ $response -ne $file ]]
	do	
	if [[ $response -lt $file ]]
	then
		echo "too low"
	fi
        if [[ $response -gt $file ]]
	then
		echo "too high"
	fi
	guess
done
echo "congratulations your guess is correct"
