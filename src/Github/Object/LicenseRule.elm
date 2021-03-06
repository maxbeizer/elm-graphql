-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql
module Github.Object.LicenseRule exposing (..)

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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.LicenseRule
selection constructor =
    Object.selection constructor
{-| A description of the rule
-}
description : Field String Github.Object.LicenseRule
description =
      Object.fieldDecoder "description" [] (Decode.string)


{-| The machine-readable rule key
-}
key : Field String Github.Object.LicenseRule
key =
      Object.fieldDecoder "key" [] (Decode.string)


{-| The human-readable rule label
-}
label : Field String Github.Object.LicenseRule
label =
      Object.fieldDecoder "label" [] (Decode.string)
