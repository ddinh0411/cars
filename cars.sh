#! /bin/bash
# cars.sh
# Daniel Dinh

while true;
do
	echo "Enter 1 to add new car, 2 to see list of recorded cars, or 3 to exit program: "
	read NUM
	if [ "$NUM" -eq 1 ]
	then
		echo "Please enter car year: "
		read YEAR
		echo "Now enter car make: "
		read MAKE
		echo "Finally please enter car model: "
		read MODEL
		echo "$YEAR:$MAKE:$MODEL" >> My_old_cars.txt
	elif [ "$NUM" -eq 2 ]
	then
		sort -n My_old_cars.txt
		cat My_old_cars.txt
	elif [ "$NUM" -eq 3 ]
	then
		break
	else
		echo "Sorry but I don't know that option. Try again?"
	fi
done
echo "Goodbye."
