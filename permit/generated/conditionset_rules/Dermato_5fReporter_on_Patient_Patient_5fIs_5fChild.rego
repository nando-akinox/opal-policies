package permit.generated.conditionset.rules

import future.keywords.in

import data.permit.generated.abac.utils.attributes
import data.permit.generated.abac.utils.condition_set_permissions
import data.permit.generated.conditionset

default Dermato_5f5fReporter_5fon_5fPatient_5fPatient_5f5fIs_5f5fChild = false

Dermato_5f5fReporter_5fon_5fPatient_5fPatient_5f5fIs_5f5fChild {
	conditionset.userset_Dermato_5fReporter
	conditionset.resourceset_Patient_5fIs_5fChild
	input.action in condition_set_permissions.Dermato_Reporter.Patient_Is_Child[input.resource.type]
}
