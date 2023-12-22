# Role-based Access Control (RBAC)
# --------------------------------
#
# This example defines an RBAC model for a Pet Store API. The Pet Store API allows
# users to look at pets, adopt them, update their stats, and so on. The policy
# controls which users can perform actions on which resources. The policy implements
# a classic Role-based Access Control model where users are assigned to roles and
# roles are granted the ability to perform some action(s) on some type of resource.
#
# This example shows how to:
#
#	* Define an RBAC model in Rego that interprets role mappings represented in JSON.
#	* Iterate/search across JSON data structures (e.g., role mappings)
#
# For more information see:
#
#	* Rego comparison to other systems: https://www.openpolicyagent.org/docs/latest/comparison-to-other-systems/
#	* Rego Iteration: https://www.openpolicyagent.org/docs/latest/#iteration

package app.rbac

import future.keywords.contains
import future.keywords.if
import future.keywords.in

# By default, deny requests.
default allow := false

# Allow the action if the user is granted permission to perform the action.
allow if {
	# Find grants for the user.
	some permission in user_permissions_in_department

	# Check if the grant permits the action.
	input.action == permission
}

user_permissions_in_department contains permission if {
	some role in data.users[input.user].roles
    role.siteId == input.object.departmentId

	some permission in data.roles[role.name]
}

users_with_permission_in_department contains user if {
	some user
    some role in data.users[user].roles
    role.siteId == input.object.departmentId

	some allowedRole in role_with_permission
	role.name == allowedRole
}

role_with_permission contains role if {
	some role
    data.roles[role][_] == input.action
}
