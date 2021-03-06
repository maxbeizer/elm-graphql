-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql
module Github.Object.ProjectColumn exposing (..)

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
import Github.Enum.ProjectCardArchivedState
import Github.Enum.ProjectColumnPurpose


{-| Select fields to build up a SelectionSet for this object.
-}
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.ProjectColumn
selection constructor =
    Object.selection constructor
type alias CardsOptionalArguments = { archivedStates : OptionalArgument (List (Maybe Github.Enum.ProjectCardArchivedState.ProjectCardArchivedState)), after : OptionalArgument String, before : OptionalArgument String, first : OptionalArgument Int, last : OptionalArgument Int }

{-| List of cards in the column

  - archivedStates - A list of archived states to filter the cards by
  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.

-}
cards : (CardsOptionalArguments -> CardsOptionalArguments) -> SelectionSet decodesTo Github.Object.ProjectCardConnection -> Field decodesTo Github.Object.ProjectColumn
cards fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { archivedStates = Absent, after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "archivedStates" filledInOptionals.archivedStates ((Encode.enum Github.Enum.ProjectCardArchivedState.toString) |> Encode.maybe |> Encode.list), Argument.optional "after" filledInOptionals.after (Encode.string), Argument.optional "before" filledInOptionals.before (Encode.string), Argument.optional "first" filledInOptionals.first (Encode.int), Argument.optional "last" filledInOptionals.last (Encode.int) ]
                |> List.filterMap identity
    in
      Object.selectionField "cards" optionalArgs (object_) (identity)


{-| Identifies the date and time when the object was created.
-}
createdAt : Field Github.Scalar.DateTime Github.Object.ProjectColumn
createdAt =
      Object.fieldDecoder "createdAt" [] (Object.scalarDecoder |> Decode.map Github.Scalar.DateTime)


{-| Identifies the primary key from the database.
-}
databaseId : Field (Maybe Int) Github.Object.ProjectColumn
databaseId =
      Object.fieldDecoder "databaseId" [] (Decode.int |> Decode.nullable)


id : Field Github.Scalar.Id Github.Object.ProjectColumn
id =
      Object.fieldDecoder "id" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Id)


{-| The project column's name.
-}
name : Field String Github.Object.ProjectColumn
name =
      Object.fieldDecoder "name" [] (Decode.string)


{-| The project that contains this column.
-}
project : SelectionSet decodesTo Github.Object.Project -> Field decodesTo Github.Object.ProjectColumn
project object_ =
      Object.selectionField "project" [] (object_) (identity)


{-| The semantic purpose of the column
-}
purpose : Field (Maybe Github.Enum.ProjectColumnPurpose.ProjectColumnPurpose) Github.Object.ProjectColumn
purpose =
      Object.fieldDecoder "purpose" [] (Github.Enum.ProjectColumnPurpose.decoder |> Decode.nullable)


{-| The HTTP path for this project column
-}
resourcePath : Field Github.Scalar.Uri Github.Object.ProjectColumn
resourcePath =
      Object.fieldDecoder "resourcePath" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)


{-| Identifies the date and time when the object was last updated.
-}
updatedAt : Field Github.Scalar.DateTime Github.Object.ProjectColumn
updatedAt =
      Object.fieldDecoder "updatedAt" [] (Object.scalarDecoder |> Decode.map Github.Scalar.DateTime)


{-| The HTTP URL for this project column
-}
url : Field Github.Scalar.Uri Github.Object.ProjectColumn
url =
      Object.fieldDecoder "url" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)
