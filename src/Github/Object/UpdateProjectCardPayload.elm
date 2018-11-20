-- Do not manually edit this file, it was auto-generated by Graphqelm
-- https://github.com/dillonkearns/graphqelm


module Github.Object.UpdateProjectCardPayload exposing (..)

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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.UpdateProjectCardPayload
selection constructor =
    Object.selection constructor


{-| A unique identifier for the client performing the mutation.
-}
clientMutationId : Field (Maybe String) Github.Object.UpdateProjectCardPayload
clientMutationId =
    Object.fieldDecoder "clientMutationId" [] (Decode.string |> Decode.nullable)


{-| The updated ProjectCard.

**Upcoming Change on 2019-01-01 UTC**
**Description:** Type for `projectCard` will change from `ProjectCard!` to `ProjectCard`.
**Reason:** In preparation for an upcoming change to the way we report mutation errors, non-nullable payload fields are becoming nullable.

-}
projectCard : SelectionSet decodesTo Github.Object.ProjectCard -> Field decodesTo Github.Object.UpdateProjectCardPayload
projectCard object =
    Object.selectionField "projectCard" [] object identity
