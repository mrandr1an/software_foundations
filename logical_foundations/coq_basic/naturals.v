Fixpoint evenb (n:nat) : bool :=
   match n with
    | O => true
    | S O => false
    | S (S n') => evenb n'
end.

Check evenb (12).
Compute evenb (12).

Example test_even : evenb (12) = true.
Proof. simpl. reflexivity. Qed.

Fixpoint plus (n : nat) (m : nat) : nat :=
  match n with
  | O => m
  | S n' => S (plus n' m)
  end.

Compute (plus 3 2).

Fixpoint minus (n m : nat) : nat :=
  match n,m with
  | O, _ => O
  | S _ , O => n
  | S n', S m' => minus n' m'
  end.

Compute (minus 7 5).

Fixpoint mult (n m : nat) : nat :=
  match n with
  | O => O
  | S n' => plus m (mult n' m)
  end.

Fixpoint factorial (n : nat) : nat :=
  match n with
  | 0 => 1
  | S n' => mult (S n')  (factorial n')
  end.

Compute (factorial 8).

Example test_factorial2: (factorial 5) = (mult 10 12).
Proof. simpl. reflexivity. Qed.

