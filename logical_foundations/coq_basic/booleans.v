(* Note Coq does provide its own booleans in Coq.Init.Datatypes *)

Inductive bool : Type :=
    | true
    | false.

Definition negb (b: bool) : bool :=
  match b with
   | true => false
   | false => true
  end.        

Definition andb (b1: bool) (b2: bool) : bool :=
  match b1 with
  | true => b2
  | false => false
  end.               

Definition orb (b1: bool) (b2: bool) : bool :=
  match b1 with
  | true => true
  | false => b2
  end.

Example test_orb1: (orb true false) = true.
Proof. simpl. reflexivity. Qed.

Example test_orb2: (orb false false) = false.
Proof. simpl. reflexivity. Qed.

(*
  The notation command defines new symbolic notation for an existing
  operation.
*)

Notation "x && y" := (andb x y).
Notation "x || y" := (orb x y).
