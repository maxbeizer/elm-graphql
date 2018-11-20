-- Do not manually edit this file, it was auto-generated by Graphqelm
-- https://github.com/dillonkearns/graphqelm


module Github.Object.TreeEntry exposing (..)

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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.TreeEntry
selection constructor =
    Object.selection constructor


{-| Entry file mode.
-}
mode : Field Int Github.Object.TreeEntry
mode =
    Object.fieldDecoder "mode" [] Decode.int


{-| Entry file name.
-}
name : Field String Github.Object.TreeEntry
name =
    Object.fieldDecoder "name" [] Decode.string


{-| Entry file object.
-}
object : SelectionSet decodesTo Github.Interface.GitObject -> Field (Maybe decodesTo) Github.Object.TreeEntry
object object =
    Object.selectionField "object" [] object (identity >> Decode.nullable)


{-| Entry file Git object ID.
-}
oid : Field Github.Scalar.GitObjectID Github.Object.TreeEntry
oid =
    Object.fieldDecoder "oid" [] (Decode.oneOf [ Decode.string, Decode.float |> Decode.map toString, Decode.int |> Decode.map toString, Decode.bool |> Decode.map toString ] |> Decode.map Github.Scalar.GitObjectID)


{-| The Repository the tree entry belongs to
-}
repository : SelectionSet decodesTo Github.Object.Repository -> Field decodesTo Github.Object.TreeEntry
repository object =
    Object.selectionField "repository" [] object identity


{-| Entry file type.
-}
type_ : Field String Github.Object.TreeEntry
type_ =
    Object.fieldDecoder "type" [] Decode.string
