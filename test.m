
%%
busdata = zeros(4,11);
    for j=1:4
        busdata(j,1) = j; 
    end
    busdata(1,2) = 1;
    busdata(1,3) = 1 + (1.09-1)*rand;
    for j = 2:4
    busdata(j,3) = 1.0;
    end
    for j = 2:4
        busdata(j,5) = randi([20 50]);
        busdata(j,6) = randi([5 25]);
    end
    busdata(2,7) = randi([20 50]);
    busdata(2,8) = randi([20 50]);

