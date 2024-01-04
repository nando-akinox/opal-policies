package permit.generated.conditionset.rules

import future.keywords.in

import data.permit.generated.abac.utils.attributes
import data.permit.generated.abac.utils.condition_set_permissions
import data.permit.generated.conditionset

default Dermato_5f5frequester_5fon_5fTeleophtalmo_5f_5f5f_5f5fautogen_5f5fTeleophtalmo = false

Dermato_5f5frequester_5fon_5fTeleophtalmo_5f_5f5f_5f5fautogen_5f5fTeleophtalmo {
	conditionset.userset_Dermato_5frequester
	conditionset.resourceset__5f_5fautogen_5fTeleophtalmo
	input.action in condition_set_permissions.Dermato_requester.__autogen_Teleophtalmo[input.resource.type]
}
