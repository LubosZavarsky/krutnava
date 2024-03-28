// Apply shake
fx_set_parameter(shake_fx, "g_Magnitude", global.shake_magnitude);
fx_set_parameter(shake_fx, "g_ShakeSpeed", shake_speed);

// Fall to 0
if (global.shake_magnitude > 0)
{
	global.shake_magnitude -= 0.3;
}