let print f a = print_endline (f a)

let print_option f = function
  | Some v -> print f v
  | None -> print (fun _ -> "None") ()
