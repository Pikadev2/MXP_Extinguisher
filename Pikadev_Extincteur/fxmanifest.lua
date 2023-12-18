fx_version 'cerulean'

game 'gta5'
lua54 'on'
author "Pikadev_"

client_scripts {
    "config.lua",
    "client/main.lua",
    "local/lang.lua"
}

server_scripts {
    "config.lua",
    "server/main.lua"
}
escrow_ignore {
    'config.lua',
    'README.md',
    'extincteur.sql'
}