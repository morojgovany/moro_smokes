fx_version 'cerulean'
game 'rdr3'
rdr3_warning "I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships."
lua54 'yes'
name "moro_smokes"
startup_message "moro_smokes loaded successfully!"
author "Morojgovany"
description "Free color smoke script for Redm"

client_script {
    'client.lua',
}
server_script {
    'server.lua',
}

shared_script {
    '@jo_libs/init.lua',
    'config.lua',
}

dependencies {
    'jo_libs',
}
jo_libs {
    'framework',
    'notification',
    "callback",
}
