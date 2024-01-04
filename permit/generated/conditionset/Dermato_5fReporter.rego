package permit.generated.conditionset

import future.keywords.in

import data.permit.generated.abac.utils.attributes

default userset_Dermato_5fReporter = false

userset_Dermato_5fReporter {
	attributes.user.roles == "Reporter"
	userset_Dermato_5fReporter_any_of_0
}

default userset_Dermato_5fReporter_any_of_0 = false

userset_Dermato_5fReporter_any_of_0 {
	attributes.user.Specialty == "dermato"
}

userset_Dermato_5fReporter_any_of_0 {
	attributes.user.Specialty == "pqptm"
}
