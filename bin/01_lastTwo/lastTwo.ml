open Exercises

let rec last_two = function
  | [] -> None
  | [ _ ] -> None
  | [ x; y ] -> Some (x, y)
  | _ :: t -> last_two t

let print_solution = Output.print_option (fun (x, y) -> x ^ "; " ^ y)

let () =
  let l = last_two [ "a"; "b"; "c"; "d" ] in
  print_solution l