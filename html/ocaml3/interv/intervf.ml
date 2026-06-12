let ab = (10.0, 100.0)
let cd = (20.0, 2000.0)
let e = (12.0)

let interv_map ab cd (e) =
  let a, b = (ab) in
  let c, d = (cd) in
  let ab_diff = (b -. a) in
  let cd_diff = (d -. c) in
  let f = (e -. a) in
  ((f *. cd_diff) /. ab_diff) +. c

let () =
  let r = interv_map ab cd (e) in
  Printf.printf "interv. map'd: %g\n" r;
;;
