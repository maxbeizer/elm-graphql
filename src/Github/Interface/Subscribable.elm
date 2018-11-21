-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql
module Github.Interface.Subscribable exposing (..)

import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Field as Field exposing (Field)
import Graphql.Internal.Builder.Object as Object
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.SelectionSet exposing (FragmentSelectionSet(..), SelectionSet(..))
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Github.Object
import Github.Interface
import Github.Union
import Github.Scalar
import Github.InputObject
import Json.Decode as Decode
import Graphql.Internal.Encode as Encode exposing (Value)
import Github.Enum.SubscriptionState

{-| Select only common fields from the interface.
-}
commonSelection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Interface.Subscribable
commonSelection constructor =
    Object.selection constructor


{-| Select both common and type-specific fields from the interface.
-}
selection : (Maybe typeSpecific -> a -> constructor) -> List (FragmentSelectionSet typeSpecific Github.Interface.Subscribable) -> SelectionSet (a -> constructor) Github.Interface.Subscribable
selection constructor typeSpecificDecoders =
    Object.interfaceSelection typeSpecificDecoders constructor
onCommit : SelectionSet decodesTo Github.Object.Commit -> FragmentSelectionSet decodesTo Github.Interface.Subscribable
onCommit (SelectionSet fields decoder) =
    FragmentSelectionSet "Commit" fields decoder


onIssue : SelectionSet decodesTo Github.Object.Issue -> FragmentSelectionSet decodesTo Github.Interface.Subscribable
onIssue (SelectionSet fields decoder) =
    FragmentSelectionSet "Issue" fields decoder


onPullRequest : SelectionSet decodesTo Github.Object.PullRequest -> FragmentSelectionSet decodesTo Github.Interface.Subscribable
onPullRequest (SelectionSet fields decoder) =
    FragmentSelectionSet "PullRequest" fields decoder


onRepository : SelectionSet decodesTo Github.Object.Repository -> FragmentSelectionSet decodesTo Github.Interface.Subscribable
onRepository (SelectionSet fields decoder) =
    FragmentSelectionSet "Repository" fields decoder


onTeam : SelectionSet decodesTo Github.Object.Team -> FragmentSelectionSet decodesTo Github.Interface.Subscribable
onTeam (SelectionSet fields decoder) =
    FragmentSelectionSet "Team" fields decoder
id : Field Github.Scalar.Id Github.Interface.Subscribable
id =
      Object.fieldDecoder "id" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Id)


{-| Check if the viewer is able to change their subscription status for the repository.
-}
viewerCanSubscribe : Field Bool Github.Interface.Subscribable
viewerCanSubscribe =
      Object.fieldDecoder "viewerCanSubscribe" [] (Decode.bool)


{-| Identifies if the viewer is watching, not watching, or ignoring the subscribable entity.
-}
viewerSubscription : Field (Maybe Github.Enum.SubscriptionState.SubscriptionState) Github.Interface.Subscribable
viewerSubscription =
      Object.fieldDecoder "viewerSubscription" [] (Github.Enum.SubscriptionState.decoder |> Decode.nullable)
