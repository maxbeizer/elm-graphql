-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql
module Github.Object.RepositoryInvitation exposing (..)

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
import Github.Enum.RepositoryPermission


{-| Select fields to build up a SelectionSet for this object.
-}
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.RepositoryInvitation
selection constructor =
    Object.selection constructor
id : Field Github.Scalar.Id Github.Object.RepositoryInvitation
id =
      Object.fieldDecoder "id" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Id)


{-| The user who received the invitation.
-}
invitee : SelectionSet decodesTo Github.Object.User -> Field decodesTo Github.Object.RepositoryInvitation
invitee object_ =
      Object.selectionField "invitee" [] (object_) (identity)


{-| The user who created the invitation.
-}
inviter : SelectionSet decodesTo Github.Object.User -> Field decodesTo Github.Object.RepositoryInvitation
inviter object_ =
      Object.selectionField "inviter" [] (object_) (identity)


{-| The permission granted on this repository by this invitation.
-}
permission : Field Github.Enum.RepositoryPermission.RepositoryPermission Github.Object.RepositoryInvitation
permission =
      Object.fieldDecoder "permission" [] (Github.Enum.RepositoryPermission.decoder)


{-| The Repository the user is invited to.
-}
repository : SelectionSet decodesTo Github.Interface.RepositoryInfo -> Field (Maybe decodesTo) Github.Object.RepositoryInvitation
repository object_ =
      Object.selectionField "repository" [] (object_) (identity >> Decode.nullable)
