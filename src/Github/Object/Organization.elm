-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql
module Github.Object.Organization exposing (..)

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
import Github.Enum.RepositoryPrivacy
import Github.Enum.RepositoryAffiliation
import Github.Enum.RepositoryAffiliation
import Github.Enum.ProjectState
import Github.Enum.RepositoryPrivacy
import Github.Enum.RepositoryAffiliation
import Github.Enum.RepositoryAffiliation
import Github.Enum.TeamPrivacy
import Github.Enum.TeamRole


{-| Select fields to build up a SelectionSet for this object.
-}
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.Organization
selection constructor =
    Object.selection constructor
type alias AvatarUrlOptionalArguments = { size : OptionalArgument Int }

{-| A URL pointing to the organization's public avatar.

  - size - The size of the resulting square image.

-}
avatarUrl : (AvatarUrlOptionalArguments -> AvatarUrlOptionalArguments) -> Field Github.Scalar.Uri Github.Object.Organization
avatarUrl fillInOptionals =
    let
        filledInOptionals =
            fillInOptionals { size = Absent }

        optionalArgs =
            [ Argument.optional "size" filledInOptionals.size (Encode.int) ]
                |> List.filterMap identity
    in
      Object.fieldDecoder "avatarUrl" optionalArgs (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)


{-| Identifies the primary key from the database.
-}
databaseId : Field (Maybe Int) Github.Object.Organization
databaseId =
      Object.fieldDecoder "databaseId" [] (Decode.int |> Decode.nullable)


{-| The organization's public profile description.
-}
description : Field (Maybe String) Github.Object.Organization
description =
      Object.fieldDecoder "description" [] (Decode.string |> Decode.nullable)


{-| The organization's public email.
-}
email : Field (Maybe String) Github.Object.Organization
email =
      Object.fieldDecoder "email" [] (Decode.string |> Decode.nullable)


id : Field Github.Scalar.Id Github.Object.Organization
id =
      Object.fieldDecoder "id" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Id)


{-| Whether the organization has verified its profile email and website.
-}
isVerified : Field Bool Github.Object.Organization
isVerified =
      Object.fieldDecoder "isVerified" [] (Decode.bool)


{-| The organization's public profile location.
-}
location : Field (Maybe String) Github.Object.Organization
location =
      Object.fieldDecoder "location" [] (Decode.string |> Decode.nullable)


{-| The organization's login name.
-}
login : Field String Github.Object.Organization
login =
      Object.fieldDecoder "login" [] (Decode.string)


type alias MembersOptionalArguments = { after : OptionalArgument String, before : OptionalArgument String, first : OptionalArgument Int, last : OptionalArgument Int }

{-| A list of users who are members of this organization.

  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.

-}
members : (MembersOptionalArguments -> MembersOptionalArguments) -> SelectionSet decodesTo Github.Object.UserConnection -> Field decodesTo Github.Object.Organization
members fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "after" filledInOptionals.after (Encode.string), Argument.optional "before" filledInOptionals.before (Encode.string), Argument.optional "first" filledInOptionals.first (Encode.int), Argument.optional "last" filledInOptionals.last (Encode.int) ]
                |> List.filterMap identity
    in
      Object.selectionField "members" optionalArgs (object_) (identity)


{-| The organization's public profile name.
-}
name : Field (Maybe String) Github.Object.Organization
name =
      Object.fieldDecoder "name" [] (Decode.string |> Decode.nullable)


{-| The HTTP path creating a new team
-}
newTeamResourcePath : Field Github.Scalar.Uri Github.Object.Organization
newTeamResourcePath =
      Object.fieldDecoder "newTeamResourcePath" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)


{-| The HTTP URL creating a new team
-}
newTeamUrl : Field Github.Scalar.Uri Github.Object.Organization
newTeamUrl =
      Object.fieldDecoder "newTeamUrl" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)


{-| The billing email for the organization.
-}
organizationBillingEmail : Field (Maybe String) Github.Object.Organization
organizationBillingEmail =
      Object.fieldDecoder "organizationBillingEmail" [] (Decode.string |> Decode.nullable)


type alias PinnedRepositoriesOptionalArguments = { privacy : OptionalArgument Github.Enum.RepositoryPrivacy.RepositoryPrivacy, orderBy : OptionalArgument Github.InputObject.RepositoryOrder, affiliations : OptionalArgument (List (Maybe Github.Enum.RepositoryAffiliation.RepositoryAffiliation)), ownerAffiliations : OptionalArgument (List (Maybe Github.Enum.RepositoryAffiliation.RepositoryAffiliation)), isLocked : OptionalArgument Bool, after : OptionalArgument String, before : OptionalArgument String, first : OptionalArgument Int, last : OptionalArgument Int }

{-| A list of repositories this user has pinned to their profile

  - privacy - If non-null, filters repositories according to privacy
  - orderBy - Ordering options for repositories returned from the connection
  - affiliations - Array of viewer's affiliation options for repositories returned from the connection. For example, OWNER will include only repositories that the current viewer owns.
  - ownerAffiliations - Array of owner's affiliation options for repositories returned from the connection. For example, OWNER will include only repositories that the organization or user being viewed owns.
  - isLocked - If non-null, filters repositories according to whether they have been locked
  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.

-}
pinnedRepositories : (PinnedRepositoriesOptionalArguments -> PinnedRepositoriesOptionalArguments) -> SelectionSet decodesTo Github.Object.RepositoryConnection -> Field decodesTo Github.Object.Organization
pinnedRepositories fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { privacy = Absent, orderBy = Absent, affiliations = Absent, ownerAffiliations = Absent, isLocked = Absent, after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "privacy" filledInOptionals.privacy ((Encode.enum Github.Enum.RepositoryPrivacy.toString)), Argument.optional "orderBy" filledInOptionals.orderBy (Github.InputObject.encodeRepositoryOrder), Argument.optional "affiliations" filledInOptionals.affiliations ((Encode.enum Github.Enum.RepositoryAffiliation.toString) |> Encode.maybe |> Encode.list), Argument.optional "ownerAffiliations" filledInOptionals.ownerAffiliations ((Encode.enum Github.Enum.RepositoryAffiliation.toString) |> Encode.maybe |> Encode.list), Argument.optional "isLocked" filledInOptionals.isLocked (Encode.bool), Argument.optional "after" filledInOptionals.after (Encode.string), Argument.optional "before" filledInOptionals.before (Encode.string), Argument.optional "first" filledInOptionals.first (Encode.int), Argument.optional "last" filledInOptionals.last (Encode.int) ]
                |> List.filterMap identity
    in
      Object.selectionField "pinnedRepositories" optionalArgs (object_) (identity)


type alias ProjectRequiredArguments = { number : Int }

{-| Find project by number.

  - number - The project number to find.

-}
project : ProjectRequiredArguments -> SelectionSet decodesTo Github.Object.Project -> Field (Maybe decodesTo) Github.Object.Organization
project requiredArgs object_ =
      Object.selectionField "project" [ Argument.required "number" requiredArgs.number (Encode.int) ] (object_) (identity >> Decode.nullable)


type alias ProjectsOptionalArguments = { orderBy : OptionalArgument Github.InputObject.ProjectOrder, search : OptionalArgument String, states : OptionalArgument (List Github.Enum.ProjectState.ProjectState), after : OptionalArgument String, before : OptionalArgument String, first : OptionalArgument Int, last : OptionalArgument Int }

{-| A list of projects under the owner.

  - orderBy - Ordering options for projects returned from the connection
  - search - Query to search projects by, currently only searching by name.
  - states - A list of states to filter the projects by.
  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.

-}
projects : (ProjectsOptionalArguments -> ProjectsOptionalArguments) -> SelectionSet decodesTo Github.Object.ProjectConnection -> Field decodesTo Github.Object.Organization
projects fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { orderBy = Absent, search = Absent, states = Absent, after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "orderBy" filledInOptionals.orderBy (Github.InputObject.encodeProjectOrder), Argument.optional "search" filledInOptionals.search (Encode.string), Argument.optional "states" filledInOptionals.states ((Encode.enum Github.Enum.ProjectState.toString) |> Encode.list), Argument.optional "after" filledInOptionals.after (Encode.string), Argument.optional "before" filledInOptionals.before (Encode.string), Argument.optional "first" filledInOptionals.first (Encode.int), Argument.optional "last" filledInOptionals.last (Encode.int) ]
                |> List.filterMap identity
    in
      Object.selectionField "projects" optionalArgs (object_) (identity)


{-| The HTTP path listing organization's projects
-}
projectsResourcePath : Field Github.Scalar.Uri Github.Object.Organization
projectsResourcePath =
      Object.fieldDecoder "projectsResourcePath" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)


{-| The HTTP URL listing organization's projects
-}
projectsUrl : Field Github.Scalar.Uri Github.Object.Organization
projectsUrl =
      Object.fieldDecoder "projectsUrl" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)


type alias RepositoriesOptionalArguments = { privacy : OptionalArgument Github.Enum.RepositoryPrivacy.RepositoryPrivacy, orderBy : OptionalArgument Github.InputObject.RepositoryOrder, affiliations : OptionalArgument (List (Maybe Github.Enum.RepositoryAffiliation.RepositoryAffiliation)), ownerAffiliations : OptionalArgument (List (Maybe Github.Enum.RepositoryAffiliation.RepositoryAffiliation)), isLocked : OptionalArgument Bool, after : OptionalArgument String, before : OptionalArgument String, first : OptionalArgument Int, last : OptionalArgument Int, isFork : OptionalArgument Bool }

{-| A list of repositories that the user owns.

  - privacy - If non-null, filters repositories according to privacy
  - orderBy - Ordering options for repositories returned from the connection
  - affiliations - Array of viewer's affiliation options for repositories returned from the connection. For example, OWNER will include only repositories that the current viewer owns.
  - ownerAffiliations - Array of owner's affiliation options for repositories returned from the connection. For example, OWNER will include only repositories that the organization or user being viewed owns.
  - isLocked - If non-null, filters repositories according to whether they have been locked
  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.
  - isFork - If non-null, filters repositories according to whether they are forks of another repository

-}
repositories : (RepositoriesOptionalArguments -> RepositoriesOptionalArguments) -> SelectionSet decodesTo Github.Object.RepositoryConnection -> Field decodesTo Github.Object.Organization
repositories fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { privacy = Absent, orderBy = Absent, affiliations = Absent, ownerAffiliations = Absent, isLocked = Absent, after = Absent, before = Absent, first = Absent, last = Absent, isFork = Absent }

        optionalArgs =
            [ Argument.optional "privacy" filledInOptionals.privacy ((Encode.enum Github.Enum.RepositoryPrivacy.toString)), Argument.optional "orderBy" filledInOptionals.orderBy (Github.InputObject.encodeRepositoryOrder), Argument.optional "affiliations" filledInOptionals.affiliations ((Encode.enum Github.Enum.RepositoryAffiliation.toString) |> Encode.maybe |> Encode.list), Argument.optional "ownerAffiliations" filledInOptionals.ownerAffiliations ((Encode.enum Github.Enum.RepositoryAffiliation.toString) |> Encode.maybe |> Encode.list), Argument.optional "isLocked" filledInOptionals.isLocked (Encode.bool), Argument.optional "after" filledInOptionals.after (Encode.string), Argument.optional "before" filledInOptionals.before (Encode.string), Argument.optional "first" filledInOptionals.first (Encode.int), Argument.optional "last" filledInOptionals.last (Encode.int), Argument.optional "isFork" filledInOptionals.isFork (Encode.bool) ]
                |> List.filterMap identity
    in
      Object.selectionField "repositories" optionalArgs (object_) (identity)


type alias RepositoryRequiredArguments = { name : String }

{-| Find Repository.

  - name - Name of Repository to find.

-}
repository : RepositoryRequiredArguments -> SelectionSet decodesTo Github.Object.Repository -> Field (Maybe decodesTo) Github.Object.Organization
repository requiredArgs object_ =
      Object.selectionField "repository" [ Argument.required "name" requiredArgs.name (Encode.string) ] (object_) (identity >> Decode.nullable)


{-| When true the organization requires all members, billing managers, and outside collaborators to enable two-factor authentication.
-}
requiresTwoFactorAuthentication : Field (Maybe Bool) Github.Object.Organization
requiresTwoFactorAuthentication =
      Object.fieldDecoder "requiresTwoFactorAuthentication" [] (Decode.bool |> Decode.nullable)


{-| The HTTP path for this organization.
-}
resourcePath : Field Github.Scalar.Uri Github.Object.Organization
resourcePath =
      Object.fieldDecoder "resourcePath" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)


{-| The Organization's SAML Identity Providers
-}
samlIdentityProvider : SelectionSet decodesTo Github.Object.OrganizationIdentityProvider -> Field (Maybe decodesTo) Github.Object.Organization
samlIdentityProvider object_ =
      Object.selectionField "samlIdentityProvider" [] (object_) (identity >> Decode.nullable)


type alias TeamRequiredArguments = { slug : String }

{-| Find an organization's team by its slug.

  - slug - The name or slug of the team to find.

-}
team : TeamRequiredArguments -> SelectionSet decodesTo Github.Object.Team -> Field (Maybe decodesTo) Github.Object.Organization
team requiredArgs object_ =
      Object.selectionField "team" [ Argument.required "slug" requiredArgs.slug (Encode.string) ] (object_) (identity >> Decode.nullable)


type alias TeamsOptionalArguments = { privacy : OptionalArgument Github.Enum.TeamPrivacy.TeamPrivacy, role : OptionalArgument Github.Enum.TeamRole.TeamRole, query : OptionalArgument String, userLogins : OptionalArgument (List String), orderBy : OptionalArgument Github.InputObject.TeamOrder, ldapMapped : OptionalArgument Bool, rootTeamsOnly : OptionalArgument Bool, after : OptionalArgument String, before : OptionalArgument String, first : OptionalArgument Int, last : OptionalArgument Int }

{-| A list of teams in this organization.

  - privacy - If non-null, filters teams according to privacy
  - role - If non-null, filters teams according to whether the viewer is an admin or member on team
  - query - If non-null, filters teams with query on team name and team slug
  - userLogins - User logins to filter by
  - orderBy - Ordering options for teams returned from the connection
  - ldapMapped - If true, filters teams that are mapped to an LDAP Group (Enterprise only)
  - rootTeamsOnly - If true, restrict to only root teams
  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.

-}
teams : (TeamsOptionalArguments -> TeamsOptionalArguments) -> SelectionSet decodesTo Github.Object.TeamConnection -> Field decodesTo Github.Object.Organization
teams fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { privacy = Absent, role = Absent, query = Absent, userLogins = Absent, orderBy = Absent, ldapMapped = Absent, rootTeamsOnly = Absent, after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "privacy" filledInOptionals.privacy ((Encode.enum Github.Enum.TeamPrivacy.toString)), Argument.optional "role" filledInOptionals.role ((Encode.enum Github.Enum.TeamRole.toString)), Argument.optional "query" filledInOptionals.query (Encode.string), Argument.optional "userLogins" filledInOptionals.userLogins (Encode.string |> Encode.list), Argument.optional "orderBy" filledInOptionals.orderBy (Github.InputObject.encodeTeamOrder), Argument.optional "ldapMapped" filledInOptionals.ldapMapped (Encode.bool), Argument.optional "rootTeamsOnly" filledInOptionals.rootTeamsOnly (Encode.bool), Argument.optional "after" filledInOptionals.after (Encode.string), Argument.optional "before" filledInOptionals.before (Encode.string), Argument.optional "first" filledInOptionals.first (Encode.int), Argument.optional "last" filledInOptionals.last (Encode.int) ]
                |> List.filterMap identity
    in
      Object.selectionField "teams" optionalArgs (object_) (identity)


{-| The HTTP path listing organization's teams
-}
teamsResourcePath : Field Github.Scalar.Uri Github.Object.Organization
teamsResourcePath =
      Object.fieldDecoder "teamsResourcePath" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)


{-| The HTTP URL listing organization's teams
-}
teamsUrl : Field Github.Scalar.Uri Github.Object.Organization
teamsUrl =
      Object.fieldDecoder "teamsUrl" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)


{-| The HTTP URL for this organization.
-}
url : Field Github.Scalar.Uri Github.Object.Organization
url =
      Object.fieldDecoder "url" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)


{-| Organization is adminable by the viewer.
-}
viewerCanAdminister : Field Bool Github.Object.Organization
viewerCanAdminister =
      Object.fieldDecoder "viewerCanAdminister" [] (Decode.bool)


{-| Can the current viewer create new projects on this owner.
-}
viewerCanCreateProjects : Field Bool Github.Object.Organization
viewerCanCreateProjects =
      Object.fieldDecoder "viewerCanCreateProjects" [] (Decode.bool)


{-| Viewer can create repositories on this organization
-}
viewerCanCreateRepositories : Field Bool Github.Object.Organization
viewerCanCreateRepositories =
      Object.fieldDecoder "viewerCanCreateRepositories" [] (Decode.bool)


{-| Viewer can create teams on this organization.
-}
viewerCanCreateTeams : Field Bool Github.Object.Organization
viewerCanCreateTeams =
      Object.fieldDecoder "viewerCanCreateTeams" [] (Decode.bool)


{-| Viewer is an active member of this organization.
-}
viewerIsAMember : Field Bool Github.Object.Organization
viewerIsAMember =
      Object.fieldDecoder "viewerIsAMember" [] (Decode.bool)


{-| The organization's public profile URL.
-}
websiteUrl : Field (Maybe Github.Scalar.Uri) Github.Object.Organization
websiteUrl =
      Object.fieldDecoder "websiteUrl" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri |> Decode.nullable)
