-- Do not manually edit this file, it was auto-generated by Graphqelm
-- https://github.com/dillonkearns/graphqelm


module Github.Object.LicenseRule exposing (..)

import Github.InputObject
import Github.Interface
import Github.Object
import Github.Scalar
import Github.Union
import Graphqelm.Field as Field exposing (Field)
import Graphqelm.Internal.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Internal.Builder.Object as Object
import Graphqelm.Internal.Encode as Encode exposing (Value)
import Graphqelm.OptionalArgument exposing (OptionalArgument(Absent))
import Graphqelm.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


{-| Select fields to build up a SelectionSet for this object.
-}
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.LicenseRule
selection constructor =
    Object.selection constructor


{-| A description of the rule
-}
description : Field String Github.Object.LicenseRule
description =
    Object.fieldDecoder "description" [] Decode.string


{-| The machine-readable rule key
-}
key : Field String Github.Object.LicenseRule
key =
    Object.fieldDecoder "key" [] Decode.string


{-| The human-readable rule label
-}
label : Field String Github.Object.LicenseRule
label =
    Object.fieldDecoder "label" [] Decode.string