open Exercises

let encode l =
  let rec aux (n, e) acc = function
    | [] -> acc @ [ (n, e) ]
    | h :: t ->
        if e = h then
          aux (n + 1, e) acc t
        else
          aux (1, h) (acc @ [ (n, e) ]) t
  in
  match l with
    | [] -> []
    | h :: t -> aux (1, h) [] t

let tuple_to_string (first, second) =
  "(" ^ Int.to_string first ^ ", " ^ second ^ ")"

let solution_to_string l = String.concat ", " (List.map tuple_to_string l)

let () =
  let r =
    encode
      [ "a"; "a"; "a"; "a"; "b"; "c"; "c"; "a"; "a"; "d"; "e"; "e"; "e"; "e" ]
  in
  Output.print solution_to_string r
