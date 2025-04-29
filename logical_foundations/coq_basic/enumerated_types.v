
(* Define a new set of data values -- a type. *)

Inductive day : Type :=
    | monday
    | tuesday
    | wednesday
    | thursday
    | friday
    | saturday
    | sunday.
(* The type is called day with members: monday... etc*)


(* Define a function that operates on days *)

Definition next_weekday (d:day) : day :=
  match d with
  | monday => tuesday
  | tuesday => wednesday
  | wednesday => thursday
  | thursday => friday
  | friday  =>  monday 
  | saturday => monday
  | sunday => monday 
end.

(*There are three ways to use the function*)

(* 1- The Compute Command *)

Compute (next_weekday friday).

Compute (next_weekday (next_weekday monday)).

(* 2- Record what you expect the result to be in an example *)

Example test_next_weekday:
  (next_weekday (next_weekday saturday)) = tuesday.
(* Then you can verify it like this *)
Proof. simpl. reflexivity. Qed.

(* 3- Extract from our definition the program in some other more
 conventional programming language (OCaml/Haskell) *)

