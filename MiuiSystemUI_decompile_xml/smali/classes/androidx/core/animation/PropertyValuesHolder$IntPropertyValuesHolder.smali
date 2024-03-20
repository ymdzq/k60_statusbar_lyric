.class public final Landroidx/core/animation/PropertyValuesHolder$IntPropertyValuesHolder;
.super Landroidx/core/animation/PropertyValuesHolder;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mIntAnimatedValue:I

.field public mIntKeyframes:Landroidx/core/animation/IntKeyframeSet;


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/core/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p2}, Landroidx/core/animation/PropertyValuesHolder$IntPropertyValuesHolder;->setIntValues([I)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final calculateValue(F)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/core/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntKeyframes:Landroidx/core/animation/IntKeyframeSet;

    .line 2
    const/4 v1, 0x0

    .line 4
    cmpg-float v1, p1, v1

    .line 5
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    if-gtz v1, :cond_2

    .line 9
    iget-object v1, v0, Landroidx/core/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    .line 11
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    move-result-object v1

    .line 16
    check-cast v1, Landroidx/core/animation/Keyframe$IntKeyframe;

    .line 17
    iget-object v3, v0, Landroidx/core/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    .line 19
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 24
    check-cast v2, Landroidx/core/animation/Keyframe$IntKeyframe;

    .line 25
    iget v3, v1, Landroidx/core/animation/Keyframe$IntKeyframe;->mValue:I

    .line 27
    iget v4, v2, Landroidx/core/animation/Keyframe$IntKeyframe;->mValue:I

    .line 29
    iget v1, v1, Landroidx/core/animation/Keyframe;->mFraction:F

    .line 31
    iget v5, v2, Landroidx/core/animation/Keyframe;->mFraction:F

    .line 33
    iget-object v2, v2, Landroidx/core/animation/Keyframe;->mInterpolator:Landroidx/core/animation/Interpolator;

    .line 35
    if-eqz v2, :cond_0

    .line 37
    invoke-interface {v2, p1}, Landroidx/core/animation/Interpolator;->getInterpolation(F)F

    .line 39
    move-result p1

    .line 42
    :cond_0
    sub-float/2addr p1, v1

    .line 43
    sub-float/2addr v5, v1

    .line 44
    div-float/2addr p1, v5

    .line 45
    iget-object v0, v0, Landroidx/core/animation/KeyframeSet;->mEvaluator:Landroidx/core/animation/TypeEvaluator;

    .line 46
    if-nez v0, :cond_1

    .line 48
    goto :goto_0

    .line 50
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    move-result-object v1

    .line 54
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    move-result-object v2

    .line 58
    invoke-interface {v0, p1, v1, v2}, Landroidx/core/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    move-result-object p1

    .line 62
    check-cast p1, Ljava/lang/Integer;

    .line 63
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 65
    move-result p1

    .line 68
    goto/16 :goto_2

    .line 69
    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    .line 71
    cmpl-float v1, p1, v1

    .line 73
    if-ltz v1, :cond_5

    .line 75
    iget-object v1, v0, Landroidx/core/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    .line 77
    iget v3, v0, Landroidx/core/animation/KeyframeSet;->mNumKeyframes:I

    .line 79
    add-int/lit8 v3, v3, -0x2

    .line 81
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 83
    move-result-object v1

    .line 86
    check-cast v1, Landroidx/core/animation/Keyframe$IntKeyframe;

    .line 87
    iget-object v3, v0, Landroidx/core/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    .line 89
    iget v4, v0, Landroidx/core/animation/KeyframeSet;->mNumKeyframes:I

    .line 91
    sub-int/2addr v4, v2

    .line 93
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 94
    move-result-object v2

    .line 97
    check-cast v2, Landroidx/core/animation/Keyframe$IntKeyframe;

    .line 98
    iget v3, v1, Landroidx/core/animation/Keyframe$IntKeyframe;->mValue:I

    .line 100
    iget v4, v2, Landroidx/core/animation/Keyframe$IntKeyframe;->mValue:I

    .line 102
    iget v1, v1, Landroidx/core/animation/Keyframe;->mFraction:F

    .line 104
    iget v5, v2, Landroidx/core/animation/Keyframe;->mFraction:F

    .line 106
    iget-object v2, v2, Landroidx/core/animation/Keyframe;->mInterpolator:Landroidx/core/animation/Interpolator;

    .line 108
    if-eqz v2, :cond_3

    .line 110
    invoke-interface {v2, p1}, Landroidx/core/animation/Interpolator;->getInterpolation(F)F

    .line 112
    move-result p1

    .line 115
    :cond_3
    sub-float/2addr p1, v1

    .line 116
    sub-float/2addr v5, v1

    .line 117
    div-float/2addr p1, v5

    .line 118
    iget-object v0, v0, Landroidx/core/animation/KeyframeSet;->mEvaluator:Landroidx/core/animation/TypeEvaluator;

    .line 119
    if-nez v0, :cond_4

    .line 121
    :goto_0
    sub-int/2addr v4, v3

    .line 123
    int-to-float v0, v4

    .line 124
    mul-float/2addr p1, v0

    .line 125
    float-to-int p1, p1

    .line 126
    add-int/2addr p1, v3

    .line 127
    goto/16 :goto_2

    .line 128
    :cond_4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    move-result-object v1

    .line 133
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    move-result-object v2

    .line 137
    invoke-interface {v0, p1, v1, v2}, Landroidx/core/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    move-result-object p1

    .line 141
    check-cast p1, Ljava/lang/Integer;

    .line 142
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 144
    move-result p1

    .line 147
    goto :goto_2

    .line 148
    :cond_5
    iget-object v1, v0, Landroidx/core/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    .line 149
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 151
    move-result-object v1

    .line 154
    check-cast v1, Landroidx/core/animation/Keyframe$IntKeyframe;

    .line 155
    move v3, v2

    .line 157
    :goto_1
    iget v4, v0, Landroidx/core/animation/KeyframeSet;->mNumKeyframes:I

    .line 158
    if-ge v3, v4, :cond_9

    .line 160
    iget-object v4, v0, Landroidx/core/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    .line 162
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 164
    move-result-object v4

    .line 167
    check-cast v4, Landroidx/core/animation/Keyframe$IntKeyframe;

    .line 168
    iget v5, v4, Landroidx/core/animation/Keyframe;->mFraction:F

    .line 170
    cmpg-float v6, p1, v5

    .line 172
    if-gez v6, :cond_8

    .line 174
    iget-object v2, v4, Landroidx/core/animation/Keyframe;->mInterpolator:Landroidx/core/animation/Interpolator;

    .line 176
    iget v3, v1, Landroidx/core/animation/Keyframe;->mFraction:F

    .line 178
    sub-float/2addr p1, v3

    .line 180
    sub-float/2addr v5, v3

    .line 181
    div-float/2addr p1, v5

    .line 182
    iget v1, v1, Landroidx/core/animation/Keyframe$IntKeyframe;->mValue:I

    .line 183
    iget v3, v4, Landroidx/core/animation/Keyframe$IntKeyframe;->mValue:I

    .line 185
    if-eqz v2, :cond_6

    .line 187
    invoke-interface {v2, p1}, Landroidx/core/animation/Interpolator;->getInterpolation(F)F

    .line 189
    move-result p1

    .line 192
    :cond_6
    iget-object v0, v0, Landroidx/core/animation/KeyframeSet;->mEvaluator:Landroidx/core/animation/TypeEvaluator;

    .line 193
    if-nez v0, :cond_7

    .line 195
    sub-int/2addr v3, v1

    .line 197
    int-to-float v0, v3

    .line 198
    mul-float/2addr p1, v0

    .line 199
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 200
    move-result p1

    .line 203
    add-int/2addr p1, v1

    .line 204
    goto :goto_2

    .line 205
    :cond_7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 206
    move-result-object v1

    .line 209
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 210
    move-result-object v2

    .line 213
    invoke-interface {v0, p1, v1, v2}, Landroidx/core/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    move-result-object p1

    .line 217
    check-cast p1, Ljava/lang/Integer;

    .line 218
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 220
    move-result p1

    .line 223
    goto :goto_2

    .line 224
    :cond_8
    add-int/lit8 v3, v3, 0x1

    .line 225
    move-object v1, v4

    .line 227
    goto :goto_1

    .line 228
    :cond_9
    iget-object p1, v0, Landroidx/core/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    .line 229
    sub-int/2addr v4, v2

    .line 231
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 232
    move-result-object p1

    .line 235
    check-cast p1, Landroidx/core/animation/Keyframe;

    .line 236
    invoke-virtual {p1}, Landroidx/core/animation/Keyframe;->getValue()Ljava/lang/Object;

    .line 238
    move-result-object p1

    .line 241
    check-cast p1, Ljava/lang/Integer;

    .line 242
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 244
    move-result p1

    .line 247
    :goto_2
    iput p1, p0, Landroidx/core/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntAnimatedValue:I

    .line 248
    return-void
    .line 250
.end method

.method public final clone()Landroidx/core/animation/PropertyValuesHolder;
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/core/animation/PropertyValuesHolder;->clone()Landroidx/core/animation/PropertyValuesHolder;

    move-result-object p0

    check-cast p0, Landroidx/core/animation/PropertyValuesHolder$IntPropertyValuesHolder;

    .line 2
    iget-object v0, p0, Landroidx/core/animation/PropertyValuesHolder;->mKeyframes:Landroidx/core/animation/Keyframes;

    check-cast v0, Landroidx/core/animation/IntKeyframeSet;

    iput-object v0, p0, Landroidx/core/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntKeyframes:Landroidx/core/animation/IntKeyframeSet;

    return-object p0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    .line 3
    invoke-super {p0}, Landroidx/core/animation/PropertyValuesHolder;->clone()Landroidx/core/animation/PropertyValuesHolder;

    move-result-object p0

    check-cast p0, Landroidx/core/animation/PropertyValuesHolder$IntPropertyValuesHolder;

    .line 4
    iget-object v0, p0, Landroidx/core/animation/PropertyValuesHolder;->mKeyframes:Landroidx/core/animation/Keyframes;

    check-cast v0, Landroidx/core/animation/IntKeyframeSet;

    iput-object v0, p0, Landroidx/core/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntKeyframes:Landroidx/core/animation/IntKeyframeSet;

    return-object p0
.end method

.method public final getAnimatedValue()Ljava/lang/Object;
    .locals 0

    .line 1
    iget p0, p0, Landroidx/core/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntAnimatedValue:I

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public final setAnimatedValue(Ljava/lang/Object;)V
    .locals 4

    .line 1
    const-string v0, "PropertyValuesHolder"

    .line 2
    iget-object v1, p0, Landroidx/core/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    .line 4
    if-eqz v1, :cond_0

    .line 6
    iget p0, p0, Landroidx/core/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntAnimatedValue:I

    .line 8
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object p0

    .line 13
    invoke-virtual {v1, p1, p0}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 14
    return-void

    .line 17
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroidx/core/animation/PropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    .line 18
    iget v2, p0, Landroidx/core/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntAnimatedValue:I

    .line 20
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object v2

    .line 25
    const/4 v3, 0x0

    .line 26
    aput-object v2, v1, v3

    .line 27
    iget-object v1, p0, Landroidx/core/animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    .line 29
    iget-object p0, p0, Landroidx/core/animation/PropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    .line 31
    invoke-virtual {v1, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    goto :goto_0

    .line 36
    :catch_0
    move-exception p0

    .line 37
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    .line 38
    move-result-object p0

    .line 41
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    goto :goto_0

    .line 45
    :catch_1
    move-exception p0

    .line 46
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    .line 47
    move-result-object p0

    .line 50
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :goto_0
    return-void
    .line 54
.end method

.method public final varargs setIntValues([I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/core/animation/PropertyValuesHolder;->setIntValues([I)V

    .line 2
    iget-object p1, p0, Landroidx/core/animation/PropertyValuesHolder;->mKeyframes:Landroidx/core/animation/Keyframes;

    .line 5
    check-cast p1, Landroidx/core/animation/IntKeyframeSet;

    .line 7
    iput-object p1, p0, Landroidx/core/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntKeyframes:Landroidx/core/animation/IntKeyframeSet;

    .line 9
    return-void
    .line 11
.end method

.method public final setProperty(Landroid/util/Property;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/core/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    .line 2
    return-void
    .line 4
.end method
