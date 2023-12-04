
#!/bin/bash

Date_and_Time(){ 
echo "Current date and time: $(date)"
}

System_Uptime(){
cho "System uptime: $(uptime)"
}

Users_Info(){
echo "Logged-in users:"
    who
}

while true;
do
	echo "choose an option"
	echo  "1.for Display the current date and time"
	echo  "2.for Display the system uptime"
	echo "3.for Display information about logged-in users"
        echo "4. for exit"
	read -p "Enter your choice: " choice

	case $choice in

	1)

		Date_and_Time
		;;
	2)
		System_Uptime
		;;
	3)
		Users_Info
		;;
	4)
		exit 0
		;;
	*)
	         echo "Error!! please enter right choise"
		 ;;
	esac

	 
done
