inductive list (A : Type) : Type :=
nil  : list A,
cons : A → list A → list A

check list.{1}
check cons.{1}
check list.rec.{1 1}
