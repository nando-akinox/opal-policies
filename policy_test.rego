package policy_test

import data.policy.allow

test_allow_is_false_by_default {
    not allow
}

test_allow_is_true_if_user_is_system_account {
    allow with input as {
        "user": {
            "isServiceAccount": true
        }
    }
}