package permit.generated.conditionset

import future.keywords.in

import data.permit.generated.abac.utils.attributes

default userset_Test_5fOR = false

userset_Test_5fOR {
	userset_Test_5fOR_any_of_0
}

default userset_Test_5fOR_any_of_0 = false

userset_Test_5fOR_any_of_0 {
	userset_Test_5fOR_any_of_0_any_of_1
}

userset_Test_5fOR_any_of_0 {
	attributes.user.email == "toute"
}

userset_Test_5fOR_any_of_0 {
	attributes.user.Specialty == "medecin"
	attributes.user.roles == "requester"
}

userset_Test_5fOR_any_of_0 {
	userset_Test_5fOR_any_of_0_any_of_2
}

default userset_Test_5fOR_any_of_0_any_of_1 = false

userset_Test_5fOR_any_of_0_any_of_1 {
	attributes.user.Specialty == "spec1"
}

userset_Test_5fOR_any_of_0_any_of_1 {
	attributes.user.Specialty == "sepc2"
}

default userset_Test_5fOR_any_of_0_any_of_2 = false

userset_Test_5fOR_any_of_0_any_of_2 {
	attributes.user.email == "toto1"
}

userset_Test_5fOR_any_of_0_any_of_2 {
	attributes.user.email == "toto2"
}

userset_Test_5fOR_any_of_0_any_of_2 {
	attributes.user.email == "toto3"
}
