function [win] = diagonalWin(board)
%Checks board to see if a digonal win has occurred.


if(board(1,1)==board(2,2) && board(2,2)==board(3,3) && board(1,1)~=3)
    win = board(1,1);
elseif(board(1,3)==board(2,2) && board(2,2)==board(3,1) && board(1,3)~=3)
    win = board(1,3);
else
    win = 0;
end

end

