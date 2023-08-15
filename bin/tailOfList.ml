let rec last l =
  match l with [] -> None | h :: [] -> Some h | _ :: t -> last t

let print a =
  match a with Some s -> print_endline s | None -> print_endline "None"

let a = last [ "a"; "b"; "c"; "d" ]
let () = print a