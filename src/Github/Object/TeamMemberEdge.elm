-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql
module Github.Object.TeamMemberEdge exposing (..)

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
import Github.Enum.TeamMemberRole


{-| Select fields to build up a SelectionSet for this object.
-}
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.TeamMemberEdge
selection constructor =
    Object.selection constructor
{-| A cursor for use in pagination.
-}
cursor : Field String Github.Object.TeamMemberEdge
cursor =
      Object.fieldDecoder "cursor" [] (Decode.string)


{-| The HTTP path to the organization's member access page.
-}
memberAccessResourcePath : Field Github.Scalar.Uri Github.Object.TeamMemberEdge
memberAccessResourcePath =
      Object.fieldDecoder "memberAccessResourcePath" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)


{-| The HTTP URL to the organization's member access page.
-}
memberAccessUrl : Field Github.Scalar.Uri Github.Object.TeamMemberEdge
memberAccessUrl =
      Object.fieldDecoder "memberAccessUrl" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)


node : SelectionSet decodesTo Github.Object.User -> Field decodesTo Github.Object.TeamMemberEdge
node object_ =
      Object.selectionField "node" [] (object_) (identity)


{-| The role the member has on the team.
-}
role : Field Github.Enum.TeamMemberRole.TeamMemberRole Github.Object.TeamMemberEdge
role =
      Object.fieldDecoder "role" [] (Github.Enum.TeamMemberRole.decoder)
