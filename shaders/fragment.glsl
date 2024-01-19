uniform vec3 uColorStart;
uniform vec3 uColorEnd;

void main()
{
  float distanceToCenter = distance(gl_PointCoord, vec2(0.5));
  float strength = 0.05 / distanceToCenter - 0.1;
  vec3 color = mix(uColorStart, uColorEnd, strength);

  gl_FragColor = vec4(color, strength);
   #include <colorspace_fragment>
}