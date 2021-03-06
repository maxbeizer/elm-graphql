-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql
module Github.Object.AddPullRequestReviewCommentPayload exposing (..)

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



{-| Select fields to build up a SelectionSet for this object.
-}
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.AddPullRequestReviewCommentPayload
selection constructor =
    Object.selection constructor
{-| A unique identifier for the client performing the mutation.
-}
clientMutationId : Field (Maybe String) Github.Object.AddPullRequestReviewCommentPayload
clientMutationId =
      Object.fieldDecoder "clientMutationId" [] (Decode.string |> Decode.nullable)


{-| The newly created comment.

**Upcoming Change on 2019-01-01 UTC**
**Description:** Type for `comment` will change from `PullRequestReviewComment!` to `PullRequestReviewComment`.
**Reason:** In preparation for an upcoming change to the way we report mutation errors, non-nullable payload fields are becoming nullable.

-}
comment : SelectionSet decodesTo Github.Object.PullRequestReviewComment -> Field decodesTo Github.Object.AddPullRequestReviewCommentPayload
comment object_ =
      Object.selectionField "comment" [] (object_) (identity)


{-| The edge from the review's comment connection.

**Upcoming Change on 2019-01-01 UTC**
**Description:** Type for `commentEdge` will change from `PullRequestReviewCommentEdge!` to `PullRequestReviewCommentEdge`.
**Reason:** In preparation for an upcoming change to the way we report mutation errors, non-nullable payload fields are becoming nullable.

-}
commentEdge : SelectionSet decodesTo Github.Object.PullRequestReviewCommentEdge -> Field decodesTo Github.Object.AddPullRequestReviewCommentPayload
commentEdge object_ =
      Object.selectionField "commentEdge" [] (object_) (identity)
