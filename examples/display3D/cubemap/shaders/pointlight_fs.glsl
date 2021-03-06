precision mediump float;

uniform sampler2D uSampler;

varying vec2 vTexCoord;
varying vec3 vLightWeighting;

void main(void){
      vec4 textureColor = texture2D(uSampler, vec2(vTexCoord.s, vTexCoord.t));
      gl_FragColor = vec4(textureColor.rgb * vLightWeighting, textureColor.a);
}