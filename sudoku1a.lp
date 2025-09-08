% 4x4 域
row(1..4).
col(1..4).
num(1..4).

% 每格恰好一个数
1 { sudoku(R,C,N) : num(N) } 1 :- row(R), col(C).

% 每行包含 1..4（存在性约束即可）
:- row(R), num(N), not 1 { sudoku(R,C,N) : col(C) }.

% 每列包含 1..4
:- col(C), num(N), not 1 { sudoku(R,C,N) : row(R) }.

% **关键：必须满足给定初始数字**
:- initial(R,C,N), not sudoku(R,C,N).

#show sudoku/3.
