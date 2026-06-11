
let ds = [0; 1; 2; 3; 4; 5; 6; 7; 8; 9; 10; 11; 12; 13; 14; 15; 16; 17; 18; 19;
  20; 21; 22; 23; 24; 25; 26; 27; 28; 29; 30; 31; 32; 33; 34; 35; 36; 37; 38;
  39; 40; 41; 42; 43; 44; 45; 46; 47; 48; 49; 50; 51; 52; 53; 54; 55; 56; 57;
  58; 59; 60; 61; 62; 63; 64; 65; 66; 67; 68; 69; 70; 71; 72; 73; 74; 75; 76]

let squares = List.map (fun d -> (d * d)) ds
let squares_assoc =  (* map2: not-tail-rec *)
  List.map2 (fun a b -> let c = (a, b) in (c))
    squares ds

let _sqrt d =
  List.assoc d squares_assoc

let _sqrt_opt d =
  try Some (List.assoc d squares_assoc)
  with Not_found -> (None)

let sqrt d =
  let rec aux d =
    if d < 0 then 0 else
    match _sqrt_opt d with
    | Some (v) -> (v)
    | None -> aux (pred d)
  in
  aux d

let () =
  let a = (int_of_string Sys.argv.(1)) in
  Printf.printf "sqrt %d: %d\n" a (sqrt a)
