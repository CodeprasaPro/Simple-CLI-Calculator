--[[Program :	Calculator
	Author 	:	Prasanna Silva
	Date   	:	15/07/2020
	Version	:	1.0	beta	]]

	
	tab = '\t'																	-- defining a variable on behalf of carriage return '\t'		
	seperator = '------------------------'										-- defining a varaible for sections seperation																									

	local function addition()
	local ansForAdd, numberOfInput = 0									
	io.write("Enter the amount of feed(s):",'\n')								-- this prompts to input the amount of inputs to do calculation
	numberOfInput = io.read()
	x = numberOfInput															-- x is the variable that iterates. numberOfInput is the turns of inputs. when it equals to x, end user can decide his / her own limit of values to enter. 
for i = 1, x, 1 do																-- this loop goes until user's value gets equals to the variable x
	io.write('\n', "enter the number: ")
	inputs = io.read()															-- this variable is used to store the inputs from the user 
	ansForAdd = ansForAdd + inputs 												-- after user's input, it stores into the variable sum and, then, that value adds to the sum again.
	end
	io.write('\n', "The answer for your addition operation is:", '\n' , ansForAdd, '\n')	
end

	local function subtraction()
	local ansForSub, value1, value2 = 0
	io.write("Enter the value1:", '\n')
	value1 = io.read()
	io.write("Enter the value2:", '\n')
	value2 = io.read()
	ansForSub = value1 - value2	
	io.write('\n', "The answer for your subtraction operation is:", '\n' , ansForSub, '\n')				
end

	local function multiplication()
	local ansForMul, value1, value2 = 0
	io.write("Enter the value1:", '\n')
	value1 = io.read()
	io.write("Enter the value2:", '\n')
	value2 = io.read()
	ansForMul = value1 * value2
	io.write('\n', tab, "The answer for your multiplication operation is:", '\n', ansForMul, '\n')
end

	local function division()
	local ansForDiv, value1, value2 = 0
	io.write("Enter the value:", '\n')
	value1 = io.read()
	io.write("Enter the value2:", '\n')
	value2 = io.read()
	ansForDiv = value1 / value2
	io.write('\n', "The answer for your division operation is:", '\n', ansForDiv, '\n')
end

			--Main program
	io.write('\n',tab , "Welcome to My Calculator", '\n')						
	io.write('\n', tab , seperator, '\n')
	io.write(tab, "For addition, press 	  '+' ", tab , '\n')					--math operations menu of the program
	io.write(tab, "For subtraction, press    '-' ", tab , '\n')					--that is visible and choosable for 
	io.write(tab, "For multiplication, press '*' ", tab , '\n')					--the user. if he/she presses the key 
	io.write(tab, "For division, press       '/' ", tab , '\n')					--related to the operation, then the program will
																				--directs the user to the desired math function.
	io.write('\n', '\n' , tab, "Enter the math operation you need to do:" )

	keysForMathOperation = io.read()
	if (string.match(keysForMathOperation, '+')) then
		addition()																--execute addition() function
	end	

	if(string.match((keysForMathOperation), '-')) then
		subtraction()															--execute subtraction() function
	end

	if(string.match(keysForMathOperation, '*')) then		
		multiplication()														--execute multiplication() function
	end

	if(string.match(keysForMathOperation, '/')) then
		division()																--execute division() function
	end

	io.write(tab, "Do you want to continue? [Y/N]")	
	inputYesorNo = io.read()  
	if (string.match(inputYesorNo, 'yes')) then
		print(tab, "Starting the program again")
		mainProgram()
	else if(string.match(inputYesorNo, 'no')) then
		os.exit()																-- terminationg the prorgram.
	else
		print(tab, "The program can not understand the procedure.")		
	end
  end




