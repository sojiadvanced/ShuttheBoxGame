%%BELLO ADESOJI
%%Shut the Box Game without ranking (STRATEGY 2)
%A Matlab program that lays a numbered tile depending on the 
%combined outcome of a discreet random variables

start = tic;
N = 10000;
A = [1,2,3,4,5,6,7,8,9];                        %Holds all elements of the tiles
                                                %Ranking of tiles in descending order
t_s = length(A);                                %Total number of tiles
dice1 = [1,2,3,4,5,6];                          %Likely outcomes in dice
dice2 = [1,2,3,4,5,6];

y = 0;

%For loop to compute summation of all scores in N trials
for i=1:N
 
gamescore(i) = ShuttheBoxScore(A,dice2,t_s);    %Function call to compute the score 
y = y+gamescore(i);

end
ex = (1/N)* sum(gamescore(1:N));                %Computation of expected values
p = 0;                                          %Initial condition to compute variance
for i=1:N
 p = p + (gamescore(i) - ex)^2;
end
var = (1/N)*p;
sd = sqrt(var);                                  %Computation of standard deviation

disp('The Expected Value and Standard deviation are:'); disp(ex);  disp(sd); 
toc(start);
%%Function that computes score in each game
function score = ShuttheBoxScore(A,dice2,t_s)
  %t =1;
  k = length(A);
  Anew = zeros(1,9);
  for t=1:t_s
    b = max(dice2);
    dc1 = randi(b,1);
    dc2 = randi(b,1);
    z = dc1+dc2;                                %Summation of two dice outcomes

    for i=1                                     %Controls the Single row for all numbered tiles      
            for j=1:k                           %Used to iterate all tile numbers
                if z == A(i,j)                  %Priority to lay down tile whose number corresponds to the total
                    A(i,j)=0;
                    break;
                else
                    for s =j:k-1                %Controls addition of successive tile numbers
                    quit = 0;
                        if z == (A(i,j)+A(i,s+1))
                             A(i,j) = 0;
                             A(i,s+1) =0;
                            quit =1;
                            break;
                        end
                    end
                end
                if quit
                    break;
                else
                    continue;
                end
            end
     end 
    if Anew == A                                   %If Previous tile combination is the same as the current one, exit game
        
        score = sum(Anew);
        break;
    else
        Anew = A;
        
        continue;
    end 

  end
 
end
