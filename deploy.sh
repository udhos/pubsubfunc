#!/bin/bash

me=$(basename $0)

die() {
	echo >&2 $me: $@
	exit 1
}

[ -n "$ACCOUNT" ] || die missing env var ACCOUNT=$ACCOUNT
[ -n "$PROJECT" ] || die missing env var PROJECT=$PROJECT
[ -n "$FUNCTION" ] || die missing env var FUNCTION=$FUNCTION
[ -n "$TOPIC" ] || die missing env var TOPIC=$TOPIC

gcloud functions deploy "$FUNCTION" --account "$ACCOUNT" --project "$PROJECT" --trigger-resource "$TOPIC" --trigger-event google.pubsub.topic.publish
