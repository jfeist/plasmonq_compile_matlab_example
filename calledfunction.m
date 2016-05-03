function [A,B] = calledfunction(x)
  A = [x,x.^2];
  B = [3,1-x];
end
