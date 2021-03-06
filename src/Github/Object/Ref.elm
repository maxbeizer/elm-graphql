-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql
module Github.Object.Ref exposing (..)

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
import Github.Enum.PullRequestState


{-| Select fields to build up a SelectionSet for this object.
-}
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.Ref
selection constructor =
    Object.selection constructor
type alias AssociatedPullRequestsOptionalArguments = { states : OptionalArgument (List Github.Enum.PullRequestState.PullRequestState), labels : OptionalArgument (List String), headRefName : OptionalArgument String, baseRefName : OptionalArgument String, orderBy : OptionalArgument Github.InputObject.IssueOrder, after : OptionalArgument String, before : OptionalArgument String, first : OptionalArgument Int, last : OptionalArgument Int }

{-| A list of pull requests with this ref as the head ref.

  - states - A list of states to filter the pull requests by.
  - labels - A list of label names to filter the pull requests by.
  - headRefName - The head ref name to filter the pull requests by.
  - baseRefName - The base ref name to filter the pull requests by.
  - orderBy - Ordering options for pull requests returned from the connection.
  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.

-}
associatedPullRequests : (AssociatedPullRequestsOptionalArguments -> AssociatedPullRequestsOptionalArguments) -> SelectionSet decodesTo Github.Object.PullRequestConnection -> Field decodesTo Github.Object.Ref
associatedPullRequests fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { states = Absent, labels = Absent, headRefName = Absent, baseRefName = Absent, orderBy = Absent, after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "states" filledInOptionals.states ((Encode.enum Github.Enum.PullRequestState.toString) |> Encode.list), Argument.optional "labels" filledInOptionals.labels (Encode.string |> Encode.list), Argument.optional "headRefName" filledInOptionals.headRefName (Encode.string), Argument.optional "baseRefName" filledInOptionals.baseRefName (Encode.string), Argument.optional "orderBy" filledInOptionals.orderBy (Github.InputObject.encodeIssueOrder), Argument.optional "after" filledInOptionals.after (Encode.string), Argument.optional "before" filledInOptionals.before (Encode.string), Argument.optional "first" filledInOptionals.first (Encode.int), Argument.optional "last" filledInOptionals.last (Encode.int) ]
                |> List.filterMap identity
    in
      Object.selectionField "associatedPullRequests" optionalArgs (object_) (identity)


id : Field Github.Scalar.Id Github.Object.Ref
id =
      Object.fieldDecoder "id" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Id)


{-| The ref name.
-}
name : Field String Github.Object.Ref
name =
      Object.fieldDecoder "name" [] (Decode.string)


{-| The ref's prefix, such as `refs/heads/` or `refs/tags/`.
-}
prefix : Field String Github.Object.Ref
prefix =
      Object.fieldDecoder "prefix" [] (Decode.string)


{-| The repository the ref belongs to.
-}
repository : SelectionSet decodesTo Github.Object.Repository -> Field decodesTo Github.Object.Ref
repository object_ =
      Object.selectionField "repository" [] (object_) (identity)


{-| The object the ref points to.
-}
target : SelectionSet decodesTo Github.Interface.GitObject -> Field decodesTo Github.Object.Ref
target object_ =
      Object.selectionField "target" [] (object_) (identity)
