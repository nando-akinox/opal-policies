package permit.generated.conditionset

import future.keywords.in

import data.permit.generated.abac.utils.attributes

default userset_Dermato_5fReporter = false

userset_Dermato_5fReporter {
	attributes.user.roles == "Reporter"
	attributes.user.Specialty == "dermato"
}
