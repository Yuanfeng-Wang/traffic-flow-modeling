function [rho] = traffic()
%-----------variables--------------------
time_range = 5;
x_range = 10;
div = 100;
rho = zeros(x_range*div,time_range*div);
a = 1;
%----------------------------------------
%----------initial condition------------- 
for i=2:x_range*div
    rho(i,1)  = 0;
end
%rho(1,1)=1;
%---------------------------------------
%---------boundary condition------------  
for i=1:time_range*div
    rho(1,i) = 1;
    %temp = (time_range*div+1-i);
    
    %rho(1,i) = int32(100*temp/(time_range*div));
end
%--------------------------------------
%updation of density in the matrix 
for i=2:x_range*div
    for j = 2:time_range*div
        rho_l = rho(i,j-1);
        rho_p = rho(i-1,j-1);
%rho(i,j) = rho(i,j-1)-a*(rho(i,j-1)-rho(i-1,j-1));
        rho(i,j) = rho_l-a*(rho_l-rho_p);
    end
end
%---------end of for loop----------------
imagesc(rho);
end