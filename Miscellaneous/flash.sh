# Will make the terminal flash
# flash <number of flashes>
function flash {
	for i in `seq 1 ${1-1}`;
	do
		printf '\e[?5h'
		sleep 0.1
		printf '\e[?5l'
		sleep 0.1
	done
}
