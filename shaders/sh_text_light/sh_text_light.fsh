varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float pixelW;
uniform float pixelH;

void main()
{
	vec2 offsetx; offsetx.x = pixelW;
	vec2 offsety; offsety.y = pixelH;
	
	vec4 Color = vec4(v_vColour);
	
	if ( texture2D( gm_BaseTexture, v_vTexcoord ).a != 0.0)
	{
		if ( texture2D( gm_BaseTexture, v_vTexcoord - offsetx.x).a == 0.0 || texture2D( gm_BaseTexture, v_vTexcoord - offsety.y).a == 0.0)
		{
			vec4 Color = vec4(v_vColour.r, v_vColour.g, v_vColour.b, 1.0);
		}
	}
	
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
}