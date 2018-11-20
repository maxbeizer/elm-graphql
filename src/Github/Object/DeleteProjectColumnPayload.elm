-- Do not manually edit this file, it was auto-generated by Graphqelm
-- https://github.com/dillonkearns/graphqelm


module Github.Object.DeleteProjectColumnPayload exposing (..)

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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.DeleteProjectColumnPayload
selection constructor =
    Object.selection constructor


{-| A unique identifier for the client performing the mutation.
-}
clientMutationId : Field (Maybe String) Github.Object.DeleteProjectColumnPayload
clientMutationId =
    Object.fieldDecoder "clientMutationId" [] (Decode.string |> Decode.nullable)


{-| The deleted column ID.

**Upcoming Change on 2019-01-01 UTC**
**Description:** Type for `deletedColumnId` will change from `ID!` to `ID`.
**Reason:** In preparation for an upcoming change to the way we report mutation errors, non-nullable payload fields are becoming nullable.

-}
deletedColumnId : Field Github.Scalar.Id Github.Object.DeleteProjectColumnPayload
deletedColumnId =
    Object.fieldDecoder "deletedColumnId" [] (Decode.oneOf [ Decode.string, Decode.float |> Decode.map toString, Decode.int |> Decode.map toString, Decode.bool |> Decode.map toString ] |> Decode.map Github.Scalar.Id)


{-| The project the deleted column was in.

**Upcoming Change on 2019-01-01 UTC**
**Description:** Type for `project` will change from `Project!` to `Project`.
**Reason:** In preparation for an upcoming change to the way we report mutation errors, non-nullable payload fields are becoming nullable.

-}
project : SelectionSet decodesTo Github.Object.Project -> Field decodesTo Github.Object.DeleteProjectColumnPayload
project object =
    Object.selectionField "project" [] object identity