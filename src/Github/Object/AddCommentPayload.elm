-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql
module Github.Object.AddCommentPayload exposing (..)

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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.AddCommentPayload
selection constructor =
    Object.selection constructor
{-| A unique identifier for the client performing the mutation.
-}
clientMutationId : Field (Maybe String) Github.Object.AddCommentPayload
clientMutationId =
      Object.fieldDecoder "clientMutationId" [] (Decode.string |> Decode.nullable)


{-| The edge from the subject's comment connection.

**Upcoming Change on 2019-01-01 UTC**
**Description:** Type for `commentEdge` will change from `IssueCommentEdge!` to `IssueCommentEdge`.
**Reason:** In preparation for an upcoming change to the way we report mutation errors, non-nullable payload fields are becoming nullable.

-}
commentEdge : SelectionSet decodesTo Github.Object.IssueCommentEdge -> Field decodesTo Github.Object.AddCommentPayload
commentEdge object_ =
      Object.selectionField "commentEdge" [] (object_) (identity)


{-| The subject

**Upcoming Change on 2019-01-01 UTC**
**Description:** Type for `subject` will change from `Node!` to `Node`.
**Reason:** In preparation for an upcoming change to the way we report mutation errors, non-nullable payload fields are becoming nullable.

-}
subject : SelectionSet decodesTo Github.Interface.Node -> Field decodesTo Github.Object.AddCommentPayload
subject object_ =
      Object.selectionField "subject" [] (object_) (identity)


{-| The edge from the subject's timeline connection.

**Upcoming Change on 2019-01-01 UTC**
**Description:** Type for `timelineEdge` will change from `IssueTimelineItemEdge!` to `IssueTimelineItemEdge`.
**Reason:** In preparation for an upcoming change to the way we report mutation errors, non-nullable payload fields are becoming nullable.

-}
timelineEdge : SelectionSet decodesTo Github.Object.IssueTimelineItemEdge -> Field decodesTo Github.Object.AddCommentPayload
timelineEdge object_ =
      Object.selectionField "timelineEdge" [] (object_) (identity)
