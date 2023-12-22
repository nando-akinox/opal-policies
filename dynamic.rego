package app.dynamic

import future.keywords.contains
import future.keywords.if
import future.keywords.in

# By default, deny requests.
default allow := false

# Allow the action if the user is granted permission to perform the action.
allow if {
	data.policies["request"][_].allow[_]
}
