fx_version 'adamant'

games { 'gta5' }

lua54 'yes'


shared_scripts {
	'settings/*.lua',
}

server_script {
	'server/*.lua',
	'settings/*.lua',
}	

client_script {
	'client/*.lua',
	'settings/*.lua',
}

data_file('DLC_ITYP_REQUEST')('stream/shield.ytyp')