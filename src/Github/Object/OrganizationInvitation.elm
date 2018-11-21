-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql
module Github.Object.OrganizationInvitation exposing (..)

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
import Github.Enum.OrganizationInvitationType
import Github.Enum.OrganizationInvitationRole


{-| Select fields to build up a SelectionSet for this object.
-}
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.OrganizationInvitation
selection constructor =
    Object.selection constructor
{-| Identifies the date and time when the object was created.
-}
createdAt : Field Github.Scalar.DateTime Github.Object.OrganizationInvitation
createdAt =
      Object.fieldDecoder "createdAt" [] (Object.scalarDecoder |> Decode.map Github.Scalar.DateTime)


{-| The email address of the user invited to the organization.
-}
email : Field (Maybe String) Github.Object.OrganizationInvitation
email =
      Object.fieldDecoder "email" [] (Decode.string |> Decode.nullable)


id : Field Github.Scalar.Id Github.Object.OrganizationInvitation
id =
      Object.fieldDecoder "id" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Id)


{-| The type of invitation that was sent (e.g. email, user).
-}
invitationType : Field Github.Enum.OrganizationInvitationType.OrganizationInvitationType Github.Object.OrganizationInvitation
invitationType =
      Object.fieldDecoder "invitationType" [] (Github.Enum.OrganizationInvitationType.decoder)


{-| The user who was invited to the organization.
-}
invitee : SelectionSet decodesTo Github.Object.User -> Field (Maybe decodesTo) Github.Object.OrganizationInvitation
invitee object_ =
      Object.selectionField "invitee" [] (object_) (identity >> Decode.nullable)


{-| The user who created the invitation.
-}
inviter : SelectionSet decodesTo Github.Object.User -> Field decodesTo Github.Object.OrganizationInvitation
inviter object_ =
      Object.selectionField "inviter" [] (object_) (identity)


{-| The organization the invite is for
-}
organization : SelectionSet decodesTo Github.Object.Organization -> Field decodesTo Github.Object.OrganizationInvitation
organization object_ =
      Object.selectionField "organization" [] (object_) (identity)


{-| The user's pending role in the organization (e.g. member, owner).
-}
role : Field Github.Enum.OrganizationInvitationRole.OrganizationInvitationRole Github.Object.OrganizationInvitation
role =
      Object.fieldDecoder "role" [] (Github.Enum.OrganizationInvitationRole.decoder)
