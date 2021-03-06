-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql
module Github.Object.PageInfo exposing (..)

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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.PageInfo
selection constructor =
    Object.selection constructor
{-| When paginating forwards, the cursor to continue.
-}
endCursor : Field (Maybe String) Github.Object.PageInfo
endCursor =
      Object.fieldDecoder "endCursor" [] (Decode.string |> Decode.nullable)


{-| When paginating forwards, are there more items?
-}
hasNextPage : Field Bool Github.Object.PageInfo
hasNextPage =
      Object.fieldDecoder "hasNextPage" [] (Decode.bool)


{-| When paginating backwards, are there more items?
-}
hasPreviousPage : Field Bool Github.Object.PageInfo
hasPreviousPage =
      Object.fieldDecoder "hasPreviousPage" [] (Decode.bool)


{-| When paginating backwards, the cursor to continue.
-}
startCursor : Field (Maybe String) Github.Object.PageInfo
startCursor =
      Object.fieldDecoder "startCursor" [] (Decode.string |> Decode.nullable)
