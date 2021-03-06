-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql
module Github.Object.Language exposing (..)

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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.Language
selection constructor =
    Object.selection constructor
{-| The color defined for the current language.
-}
color : Field (Maybe String) Github.Object.Language
color =
      Object.fieldDecoder "color" [] (Decode.string |> Decode.nullable)


id : Field Github.Scalar.Id Github.Object.Language
id =
      Object.fieldDecoder "id" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Id)


{-| The name of the current language.
-}
name : Field String Github.Object.Language
name =
      Object.fieldDecoder "name" [] (Decode.string)
