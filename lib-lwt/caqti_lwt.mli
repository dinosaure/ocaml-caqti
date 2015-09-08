(* Copyright (C) 2014  Petter Urkedal <paurkedal@gmail.com>
 *
 * This library is free software; you can redistribute it and/or modify it
 * under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or (at your
 * option) any later version, with the OCaml static compilation exception.
 *
 * This library is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public
 * License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this library.  If not, see <http://www.gnu.org/licenses/>.
 *)

(** Connecting with Lwt.  This module contains the signature and connect
    function specialized for use with Lwt. *)

open Caqti_sigs

include CAQTI with type 'a System.io = 'a Lwt.t

val read_sql_statement : ('a -> char option Lwt.t) -> 'a -> string option Lwt.t
[@@ocaml.deprecated "open Caqti_sql_io_lwt instead"]
