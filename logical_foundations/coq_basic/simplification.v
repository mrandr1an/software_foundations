Theorem plus_O_n : forall n : nat, 0 + n = n.
Proof.
  intros n. simpl. reflexivity. Qed.

Theorem plus_1_1 : forall n : nat, 1 + n = S n.
Proof.
  intros n. reflexivity. Qed.
