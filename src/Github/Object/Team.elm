-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql
module Github.Object.Team exposing (..)

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
import Github.Enum.TeamMembershipType
import Github.Enum.TeamMemberRole
import Github.Enum.TeamPrivacy
import Github.Enum.SubscriptionState


{-| Select fields to build up a SelectionSet for this object.
-}
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.Team
selection constructor =
    Object.selection constructor
type alias AncestorsOptionalArguments = { after : OptionalArgument String, before : OptionalArgument String, first : OptionalArgument Int, last : OptionalArgument Int }

{-| A list of teams that are ancestors of this team.

  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.

-}
ancestors : (AncestorsOptionalArguments -> AncestorsOptionalArguments) -> SelectionSet decodesTo Github.Object.TeamConnection -> Field decodesTo Github.Object.Team
ancestors fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "after" filledInOptionals.after (Encode.string), Argument.optional "before" filledInOptionals.before (Encode.string), Argument.optional "first" filledInOptionals.first (Encode.int), Argument.optional "last" filledInOptionals.last (Encode.int) ]
                |> List.filterMap identity
    in
      Object.selectionField "ancestors" optionalArgs (object_) (identity)


type alias AvatarUrlOptionalArguments = { size : OptionalArgument Int }

{-| A URL pointing to the team's avatar.

  - size - The size in pixels of the resulting square image.

-}
avatarUrl : (AvatarUrlOptionalArguments -> AvatarUrlOptionalArguments) -> Field (Maybe Github.Scalar.Uri) Github.Object.Team
avatarUrl fillInOptionals =
    let
        filledInOptionals =
            fillInOptionals { size = Absent }

        optionalArgs =
            [ Argument.optional "size" filledInOptionals.size (Encode.int) ]
                |> List.filterMap identity
    in
      Object.fieldDecoder "avatarUrl" optionalArgs (Object.scalarDecoder |> Decode.map Github.Scalar.Uri |> Decode.nullable)


type alias ChildTeamsOptionalArguments = { orderBy : OptionalArgument Github.InputObject.TeamOrder, userLogins : OptionalArgument (List String), immediateOnly : OptionalArgument Bool, after : OptionalArgument String, before : OptionalArgument String, first : OptionalArgument Int, last : OptionalArgument Int }

{-| List of child teams belonging to this team

  - orderBy - Order for connection
  - userLogins - User logins to filter by
  - immediateOnly - Whether to list immediate child teams or all descendant child teams.
  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.

-}
childTeams : (ChildTeamsOptionalArguments -> ChildTeamsOptionalArguments) -> SelectionSet decodesTo Github.Object.TeamConnection -> Field decodesTo Github.Object.Team
childTeams fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { orderBy = Absent, userLogins = Absent, immediateOnly = Absent, after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "orderBy" filledInOptionals.orderBy (Github.InputObject.encodeTeamOrder), Argument.optional "userLogins" filledInOptionals.userLogins (Encode.string |> Encode.list), Argument.optional "immediateOnly" filledInOptionals.immediateOnly (Encode.bool), Argument.optional "after" filledInOptionals.after (Encode.string), Argument.optional "before" filledInOptionals.before (Encode.string), Argument.optional "first" filledInOptionals.first (Encode.int), Argument.optional "last" filledInOptionals.last (Encode.int) ]
                |> List.filterMap identity
    in
      Object.selectionField "childTeams" optionalArgs (object_) (identity)


{-| The slug corresponding to the organization and team.
-}
combinedSlug : Field String Github.Object.Team
combinedSlug =
      Object.fieldDecoder "combinedSlug" [] (Decode.string)


{-| Identifies the date and time when the object was created.
-}
createdAt : Field Github.Scalar.DateTime Github.Object.Team
createdAt =
      Object.fieldDecoder "createdAt" [] (Object.scalarDecoder |> Decode.map Github.Scalar.DateTime)


{-| The description of the team.
-}
description : Field (Maybe String) Github.Object.Team
description =
      Object.fieldDecoder "description" [] (Decode.string |> Decode.nullable)


{-| The HTTP path for editing this team
-}
editTeamResourcePath : Field Github.Scalar.Uri Github.Object.Team
editTeamResourcePath =
      Object.fieldDecoder "editTeamResourcePath" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)


{-| The HTTP URL for editing this team
-}
editTeamUrl : Field Github.Scalar.Uri Github.Object.Team
editTeamUrl =
      Object.fieldDecoder "editTeamUrl" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)


id : Field Github.Scalar.Id Github.Object.Team
id =
      Object.fieldDecoder "id" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Id)


type alias InvitationsOptionalArguments = { after : OptionalArgument String, before : OptionalArgument String, first : OptionalArgument Int, last : OptionalArgument Int }

{-| A list of pending invitations for users to this team

  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.

-}
invitations : (InvitationsOptionalArguments -> InvitationsOptionalArguments) -> SelectionSet decodesTo Github.Object.OrganizationInvitationConnection -> Field (Maybe decodesTo) Github.Object.Team
invitations fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "after" filledInOptionals.after (Encode.string), Argument.optional "before" filledInOptionals.before (Encode.string), Argument.optional "first" filledInOptionals.first (Encode.int), Argument.optional "last" filledInOptionals.last (Encode.int) ]
                |> List.filterMap identity
    in
      Object.selectionField "invitations" optionalArgs (object_) (identity >> Decode.nullable)


type alias MembersOptionalArguments = { after : OptionalArgument String, before : OptionalArgument String, first : OptionalArgument Int, last : OptionalArgument Int, query : OptionalArgument String, membership : OptionalArgument Github.Enum.TeamMembershipType.TeamMembershipType, role : OptionalArgument Github.Enum.TeamMemberRole.TeamMemberRole, orderBy : OptionalArgument Github.InputObject.TeamMemberOrder }

{-| A list of users who are members of this team.

  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.
  - query - The search string to look for.
  - membership - Filter by membership type
  - role - Filter by team member role
  - orderBy - Order for the connection.

-}
members : (MembersOptionalArguments -> MembersOptionalArguments) -> SelectionSet decodesTo Github.Object.TeamMemberConnection -> Field decodesTo Github.Object.Team
members fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { after = Absent, before = Absent, first = Absent, last = Absent, query = Absent, membership = Absent, role = Absent, orderBy = Absent }

        optionalArgs =
            [ Argument.optional "after" filledInOptionals.after (Encode.string), Argument.optional "before" filledInOptionals.before (Encode.string), Argument.optional "first" filledInOptionals.first (Encode.int), Argument.optional "last" filledInOptionals.last (Encode.int), Argument.optional "query" filledInOptionals.query (Encode.string), Argument.optional "membership" filledInOptionals.membership ((Encode.enum Github.Enum.TeamMembershipType.toString)), Argument.optional "role" filledInOptionals.role ((Encode.enum Github.Enum.TeamMemberRole.toString)), Argument.optional "orderBy" filledInOptionals.orderBy (Github.InputObject.encodeTeamMemberOrder) ]
                |> List.filterMap identity
    in
      Object.selectionField "members" optionalArgs (object_) (identity)


{-| The HTTP path for the team' members
-}
membersResourcePath : Field Github.Scalar.Uri Github.Object.Team
membersResourcePath =
      Object.fieldDecoder "membersResourcePath" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)


{-| The HTTP URL for the team' members
-}
membersUrl : Field Github.Scalar.Uri Github.Object.Team
membersUrl =
      Object.fieldDecoder "membersUrl" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)


{-| The name of the team.
-}
name : Field String Github.Object.Team
name =
      Object.fieldDecoder "name" [] (Decode.string)


{-| The HTTP path creating a new team
-}
newTeamResourcePath : Field Github.Scalar.Uri Github.Object.Team
newTeamResourcePath =
      Object.fieldDecoder "newTeamResourcePath" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)


{-| The HTTP URL creating a new team
-}
newTeamUrl : Field Github.Scalar.Uri Github.Object.Team
newTeamUrl =
      Object.fieldDecoder "newTeamUrl" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)


{-| The organization that owns this team.
-}
organization : SelectionSet decodesTo Github.Object.Organization -> Field decodesTo Github.Object.Team
organization object_ =
      Object.selectionField "organization" [] (object_) (identity)


{-| The parent team of the team.
-}
parentTeam : SelectionSet decodesTo Github.Object.Team -> Field (Maybe decodesTo) Github.Object.Team
parentTeam object_ =
      Object.selectionField "parentTeam" [] (object_) (identity >> Decode.nullable)


{-| The level of privacy the team has.
-}
privacy : Field Github.Enum.TeamPrivacy.TeamPrivacy Github.Object.Team
privacy =
      Object.fieldDecoder "privacy" [] (Github.Enum.TeamPrivacy.decoder)


type alias RepositoriesOptionalArguments = { after : OptionalArgument String, before : OptionalArgument String, first : OptionalArgument Int, last : OptionalArgument Int, query : OptionalArgument String, orderBy : OptionalArgument Github.InputObject.TeamRepositoryOrder }

{-| A list of repositories this team has access to.

  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.
  - query - The search string to look for.
  - orderBy - Order for the connection.

-}
repositories : (RepositoriesOptionalArguments -> RepositoriesOptionalArguments) -> SelectionSet decodesTo Github.Object.TeamRepositoryConnection -> Field decodesTo Github.Object.Team
repositories fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { after = Absent, before = Absent, first = Absent, last = Absent, query = Absent, orderBy = Absent }

        optionalArgs =
            [ Argument.optional "after" filledInOptionals.after (Encode.string), Argument.optional "before" filledInOptionals.before (Encode.string), Argument.optional "first" filledInOptionals.first (Encode.int), Argument.optional "last" filledInOptionals.last (Encode.int), Argument.optional "query" filledInOptionals.query (Encode.string), Argument.optional "orderBy" filledInOptionals.orderBy (Github.InputObject.encodeTeamRepositoryOrder) ]
                |> List.filterMap identity
    in
      Object.selectionField "repositories" optionalArgs (object_) (identity)


{-| The HTTP path for this team's repositories
-}
repositoriesResourcePath : Field Github.Scalar.Uri Github.Object.Team
repositoriesResourcePath =
      Object.fieldDecoder "repositoriesResourcePath" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)


{-| The HTTP URL for this team's repositories
-}
repositoriesUrl : Field Github.Scalar.Uri Github.Object.Team
repositoriesUrl =
      Object.fieldDecoder "repositoriesUrl" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)


{-| The HTTP path for this team
-}
resourcePath : Field Github.Scalar.Uri Github.Object.Team
resourcePath =
      Object.fieldDecoder "resourcePath" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)


{-| The slug corresponding to the team.
-}
slug : Field String Github.Object.Team
slug =
      Object.fieldDecoder "slug" [] (Decode.string)


{-| The HTTP path for this team's teams
-}
teamsResourcePath : Field Github.Scalar.Uri Github.Object.Team
teamsResourcePath =
      Object.fieldDecoder "teamsResourcePath" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)


{-| The HTTP URL for this team's teams
-}
teamsUrl : Field Github.Scalar.Uri Github.Object.Team
teamsUrl =
      Object.fieldDecoder "teamsUrl" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)


{-| Identifies the date and time when the object was last updated.
-}
updatedAt : Field Github.Scalar.DateTime Github.Object.Team
updatedAt =
      Object.fieldDecoder "updatedAt" [] (Object.scalarDecoder |> Decode.map Github.Scalar.DateTime)


{-| The HTTP URL for this team
-}
url : Field Github.Scalar.Uri Github.Object.Team
url =
      Object.fieldDecoder "url" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)


{-| Team is adminable by the viewer.
-}
viewerCanAdminister : Field Bool Github.Object.Team
viewerCanAdminister =
      Object.fieldDecoder "viewerCanAdminister" [] (Decode.bool)


{-| Check if the viewer is able to change their subscription status for the repository.
-}
viewerCanSubscribe : Field Bool Github.Object.Team
viewerCanSubscribe =
      Object.fieldDecoder "viewerCanSubscribe" [] (Decode.bool)


{-| Identifies if the viewer is watching, not watching, or ignoring the subscribable entity.
-}
viewerSubscription : Field (Maybe Github.Enum.SubscriptionState.SubscriptionState) Github.Object.Team
viewerSubscription =
      Object.fieldDecoder "viewerSubscription" [] (Github.Enum.SubscriptionState.decoder |> Decode.nullable)
