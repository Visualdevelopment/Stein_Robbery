fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'Stein_bagger'
description 'Et 24/7 Røveri  script for FiveM'
version '1.0.0'

client_scripts {
    'bridge/client.lua',
    'client/*.lua'
}

server_scripts {
    'bridge/server.lua',
    'server/*.lua',
    'logs.lua'
}

shared_scripts {
    'config.lua',
    'strings.lua',
    '@ox_lib/init.lua'
}