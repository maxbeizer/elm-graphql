-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql
module Github.Object.AddReactionPayload exposing (..)

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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.AddReactionPayload
selection constructor =
    Object.selection constructor
{-| A unique identifier for the client performing the mutation.
-}
clientMutationId : Field (Maybe String) Github.Object.AddReactionPayload
clientMutationId =
      Object.fieldDecoder "clientMutationId" [] (Decode.string |> Decode.nullable)


{-| The reaction object.

**Upcoming Change on 2019-01-01 UTC**
**Description:** Type for `reaction` will change from `Reaction!` to `Reaction`.
**Reason:** In preparation for an upcoming change to the way we report mutation errors, non-nullable payload fields are becoming nullable.

-}
reaction : SelectionSet decodesTo Github.Object.Reaction -> Field decodesTo Github.Object.AddReactionPayload
reaction object_ =
      Object.selectionField "reaction" [] (object_) (identity)


{-| The reactable subject.

**Upcoming Change on 2019-01-01 UTC**
**Description:** Type for `subject` will change from `Reactable!` to `Reactable`.
**Reason:** In preparation for an upcoming change to the way we report mutation errors, non-nullable payload fields are becoming nullable.

-}
subject : SelectionSet decodesTo Github.Interface.Reactable -> Field decodesTo Github.Object.AddReactionPayload
subject object_ =
      Object.selectionField "subject" [] (object_) (identity)
