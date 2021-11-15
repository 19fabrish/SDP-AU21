function [stale] = stalemate(spaces)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
sum = 0;
stale = 0;
for i = 1:length(spaces)
    if(spaces(i) == 1 || spaces(i) == 2)
       sum = sum + 1;
    end
end

if(sum == 9)
    stale = 1;
end

end

