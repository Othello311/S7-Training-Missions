
params ["_box"];

_box addAction ["  Pistol Range Loadout", {
    params ["","_player"];

    _player setUnitLoadout [
        ["", "", "", "", [], [], ""],
        ["", "", "", "", [], [], ""],
        ["rhsusf_weap_m9", "", "", "", [], [], ""],
        ["rhs_uniform_acu_oefcp", [
            ["ACRE_PRC343", 1],
            ["ACE_MapTools", 1],
            ["ACE_Flashlight_XL50", 1],
            ["ACE_DAGR", 1],
            ["ACE_quikclot", 14],
            ["ACE_tourniquet", 4]
        ]],
        ["rhsusf_spcs_ocp_rifleman_alt", []],
        ["",[]],
        "rhsusf_ach_helmet_ocp", "",["", "", "", "", [], [], ""],
        ["ItemMap","","","ItemCompass","ItemWatch",""]
    ];

    for "_i" from 1 to 2 do {_player addMagazine ["rhsusf_mag_15Rnd_9x19_JHP", 10];};
    for "_i" from 1 to 2 do {_player addMagazine ["rhsusf_mag_15Rnd_9x19_JHP", 0];};

}, nil, 1.5, true, true, "", "true", 5];

_box execVM "MissionScripts\Crates\boxes.sqf";