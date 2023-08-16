let rec last_two = function
  | [] -> None
  | [ _ ] -> None
  | [ x; y ] -> Some (x, y)
  | _ :: t -> last_two t

let print f a = print_endline (f a)

let print_option f = function
  | Some v -> print f v
  | None -> print (fun _ -> "None") ()

let print_tuple (x, y) = x ^ "; " ^ y
let print_solution = print_option print_tuple
let l = last_two [ "a"; "b"; "c"; "d" ]
let () = print_solution l
