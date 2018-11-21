-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql
module Github.Object.AddProjectCardPayload exposing (..)

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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.AddProjectCardPayload
selection constructor =
    Object.selection constructor
{-| The edge from the ProjectColumn's card connection.

**Upcoming Change on 2019-01-01 UTC**
**Description:** Type for `cardEdge` will change from `ProjectCardEdge!` to `ProjectCardEdge`.
**Reason:** In preparation for an upcoming change to the way we report mutation errors, non-nullable payload fields are becoming nullable.

-}
cardEdge : SelectionSet decodesTo Github.Object.ProjectCardEdge -> Field decodesTo Github.Object.AddProjectCardPayload
cardEdge object_ =
      Object.selectionField "cardEdge" [] (object_) (identity)


{-| A unique identifier for the client performing the mutation.
-}
clientMutationId : Field (Maybe String) Github.Object.AddProjectCardPayload
clientMutationId =
      Object.fieldDecoder "clientMutationId" [] (Decode.string |> Decode.nullable)


{-| The ProjectColumn

**Upcoming Change on 2019-01-01 UTC**
**Description:** Type for `projectColumn` will change from `Project!` to `ProjectColumn`.
**Reason:** In preparation for an upcoming change to the way we report mutation errors, non-nullable payload fields are becoming nullable.

-}
projectColumn : SelectionSet decodesTo Github.Object.Project -> Field decodesTo Github.Object.AddProjectCardPayload
projectColumn object_ =
      Object.selectionField "projectColumn" [] (object_) (identity)
