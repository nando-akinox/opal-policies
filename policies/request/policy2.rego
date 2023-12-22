package policies.request.policy2

import future.keywords.if

default isAllowed := false

isAllowed if {
	input.object.requestId == "test"
}
