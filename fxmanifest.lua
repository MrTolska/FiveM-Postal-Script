fx_version 'cerulean'
game 'gta5'

lua54 'yes'  -- Enable Lua 5.4, required by ox_lib

author 'Bamm'
version '1.1.0'

shared_scripts {
	--'@ox_lib/init.lua', -- Required for ox_lib features like lib.notify
	'config.lua',
	'@lation_ui/init.lua'
}

client_scripts { 
	'postalCode-c.lua',
}

server_scripts { 
	'postalCode-s.lua',
}
