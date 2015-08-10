function plot_graph()
rho = traffic();
time_range = 5;
x_range = 10;
div = 100;
x = 1/div:1/div:x_range;
y = zeros(5,x_range*div);
string = {'b','r','g','m','k'};
for t = 1:5
    temp = 1+t*div;
    if(temp>500)
        temp = 500;
    end
    y = rho(:,temp);
    plot(x,y,'color',string{t});
    hold on;    
end
hold off;
%plot(x,y(1),'b',x,y(2),'r',x,y(3),'g',x,y(4),'y',x,y(5),'k');
legend({'1 unit','2 unit','3 unit','4 unit','5 unit'});
xlabel('Distance');
ylabel('rho');
end