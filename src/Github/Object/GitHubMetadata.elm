-- Do not manually edit this file, it was auto-generated by Graphqelm
-- https://github.com/dillonkearns/graphqelm


module Github.Object.GitHubMetadata exposing (..)

import Github.InputObject
import Github.Interface
import Github.Object
import Github.Scalar
import Github.Union
import Graphqelm.Field as Field exposing (Field)
import Graphqelm.Internal.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Internal.Builder.Object as Object
import Graphqelm.Internal.Encode as Encode exposing (Value)
import Graphqelm.OptionalArgument exposing (OptionalArgument(Absent))
import Graphqelm.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


{-| Select fields to build up a SelectionSet for this object.
-}
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.GitHubMetadata
selection constructor =
    Object.selection constructor


{-| Returns a String that's a SHA of `github-services`
-}
gitHubServicesSha : Field Github.Scalar.GitObjectID Github.Object.GitHubMetadata
gitHubServicesSha =
    Object.fieldDecoder "gitHubServicesSha" [] (Decode.oneOf [ Decode.string, Decode.float |> Decode.map toString, Decode.int |> Decode.map toString, Decode.bool |> Decode.map toString ] |> Decode.map Github.Scalar.GitObjectID)


{-| IP addresses that users connect to for git operations
-}
gitIpAddresses : Field (Maybe (List String)) Github.Object.GitHubMetadata
gitIpAddresses =
    Object.fieldDecoder "gitIpAddresses" [] (Decode.string |> Decode.list |> Decode.nullable)


{-| IP addresses that service hooks are sent from
-}
hookIpAddresses : Field (Maybe (List String)) Github.Object.GitHubMetadata
hookIpAddresses =
    Object.fieldDecoder "hookIpAddresses" [] (Decode.string |> Decode.list |> Decode.nullable)


{-| IP addresses that the importer connects from
-}
importerIpAddresses : Field (Maybe (List String)) Github.Object.GitHubMetadata
importerIpAddresses =
    Object.fieldDecoder "importerIpAddresses" [] (Decode.string |> Decode.list |> Decode.nullable)


{-| Whether or not users are verified
-}
isPasswordAuthenticationVerifiable : Field Bool Github.Object.GitHubMetadata
isPasswordAuthenticationVerifiable =
    Object.fieldDecoder "isPasswordAuthenticationVerifiable" [] Decode.bool


{-| IP addresses for GitHub Pages' A records
-}
pagesIpAddresses : Field (Maybe (List String)) Github.Object.GitHubMetadata
pagesIpAddresses =
    Object.fieldDecoder "pagesIpAddresses" [] (Decode.string |> Decode.list |> Decode.nullable)