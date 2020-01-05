%%PROJECT METHODOLOGIES FOR ALL THREE STRATEGIES OF THE SHUT THE BOX GAME


%%%%%STRATEGY 1 & 2
%Strategy Overview: This is very similar to the defined strategy in the
%assignment instructions where single numbered tiles are laid down first
%before any available combination. Strategy 2 differs from strategy 1 by
%not ranking tiles from descending order

%Procedures
%1.The tiles were arranged in descending order
%2.A random generator function was used in randomly generating discreet
%values from the dice with a maximum of 6
%3.A variable was used to hold the addition of the random variables from
%both dice
%4.A function named "shut the box score" was used in sorting out the dice
%5.For every iteration controlled by a while loop, a unique sum is
%generated
%6.The function checks all tile numbered stored in Array A for any
%equivalent value. If a tile has the dice combination, it is laid first.
%The assumption used to indicate a tile laid down is to transform it to 0
%7.The while loop runs this process again and checks for any tile with the
%equivalent number, if no tile has that number, it runs through three for loop
%condition that checks the summation of a tile and a successive tile, a
%combination of a tile and the next two successive tiles, If it sees any combination,
%an array Anew is used to store every array element of the tile in each loop
%8.For every iteration, the loop checks if the previous array
%used to store the tile numbers is the same with the current array. If
%valid, it breaks and ends the game, otherwise the game continues
%9.An array of 10000 elements named "GAMESTORE" is used to store the score
%of each game
%10.The summation of all elements in GAMESTORE is used to compute the
%expected value using a for loop
%11.Subsequently, the standard deviation is computed using the expected
%value
%12.The program also displays the expected values and standard deviation on
%the screen
%13.A histogram is also generated to show the score value in each game and
%relative frequency
%14.The time of program computation is also displayed

%____________________________________________________________________________________________________

%%%%%STRATEGY 3
%Strategy Overview: The tiles are ranked in descending order. Selection of
%tile is based on any tile equivalent to the dice combination or any 3
%combination of tiles equivalent to the dice summation


%Procedures
%1.The tiles were arranged in descending order
%2.A random generator function was used in randomly generating discreet
%values from the dice with a maximum of 6
%3.A variable was used to hold the addition of the random variables from
%both dice
%4.A function named "shut the box score" was used in sorting out the dice
%5.For every iteration controlled by a while loop, a unique sum is
%generated
%6.The function checks all tile numbered stored in Array A for any
%equivalent value. If a tile has the dice combination, it is laid first.
%The assumption used to indicate a tile laid down is to transform it to 0
%7.The while loop runs this process again and checks for any tile with the
%equivalent number, if no tile has that number, it runs through three for loop
%condition that checks the summation of a tile and two successive tile. If it sees any combination,
%an array Anew is used to store every array element of the tile in each loop
%8.For every iteration, the loop checks if the previous array
%used to store the tile numbers is the same with the current array. If
%valid, it breaks and ends the game, otherwise the game continues
%9.An array of 10000 elements named "GAMESTORE" is used to store the score
%of each game
%10.The summation of all elements in GAMESTORE is used to compute the
%expected value using a for loop
%11.Subsequently, the standard deviation is computed using the expected
%value
%12.The program also displays the expected values and standard deviation on
%the screen
%13.A histogram is also generated to show the score value in each game and
%relative frequency
%14.The time of program computation is also displayed
