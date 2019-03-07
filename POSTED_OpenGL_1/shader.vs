#version 330 core
	layout (location = 0) in vec3 aPos;     //attribute pos 0
	//layout (location = 1) in vec3 aColor;   //attribute pos 1
    layout (location = 1) in vec2 aTexCoord;

    //out vec3 ourColor; // output a color to the fragment shader
    out vec2 TexCoord;

    uniform mat4 model;
    uniform mat4 view;
    uniform mat4 projection;

    void main()
	{
		gl_Position = projection * view * model * vec4(aPos, 1.0);
        //ourColor = aColor; // take out
        TexCoord = vec2(aTexCoord.x, aTexCoord.y);
	}