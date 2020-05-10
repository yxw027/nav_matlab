%%  plot UWB data

function ch_plot_uwb(data)

dim = size(data.pos, 1);

figure;
if dim == 2
    x = data.pos(1,:);
    y = data.pos(2,:);
    plot(x,y,'.');
elseif dim == 3
    x = data.pos(1,:);
    y = data.pos(2,:);
    z = data.pos(3,:);
    plot3(x,y,z,'.');
end
hold on;
plotanchors(data.anchor);
axis equal

figure;
plot(data.tof');
legend();
end

function plotanchors(anch)
hold all;
scatter(anch(1, :),anch(2, :),'k');
for i=1:size(anch,2)
    text(anch(1, i),anch(2, i),"A"+(i-1))
end
end

