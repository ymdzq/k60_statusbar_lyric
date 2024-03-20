uniform shader uView;
uniform vec2 uViewSize;
uniform vec4 uColor1, uColor2, uColor3, uColor4;
uniform float uColorStop1, uColorStop2, uColorStop3, uColorStop4;
uniform float uAngle;
uniform float uOffset;
vec4 main(vec2 coord) {
    vec2 uv = coord;

    uv.y += uViewSize.y * 0.5;
    uv = mat2(cos(uAngle), -sin(uAngle), sin(uAngle), cos(uAngle)) * uv;

    float gradient = uv.x / uViewSize.x + 1. - uOffset;

    vec4 col;
    if (gradient < uColorStop1) {
        col = uColor1;
    } else if (gradient < uColorStop2) {
        col = mix(uColor1, uColor2, smoothstep(uColorStop1, uColorStop2, gradient));
    } else if (gradient < uColorStop3) {
        col = mix(uColor2, uColor3, smoothstep(uColorStop2, uColorStop3, gradient));
    } else if (gradient < uColorStop4) {
        col = mix(uColor3, uColor4, smoothstep(uColorStop3, uColorStop4, gradient));
    } else {
        col = uColor4;
    }

    col.a *= uView.eval(coord).a;
    col.rgb *= col.a;

    return col;
}