package permit.generated.conditionset

import future.keywords.in

import data.permit.generated.abac.utils.attributes

default userset_Dermato_5frequester = false

userset_Dermato_5frequester {
	attributes.user.Specialty == "dermato"
	attributes.user.roles == "requester"
}
