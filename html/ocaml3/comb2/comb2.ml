(** combinations of 2 elements from n *)

let ls = [1; 2; 3; 4; 5]

let comb2 ls f init =
  let rec aux ls acc =
    match ls with
    | [] -> (List.rev acc)
    | hd :: tl ->
        let acc =
          List.fold_left (fun acc this -> (f hd this)::acc) acc tl
        in
        aux tl acc
  in
  aux ls init

let () =
  let pairs =
    comb2 ls (fun v1 v2 -> (v1, v2)) []
  in
  List.iter (fun (v1, v2) ->
    Printf.printf " (%d, %d)\n" v1 v2
  ) pairs
