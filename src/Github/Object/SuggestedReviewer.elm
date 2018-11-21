-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql
module Github.Object.SuggestedReviewer exposing (..)

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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.SuggestedReviewer
selection constructor =
    Object.selection constructor
{-| Is this suggestion based on past commits?
-}
isAuthor : Field Bool Github.Object.SuggestedReviewer
isAuthor =
      Object.fieldDecoder "isAuthor" [] (Decode.bool)


{-| Is this suggestion based on past review comments?
-}
isCommenter : Field Bool Github.Object.SuggestedReviewer
isCommenter =
      Object.fieldDecoder "isCommenter" [] (Decode.bool)


{-| Identifies the user suggested to review the pull request.
-}
reviewer : SelectionSet decodesTo Github.Object.User -> Field decodesTo Github.Object.SuggestedReviewer
reviewer object_ =
      Object.selectionField "reviewer" [] (object_) (identity)
