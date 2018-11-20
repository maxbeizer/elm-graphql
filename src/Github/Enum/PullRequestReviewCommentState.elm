-- Do not manually edit this file, it was auto-generated by Graphqelm
-- https://github.com/dillonkearns/graphqelm


module Github.Enum.PullRequestReviewCommentState exposing (..)

import Json.Decode as Decode exposing (Decoder)


{-| The possible states of a pull request review comment.

  - Pending - A comment that is part of a pending review
  - Submitted - A comment that is part of a submitted review

-}
type PullRequestReviewCommentState
    = Pending
    | Submitted


decoder : Decoder PullRequestReviewCommentState
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "PENDING" ->
                        Decode.succeed Pending

                    "SUBMITTED" ->
                        Decode.succeed Submitted

                    _ ->
                        Decode.fail ("Invalid PullRequestReviewCommentState type, " ++ string ++ " try re-running the graphqelm CLI ")
            )


{-| Convert from the union type representating the Enum to a string that the GraphQL server will recognize.
-}
toString : PullRequestReviewCommentState -> String
toString enum =
    case enum of
        Pending ->
            "PENDING"

        Submitted ->
            "SUBMITTED"
