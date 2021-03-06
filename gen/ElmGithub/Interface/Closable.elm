-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module ElmGithub.Interface.Closable exposing (Fragments, closed, closedAt, fragments, maybeFragments)

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
    { onProject : SelectionSet decodesTo ElmGithub.Object.Project
    , onIssue : SelectionSet decodesTo ElmGithub.Object.Issue
    , onPullRequest : SelectionSet decodesTo ElmGithub.Object.PullRequest
    , onMilestone : SelectionSet decodesTo ElmGithub.Object.Milestone
    }


{-| Build an exhaustive selection of type-specific fragments.
-}
fragments :
    Fragments decodesTo
    -> SelectionSet decodesTo ElmGithub.Interface.Closable
fragments selections =
    Object.exhuastiveFragmentSelection
        [ Object.buildFragment "Project" selections.onProject
        , Object.buildFragment "Issue" selections.onIssue
        , Object.buildFragment "PullRequest" selections.onPullRequest
        , Object.buildFragment "Milestone" selections.onMilestone
        ]


{-| Can be used to create a non-exhuastive set of fragments by using the record
update syntax to add `SelectionSet`s for the types you want to handle.
-}
maybeFragments : Fragments (Maybe decodesTo)
maybeFragments =
    { onProject = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onIssue = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onPullRequest = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onMilestone = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    }


{-| `true` if the object is closed (definition of closed may depend on type)
-}
closed : SelectionSet Bool ElmGithub.Interface.Closable
closed =
    Object.selectionForField "Bool" "closed" [] Decode.bool


{-| Identifies the date and time when the object was closed.
-}
closedAt : SelectionSet (Maybe ElmGithub.ScalarCodecs.DateTime) ElmGithub.Interface.Closable
closedAt =
    Object.selectionForField "(Maybe ScalarCodecs.DateTime)" "closedAt" [] (ElmGithub.ScalarCodecs.codecs |> ElmGithub.Scalar.unwrapCodecs |> .codecDateTime |> .decoder |> Decode.nullable)
