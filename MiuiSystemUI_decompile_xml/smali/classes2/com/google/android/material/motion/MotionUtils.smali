.class public abstract Lcom/google/android/material/motion/MotionUtils;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public static getLegacyControlPoint(I[Ljava/lang/String;)F
    .locals 2

    .line 1
    aget-object p0, p1, p0

    .line 2
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 4
    move-result p0

    .line 7
    const/4 p1, 0x0

    .line 8
    cmpg-float p1, p0, p1

    .line 9
    if-ltz p1, :cond_0

    .line 11
    const/high16 p1, 0x3f800000    # 1.0f

    .line 13
    cmpl-float p1, p0, p1

    .line 15
    if-gtz p1, :cond_0

    .line 17
    return p0

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    const-string v1, "Motion easing control point value must be between 0 and 1; instead got: "

    .line 24
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object p0

    .line 35
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 36
    throw p1
    .line 39
.end method

.method public static isLegacyEasingType(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "("

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 8
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    const-string p1, ")"

    .line 14
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 16
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    const/4 p0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    :goto_0
    return p0
    .line 25
.end method

.method public static resolveThemeDuration(Landroid/content/Context;II)I
    .locals 1

    .line 1
    invoke-static {p1, p0}, Lcom/google/android/material/resources/MaterialAttributes;->resolve(ILandroid/content/Context;)Landroid/util/TypedValue;

    .line 2
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    iget p1, p0, Landroid/util/TypedValue;->type:I

    .line 8
    const/16 v0, 0x10

    .line 10
    if-ne p1, v0, :cond_0

    .line 12
    iget p2, p0, Landroid/util/TypedValue;->data:I

    .line 14
    :cond_0
    return p2
    .line 16
.end method

.method public static resolveThemeInterpolator(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;
    .locals 6

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    .line 2
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 7
    move-result-object v1

    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 12
    move-result p1

    .line 15
    if-nez p1, :cond_0

    .line 16
    return-object p2

    .line 18
    :cond_0
    iget p1, v0, Landroid/util/TypedValue;->type:I

    .line 19
    const/4 p2, 0x3

    .line 21
    if-ne p1, p2, :cond_7

    .line 22
    iget-object p1, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 24
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 29
    const-string v1, "cubic-bezier"

    .line 30
    invoke-static {p1, v1}, Lcom/google/android/material/motion/MotionUtils;->isLegacyEasingType(Ljava/lang/String;Ljava/lang/String;)Z

    .line 32
    move-result v3

    .line 35
    const/4 v4, 0x0

    .line 36
    const-string v5, "path"

    .line 37
    if-nez v3, :cond_2

    .line 39
    invoke-static {p1, v5}, Lcom/google/android/material/motion/MotionUtils;->isLegacyEasingType(Ljava/lang/String;Ljava/lang/String;)Z

    .line 41
    move-result v3

    .line 44
    if-eqz v3, :cond_1

    .line 45
    goto :goto_0

    .line 47
    :cond_1
    move v3, v4

    .line 48
    goto :goto_1

    .line 49
    :cond_2
    :goto_0
    move v3, v2

    .line 50
    :goto_1
    if-eqz v3, :cond_6

    .line 51
    invoke-static {p1, v1}, Lcom/google/android/material/motion/MotionUtils;->isLegacyEasingType(Ljava/lang/String;Ljava/lang/String;)Z

    .line 53
    move-result p0

    .line 56
    if-eqz p0, :cond_4

    .line 57
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 59
    move-result p0

    .line 62
    add-int/lit8 p0, p0, -0x1

    .line 63
    const/16 v0, 0xd

    .line 65
    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 67
    move-result-object p0

    .line 70
    const-string p1, ","

    .line 71
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 73
    move-result-object p0

    .line 76
    array-length p1, p0

    .line 77
    const/4 v0, 0x4

    .line 78
    if-ne p1, v0, :cond_3

    .line 79
    invoke-static {v4, p0}, Lcom/google/android/material/motion/MotionUtils;->getLegacyControlPoint(I[Ljava/lang/String;)F

    .line 81
    move-result p1

    .line 84
    invoke-static {v2, p0}, Lcom/google/android/material/motion/MotionUtils;->getLegacyControlPoint(I[Ljava/lang/String;)F

    .line 85
    move-result v0

    .line 88
    const/4 v1, 0x2

    .line 89
    invoke-static {v1, p0}, Lcom/google/android/material/motion/MotionUtils;->getLegacyControlPoint(I[Ljava/lang/String;)F

    .line 90
    move-result v1

    .line 93
    invoke-static {p2, p0}, Lcom/google/android/material/motion/MotionUtils;->getLegacyControlPoint(I[Ljava/lang/String;)F

    .line 94
    move-result p0

    .line 97
    new-instance p2, Landroid/view/animation/PathInterpolator;

    .line 98
    invoke-direct {p2, p1, v0, v1, p0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 100
    goto :goto_2

    .line 103
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 104
    new-instance p2, Ljava/lang/StringBuilder;

    .line 106
    const-string v0, "Motion easing theme attribute must have 4 control points if using bezier curve format; instead got: "

    .line 108
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    array-length p0, p0

    .line 113
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    move-result-object p0

    .line 120
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 121
    throw p1

    .line 124
    :cond_4
    invoke-static {p1, v5}, Lcom/google/android/material/motion/MotionUtils;->isLegacyEasingType(Ljava/lang/String;Ljava/lang/String;)Z

    .line 125
    move-result p0

    .line 128
    if-eqz p0, :cond_5

    .line 129
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 131
    move-result p0

    .line 134
    add-int/lit8 p0, p0, -0x1

    .line 135
    const/4 p2, 0x5

    .line 137
    invoke-virtual {p1, p2, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 138
    move-result-object p0

    .line 141
    invoke-static {p0}, Landroidx/core/graphics/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    .line 142
    move-result-object p0

    .line 145
    new-instance p2, Landroid/view/animation/PathInterpolator;

    .line 146
    invoke-direct {p2, p0}, Landroid/view/animation/PathInterpolator;-><init>(Landroid/graphics/Path;)V

    .line 148
    :goto_2
    return-object p2

    .line 151
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 152
    const-string p2, "Invalid motion easing type: "

    .line 154
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 156
    move-result-object p1

    .line 159
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 160
    throw p0

    .line 163
    :cond_6
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    .line 164
    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    .line 166
    move-result-object p0

    .line 169
    return-object p0

    .line 170
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 171
    const-string p1, "Motion easing theme attribute must be an @interpolator resource for ?attr/motionEasing*Interpolator attributes or a string for ?attr/motionEasing* attributes."

    .line 173
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 175
    throw p0
    .line 178
.end method
