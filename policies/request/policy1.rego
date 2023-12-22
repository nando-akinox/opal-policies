package policies.request.policy1

import future.keywords.if

default isAllowed := false

isAllowed if {
	input.object.requestId == "patate"
}
