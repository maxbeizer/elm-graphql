-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql
module Github.Enum.DefaultRepositoryPermissionField exposing (..)

import Json.Decode as Decode exposing (Decoder)


{-| The possible default permissions for repositories.

  - None - No access
  - Read - Can read repos by default
  - Write - Can read and write repos by default
  - Admin - Can read, write, and administrate repos by default

-}
type DefaultRepositoryPermissionField
    = None
    | Read
    | Write
    | Admin
list : List DefaultRepositoryPermissionField
list =
    [None, Read, Write, Admin]
decoder : Decoder DefaultRepositoryPermissionField
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "NONE" ->
                        Decode.succeed None

                    "READ" ->
                        Decode.succeed Read

                    "WRITE" ->
                        Decode.succeed Write

                    "ADMIN" ->
                        Decode.succeed Admin

                    _ ->
                        Decode.fail ("Invalid DefaultRepositoryPermissionField type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
        )
        

{-| Convert from the union type representating the Enum to a string that the GraphQL server will recognize.
-}
toString : DefaultRepositoryPermissionField -> String
toString enum =
    case enum of
        None ->
                "NONE"


        Read ->
                "READ"


        Write ->
                "WRITE"


        Admin ->
                "ADMIN"
