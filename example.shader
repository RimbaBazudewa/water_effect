shader_type canvas_item;
uniform float amount: hint_range(0.0, 5.0);
uniform vec4 water_color:hint_color;
void fragment()
{
	vec4 Color= textureLod(SCREEN_TEXTURE, SCREEN_UV, amount);

	float thres =step(0.3, Color.a);
	vec4 sum  = vec4(thres* 0.7 , thres* 0.9 , thres, thres);
	Color *= sum;
	float average = (Color.r + Color.g+ Color.b) / 3.0;
	float a = 0.;
	if (average <0.3)
	{
		COLOR =vec4(Color.rgb, a);
	}else {
		COLOR = vec4(water_color.rgb,1)
	}
	
	
}
