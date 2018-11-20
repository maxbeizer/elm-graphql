-- Do not manually edit this file, it was auto-generated by Graphqelm
-- https://github.com/dillonkearns/graphqelm


module Github.Object.PullRequestReview exposing (..)

import Github.Enum.CommentAuthorAssociation
import Github.Enum.CommentCannotUpdateReason
import Github.Enum.PullRequestReviewState
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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.PullRequestReview
selection constructor =
    Object.selection constructor


{-| The actor who authored the comment.
-}
author : SelectionSet decodesTo Github.Interface.Actor -> Field (Maybe decodesTo) Github.Object.PullRequestReview
author object =
    Object.selectionField "author" [] object (identity >> Decode.nullable)


{-| Author's association with the subject of the comment.
-}
authorAssociation : Field Github.Enum.CommentAuthorAssociation.CommentAuthorAssociation Github.Object.PullRequestReview
authorAssociation =
    Object.fieldDecoder "authorAssociation" [] Github.Enum.CommentAuthorAssociation.decoder


{-| Identifies the pull request review body.
-}
body : Field String Github.Object.PullRequestReview
body =
    Object.fieldDecoder "body" [] Decode.string


{-| The body of this review rendered to HTML.
-}
bodyHTML : Field Github.Scalar.Html Github.Object.PullRequestReview
bodyHTML =
    Object.fieldDecoder "bodyHTML" [] (Decode.oneOf [ Decode.string, Decode.float |> Decode.map toString, Decode.int |> Decode.map toString, Decode.bool |> Decode.map toString ] |> Decode.map Github.Scalar.Html)


{-| The body of this review rendered as plain text.
-}
bodyText : Field String Github.Object.PullRequestReview
bodyText =
    Object.fieldDecoder "bodyText" [] Decode.string


type alias CommentsOptionalArguments =
    { after : OptionalArgument String, before : OptionalArgument String, first : OptionalArgument Int, last : OptionalArgument Int }


{-| A list of review comments for the current pull request review.

  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.

-}
comments : (CommentsOptionalArguments -> CommentsOptionalArguments) -> SelectionSet decodesTo Github.Object.PullRequestReviewCommentConnection -> Field decodesTo Github.Object.PullRequestReview
comments fillInOptionals object =
    let
        filledInOptionals =
            fillInOptionals { after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionField "comments" optionalArgs object identity


{-| Identifies the commit associated with this pull request review.
-}
commit : SelectionSet decodesTo Github.Object.Commit -> Field (Maybe decodesTo) Github.Object.PullRequestReview
commit object =
    Object.selectionField "commit" [] object (identity >> Decode.nullable)


{-| Identifies the date and time when the object was created.
-}
createdAt : Field Github.Scalar.DateTime Github.Object.PullRequestReview
createdAt =
    Object.fieldDecoder "createdAt" [] (Decode.oneOf [ Decode.string, Decode.float |> Decode.map toString, Decode.int |> Decode.map toString, Decode.bool |> Decode.map toString ] |> Decode.map Github.Scalar.DateTime)


{-| Check if this comment was created via an email reply.
-}
createdViaEmail : Field Bool Github.Object.PullRequestReview
createdViaEmail =
    Object.fieldDecoder "createdViaEmail" [] Decode.bool


{-| Identifies the primary key from the database.
-}
databaseId : Field (Maybe Int) Github.Object.PullRequestReview
databaseId =
    Object.fieldDecoder "databaseId" [] (Decode.int |> Decode.nullable)


{-| The actor who edited the comment.
-}
editor : SelectionSet decodesTo Github.Interface.Actor -> Field (Maybe decodesTo) Github.Object.PullRequestReview
editor object =
    Object.selectionField "editor" [] object (identity >> Decode.nullable)


id : Field Github.Scalar.Id Github.Object.PullRequestReview
id =
    Object.fieldDecoder "id" [] (Decode.oneOf [ Decode.string, Decode.float |> Decode.map toString, Decode.int |> Decode.map toString, Decode.bool |> Decode.map toString ] |> Decode.map Github.Scalar.Id)


{-| Check if this comment was edited and includes an edit with the creation data
-}
includesCreatedEdit : Field Bool Github.Object.PullRequestReview
includesCreatedEdit =
    Object.fieldDecoder "includesCreatedEdit" [] Decode.bool


{-| The moment the editor made the last edit
-}
lastEditedAt : Field (Maybe Github.Scalar.DateTime) Github.Object.PullRequestReview
lastEditedAt =
    Object.fieldDecoder "lastEditedAt" [] (Decode.oneOf [ Decode.string, Decode.float |> Decode.map toString, Decode.int |> Decode.map toString, Decode.bool |> Decode.map toString ] |> Decode.map Github.Scalar.DateTime |> Decode.nullable)


type alias OnBehalfOfOptionalArguments =
    { after : OptionalArgument String, before : OptionalArgument String, first : OptionalArgument Int, last : OptionalArgument Int }


{-| A list of teams that this review was made on behalf of.

  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.

-}
onBehalfOf : (OnBehalfOfOptionalArguments -> OnBehalfOfOptionalArguments) -> SelectionSet decodesTo Github.Object.TeamConnection -> Field decodesTo Github.Object.PullRequestReview
onBehalfOf fillInOptionals object =
    let
        filledInOptionals =
            fillInOptionals { after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionField "onBehalfOf" optionalArgs object identity


{-| Identifies when the comment was published at.
-}
publishedAt : Field (Maybe Github.Scalar.DateTime) Github.Object.PullRequestReview
publishedAt =
    Object.fieldDecoder "publishedAt" [] (Decode.oneOf [ Decode.string, Decode.float |> Decode.map toString, Decode.int |> Decode.map toString, Decode.bool |> Decode.map toString ] |> Decode.map Github.Scalar.DateTime |> Decode.nullable)


{-| Identifies the pull request associated with this pull request review.
-}
pullRequest : SelectionSet decodesTo Github.Object.PullRequest -> Field decodesTo Github.Object.PullRequestReview
pullRequest object =
    Object.selectionField "pullRequest" [] object identity


{-| The repository associated with this node.
-}
repository : SelectionSet decodesTo Github.Object.Repository -> Field decodesTo Github.Object.PullRequestReview
repository object =
    Object.selectionField "repository" [] object identity


{-| The HTTP path permalink for this PullRequestReview.
-}
resourcePath : Field Github.Scalar.Uri Github.Object.PullRequestReview
resourcePath =
    Object.fieldDecoder "resourcePath" [] (Decode.oneOf [ Decode.string, Decode.float |> Decode.map toString, Decode.int |> Decode.map toString, Decode.bool |> Decode.map toString ] |> Decode.map Github.Scalar.Uri)


{-| Identifies the current state of the pull request review.
-}
state : Field Github.Enum.PullRequestReviewState.PullRequestReviewState Github.Object.PullRequestReview
state =
    Object.fieldDecoder "state" [] Github.Enum.PullRequestReviewState.decoder


{-| Identifies when the Pull Request Review was submitted
-}
submittedAt : Field (Maybe Github.Scalar.DateTime) Github.Object.PullRequestReview
submittedAt =
    Object.fieldDecoder "submittedAt" [] (Decode.oneOf [ Decode.string, Decode.float |> Decode.map toString, Decode.int |> Decode.map toString, Decode.bool |> Decode.map toString ] |> Decode.map Github.Scalar.DateTime |> Decode.nullable)


{-| Identifies the date and time when the object was last updated.
-}
updatedAt : Field Github.Scalar.DateTime Github.Object.PullRequestReview
updatedAt =
    Object.fieldDecoder "updatedAt" [] (Decode.oneOf [ Decode.string, Decode.float |> Decode.map toString, Decode.int |> Decode.map toString, Decode.bool |> Decode.map toString ] |> Decode.map Github.Scalar.DateTime)


{-| The HTTP URL permalink for this PullRequestReview.
-}
url : Field Github.Scalar.Uri Github.Object.PullRequestReview
url =
    Object.fieldDecoder "url" [] (Decode.oneOf [ Decode.string, Decode.float |> Decode.map toString, Decode.int |> Decode.map toString, Decode.bool |> Decode.map toString ] |> Decode.map Github.Scalar.Uri)


type alias UserContentEditsOptionalArguments =
    { after : OptionalArgument String, before : OptionalArgument String, first : OptionalArgument Int, last : OptionalArgument Int }


{-| A list of edits to this content.

  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.

-}
userContentEdits : (UserContentEditsOptionalArguments -> UserContentEditsOptionalArguments) -> SelectionSet decodesTo Github.Object.UserContentEditConnection -> Field (Maybe decodesTo) Github.Object.PullRequestReview
userContentEdits fillInOptionals object =
    let
        filledInOptionals =
            fillInOptionals { after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionField "userContentEdits" optionalArgs object (identity >> Decode.nullable)


{-| Check if the current viewer can delete this object.
-}
viewerCanDelete : Field Bool Github.Object.PullRequestReview
viewerCanDelete =
    Object.fieldDecoder "viewerCanDelete" [] Decode.bool


{-| Check if the current viewer can update this object.
-}
viewerCanUpdate : Field Bool Github.Object.PullRequestReview
viewerCanUpdate =
    Object.fieldDecoder "viewerCanUpdate" [] Decode.bool


{-| Reasons why the current viewer can not update this comment.
-}
viewerCannotUpdateReasons : Field (List Github.Enum.CommentCannotUpdateReason.CommentCannotUpdateReason) Github.Object.PullRequestReview
viewerCannotUpdateReasons =
    Object.fieldDecoder "viewerCannotUpdateReasons" [] (Github.Enum.CommentCannotUpdateReason.decoder |> Decode.list)


{-| Did the viewer author this comment.
-}
viewerDidAuthor : Field Bool Github.Object.PullRequestReview
viewerDidAuthor =
    Object.fieldDecoder "viewerDidAuthor" [] Decode.bool