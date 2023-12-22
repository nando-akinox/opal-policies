package policies.request.policy2

import future.keywords.if

default allow := false

allow if {
	input.object.requestId == "test"
}
