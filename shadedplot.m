function shadedplot(x, y, attri)

if nargin < 3
    error('error argument number.');
end

px = [x, fliplr(x)];
py = [y(1,:), fliplr(y(2, :))];
patch('XData', px, 'YData', py, ...
    'FaceColor', attri, 'EdgeColor', 'none', 'FaceAlpha', .3);
hold on

if size(y, 1) == 3
    plot(x, y(3, :), attri);
end
hold off
