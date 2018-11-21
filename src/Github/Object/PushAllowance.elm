-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql
module Github.Object.PushAllowance exposing (..)

import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Field as Field exposing (Field)
import Graphql.Internal.Builder.Object as Object
import Graphql.SelectionSet exposing (SelectionSet)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Github.Object
import Github.Interface
import Github.Union
import Github.Scalar
import Github.InputObject
import Json.Decode as Decode
import Graphql.Internal.Encode as Encode exposing (Value)



{-| Select fields to build up a SelectionSet for this object.
-}
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.PushAllowance
selection constructor =
    Object.selection constructor
{-| The actor that can push.
-}
actor : SelectionSet decodesTo Github.Union.PushAllowanceActor -> Field (Maybe decodesTo) Github.Object.PushAllowance
actor object_ =
      Object.selectionField "actor" [] (object_) (identity >> Decode.nullable)


{-| Identifies the branch protection rule associated with the allowed user or team.
-}
branchProtectionRule : SelectionSet decodesTo Github.Object.BranchProtectionRule -> Field (Maybe decodesTo) Github.Object.PushAllowance
branchProtectionRule object_ =
      Object.selectionField "branchProtectionRule" [] (object_) (identity >> Decode.nullable)


id : Field Github.Scalar.Id Github.Object.PushAllowance
id =
      Object.fieldDecoder "id" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Id)


{-| Identifies the protected branch associated with the allowed user or team.
-}
protectedBranch : SelectionSet decodesTo Github.Object.ProtectedBranch -> Field decodesTo Github.Object.PushAllowance
protectedBranch object_ =
      Object.selectionField "protectedBranch" [] (object_) (identity)
