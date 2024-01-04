package permit.generated.conditionset

import future.keywords.in

import data.permit.generated.abac.utils.attributes

default resourceset_Patient_5fIs_5fChild = false

resourceset_Patient_5fIs_5fChild {
	attributes.resource.IsAdult == false
	attributes.resource.type == "Patient"
}
