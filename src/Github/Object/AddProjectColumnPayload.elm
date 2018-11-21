-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql
module Github.Object.AddProjectColumnPayload exposing (..)

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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.AddProjectColumnPayload
selection constructor =
    Object.selection constructor
{-| A unique identifier for the client performing the mutation.
-}
clientMutationId : Field (Maybe String) Github.Object.AddProjectColumnPayload
clientMutationId =
      Object.fieldDecoder "clientMutationId" [] (Decode.string |> Decode.nullable)


{-| The edge from the project's column connection.

**Upcoming Change on 2019-01-01 UTC**
**Description:** Type for `columnEdge` will change from `ProjectColumnEdge!` to `ProjectColumnEdge`.
**Reason:** In preparation for an upcoming change to the way we report mutation errors, non-nullable payload fields are becoming nullable.

-}
columnEdge : SelectionSet decodesTo Github.Object.ProjectColumnEdge -> Field decodesTo Github.Object.AddProjectColumnPayload
columnEdge object_ =
      Object.selectionField "columnEdge" [] (object_) (identity)


{-| The project

**Upcoming Change on 2019-01-01 UTC**
**Description:** Type for `project` will change from `Project!` to `Project`.
**Reason:** In preparation for an upcoming change to the way we report mutation errors, non-nullable payload fields are becoming nullable.

-}
project : SelectionSet decodesTo Github.Object.Project -> Field decodesTo Github.Object.AddProjectColumnPayload
project object_ =
      Object.selectionField "project" [] (object_) (identity)
