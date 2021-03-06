-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module ElmGithub.Interface.Starrable exposing (Fragments, StargazersOptionalArguments, fragments, id, maybeFragments, stargazers, viewerHasStarred)

import ElmGithub.InputObject
import ElmGithub.Interface
import ElmGithub.Object
import ElmGithub.Scalar
import ElmGithub.ScalarCodecs
import ElmGithub.Union
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (FragmentSelectionSet(..), SelectionSet(..))
import Json.Decode as Decode


type alias Fragments decodesTo =
    { onRepository : SelectionSet decodesTo ElmGithub.Object.Repository
    , onGist : SelectionSet decodesTo ElmGithub.Object.Gist
    , onTopic : SelectionSet decodesTo ElmGithub.Object.Topic
    }


{-| Build an exhaustive selection of type-specific fragments.
-}
fragments :
    Fragments decodesTo
    -> SelectionSet decodesTo ElmGithub.Interface.Starrable
fragments selections =
    Object.exhuastiveFragmentSelection
        [ Object.buildFragment "Repository" selections.onRepository
        , Object.buildFragment "Gist" selections.onGist
        , Object.buildFragment "Topic" selections.onTopic
        ]


{-| Can be used to create a non-exhuastive set of fragments by using the record
update syntax to add `SelectionSet`s for the types you want to handle.
-}
maybeFragments : Fragments (Maybe decodesTo)
maybeFragments =
    { onRepository = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onGist = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onTopic = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    }


{-| -}
id : SelectionSet ElmGithub.ScalarCodecs.Id ElmGithub.Interface.Starrable
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (ElmGithub.ScalarCodecs.codecs |> ElmGithub.Scalar.unwrapCodecs |> .codecId |> .decoder)


type alias StargazersOptionalArguments =
    { after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    , orderBy : OptionalArgument ElmGithub.InputObject.StarOrder
    }


{-| A list of users who have starred this starrable.

  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.
  - orderBy - Order for connection

-}
stargazers : (StargazersOptionalArguments -> StargazersOptionalArguments) -> SelectionSet decodesTo ElmGithub.Object.StargazerConnection -> SelectionSet decodesTo ElmGithub.Interface.Starrable
stargazers fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { after = Absent, before = Absent, first = Absent, last = Absent, orderBy = Absent }

        optionalArgs =
            [ Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "orderBy" filledInOptionals.orderBy ElmGithub.InputObject.encodeStarOrder ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "stargazers" optionalArgs object_ identity


{-| Returns a boolean indicating whether the viewing user has starred this starrable.
-}
viewerHasStarred : SelectionSet Bool ElmGithub.Interface.Starrable
viewerHasStarred =
    Object.selectionForField "Bool" "viewerHasStarred" [] Decode.bool
