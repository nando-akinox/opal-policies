package policies.request.policy1

import future.keywords.if

default allow := false

allow if {
	input.object.requestId == "patate"
}
