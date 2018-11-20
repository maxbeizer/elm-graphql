-- Do not manually edit this file, it was auto-generated by Graphqelm
-- https://github.com/dillonkearns/graphqelm


module Github.Enum.PullRequestOrderField exposing (..)

import Json.Decode as Decode exposing (Decoder)


{-| Properties by which pull_requests connections can be ordered.

  - CreatedAt - Order pull_requests by creation time
  - UpdatedAt - Order pull_requests by update time

-}
type PullRequestOrderField
    = CreatedAt
    | UpdatedAt


decoder : Decoder PullRequestOrderField
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "CREATED_AT" ->
                        Decode.succeed CreatedAt

                    "UPDATED_AT" ->
                        Decode.succeed UpdatedAt

                    _ ->
                        Decode.fail ("Invalid PullRequestOrderField type, " ++ string ++ " try re-running the graphqelm CLI ")
            )


{-| Convert from the union type representating the Enum to a string that the GraphQL server will recognize.
-}
toString : PullRequestOrderField -> String
toString enum =
    case enum of
        CreatedAt ->
            "CREATED_AT"

        UpdatedAt ->
            "UPDATED_AT"