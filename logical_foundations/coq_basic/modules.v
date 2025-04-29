Module NatPlayground.
  Inductive nat : Type :=
  | O
  | S (n : nat).

  Inductive nat' : Type :=
  | stop
  | tick (foo : nat').

  Definition pred (n : nat) : nat :=
   match n with
    | O => O
    | S n' => n'
   end.

  Check (S (S (S O) ) ).
  Check pred.
  Check S.
  Compute (pred (S (S (S O) )) ).

  Fixpoint evenb (n:nat) : bool :=
    match n with
    | O => true
    | S O => false
    | S (S n') => evenb n'
    end.

End Natplayground.


  Fixpoint evenb (n:nat) : bool :=
   match n with
    | O => true
    | S O => false
    | S (S n') => evenb n'
   end.

  Check evenb (12).

