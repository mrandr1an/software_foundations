Theorem plus_id_example : forall n m:nat, n = m ->
                                          n + n = m + m.
Proof.
  (* move both quantifiers into the context: *)
  intros n m.
  (* move the hypothesis (after implies/-> ) into the context *)
  intros H.
  (* rewrite the goal using the hypothesis *)
  (* Replace the left side of the equality with the right side *)
  rewrite -> H.
  (* Replace the right side of the equality with the left side *)
  (* rewrite <- H. *)
  reflexivity. Qed.

Theorem plus_id_example_l : forall n m:nat, n = m ->
                                          n + n = m + m.
Proof.
  (* move both quantifiers into the context: *)
  intros n m.
  (* move the hypothesis (after implies/-> ) into the context *)
  intros H.
  (* rewrite the goal using the hypothesis *)
  (* Replace the right side of the equality with the left side *)
  rewrite <- H.
  reflexivity. Qed.


Theorem plus_id_exercise : forall n m o : nat,
      n = m -> m = o -> n + m = m + o.
Proof.
  intros n m o.
  intros H1.
  intros H2.
  rewrite <- H1.
  rewrite <- H2.
  rewrite <- H1.
  reflexivity. Qed.

Theorem mult_S_1 : forall n m : nat,
      m = S n ->
      m * (1 + n) = m * m.
Proof.
  intros n.
  intros m.
  intros H.
  rewrite -> H.
  reflexivity.
  Qed.
