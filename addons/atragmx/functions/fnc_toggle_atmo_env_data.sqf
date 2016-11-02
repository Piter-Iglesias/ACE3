/*
 * Author: Ruthberg
 * Toggles the atmospheric data screen on/off
 *
 * Arguments:
 * Apply new data? <NUMBER>
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * 1 call ace_atragmx_fnc_toggle_atmo_env_data
 *
 * Public: No
 */
#include "script_component.hpp"

if (ctrlVisible 13000) then {
    false call FUNC(show_atmo_env_data);
    true call FUNC(show_main_page);

    if (_this == 1) then {
        [true, true] call FUNC(recalculate_muzzle_velocity);
        call FUNC(calculate_target_solution);
    } else {
        call FUNC(update_atmo_env_data);
    };
} else {
    true call FUNC(show_atmo_env_data);
    false call FUNC(show_main_page);
};
