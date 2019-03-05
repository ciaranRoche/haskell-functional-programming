data Expr = Val Int | Add Expr Expr | Mult Expr Expr
data Op = EVAL_ADD Expr | ADD Int | MULT Int | EVAL_MULT Expr

type Cont = [Op]

eval :: Expr -> Cont -> Int
eval (Val n) c = exec c n
eval (Add x y) c = eval x (EVAL_ADD y:c)
eval (Mult x y) c = eval x (EVAL_MULT y:c)

exec :: Cont -> Int -> Int
exec [] n = n
exec (EVAL_ADD y : c) n = eval y (ADD n: c)
exec (EVAL_MULT y : c) n = eval y (MULT n: c)
exec (ADD n : c) m = exec c (n + m)
exec (MULT n : c) m = exec c (n * m)

val :: Expr -> Int
val e = eval e []