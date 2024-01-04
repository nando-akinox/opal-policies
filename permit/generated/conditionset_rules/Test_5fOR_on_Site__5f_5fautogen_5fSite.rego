package permit.generated.conditionset.rules

import future.keywords.in

import data.permit.generated.abac.utils.attributes
import data.permit.generated.abac.utils.condition_set_permissions
import data.permit.generated.conditionset

default Test_5f5fOR_5fon_5fSite_5f_5f5f_5f5fautogen_5f5fSite = false

Test_5f5fOR_5fon_5fSite_5f_5f5f_5f5fautogen_5f5fSite {
	conditionset.userset_Test_5fOR
	conditionset.resourceset__5f_5fautogen_5fSite
	input.action in condition_set_permissions.Test_OR.__autogen_Site[input.resource.type]
}
