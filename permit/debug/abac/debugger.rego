package permit.debug.abac

import data.permit.abac
import data.permit.conditionset
import data.permit.debug.utils as debug_utils
import data.permit.generated.abac.utils
import future.keywords.in

default details := null

details = details {
	# in case of rbac deny, return the denying roles
	not activated
	details := codes("disabled")
} else = details {
	# in case of rbac allow, return the allowing roles
	allow
	details := codes("allow")
} else = details {
	# if there are no matching usersets
	count(abac.matching_usersets) == 0
	details := codes("no_matching_usersets")
} else = details {
	# if there are no matching resourcesets
	count(abac.matching_resourcesets) == 0
	details := codes("no_matching_resourcesets")
} else = details {
	# if the user does not have the required permissions ( grants )
	details := codes("no_matching_rules")
}
