-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql
module Github.Object.UnassignedEvent exposing (..)

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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.UnassignedEvent
selection constructor =
    Object.selection constructor
{-| Identifies the actor who performed the event.
-}
actor : SelectionSet decodesTo Github.Interface.Actor -> Field (Maybe decodesTo) Github.Object.UnassignedEvent
actor object_ =
      Object.selectionField "actor" [] (object_) (identity >> Decode.nullable)


{-| Identifies the assignable associated with the event.
-}
assignable : SelectionSet decodesTo Github.Interface.Assignable -> Field decodesTo Github.Object.UnassignedEvent
assignable object_ =
      Object.selectionField "assignable" [] (object_) (identity)


{-| Identifies the date and time when the object was created.
-}
createdAt : Field Github.Scalar.DateTime Github.Object.UnassignedEvent
createdAt =
      Object.fieldDecoder "createdAt" [] (Object.scalarDecoder |> Decode.map Github.Scalar.DateTime)


id : Field Github.Scalar.Id Github.Object.UnassignedEvent
id =
      Object.fieldDecoder "id" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Id)


{-| Identifies the subject (user) who was unassigned.
-}
user : SelectionSet decodesTo Github.Object.User -> Field (Maybe decodesTo) Github.Object.UnassignedEvent
user object_ =
      Object.selectionField "user" [] (object_) (identity >> Decode.nullable)
