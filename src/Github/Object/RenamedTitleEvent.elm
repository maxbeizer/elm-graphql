-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql
module Github.Object.RenamedTitleEvent exposing (..)

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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.RenamedTitleEvent
selection constructor =
    Object.selection constructor
{-| Identifies the actor who performed the event.
-}
actor : SelectionSet decodesTo Github.Interface.Actor -> Field (Maybe decodesTo) Github.Object.RenamedTitleEvent
actor object_ =
      Object.selectionField "actor" [] (object_) (identity >> Decode.nullable)


{-| Identifies the date and time when the object was created.
-}
createdAt : Field Github.Scalar.DateTime Github.Object.RenamedTitleEvent
createdAt =
      Object.fieldDecoder "createdAt" [] (Object.scalarDecoder |> Decode.map Github.Scalar.DateTime)


{-| Identifies the current title of the issue or pull request.
-}
currentTitle : Field String Github.Object.RenamedTitleEvent
currentTitle =
      Object.fieldDecoder "currentTitle" [] (Decode.string)


id : Field Github.Scalar.Id Github.Object.RenamedTitleEvent
id =
      Object.fieldDecoder "id" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Id)


{-| Identifies the previous title of the issue or pull request.
-}
previousTitle : Field String Github.Object.RenamedTitleEvent
previousTitle =
      Object.fieldDecoder "previousTitle" [] (Decode.string)


{-| Subject that was renamed.
-}
subject : SelectionSet decodesTo Github.Union.RenamedTitleSubject -> Field decodesTo Github.Object.RenamedTitleEvent
subject object_ =
      Object.selectionField "subject" [] (object_) (identity)
