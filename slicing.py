







if __name__ == "__main__":

	print("Inserisci: (es. ON 1, OFF 2)")
	var=input()
	splitString=var.split(" ")
	status=splitString[0]
	slice_number=int(splitString[1])
	print("Status: ", status)
	print("Number of Slice: ", slice_number)
