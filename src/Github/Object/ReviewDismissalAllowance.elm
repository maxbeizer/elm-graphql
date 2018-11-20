-- Do not manually edit this file, it was auto-generated by Graphqelm
-- https://github.com/dillonkearns/graphqelm


module Github.Object.ReviewDismissalAllowance exposing (..)

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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.ReviewDismissalAllowance
selection constructor =
    Object.selection constructor


{-| The actor that can dismiss.
-}
actor : SelectionSet decodesTo Github.Union.ReviewDismissalAllowanceActor -> Field (Maybe decodesTo) Github.Object.ReviewDismissalAllowance
actor object =
    Object.selectionField "actor" [] object (identity >> Decode.nullable)


{-| Identifies the branch protection rule associated with the allowed user or team.
-}
branchProtectionRule : SelectionSet decodesTo Github.Object.BranchProtectionRule -> Field (Maybe decodesTo) Github.Object.ReviewDismissalAllowance
branchProtectionRule object =
    Object.selectionField "branchProtectionRule" [] object (identity >> Decode.nullable)


id : Field Github.Scalar.Id Github.Object.ReviewDismissalAllowance
id =
    Object.fieldDecoder "id" [] (Decode.oneOf [ Decode.string, Decode.float |> Decode.map toString, Decode.int |> Decode.map toString, Decode.bool |> Decode.map toString ] |> Decode.map Github.Scalar.Id)


{-| Identifies the protected branch associated with the allowed user or team.
-}
protectedBranch : SelectionSet decodesTo Github.Object.ProtectedBranch -> Field decodesTo Github.Object.ReviewDismissalAllowance
protectedBranch object =
    Object.selectionField "protectedBranch" [] object identity
