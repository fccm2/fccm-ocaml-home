let arr = [| 1; 2; 3; 4; 5; |]

let () =
  let n = Array.length arr in
  for i = 0 to pred n do
    for j = i + 1 to pred n do
      let a = arr.(i) in
      let b = arr.(j) in
      Printf.printf " (%d, %d)\n" a b
    done
  done
