-- Do not manually edit this file, it was auto-generated by Graphqelm
-- https://github.com/dillonkearns/graphqelm


module Github.Object.AddReactionPayload exposing (..)

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
reaction object =
    Object.selectionField "reaction" [] object identity


{-| The reactable subject.

**Upcoming Change on 2019-01-01 UTC**
**Description:** Type for `subject` will change from `Reactable!` to `Reactable`.
**Reason:** In preparation for an upcoming change to the way we report mutation errors, non-nullable payload fields are becoming nullable.

-}
subject : SelectionSet decodesTo Github.Interface.Reactable -> Field decodesTo Github.Object.AddReactionPayload
subject object =
    Object.selectionField "subject" [] object identity
