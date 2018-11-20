-- Do not manually edit this file, it was auto-generated by Graphqelm
-- https://github.com/dillonkearns/graphqelm


module Github.Object.DeployKey exposing (..)

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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.DeployKey
selection constructor =
    Object.selection constructor


{-| Identifies the date and time when the object was created.
-}
createdAt : Field Github.Scalar.DateTime Github.Object.DeployKey
createdAt =
    Object.fieldDecoder "createdAt" [] (Decode.oneOf [ Decode.string, Decode.float |> Decode.map toString, Decode.int |> Decode.map toString, Decode.bool |> Decode.map toString ] |> Decode.map Github.Scalar.DateTime)


id : Field Github.Scalar.Id Github.Object.DeployKey
id =
    Object.fieldDecoder "id" [] (Decode.oneOf [ Decode.string, Decode.float |> Decode.map toString, Decode.int |> Decode.map toString, Decode.bool |> Decode.map toString ] |> Decode.map Github.Scalar.Id)


{-| The deploy key.
-}
key : Field String Github.Object.DeployKey
key =
    Object.fieldDecoder "key" [] Decode.string


{-| Whether or not the deploy key is read only.
-}
readOnly : Field Bool Github.Object.DeployKey
readOnly =
    Object.fieldDecoder "readOnly" [] Decode.bool


{-| The deploy key title.
-}
title : Field String Github.Object.DeployKey
title =
    Object.fieldDecoder "title" [] Decode.string


{-| Whether or not the deploy key has been verified.
-}
verified : Field Bool Github.Object.DeployKey
verified =
    Object.fieldDecoder "verified" [] Decode.bool