-- Do not manually edit this file, it was auto-generated by Graphqelm
-- https://github.com/dillonkearns/graphqelm


module Github.Object.SearchResultItemEdge exposing (..)

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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.SearchResultItemEdge
selection constructor =
    Object.selection constructor


{-| A cursor for use in pagination.
-}
cursor : Field String Github.Object.SearchResultItemEdge
cursor =
    Object.fieldDecoder "cursor" [] Decode.string


{-| The item at the end of the edge.
-}
node : SelectionSet decodesTo Github.Union.SearchResultItem -> Field (Maybe decodesTo) Github.Object.SearchResultItemEdge
node object =
    Object.selectionField "node" [] object (identity >> Decode.nullable)


{-| Text matches on the result found.
-}
textMatches : SelectionSet decodesTo Github.Object.TextMatch -> Field (Maybe (List (Maybe decodesTo))) Github.Object.SearchResultItemEdge
textMatches object =
    Object.selectionField "textMatches" [] object (identity >> Decode.nullable >> Decode.list >> Decode.nullable)