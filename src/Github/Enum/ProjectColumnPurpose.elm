-- Do not manually edit this file, it was auto-generated by Graphqelm
-- https://github.com/dillonkearns/graphqelm


module Github.Enum.ProjectColumnPurpose exposing (..)

import Json.Decode as Decode exposing (Decoder)


{-| The semantic purpose of the column - todo, in progress, or done.

  - Todo - The column contains cards still to be worked on
  - InProgress - The column contains cards which are currently being worked on
  - Done - The column contains cards which are complete

-}
type ProjectColumnPurpose
    = Todo
    | InProgress
    | Done


decoder : Decoder ProjectColumnPurpose
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "TODO" ->
                        Decode.succeed Todo

                    "IN_PROGRESS" ->
                        Decode.succeed InProgress

                    "DONE" ->
                        Decode.succeed Done

                    _ ->
                        Decode.fail ("Invalid ProjectColumnPurpose type, " ++ string ++ " try re-running the graphqelm CLI ")
            )


{-| Convert from the union type representating the Enum to a string that the GraphQL server will recognize.
-}
toString : ProjectColumnPurpose -> String
toString enum =
    case enum of
        Todo ->
            "TODO"

        InProgress ->
            "IN_PROGRESS"

        Done ->
            "DONE"
