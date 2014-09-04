-- Copyright (c) 2014 Microsoft Corporation. All rights reserved.
-- Released under Apache 2.0 license as described in the file LICENSE.
-- Author: Leonardo de Moura

import logic.classes.decidable logic.classes.inhabited

open decidable

namespace unit

inductive unit : Type :=
star : unit

notation `⋆`:max := star

theorem unit_eq (a b : unit) : a = b :=
rec (rec rfl b) a

theorem unit_eq_star (a : unit) : a = star :=
unit_eq a star

theorem unit_inhabited [instance] : inhabited unit :=
inhabited_mk ⋆

theorem decidable_eq [instance] (a b : unit) : decidable (a = b) :=
inl (unit_eq a b)

end unit
