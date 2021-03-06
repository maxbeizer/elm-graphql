-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql
module Github.Enum.ProjectOrderField exposing (..)

import Json.Decode as Decode exposing (Decoder)


{-| Properties by which project connections can be ordered.

  - CreatedAt - Order projects by creation time
  - UpdatedAt - Order projects by update time
  - Name - Order projects by name

-}
type ProjectOrderField
    = CreatedAt
    | UpdatedAt
    | Name
list : List ProjectOrderField
list =
    [CreatedAt, UpdatedAt, Name]
decoder : Decoder ProjectOrderField
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "CREATED_AT" ->
                        Decode.succeed CreatedAt

                    "UPDATED_AT" ->
                        Decode.succeed UpdatedAt

                    "NAME" ->
                        Decode.succeed Name

                    _ ->
                        Decode.fail ("Invalid ProjectOrderField type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
        )
        

{-| Convert from the union type representating the Enum to a string that the GraphQL server will recognize.
-}
toString : ProjectOrderField -> String
toString enum =
    case enum of
        CreatedAt ->
                "CREATED_AT"


        UpdatedAt ->
                "UPDATED_AT"


        Name ->
                "NAME"
