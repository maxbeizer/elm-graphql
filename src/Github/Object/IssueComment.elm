-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql
module Github.Object.IssueComment exposing (..)

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
import Github.Enum.ReactionContent
import Github.Enum.CommentAuthorAssociation
import Github.Enum.CommentCannotUpdateReason


{-| Select fields to build up a SelectionSet for this object.
-}
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.IssueComment
selection constructor =
    Object.selection constructor
{-| The actor who authored the comment.
-}
author : SelectionSet decodesTo Github.Interface.Actor -> Field (Maybe decodesTo) Github.Object.IssueComment
author object_ =
      Object.selectionField "author" [] (object_) (identity >> Decode.nullable)


{-| Author's association with the subject of the comment.
-}
authorAssociation : Field Github.Enum.CommentAuthorAssociation.CommentAuthorAssociation Github.Object.IssueComment
authorAssociation =
      Object.fieldDecoder "authorAssociation" [] (Github.Enum.CommentAuthorAssociation.decoder)


{-| The body as Markdown.
-}
body : Field String Github.Object.IssueComment
body =
      Object.fieldDecoder "body" [] (Decode.string)


{-| The body rendered to HTML.
-}
bodyHTML : Field Github.Scalar.Html Github.Object.IssueComment
bodyHTML =
      Object.fieldDecoder "bodyHTML" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Html)


{-| The body rendered to text.
-}
bodyText : Field String Github.Object.IssueComment
bodyText =
      Object.fieldDecoder "bodyText" [] (Decode.string)


{-| Identifies the date and time when the object was created.
-}
createdAt : Field Github.Scalar.DateTime Github.Object.IssueComment
createdAt =
      Object.fieldDecoder "createdAt" [] (Object.scalarDecoder |> Decode.map Github.Scalar.DateTime)


{-| Check if this comment was created via an email reply.
-}
createdViaEmail : Field Bool Github.Object.IssueComment
createdViaEmail =
      Object.fieldDecoder "createdViaEmail" [] (Decode.bool)


{-| Identifies the primary key from the database.
-}
databaseId : Field (Maybe Int) Github.Object.IssueComment
databaseId =
      Object.fieldDecoder "databaseId" [] (Decode.int |> Decode.nullable)


{-| The actor who edited the comment.
-}
editor : SelectionSet decodesTo Github.Interface.Actor -> Field (Maybe decodesTo) Github.Object.IssueComment
editor object_ =
      Object.selectionField "editor" [] (object_) (identity >> Decode.nullable)


id : Field Github.Scalar.Id Github.Object.IssueComment
id =
      Object.fieldDecoder "id" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Id)


{-| Check if this comment was edited and includes an edit with the creation data
-}
includesCreatedEdit : Field Bool Github.Object.IssueComment
includesCreatedEdit =
      Object.fieldDecoder "includesCreatedEdit" [] (Decode.bool)


{-| Returns whether or not a comment has been minimized.
-}
isMinimized : Field Bool Github.Object.IssueComment
isMinimized =
      Object.fieldDecoder "isMinimized" [] (Decode.bool)


{-| Identifies the issue associated with the comment.
-}
issue : SelectionSet decodesTo Github.Object.Issue -> Field decodesTo Github.Object.IssueComment
issue object_ =
      Object.selectionField "issue" [] (object_) (identity)


{-| The moment the editor made the last edit
-}
lastEditedAt : Field (Maybe Github.Scalar.DateTime) Github.Object.IssueComment
lastEditedAt =
      Object.fieldDecoder "lastEditedAt" [] (Object.scalarDecoder |> Decode.map Github.Scalar.DateTime |> Decode.nullable)


{-| Returns why the comment was minimized.
-}
minimizedReason : Field (Maybe String) Github.Object.IssueComment
minimizedReason =
      Object.fieldDecoder "minimizedReason" [] (Decode.string |> Decode.nullable)


{-| Identifies when the comment was published at.
-}
publishedAt : Field (Maybe Github.Scalar.DateTime) Github.Object.IssueComment
publishedAt =
      Object.fieldDecoder "publishedAt" [] (Object.scalarDecoder |> Decode.map Github.Scalar.DateTime |> Decode.nullable)


{-| Returns the pull request associated with the comment, if this comment was made on a
pull request.

-}
pullRequest : SelectionSet decodesTo Github.Object.PullRequest -> Field (Maybe decodesTo) Github.Object.IssueComment
pullRequest object_ =
      Object.selectionField "pullRequest" [] (object_) (identity >> Decode.nullable)


{-| A list of reactions grouped by content left on the subject.
-}
reactionGroups : SelectionSet decodesTo Github.Object.ReactionGroup -> Field (Maybe (List decodesTo)) Github.Object.IssueComment
reactionGroups object_ =
      Object.selectionField "reactionGroups" [] (object_) (identity >> Decode.list >> Decode.nullable)


type alias ReactionsOptionalArguments = { after : OptionalArgument String, before : OptionalArgument String, first : OptionalArgument Int, last : OptionalArgument Int, content : OptionalArgument Github.Enum.ReactionContent.ReactionContent, orderBy : OptionalArgument Github.InputObject.ReactionOrder }

{-| A list of Reactions left on the Issue.

  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.
  - content - Allows filtering Reactions by emoji.
  - orderBy - Allows specifying the order in which reactions are returned.

-}
reactions : (ReactionsOptionalArguments -> ReactionsOptionalArguments) -> SelectionSet decodesTo Github.Object.ReactionConnection -> Field decodesTo Github.Object.IssueComment
reactions fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { after = Absent, before = Absent, first = Absent, last = Absent, content = Absent, orderBy = Absent }

        optionalArgs =
            [ Argument.optional "after" filledInOptionals.after (Encode.string), Argument.optional "before" filledInOptionals.before (Encode.string), Argument.optional "first" filledInOptionals.first (Encode.int), Argument.optional "last" filledInOptionals.last (Encode.int), Argument.optional "content" filledInOptionals.content ((Encode.enum Github.Enum.ReactionContent.toString)), Argument.optional "orderBy" filledInOptionals.orderBy (Github.InputObject.encodeReactionOrder) ]
                |> List.filterMap identity
    in
      Object.selectionField "reactions" optionalArgs (object_) (identity)


{-| The repository associated with this node.
-}
repository : SelectionSet decodesTo Github.Object.Repository -> Field decodesTo Github.Object.IssueComment
repository object_ =
      Object.selectionField "repository" [] (object_) (identity)


{-| The HTTP path for this issue comment
-}
resourcePath : Field Github.Scalar.Uri Github.Object.IssueComment
resourcePath =
      Object.fieldDecoder "resourcePath" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)


{-| Identifies the date and time when the object was last updated.
-}
updatedAt : Field Github.Scalar.DateTime Github.Object.IssueComment
updatedAt =
      Object.fieldDecoder "updatedAt" [] (Object.scalarDecoder |> Decode.map Github.Scalar.DateTime)


{-| The HTTP URL for this issue comment
-}
url : Field Github.Scalar.Uri Github.Object.IssueComment
url =
      Object.fieldDecoder "url" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)


type alias UserContentEditsOptionalArguments = { after : OptionalArgument String, before : OptionalArgument String, first : OptionalArgument Int, last : OptionalArgument Int }

{-| A list of edits to this content.

  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.

-}
userContentEdits : (UserContentEditsOptionalArguments -> UserContentEditsOptionalArguments) -> SelectionSet decodesTo Github.Object.UserContentEditConnection -> Field (Maybe decodesTo) Github.Object.IssueComment
userContentEdits fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "after" filledInOptionals.after (Encode.string), Argument.optional "before" filledInOptionals.before (Encode.string), Argument.optional "first" filledInOptionals.first (Encode.int), Argument.optional "last" filledInOptionals.last (Encode.int) ]
                |> List.filterMap identity
    in
      Object.selectionField "userContentEdits" optionalArgs (object_) (identity >> Decode.nullable)


{-| Check if the current viewer can delete this object.
-}
viewerCanDelete : Field Bool Github.Object.IssueComment
viewerCanDelete =
      Object.fieldDecoder "viewerCanDelete" [] (Decode.bool)


{-| Check if the current viewer can minimize this object.
-}
viewerCanMinimize : Field Bool Github.Object.IssueComment
viewerCanMinimize =
      Object.fieldDecoder "viewerCanMinimize" [] (Decode.bool)


{-| Can user react to this subject
-}
viewerCanReact : Field Bool Github.Object.IssueComment
viewerCanReact =
      Object.fieldDecoder "viewerCanReact" [] (Decode.bool)


{-| Check if the current viewer can update this object.
-}
viewerCanUpdate : Field Bool Github.Object.IssueComment
viewerCanUpdate =
      Object.fieldDecoder "viewerCanUpdate" [] (Decode.bool)


{-| Reasons why the current viewer can not update this comment.
-}
viewerCannotUpdateReasons : Field (List Github.Enum.CommentCannotUpdateReason.CommentCannotUpdateReason) Github.Object.IssueComment
viewerCannotUpdateReasons =
      Object.fieldDecoder "viewerCannotUpdateReasons" [] (Github.Enum.CommentCannotUpdateReason.decoder |> Decode.list)


{-| Did the viewer author this comment.
-}
viewerDidAuthor : Field Bool Github.Object.IssueComment
viewerDidAuthor =
      Object.fieldDecoder "viewerDidAuthor" [] (Decode.bool)
