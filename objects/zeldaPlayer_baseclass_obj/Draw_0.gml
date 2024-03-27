

if (flash != 0)
{
	shader_set(redShader);
	shader_set_uniform_f(uflash,flash);
};

draw_self();

if(shader_current()!=-1){shader_reset();};