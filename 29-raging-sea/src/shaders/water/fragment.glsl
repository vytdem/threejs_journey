uniform vec3 uDepthColor;
uniform vec3 uSurfaceColor;
uniform float uColorOffset;
uniform float uColorMultiplier;

varying float vElevation;

void main()
{
    // float mixStrength = clamp(((vElevation + uColorOffset) * uColorMultiplier) - 0.005, 0.0, 1.0);
    float mixStrength = (vElevation + uColorOffset) * uColorMultiplier;
    vec3 color = mix(uDepthColor, uSurfaceColor, mixStrength);

    // gl_FragColor = vec4(mixStrength, mixStrength, mixStrength, 1.0);
    gl_FragColor = vec4(color, 1.0);
    // #include <colorspace_fragment>
}