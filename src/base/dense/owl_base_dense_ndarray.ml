(*
 * OWL - OCaml Scientific Computing
 * Copyright (c) 2016-2022 Liang Wang <liang@ocaml.xyz>
 *)

(** Ndarray: module aliases *)

module Operator = struct
  include Owl_operator.Make_Basic (Owl_base_dense_ndarray_generic)

  (* include Owl_operator.Make_Extend (Owl_base_dense_ndarray_generic) *)
  include Owl_operator.Make_Ndarray (Owl_base_dense_ndarray_generic)
end

module Generic = struct
  include Owl_base_dense_ndarray_generic
  include Operator
end

module S = struct
  include Owl_base_dense_ndarray_s
  include Operator
end

module D = struct
  include Owl_base_dense_ndarray_d
  include Operator
end

module C = struct
  include Owl_base_dense_ndarray_c
  include Operator
end

module Z = struct
  include Owl_base_dense_ndarray_z
  include Operator
end
