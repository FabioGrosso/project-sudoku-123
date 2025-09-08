% 定义行、列、数
row(1..4).
col(1..4).
num(1..4).

% 每个格子恰好一个数
1 { sudoku(R,C,N) : num(N) } 1 :- row(R), col(C).

% 每行每个数字必须出现一次
1 { sudoku(R,C,N) : col(C) } 1 :- row(R), num(N).

% 每列每个数字必须出现一次
1 { sudoku(R,C,N) : row(R) } 1 :- col(C), num(N).

% 初始数字必须保留
sudoku(R,C,N) :- initial(R,C,N).

#show sudoku/3.