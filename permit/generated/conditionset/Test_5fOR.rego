package permit.generated.conditionset

import future.keywords.in

import data.permit.generated.abac.utils.attributes

default userset_Test_5fOR = false

userset_Test_5fOR {
	attributes.user.email == "toute"
	userset_Test_5fOR_any_of_0
}

default userset_Test_5fOR_any_of_0 = false

userset_Test_5fOR_any_of_0 {
	attributes.user.Specialty == "spec1"
}

userset_Test_5fOR_any_of_0 {
	attributes.user.Specialty == "sepc2"
}
