-- namer.adb "test-drives" the Name type.
-- Begun by: Prof. Adams, CS 214 at Calvin College.
-- Completed by: Sinai Park (sp46)
-- Date: March 31 2020
----------------------------------------------

with Ada.Text_IO, Ada.Float_Text_IO, temp_package;
use Ada.Text_IO, Ada.Float_Text_IO, temp_package;

procedure temperature is

   -- Declaring variables to be used later in the table test procedure
	start_Temp, end_temp : temp_package.Temp;
	increment_num : float;
	temp_scale : character;

begin
	-- Prompt the user for the starting temperature
	Put("Starting Temperature");
	readTemp(start_Temp);

	-- Prompt the user for the ending temperature
	Put("Ending Temperature");
	readTemp(end_temp);

	-- Prompt the user for the increment value
	Put("Please enter the increment value: ");
	Get(increment_num);

	temp_scale := getScale(start_temp);

	-- While loop to print out the temperature values in a table format in each scale
	while ( less_than(start_temp, end_temp) or equals(start_temp, end_temp) ) loop

		-- First print out the Fahrenheit degrees
		setFahrenheit(start_temp);
		printTemp(start_temp);
		Put("     ");

		-- Second print out the Celsius degrees
		setCelsius(start_temp);
		printTemp(start_temp);
		Put("     ");
		
		-- Third print out the Celsius degrees
		setKelvin(start_temp);
		printTemp(start_temp);
		New_Line;

		-- Determine what the start_temp Scale was to return it back to that Scale
		if ( temp_scale = 'F' or temp_scale = 'f' ) then
			setFahrenheit(start_temp);
		elsif ( temp_scale = 'K' or temp_scale = 'k' ) then
			setKelvin(start_temp);
		elsif ( temp_scale = 'C' or temp_scale = 'c' ) then
			setCelsius(start_temp);
		end if;
	
		-- Increment the start_temp by increment
		raise_temp(start_temp, increment_num );

	end loop;

end temperature;
