function [win] = verticalWin(board)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
if(board(1,2)==board(2,2) && board(2,2)==board(3,2) && board(1,2)~=3)
    win = board(1,2);
elseif(board(1,1)==board(2,1) && board(2,1)==board(3,1) && board(1,1)~=3)
    win = board(1,1);
elseif(board(1,3)==board(2,3) && board(2,3)==board(3,3) && board(1,3)~=3)
    win = board(1,3);
else
    win = 0;
end

end

