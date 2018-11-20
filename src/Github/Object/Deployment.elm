-- Do not manually edit this file, it was auto-generated by Graphqelm
-- https://github.com/dillonkearns/graphqelm


module Github.Object.Deployment exposing (..)

import Github.Enum.DeploymentState
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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.Deployment
selection constructor =
    Object.selection constructor


{-| Identifies the commit sha of the deployment.
-}
commit : SelectionSet decodesTo Github.Object.Commit -> Field (Maybe decodesTo) Github.Object.Deployment
commit object =
    Object.selectionField "commit" [] object (identity >> Decode.nullable)


{-| Identifies the oid of the deployment commit, even if the commit has been deleted.
-}
commitOid : Field String Github.Object.Deployment
commitOid =
    Object.fieldDecoder "commitOid" [] Decode.string


{-| Identifies the date and time when the object was created.
-}
createdAt : Field Github.Scalar.DateTime Github.Object.Deployment
createdAt =
    Object.fieldDecoder "createdAt" [] (Decode.oneOf [ Decode.string, Decode.float |> Decode.map toString, Decode.int |> Decode.map toString, Decode.bool |> Decode.map toString ] |> Decode.map Github.Scalar.DateTime)


{-| Identifies the actor who triggered the deployment.
-}
creator : SelectionSet decodesTo Github.Interface.Actor -> Field (Maybe decodesTo) Github.Object.Deployment
creator object =
    Object.selectionField "creator" [] object (identity >> Decode.nullable)


{-| Identifies the primary key from the database.
-}
databaseId : Field (Maybe Int) Github.Object.Deployment
databaseId =
    Object.fieldDecoder "databaseId" [] (Decode.int |> Decode.nullable)


{-| The deployment description.
-}
description : Field (Maybe String) Github.Object.Deployment
description =
    Object.fieldDecoder "description" [] (Decode.string |> Decode.nullable)


{-| The environment to which this deployment was made.
-}
environment : Field (Maybe String) Github.Object.Deployment
environment =
    Object.fieldDecoder "environment" [] (Decode.string |> Decode.nullable)


id : Field Github.Scalar.Id Github.Object.Deployment
id =
    Object.fieldDecoder "id" [] (Decode.oneOf [ Decode.string, Decode.float |> Decode.map toString, Decode.int |> Decode.map toString, Decode.bool |> Decode.map toString ] |> Decode.map Github.Scalar.Id)


{-| The latest status of this deployment.
-}
latestStatus : SelectionSet decodesTo Github.Object.DeploymentStatus -> Field (Maybe decodesTo) Github.Object.Deployment
latestStatus object =
    Object.selectionField "latestStatus" [] object (identity >> Decode.nullable)


{-| Extra information that a deployment system might need.
-}
payload : Field (Maybe String) Github.Object.Deployment
payload =
    Object.fieldDecoder "payload" [] (Decode.string |> Decode.nullable)


{-| Identifies the Ref of the deployment, if the deployment was created by ref.
-}
ref : SelectionSet decodesTo Github.Object.Ref -> Field (Maybe decodesTo) Github.Object.Deployment
ref object =
    Object.selectionField "ref" [] object (identity >> Decode.nullable)


{-| Identifies the repository associated with the deployment.
-}
repository : SelectionSet decodesTo Github.Object.Repository -> Field decodesTo Github.Object.Deployment
repository object =
    Object.selectionField "repository" [] object identity


{-| The current state of the deployment.
-}
state : Field (Maybe Github.Enum.DeploymentState.DeploymentState) Github.Object.Deployment
state =
    Object.fieldDecoder "state" [] (Github.Enum.DeploymentState.decoder |> Decode.nullable)


type alias StatusesOptionalArguments =
    { after : OptionalArgument String, before : OptionalArgument String, first : OptionalArgument Int, last : OptionalArgument Int }


{-| A list of statuses associated with the deployment.

  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.

-}
statuses : (StatusesOptionalArguments -> StatusesOptionalArguments) -> SelectionSet decodesTo Github.Object.DeploymentStatusConnection -> Field (Maybe decodesTo) Github.Object.Deployment
statuses fillInOptionals object =
    let
        filledInOptionals =
            fillInOptionals { after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionField "statuses" optionalArgs object (identity >> Decode.nullable)


{-| The deployment task.
-}
task : Field (Maybe String) Github.Object.Deployment
task =
    Object.fieldDecoder "task" [] (Decode.string |> Decode.nullable)


{-| Identifies the date and time when the object was last updated.
-}
updatedAt : Field Github.Scalar.DateTime Github.Object.Deployment
updatedAt =
    Object.fieldDecoder "updatedAt" [] (Decode.oneOf [ Decode.string, Decode.float |> Decode.map toString, Decode.int |> Decode.map toString, Decode.bool |> Decode.map toString ] |> Decode.map Github.Scalar.DateTime)
