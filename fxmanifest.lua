fx_version "cerulean"
game "gta5"
lua54 "yes"

name "mnr_vehicles"
description "Vehicle Management Script [BETA EXPERIMENTATION LEARNING]"
author "IlMelons"
version "0.0.1"
repository "https://www.github.com/Monarch-Development/mnr_vehicles"

shared_scripts {
    "@ox_lib/init.lua",
    "config/*.lua",
}

client_scripts {
    "client/*.lua",
}

files {
    "handling/*.meta",
}

data_file "HANDLING_FILE" "handling/*.meta"