function [] = plot_scheduling(trace_in)

%trace_in = [0, 1, 1, 2, 2, 0, 2, 3, 3, 3, 0, 1, 1, 3, 3, 0, 2, 2, 2, 3, 0, 1, 1, 3, 3, 0, 3, 3, 3, 3, 0, 1, 1, 2, 2, 0, 2, 3, 3, 3, 1, 0, 1, 3, 3, 2, 2, 0, 2, 3, 1, 1, 3, 0, 3, 3, 3, 3, 3, 0, 1, 1, 2, 2, 2, 0, 3, 3, 3, 3, 1, 1, 0, 3, 3, 2, 2, 2, 3, 0, 1, 1, 3, 3, 3, 3, 0, 3, 3, 3, 1, 1, 2, 0, 2, 2, 3, 3, 3, 3, 1, 0, 1, 3, 3, 2, 2, 2, 3, 0, 1, 1, 3, 3, 3, 3, 3, 0, 3, 3, 1, 1, 2, 2, 2, 0, 3, 3, 3, 3, 1, 1, 3, 3, 0, 2, 2, 2, 3, 3, 1, 1, 3, 0, 3, 3, 3, 3, 3, 3, 1, 1, 0, 2, 2, 2, 3, 3, 3, 3, 1, 1, 0, 3, 3, 2, 2, 2, 3, 3, 1, 1, 0, 3, 3, 3, 3, 3, 3, 3, 1, 1, 0, 2, 2, 2, 3, 3, 3, 3, 1, 1, 3, 0, 3, 2, 2, 2, 3, 3, 1, 1, 3, 3, 0, 3, 3, 3, 3, 3, 1, 1, 2, 2, 2, 0, 3, 3, 3, 3, 1, 1, 3, 3, 3, 2, 2, 0, 2, 3, 1, 1, 3, 3, 3, 3, 3, 3, 3, 0, 1, 1, 2, 2, 2, 3, 3, 3, 3, 3, 1, 0, 1, 3, 3, 2, 2, 2, 3, 3, 1, 1, 3, 3, 0, 3, 3, 3, 3, 3, 1, 1, 2, 2, 2, 3, 3, 0, 3, 3, 1, 1, 3, 3, 3, 2, 2, 2, 3, 3, 1, 0, 1, 3, 3, 3, 3, 3, 3, 3, 1, 1, 2, 2, 2, 0, 3, 3, 3, 3, 1, 1, 3, 3, 3, 2, 2, 2, 3, 3, 0, 1, 1, 3, 3, 3, 3, 3, 3, 3, 1, 1, 2, 2, 2, 0, 3, 3, 3, 3, 1, 1, 3, 3, 3, 2, 2, 2, 3, 3, 1, 0, 1, 3, 3, 3, 3, 3, 3, 3, 1, 1, 2, 2, 2, 3, 3, 0, 3, 3, 1, 1, 3, 3, 3, 2, 2, 2, 3, 3, 1, 1, 3, 3, 0, 3, 3, 3, 3, 3, 1, 1, 2, 2, 2, 3, 3, 3, 3, 3, 1, 0, 1, 3, 3, 2, 2, 2, 3, 3, 1, 1, 3, 3, 3, 3, 3, 3, 3, 0, 1, 1, 2, 2, 2, 3, 3, 3, 3, 3, 1, 1, 3, 3, 3, 2, 2, 0, 2, 3, 1, 1, 3, 3, 3, 3, 3, 3, 3, 3, 1, 1, 2, 2, 2, 3, 0, 3, 3, 3, 1, 1, 3, 3, 3, 2, 2, 2, 3, 3, 1, 1, 3, 3, 3, 3, 0, 3, 3, 3, 1, 1, 2, 2, 2, 3, 3, 3, 3, 3, 1, 1, 3, 3, 3, 2, 0, 2, 2, 3, 1, 1, 3, 3, 3, 3, 3, 3, 3, 3, 1, 1, 2, 2, 2, 3, 3, 0, 3, 3, 1, 1, 3, 3, 3, 2, 2, 2, 3, 3, 1, 1, 3, 3, 3, 3, 3, 3, 3, 0, 1, 1, 2, 2, 2, 3, 3, 3, 3, 3, 1, 1, 3, 3, 3, 2, 2, 2, 3, 3, 1, 0, 1, 3, 3, 3, 3, 3, 3, 3, 1, 1, 2, 2, 2, 3, 3, 3, 3, 3, 1, 1, 3, 3, 0, 2, 2, 2, 3, 3, 1, 1, 3, 3, 3, 3, 3, 3, 3, 3, 1, 1, 2, 2, 2, 3, 3, 3, 0, 3, 1, 1, 3, 3, 3, 2, 2, 2, 3, 3, 1, 1, 3, 3, 3, 3, 3, 3, 3, 3, 1, 1, 2, 0, 2, 2, 3, 3, 3, 3, 1, 1, 3, 3, 3, 2, 2, 2, 3, 3, 1, 1, 3, 3, 3, 3, 3, 3, 3, 0, 1, 1, 2, 2, 2, 3, 3, 3, 3, 3, 1, 1, 3, 3, 3, 2, 2, 2, 3, 3, 1, 1, 3, 3, 3, 0, 3, 3, 3, 3, 1, 1, 2, 2, 2, 3, 3, 3, 3, 3, 1, 1, 3, 3, 3, 2, 2, 2, 3, 3, 1, 1, 0, 3, 3, 3, 3, 3, 3, 3, 1, 1, 2, 2, 2, 3, 3, 3, 3, 3, 1, 1, 3, 3, 3, 2, 2, 2, 3, 3, 0, 1, 1, 3, 3, 3, 3, 3, 3, 3, 1, 1, 2, 2, 2, 3, 3, 3, 3, 3, 1, 1, 3, 3, 3, 2, 2, 2, 3, 0, 1, 1, 3, 3, 3, 3, 3, 3, 3, 3, 1, 1, 2, 2, 2, 3, 3, 3, 3, 3, 1, 1, 3, 3, 3, 2, 2, 2, 3, 0, 1, 1, 3, 3, 3, 3, 3, 3, 3, 3, 1, 1, 2, 2, 2, 3, 3, 3, 3, 3, 1, 1, 3, 3, 3, 2, 2, 2, 3, 3, 0, 1, 1, 3, 3, 3, 3, 3, 3, 3, 1, 1, 2, 2, 2, 3, 3, 3, 3, 3, 1, 1, 3, 3, 3, 2, 2, 2, 3, 3, 1, 1, 0, 3, 3, 3, 3, 3, 3, 3, 1, 1, 2, 2, 2, 3, 3, 3, 3, 3, 1, 1, 3, 3, 3, 2, 2, 2, 3, 3, 1, 1, 3, 3, 3, 0, 3, 3, 3, 3, 1, 1, 2, 2, 2, 3, 3, 3, 3, 3, 1, 1, 3, 3, 3, 2, 2, 2, 3, 3, 1, 1, 3, 3, 3, 3, 3, 3, 3, 0, 1, 1, 2, 2, 2, 3, 3, 3, 3, 3, 1, 1, 3, 3, 3, 2, 2, 2, 3, 3, 1, 1, 3, 3, 3, 3, 3, 3, 3, 3, 1, 1, 2, 2, 0, 2, 3, 3, 3, 3, 1, 1, 3, 3, 3, 2, 2, 2, 3, 3, 1, 1, 3, 3, 3, 3, 3, 3, 3, 3, 1, 1, 2, 2, 2, 3, 3, 3, 3, 3];

colorVal = {
    [1 0 0];
    [0 1 0];
    [0 0 1];
    [1 1 0];
    [1 0 0];
    [0 1 0];
    [0 0 1];
    [1 1 0]    
};

%scatter(0:length(a)-1,a, 'x')

%TASK_NUM = 3;
BLOCK_WIDTH_X = 1;          % precision of x
BLOCK_WIDTH_Y = 0.4;

rec(1) = 100;                   % x cordinate of rect
rec(2) = -BLOCK_WIDTH_Y;        % y cordinate of rect
rec(3) = BLOCK_WIDTH_X;         % x length of rect
rec(4) = BLOCK_WIDTH_Y * 2;     % y length of rect


for i = 1:length(trace_in)
    rec(1) = (i - 1) * BLOCK_WIDTH_X;
    rec(2) = trace_in(i) + (-BLOCK_WIDTH_Y);
    rectangle('Position' , rec,     ... 
              'LineWidth', 0.1,     ...
              'LineStyle', 'none',  ...
              'FaceColor', colorVal{trace_in(i)+1} );
end

end