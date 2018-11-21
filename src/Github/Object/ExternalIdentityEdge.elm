-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql
module Github.Object.ExternalIdentityEdge exposing (..)

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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.ExternalIdentityEdge
selection constructor =
    Object.selection constructor
{-| A cursor for use in pagination.
-}
cursor : Field String Github.Object.ExternalIdentityEdge
cursor =
      Object.fieldDecoder "cursor" [] (Decode.string)


{-| The item at the end of the edge.
-}
node : SelectionSet decodesTo Github.Object.ExternalIdentity -> Field (Maybe decodesTo) Github.Object.ExternalIdentityEdge
node object_ =
      Object.selectionField "node" [] (object_) (identity >> Decode.nullable)
