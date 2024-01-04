package app.rbac

import future.keywords.contains
import future.keywords.if
import future.keywords.in

# By default, deny requests.
default allow := false

# Allow the action if the user is granted permission to perform the action.
allow if {
	user_has_permission_in_department
}
allow if {
	user_inherits_permission_in_department
}

user_has_permission_in_department if {
	some permission in user_permissions_in_department
	
	input.action == permission
}

user_inherits_permission_in_department if {
	some permissionSite in sites_with_permission_for_user
    
    permissionSite in data.sites[input.object.departmentId].parents
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

sites_with_permission_for_user contains site if {
	some allowedRole in role_with_permission
    some role in data.users[input.user].roles
    role.name == allowedRole
    site := role.siteId
}
