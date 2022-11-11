echo -e "Enter the number of Students: "
read num
echo "Enter the Common String for the Branch: "
read cms

for((i=1; i<=$num ; i++)); do
	if [ $i -lt 10 ]; then
		useradd $cms$((0))$i
		echo "$cms$((0))$i" | passwd --stdin "$cms$((0))$i"
		cd /home/$cms$((0))$i
		mkdir clab
		mkdir pythonlab
		mkdir dslab
		mkdir oslab
		mkdir cpplab
		cd -
	else
		useradd $cms$i
		echo "$cms$i" | passwd --stdin "$cms$i"
		cd /home/$cms$i
		mkdir clab
                mkdir pythonlab
                mkdir dslab
                mkdir oslab
                mkdir cpplab
                cd -
	fi
done
echo done
