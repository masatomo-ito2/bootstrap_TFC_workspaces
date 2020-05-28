resource tfe_workspace "ws" {
	count = length( var.env_name )	

	organization = var.organization
	name = "${var.workspace_name}_${var.env_name[count.index]}"
}

resource tfe_variable "dev" {
	for_each = var.dev

	workspace_id = tfe_workspace.ws[0].id
	key = each.key
	value = lookup( each.value, "value" )
	category = lookup( each.value, "category" )
	sensitive = lookup( each.value, "sensitive" )
}

resource tfe_variable "qa" {
	for_each = var.qa

	workspace_id = tfe_workspace.ws[1].id
	key = each.key
	value = lookup( each.value, "value" )
	category = lookup( each.value, "category" )
	sensitive = lookup( each.value, "sensitive" )
}

resource tfe_variable "staging" {
	for_each = var.staging

	workspace_id = tfe_workspace.ws[2].id
	key = each.key
	value = lookup( each.value, "value" )
	category = lookup( each.value, "category" )
	sensitive = lookup( each.value, "sensitive" )
}

resource tfe_variable "production" {
	for_each = var.staging

	workspace_id = tfe_workspace.ws[3].id
	key = each.key
	value = lookup( each.value, "value" )
	category = lookup( each.value, "category" )
	sensitive = lookup( each.value, "sensitive" )
}
