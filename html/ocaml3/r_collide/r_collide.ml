
module Rect : sig
  type t = { x:int; y:int; w: int; h:int; }

  val make : int * int * int * int -> t

  val r_collide : t -> t -> bool

  val r_collide_2 : t -> t -> bool

end = struct
  type t = { x:int; y:int; w:int; h:int; }

  let make (x, y, w, h) = { x; y; w; h }

  let r_collide a b =
    if ((a.x + a.w) <= b.x) then (false) else
    if (a.x >= (b.x + b.w)) then (false) else
    if ((a.y + a.h) <= b.y) then (false) else
    if (a.y >= (b.y + b.h)) then (false) else
    (true)

  let r_collide_2 a b =
    if ((a.x + a.w) < b.x) then (false) else
    if (a.x > (b.x + b.w)) then (false) else
    if ((a.y + a.h) < b.y) then (false) else
    if (a.y > (b.y + b.h)) then (false) else
    (true)

end

module R = Rect (* Rectangle *)

let () =
  let r1 = R.make (0, 0, 6, 6) in
  let r2 = R.make (6, 6, 2, 2) in
  Printf.printf " %b \n" (R.r_collide r1 r2);
  Printf.printf " %b \n" (R.r_collide_2 r1 r2);
;;

(*

$ \ocaml r_collide.ml
 false
 true

*)
(*

# collide_only     := false
# collide_or_touch := true

*)

