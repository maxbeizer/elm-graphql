-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql
module Github.Interface.Labelable exposing (..)

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


{-| Select only common fields from the interface.
-}
commonSelection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Interface.Labelable
commonSelection constructor =
    Object.selection constructor


{-| Select both common and type-specific fields from the interface.
-}
selection : (Maybe typeSpecific -> a -> constructor) -> List (FragmentSelectionSet typeSpecific Github.Interface.Labelable) -> SelectionSet (a -> constructor) Github.Interface.Labelable
selection constructor typeSpecificDecoders =
    Object.interfaceSelection typeSpecificDecoders constructor
onIssue : SelectionSet decodesTo Github.Object.Issue -> FragmentSelectionSet decodesTo Github.Interface.Labelable
onIssue (SelectionSet fields decoder) =
    FragmentSelectionSet "Issue" fields decoder


onPullRequest : SelectionSet decodesTo Github.Object.PullRequest -> FragmentSelectionSet decodesTo Github.Interface.Labelable
onPullRequest (SelectionSet fields decoder) =
    FragmentSelectionSet "PullRequest" fields decoder
type alias LabelsOptionalArguments = { after : OptionalArgument String, before : OptionalArgument String, first : OptionalArgument Int, last : OptionalArgument Int }

{-| A list of labels associated with the object.

  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.

-}
labels : (LabelsOptionalArguments -> LabelsOptionalArguments) -> SelectionSet decodesTo Github.Object.LabelConnection -> Field (Maybe decodesTo) Github.Interface.Labelable
labels fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "after" filledInOptionals.after (Encode.string), Argument.optional "before" filledInOptionals.before (Encode.string), Argument.optional "first" filledInOptionals.first (Encode.int), Argument.optional "last" filledInOptionals.last (Encode.int) ]
                |> List.filterMap identity
    in
      Object.selectionField "labels" optionalArgs (object_) (identity >> Decode.nullable)
