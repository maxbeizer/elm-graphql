-- Do not manually edit this file, it was auto-generated by Graphqelm
-- https://github.com/dillonkearns/graphqelm


module Github.Enum.IssueTimelineItemsItemType exposing (..)

import Json.Decode as Decode exposing (Decoder)


{-| The possible item types found in a timeline.

  - IssueComment - Represents a comment on an Issue.
  - CrossReferencedEvent - Represents a mention made by one issue or pull request to another.
  - AddedToProjectEvent - Represents a 'added_to_project' event on a given issue or pull request.
  - AssignedEvent - Represents an 'assigned' event on any assignable object.
  - ClosedEvent - Represents a 'closed' event on any `Closable`.
  - CommentDeletedEvent - Represents a 'comment_deleted' event on a given issue or pull request.
  - ConvertedNoteToIssueEvent - Represents a 'converted_note_to_issue' event on a given issue or pull request.
  - DemilestonedEvent - Represents a 'demilestoned' event on a given issue or pull request.
  - LabeledEvent - Represents a 'labeled' event on a given issue or pull request.
  - LockedEvent - Represents a 'locked' event on a given issue or pull request.
  - MentionedEvent - Represents a 'mentioned' event on a given issue or pull request.
  - MilestonedEvent - Represents a 'milestoned' event on a given issue or pull request.
  - MovedColumnsInProjectEvent - Represents a 'moved_columns_in_project' event on a given issue or pull request.
  - ReferencedEvent - Represents a 'referenced' event on a given `ReferencedSubject`.
  - RemovedFromProjectEvent - Represents a 'removed_from_project' event on a given issue or pull request.
  - RenamedTitleEvent - Represents a 'renamed' event on a given issue or pull request
  - ReopenedEvent - Represents a 'reopened' event on any `Closable`.
  - SubscribedEvent - Represents a 'subscribed' event on a given `Subscribable`.
  - TransferredEvent - Represents a 'transferred' event on a given issue or pull request.
  - UnassignedEvent - Represents an 'unassigned' event on any assignable object.
  - UnlabeledEvent - Represents an 'unlabeled' event on a given issue or pull request.
  - UnlockedEvent - Represents an 'unlocked' event on a given issue or pull request.
  - UnsubscribedEvent - Represents an 'unsubscribed' event on a given `Subscribable`.

-}
type IssueTimelineItemsItemType
    = IssueComment
    | CrossReferencedEvent
    | AddedToProjectEvent
    | AssignedEvent
    | ClosedEvent
    | CommentDeletedEvent
    | ConvertedNoteToIssueEvent
    | DemilestonedEvent
    | LabeledEvent
    | LockedEvent
    | MentionedEvent
    | MilestonedEvent
    | MovedColumnsInProjectEvent
    | ReferencedEvent
    | RemovedFromProjectEvent
    | RenamedTitleEvent
    | ReopenedEvent
    | SubscribedEvent
    | TransferredEvent
    | UnassignedEvent
    | UnlabeledEvent
    | UnlockedEvent
    | UnsubscribedEvent


decoder : Decoder IssueTimelineItemsItemType
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "ISSUE_COMMENT" ->
                        Decode.succeed IssueComment

                    "CROSS_REFERENCED_EVENT" ->
                        Decode.succeed CrossReferencedEvent

                    "ADDED_TO_PROJECT_EVENT" ->
                        Decode.succeed AddedToProjectEvent

                    "ASSIGNED_EVENT" ->
                        Decode.succeed AssignedEvent

                    "CLOSED_EVENT" ->
                        Decode.succeed ClosedEvent

                    "COMMENT_DELETED_EVENT" ->
                        Decode.succeed CommentDeletedEvent

                    "CONVERTED_NOTE_TO_ISSUE_EVENT" ->
                        Decode.succeed ConvertedNoteToIssueEvent

                    "DEMILESTONED_EVENT" ->
                        Decode.succeed DemilestonedEvent

                    "LABELED_EVENT" ->
                        Decode.succeed LabeledEvent

                    "LOCKED_EVENT" ->
                        Decode.succeed LockedEvent

                    "MENTIONED_EVENT" ->
                        Decode.succeed MentionedEvent

                    "MILESTONED_EVENT" ->
                        Decode.succeed MilestonedEvent

                    "MOVED_COLUMNS_IN_PROJECT_EVENT" ->
                        Decode.succeed MovedColumnsInProjectEvent

                    "REFERENCED_EVENT" ->
                        Decode.succeed ReferencedEvent

                    "REMOVED_FROM_PROJECT_EVENT" ->
                        Decode.succeed RemovedFromProjectEvent

                    "RENAMED_TITLE_EVENT" ->
                        Decode.succeed RenamedTitleEvent

                    "REOPENED_EVENT" ->
                        Decode.succeed ReopenedEvent

                    "SUBSCRIBED_EVENT" ->
                        Decode.succeed SubscribedEvent

                    "TRANSFERRED_EVENT" ->
                        Decode.succeed TransferredEvent

                    "UNASSIGNED_EVENT" ->
                        Decode.succeed UnassignedEvent

                    "UNLABELED_EVENT" ->
                        Decode.succeed UnlabeledEvent

                    "UNLOCKED_EVENT" ->
                        Decode.succeed UnlockedEvent

                    "UNSUBSCRIBED_EVENT" ->
                        Decode.succeed UnsubscribedEvent

                    _ ->
                        Decode.fail ("Invalid IssueTimelineItemsItemType type, " ++ string ++ " try re-running the graphqelm CLI ")
            )


{-| Convert from the union type representating the Enum to a string that the GraphQL server will recognize.
-}
toString : IssueTimelineItemsItemType -> String
toString enum =
    case enum of
        IssueComment ->
            "ISSUE_COMMENT"

        CrossReferencedEvent ->
            "CROSS_REFERENCED_EVENT"

        AddedToProjectEvent ->
            "ADDED_TO_PROJECT_EVENT"

        AssignedEvent ->
            "ASSIGNED_EVENT"

        ClosedEvent ->
            "CLOSED_EVENT"

        CommentDeletedEvent ->
            "COMMENT_DELETED_EVENT"

        ConvertedNoteToIssueEvent ->
            "CONVERTED_NOTE_TO_ISSUE_EVENT"

        DemilestonedEvent ->
            "DEMILESTONED_EVENT"

        LabeledEvent ->
            "LABELED_EVENT"

        LockedEvent ->
            "LOCKED_EVENT"

        MentionedEvent ->
            "MENTIONED_EVENT"

        MilestonedEvent ->
            "MILESTONED_EVENT"

        MovedColumnsInProjectEvent ->
            "MOVED_COLUMNS_IN_PROJECT_EVENT"

        ReferencedEvent ->
            "REFERENCED_EVENT"

        RemovedFromProjectEvent ->
            "REMOVED_FROM_PROJECT_EVENT"

        RenamedTitleEvent ->
            "RENAMED_TITLE_EVENT"

        ReopenedEvent ->
            "REOPENED_EVENT"

        SubscribedEvent ->
            "SUBSCRIBED_EVENT"

        TransferredEvent ->
            "TRANSFERRED_EVENT"

        UnassignedEvent ->
            "UNASSIGNED_EVENT"

        UnlabeledEvent ->
            "UNLABELED_EVENT"

        UnlockedEvent ->
            "UNLOCKED_EVENT"

        UnsubscribedEvent ->
            "UNSUBSCRIBED_EVENT"