.class public Lcom/android/keyguard/clock/animation/utils/RuntimeShaderUtils;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field static shaderString:Ljava/lang/String; = "// precision mediump float;\n\n// The actual wallpaper texture.\nuniform shader uTexture;\n\n// Reveal is the animation value that goes from 1 (the image is hidden) to 0 (the image is visible).\nuniform float uReveal;\n\n// Darken is the flag whether wallpaper need to darken (1 is true).\nuniform int uDarken;\n\n// DarkMode is the flag whether DarkMode wallpaper enable (1 is true).\nuniform int uDarkMode;\n\n// WallpaperAlpha is the wallpaper color alpha\n//uniform float uWallpaperAlpha;\n\n// WindowAlpha is the wallpaper window alpha (1 is show)\n//uniform float uWindowAlpha;\n\n// varying vec2 vTextureCoordinates;\n\nconst vec3 LumCoeff = vec3(0.2125, 0.7154, 0.0721);\nconst vec3 AvgLumin  = vec3(0.5, 0.5, 0.5);\n\nconst vec4 K0 = vec4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);\nconst vec4 K1 = vec4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);\nfloat luminosity(vec3 color) {\n    float lum = 0.2126 * color.r + 0.7152 * color.g + 0.0722 * color.b;\n    return lum;\n}\n\nvec3 ContrastSaturationBrightness(vec3 color, float brt, float sat, float con){\n    vec3 brtColor  = color * brt;\n    vec3 intensity = vec3(dot(brtColor, LumCoeff));\n    vec3 satColor  = mix(intensity, brtColor, sat);\n    vec3 conColor  = mix(AvgLumin, satColor, con);\n\n    return conColor;\n}\n\nvec4 transform(vec3 diffuse) {\n    float lum = luminosity(diffuse);\n    float per = 1. - uReveal;\n    per = per * smoothstep(0., uReveal, lum);\n    diffuse = ContrastSaturationBrightness(diffuse, per, 1., 1.);\n    diffuse = mix(vec3(0.), diffuse, 1.);\n\n    return vec4(diffuse, 1.);\n}\n\nvec3 rgb2hsv(vec3 rgb) {\n    vec4 p = rgb.g < rgb.b ? vec4(rgb.b, rgb.g, K0.w, K0.z) : vec4(rgb.g, rgb.b, K0.x, K0.y);\n    vec4 q = rgb.r < p.x ? vec4(p.x, p.y, p.w, rgb.r) : vec4(rgb.r, p.y, p.z, p.x);\n\n    float d = q.x - min(q.w, q.y);\n    float e = 1.0e-10;\n    return vec3(abs((q.z + (q.w - q.y) / (6.0 * d + e))), d / (q.x + e), q.x);\n}\n\nvec3 hsv2rgb(vec3 hsv) {\n    vec3 p = abs(fract(hsv.xxx + K1.xyz) * 6.0 - K1.www);\n    return hsv.z * mix(K1.xxx, clamp(p - K1.xxx, 0.0, 1.0), hsv.y);\n}\n\nvec3 transformColor(vec3 oColor) {\n    vec3 color = rgb2hsv(oColor);\n\n    float z = color.z;// \u8bb0\u5f55\u539f\u59cb\u660e\u5ea6\n    color.z = mix(color.z, color.z * 0.9 + 0.1, z);// \u6839\u636e\u660e\u5ea6\u4e0d\u540c\u7a0b\u5ea6\u7684\u8c03\u8282\u660e\u5ea6\n    color.y = color.y * 0.98;// \u8c03\u8282\u9971\u548c\u5ea6\n\n    color = hsv2rgb(color);\n    color = mix(color, vec3(0.), .1 * z);// \u6839\u636e\u660e\u5ea6\u4e0d\u540c\u7a0b\u5ea6\u7684\u538b\u9ed1\n\n    return color;\n}\n\nfloat blendColorBurn(float base, float blend) {\n    return (blend==0.0)?blend:max((1.0-((1.0-base)/blend)), 0.0);\n}\n\nvec3 blendColorBurn(vec3 base, vec3 blend) {\n    return vec3(blendColorBurn(base.r, blend.r), blendColorBurn(base.g, blend.g), blendColorBurn(base.b, blend.b));\n}\n\nvec3 blendColorBurn(vec3 base, vec3 blend, float opacity) {\n    return (blendColorBurn(base, blend) * opacity + base * (1.0 - opacity));\n}\n\n// darkMode_per : darkMode=1. lightMode=0.  (0\uff5e1\u53ef\u5b9e\u73b0\u52a8\u753b\u8fc7\u6e21)\nvec3 darkModeTransformColor(vec3 color, float darkMode_per){\n\n    float darkPer = darkMode_per * 0.15;\n    color = blendColorBurn(color, vec3(0.5), darkPer);\n\n    color = rgb2hsv(color);\n    color.y *= (1. - darkMode_per*0.05);\n    color.z *= (1.-darkPer*1.7);\n    color = hsv2rgb(color);\n\n    return color;\n}\n\nvec4 main(vec2 coord) {\n    vec4 fragColor = uTexture.eval(coord);//texture2D(uTexture, vTextureCoordinates);\n    fragColor.rgb /= fragColor.a;    vec4 rgba = transform(fragColor.rgb);\n    vec3 darkenColor = transformColor(rgba.rgb);\n\n    vec4 color;\n    if (uDarkMode == 1) {\n        if (uDarken == 1) {\n            color = vec4(darkModeTransformColor(darkenColor, 1.), rgba.a);//\u5f85\u5b9e\u73b0\u52a8\u753b\u8fc7\u5ea6\uff0c\u8fd9\u91cc\u5148\u5199\u6b7b\n        } else {\n            color = vec4(darkModeTransformColor(rgba.rgb, 1.), rgba.a);\n        }\n    } else {\n        if (uDarken == 1) {\n            color = vec4(darkenColor, rgba.a);\n        } else {\n            color = rgba;\n        }\n    }\n    color.rgb *= fragColor.a;    return vec4(color.rgb, fragColor.a);\n}"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initShader(II)Landroid/graphics/RuntimeShader;
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/RuntimeShader;

    .line 2
    sget-object v1, Lcom/android/keyguard/clock/animation/utils/RuntimeShaderUtils;->shaderString:Ljava/lang/String;

    .line 4
    invoke-direct {v0, v1}, Landroid/graphics/RuntimeShader;-><init>(Ljava/lang/String;)V

    .line 6
    const-string/jumbo v1, "uDarkMode"

    .line 9
    invoke-virtual {v0, v1, p0}, Landroid/graphics/RuntimeShader;->setIntUniform(Ljava/lang/String;I)V

    .line 12
    const-string/jumbo p0, "uDarken"

    .line 15
    invoke-virtual {v0, p0, p1}, Landroid/graphics/RuntimeShader;->setIntUniform(Ljava/lang/String;I)V

    .line 18
    return-object v0
    .line 21
.end method
