#### Required ####

variable workspace_name {
	default = "AmazingApp"
}

variable organization {
	default = "masa_org"
}

#### Optionnal ####

variable env_name {
	type = list(string)
	description = "map of env names"
	default = [
		"dev",
		"qa",
		"staging",
		"production"
	]
}

variable dev {
	type = map( 
		object ({
			value = string
			category = string
			sensitive = bool
		})
	)
	description = "API key" 
	default = {
		api_key = {
			value = "123455"
			category = "terraform"
			sensitive = false
		},
		env = {
			value = "dev"
			category = "terraform"
			sensitive = false
		},
		username = {
			value = "masa"
			category = "terraform"
			sensitive = false
		}
		AWS_SECRET_KEY_ID = {
			value = "dfgasdafaksjdfnasdfhkj"
			category = "env"
			sensitive = true
		}
	}
} // dev

variable qa {
	type = map( 
		object ({
			value = string
			category = string
			sensitive = bool
		})
	)
	description = "API key" 
	default = {
		api_key = {
			value = "123455"
			category = "terraform"
			sensitive = false
		},
		env = {
			value = "QA"
			category = "terraform"
			sensitive = false
		},
		username = {
			value = "masa"
			category = "terraform"
			sensitive = false
		}
		AWS_SECRET_KEY_ID = {
			value = "dfgasdafaksjdfnasdfhkj"
			category = "env"
			sensitive = true
		}
	}
} // qa

variable staging {
	type = map( 
		object ({
			value = string
			category = string
			sensitive = bool
		})
	)
	description = "API key" 
	default = {
		api_key = {
			value = "123455"
			category = "terraform"
			sensitive = false
		},
		env = {
			value = "staging"
			category = "terraform"
			sensitive = false
		},
		username = {
			value = "masa"
			category = "terraform"
			sensitive = false
		}
		AWS_SECRET_KEY_ID = {
			value = "dfgasdafaksjdfnasdfhkj"
			category = "env"
			sensitive = true
		}
	}
} // staging

variable production {
	type = map( 
		object ({
			value = string
			category = string
			sensitive = bool
		})
	)
	description = "API key" 
	default = {
		api_key = {
			value = "123455"
			category = "terraform"
			sensitive = false
		},
		env = {
			value = "production"
			category = "terraform"
			sensitive = false
		},
		username = {
			value = "masa"
			category = "terraform"
			sensitive = false
		}
		AWS_SECRET_KEY_ID = {
			value = "dfgasdafaksjdfnasdfhkj"
			category = "env"
			sensitive = true
		}
	}
}  // production
