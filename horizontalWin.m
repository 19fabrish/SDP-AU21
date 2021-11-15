function [win] = horizontalWin(board)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
if(board(2,1)==board(2,2) && board(2,2)==board(2,3) && board(2,1)~=3)
    win = board(2,1);
elseif(board(1,1)==board(1,2) && board(1,2)==board(1,3) && board(1,1)~=3)
    win = board(1,1);
elseif(board(3,1)==board(3,2) && board(3,2)==board(3,3) && board(3,1)~=3)
    win = board(3,1);
else
    win = 0;
end

end

