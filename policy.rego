package policy

import future.keywords.contains
import future.keywords.if
import future.keywords.in

default allow := false
default allow_in_any_sites := false
default allow_in_all_sites := false

allow if {
	input.user.isServiceAccount == true
}

allow if {
	some permission in identity_has_permission

	input.operation.subject == permission.subject
	input.operation.action == permission.action
}

allow_in_any_sites if {
	some permission in permissions_in_some_sites
    
	input.operation.subject == permission.subject
	input.operation.action == permission.action
}

identity_has_permission contains permission if {
	some role in input.identity.roles

	some permission in data.roles[role]
}

# identity_has_permission

permissions_in_some_sites contains permission if {
	some usr in user_site_role

	some permission in data.roles[usr.role]
}

user_site_role[usr] {
	some usr in data.user_site_roles2
    usr.user == input.identity.username
    usr.site == input.resource.sites[_]
}



# sites[s]
# {
# 	some s in input.resource.sites
# }

# test[role] {
# 	obj = data.user_site_roles2[_]
#     
#     obj.user == input.identity.username
#     obj.site == input.resource.sites[_]
#     role = obj.role
# }