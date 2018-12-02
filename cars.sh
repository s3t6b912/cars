#! /bin/bash
# cars.sh
# Sebastian Brumm
choice=0
while [ "$choice" != "Q" ]
do
	echo "My Old Cars Inventory System"
	echo "----------------------------"
	echo "1. Enter a Car"
	echo "2. List the cars"
	echo "Q. Quit"
	read choice
	case "$choice" in
		"1")
			echo "Enter a year: "
			read year
			echo "Enter a make: "
			read make
			echo "Enter a model: "
			read model
			echo "$year $make $model" >> My_Old_Cars;;
		"2")
			sort My_Old_Cars;;
		"Q") echo "Quitting...";;
		*) echo "You did not enter a valid option";;
	esac
done
