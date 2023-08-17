open Exercises

type 'a rle =
  | One of 'a
  | Many of int * 'a

let increment = function
  | One a -> Many (2, a)
  | Many (n, a) -> Many (n + 1, a)

let encode l =
  let rec aux current acc = function
    | [] -> current :: acc
    | h :: t -> (
      match current with
        | One a | Many (_, a) ->
            if a = h then
              let next = increment current in
              aux next acc t
            else
              aux (One h) (current :: acc) t )
  in
  match List.rev l with
    | [] -> []
    | h :: t -> aux (One h) [] t

let tuple_to_string (first, second) =
  "(" ^ Int.to_string first ^ ", " ^ second ^ ")"

let rle_to_string f = function
  | One a -> "One " ^ f a
  | Many (n, a) -> "Many " ^ tuple_to_string (n, f a)

let solution_to_string l =
  String.concat ", " (List.map (rle_to_string (fun a -> a)) l)

let () =
  let r =
    encode ["a"; "a"; "a"; "a"; "b"; "c"; "c"; "a"; "a"; "d"; "e"; "e"; "e"; "e"]
  in
  Output.print solution_to_string r
