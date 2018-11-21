module Main exposing (main)

import Browser
import Github.Object
import Github.Object.User as User
import Github.Query as Query
import Graphql.Http
import Graphql.Operation exposing (RootQuery)
import Graphql.SelectionSet exposing (SelectionSet, with)
import Html exposing (Html, a, div, h1, h2, p, pre, text)
import RemoteData exposing (RemoteData)


query : SelectionSet Response RootQuery
query =
    Query.selection Response
        |> with (Query.user { login = "octocat" } user)


user : SelectionSet User Github.Object.User
user =
    User.selection User
        |> with User.name


type alias Response =
    { user : Maybe User }


type alias User =
    { name : Maybe String }



-- Get your GitHub bearer access token from https://help.github.com/articles/creating-a-personal-access-token-for-the-command-line/


makeRequest : Cmd Msg
makeRequest =
    query
        |> Graphql.Http.queryRequest
            "https://api.github.com/graphql"
        |> Graphql.Http.withHeader "authorization" "Bearer <YOUR GITHUB BEARER TOKEN>"
        |> Graphql.Http.send (RemoteData.fromResult >> GotResponse)


type Msg
    = GotResponse Model


type alias Model =
    RemoteData (Graphql.Http.Error Response) Response


init : () -> ( Model, Cmd Msg )
init _ =
    ( RemoteData.Loading
    , makeRequest
    )


view : Model -> Html.Html Msg
view model =
    div []
        [ case model of
            RemoteData.Loading ->
                text "Loading"

            RemoteData.Failure e ->
                text <| "Something went wrong: " ++ Debug.toString e

            RemoteData.NotAsked ->
                text "Request has not been made yet"

            RemoteData.Success response ->
                case response.user of
                    Just ghUser ->
                        div []
                            [ h2 [] [ text (Maybe.withDefault "User has no name" ghUser.name) ] ]

                    Nothing ->
                        text "No user was found with that name"
        ]


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        GotResponse response ->
            ( response, Cmd.none )


main : Program () Model Msg
main =
    Browser.element
        { init = init
        , update = update
        , subscriptions = \_ -> Sub.none
        , view = view
        }
