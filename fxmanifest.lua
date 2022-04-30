fx_version 'bodacious'
game 'gta5'

author 'You'
version '1.0.0'

ui_page 'ui/index.html'

client_scripts { 'client.lua', 'config.lua' }
server_scripts { 'server.lua', 'config.lua' }

files {
    'ui/index.html',
    'ui/js/*.js',
    'ui/css/*.css'
}