-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql
module Github.Object.ReviewDismissalAllowanceConnection exposing (..)

import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Field as Field exposing (Field)
import Graphql.Internal.Builder.Object as Object
import Graphql.SelectionSet exposing (SelectionSet)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Github.Object
import Github.Interface
import Github.Union
import Github.Scalar
import Github.InputObject
import Json.Decode as Decode
import Graphql.Internal.Encode as Encode exposing (Value)



{-| Select fields to build up a SelectionSet for this object.
-}
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.ReviewDismissalAllowanceConnection
selection constructor =
    Object.selection constructor
{-| A list of edges.
-}
edges : SelectionSet decodesTo Github.Object.ReviewDismissalAllowanceEdge -> Field (Maybe (List (Maybe decodesTo))) Github.Object.ReviewDismissalAllowanceConnection
edges object_ =
      Object.selectionField "edges" [] (object_) (identity >> Decode.nullable >> Decode.list >> Decode.nullable)


{-| A list of nodes.
-}
nodes : SelectionSet decodesTo Github.Object.ReviewDismissalAllowance -> Field (Maybe (List (Maybe decodesTo))) Github.Object.ReviewDismissalAllowanceConnection
nodes object_ =
      Object.selectionField "nodes" [] (object_) (identity >> Decode.nullable >> Decode.list >> Decode.nullable)


{-| Information to aid in pagination.
-}
pageInfo : SelectionSet decodesTo Github.Object.PageInfo -> Field decodesTo Github.Object.ReviewDismissalAllowanceConnection
pageInfo object_ =
      Object.selectionField "pageInfo" [] (object_) (identity)


{-| Identifies the total count of items in the connection.
-}
totalCount : Field Int Github.Object.ReviewDismissalAllowanceConnection
totalCount =
      Object.fieldDecoder "totalCount" [] (Decode.int)
