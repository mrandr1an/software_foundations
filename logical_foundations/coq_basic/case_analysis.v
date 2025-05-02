Require Import Nat.

Theorem plus_1_neq_0_firsttry : forall n : nat,
      (n+1) =? 0 = false.
Proof.
  intros n. destruct n as [| n'] eqn:E.
  - reflexivity.
  - reflexivity. Qed.      

Theorem negb_involutive : forall b : bool,
      negb (negb b) = b.
Proof.
  intros b. destruct b eqn:E.
  -reflexivity.
  -reflexivity.
   Qed.

Theorem andb_commutative: forall b c, andb b c = andb c b.
Proof.
  intros b c. destruct b eqn:Eb.
  - destruct c eqn:Ec.
    + reflexivity.
    + reflexivity.
  - destruct c eqn:Ec.
    + reflexivity.
    + reflexivity.
Qed.
