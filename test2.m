
%%
linedata = ones(5,6);
m = [1 1 2 2 3]';
n = [2 3 3 4 4]';
linedata(:,1) = m;
linedata(:,2) = n;
for i = 1:5
    linedata(i,3) = 0.01 + (.09-.01)*rand;
    linedata(i,4) = .01 + (.4-.01)*rand;
    linedata(i,5) = .01 + (.05-.01)*rand;
end
