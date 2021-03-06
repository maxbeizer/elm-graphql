-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql
module Github.Interface.RepositoryInfo exposing (..)

import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Field as Field exposing (Field)
import Graphql.Internal.Builder.Object as Object
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.SelectionSet exposing (FragmentSelectionSet(..), SelectionSet(..))
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Github.Object
import Github.Interface
import Github.Union
import Github.Scalar
import Github.InputObject
import Json.Decode as Decode
import Graphql.Internal.Encode as Encode exposing (Value)
import Github.Enum.RepositoryLockReason

{-| Select only common fields from the interface.
-}
commonSelection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Interface.RepositoryInfo
commonSelection constructor =
    Object.selection constructor


{-| Select both common and type-specific fields from the interface.
-}
selection : (Maybe typeSpecific -> a -> constructor) -> List (FragmentSelectionSet typeSpecific Github.Interface.RepositoryInfo) -> SelectionSet (a -> constructor) Github.Interface.RepositoryInfo
selection constructor typeSpecificDecoders =
    Object.interfaceSelection typeSpecificDecoders constructor
onRepository : SelectionSet decodesTo Github.Object.Repository -> FragmentSelectionSet decodesTo Github.Interface.RepositoryInfo
onRepository (SelectionSet fields decoder) =
    FragmentSelectionSet "Repository" fields decoder
{-| Identifies the date and time when the object was created.
-}
createdAt : Field Github.Scalar.DateTime Github.Interface.RepositoryInfo
createdAt =
      Object.fieldDecoder "createdAt" [] (Object.scalarDecoder |> Decode.map Github.Scalar.DateTime)


{-| The description of the repository.
-}
description : Field (Maybe String) Github.Interface.RepositoryInfo
description =
      Object.fieldDecoder "description" [] (Decode.string |> Decode.nullable)


{-| The description of the repository rendered to HTML.
-}
descriptionHTML : Field Github.Scalar.Html Github.Interface.RepositoryInfo
descriptionHTML =
      Object.fieldDecoder "descriptionHTML" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Html)


{-| Returns how many forks there are of this repository in the whole network.
-}
forkCount : Field Int Github.Interface.RepositoryInfo
forkCount =
      Object.fieldDecoder "forkCount" [] (Decode.int)


{-| Indicates if the repository has issues feature enabled.
-}
hasIssuesEnabled : Field Bool Github.Interface.RepositoryInfo
hasIssuesEnabled =
      Object.fieldDecoder "hasIssuesEnabled" [] (Decode.bool)


{-| Indicates if the repository has wiki feature enabled.
-}
hasWikiEnabled : Field Bool Github.Interface.RepositoryInfo
hasWikiEnabled =
      Object.fieldDecoder "hasWikiEnabled" [] (Decode.bool)


{-| The repository's URL.
-}
homepageUrl : Field (Maybe Github.Scalar.Uri) Github.Interface.RepositoryInfo
homepageUrl =
      Object.fieldDecoder "homepageUrl" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri |> Decode.nullable)


{-| Indicates if the repository is unmaintained.
-}
isArchived : Field Bool Github.Interface.RepositoryInfo
isArchived =
      Object.fieldDecoder "isArchived" [] (Decode.bool)


{-| Identifies if the repository is a fork.
-}
isFork : Field Bool Github.Interface.RepositoryInfo
isFork =
      Object.fieldDecoder "isFork" [] (Decode.bool)


{-| Indicates if the repository has been locked or not.
-}
isLocked : Field Bool Github.Interface.RepositoryInfo
isLocked =
      Object.fieldDecoder "isLocked" [] (Decode.bool)


{-| Identifies if the repository is a mirror.
-}
isMirror : Field Bool Github.Interface.RepositoryInfo
isMirror =
      Object.fieldDecoder "isMirror" [] (Decode.bool)


{-| Identifies if the repository is private.
-}
isPrivate : Field Bool Github.Interface.RepositoryInfo
isPrivate =
      Object.fieldDecoder "isPrivate" [] (Decode.bool)


{-| The license associated with the repository
-}
licenseInfo : SelectionSet decodesTo Github.Object.License -> Field (Maybe decodesTo) Github.Interface.RepositoryInfo
licenseInfo object_ =
      Object.selectionField "licenseInfo" [] (object_) (identity >> Decode.nullable)


{-| The reason the repository has been locked.
-}
lockReason : Field (Maybe Github.Enum.RepositoryLockReason.RepositoryLockReason) Github.Interface.RepositoryInfo
lockReason =
      Object.fieldDecoder "lockReason" [] (Github.Enum.RepositoryLockReason.decoder |> Decode.nullable)


{-| The repository's original mirror URL.
-}
mirrorUrl : Field (Maybe Github.Scalar.Uri) Github.Interface.RepositoryInfo
mirrorUrl =
      Object.fieldDecoder "mirrorUrl" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri |> Decode.nullable)


{-| The name of the repository.
-}
name : Field String Github.Interface.RepositoryInfo
name =
      Object.fieldDecoder "name" [] (Decode.string)


{-| The repository's name with owner.
-}
nameWithOwner : Field String Github.Interface.RepositoryInfo
nameWithOwner =
      Object.fieldDecoder "nameWithOwner" [] (Decode.string)


{-| The User owner of the repository.
-}
owner : SelectionSet decodesTo Github.Interface.RepositoryOwner -> Field decodesTo Github.Interface.RepositoryInfo
owner object_ =
      Object.selectionField "owner" [] (object_) (identity)


{-| Identifies when the repository was last pushed to.
-}
pushedAt : Field (Maybe Github.Scalar.DateTime) Github.Interface.RepositoryInfo
pushedAt =
      Object.fieldDecoder "pushedAt" [] (Object.scalarDecoder |> Decode.map Github.Scalar.DateTime |> Decode.nullable)


{-| The HTTP path for this repository
-}
resourcePath : Field Github.Scalar.Uri Github.Interface.RepositoryInfo
resourcePath =
      Object.fieldDecoder "resourcePath" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)


type alias ShortDescriptionHTMLOptionalArguments = { limit : OptionalArgument Int }

{-| A description of the repository, rendered to HTML without any links in it.

  - limit - How many characters to return.

-}
shortDescriptionHTML : (ShortDescriptionHTMLOptionalArguments -> ShortDescriptionHTMLOptionalArguments) -> Field Github.Scalar.Html Github.Interface.RepositoryInfo
shortDescriptionHTML fillInOptionals =
    let
        filledInOptionals =
            fillInOptionals { limit = Absent }

        optionalArgs =
            [ Argument.optional "limit" filledInOptionals.limit (Encode.int) ]
                |> List.filterMap identity
    in
      Object.fieldDecoder "shortDescriptionHTML" optionalArgs (Object.scalarDecoder |> Decode.map Github.Scalar.Html)


{-| Identifies the date and time when the object was last updated.
-}
updatedAt : Field Github.Scalar.DateTime Github.Interface.RepositoryInfo
updatedAt =
      Object.fieldDecoder "updatedAt" [] (Object.scalarDecoder |> Decode.map Github.Scalar.DateTime)


{-| The HTTP URL for this repository
-}
url : Field Github.Scalar.Uri Github.Interface.RepositoryInfo
url =
      Object.fieldDecoder "url" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)
