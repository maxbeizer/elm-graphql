-- Do not manually edit this file, it was auto-generated by Graphqelm
-- https://github.com/dillonkearns/graphqelm


module Github.Object.PullRequestReviewThread exposing (..)

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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.PullRequestReviewThread
selection constructor =
    Object.selection constructor


type alias CommentsOptionalArguments =
    { after : OptionalArgument String, before : OptionalArgument String, first : OptionalArgument Int, last : OptionalArgument Int }


{-| A list of pull request comments associated with the thread.

  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.

-}
comments : (CommentsOptionalArguments -> CommentsOptionalArguments) -> SelectionSet decodesTo Github.Object.PullRequestReviewCommentConnection -> Field decodesTo Github.Object.PullRequestReviewThread
comments fillInOptionals object =
    let
        filledInOptionals =
            fillInOptionals { after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionField "comments" optionalArgs object identity


id : Field Github.Scalar.Id Github.Object.PullRequestReviewThread
id =
    Object.fieldDecoder "id" [] (Decode.oneOf [ Decode.string, Decode.float |> Decode.map toString, Decode.int |> Decode.map toString, Decode.bool |> Decode.map toString ] |> Decode.map Github.Scalar.Id)


{-| Identifies the pull request associated with this thread.
-}
pullRequest : SelectionSet decodesTo Github.Object.PullRequest -> Field decodesTo Github.Object.PullRequestReviewThread
pullRequest object =
    Object.selectionField "pullRequest" [] object identity


{-| Identifies the repository associated with this thread.
-}
repository : SelectionSet decodesTo Github.Object.Repository -> Field decodesTo Github.Object.PullRequestReviewThread
repository object =
    Object.selectionField "repository" [] object identity
