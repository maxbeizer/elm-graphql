-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql
module Github.Enum.TeamRole exposing (..)

import Json.Decode as Decode exposing (Decoder)


{-| The role of a user on a team.

  - Admin - User has admin rights on the team.
  - Member - User is a member of the team.

-}
type TeamRole
    = Admin
    | Member
list : List TeamRole
list =
    [Admin, Member]
decoder : Decoder TeamRole
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "ADMIN" ->
                        Decode.succeed Admin

                    "MEMBER" ->
                        Decode.succeed Member

                    _ ->
                        Decode.fail ("Invalid TeamRole type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
        )
        

{-| Convert from the union type representating the Enum to a string that the GraphQL server will recognize.
-}
toString : TeamRole -> String
toString enum =
    case enum of
        Admin ->
                "ADMIN"


        Member ->
                "MEMBER"
