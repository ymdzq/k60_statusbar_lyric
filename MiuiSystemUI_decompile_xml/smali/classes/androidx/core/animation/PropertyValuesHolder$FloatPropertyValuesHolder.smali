.class public final Landroidx/core/animation/PropertyValuesHolder$FloatPropertyValuesHolder;
.super Landroidx/core/animation/PropertyValuesHolder;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mFloatAnimatedValue:F

.field public mFloatKeyframes:Landroidx/core/animation/FloatKeyframeSet;


# direct methods
.method public varargs constructor <init>(Landroid/util/Property;[F)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Landroidx/core/animation/PropertyValuesHolder;-><init>(Landroid/util/Property;)V

    .line 4
    invoke-virtual {p0, p2}, Landroidx/core/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->setFloatValues([F)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/core/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p2}, Landroidx/core/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->setFloatValues([F)V

    return-void
.end method


# virtual methods
.method public final calculateValue(F)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/core/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatKeyframes:Landroidx/core/animation/FloatKeyframeSet;

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
    check-cast v1, Landroidx/core/animation/Keyframe$FloatKeyframe;

    .line 17
    iget-object v3, v0, Landroidx/core/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    .line 19
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 24
    check-cast v2, Landroidx/core/animation/Keyframe$FloatKeyframe;

    .line 25
    iget v3, v1, Landroidx/core/animation/Keyframe$FloatKeyframe;->mValue:F

    .line 27
    iget v4, v2, Landroidx/core/animation/Keyframe$FloatKeyframe;->mValue:F

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
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 51
    move-result-object v1

    .line 54
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 55
    move-result-object v2

    .line 58
    invoke-interface {v0, p1, v1, v2}, Landroidx/core/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    move-result-object p1

    .line 62
    check-cast p1, Ljava/lang/Float;

    .line 63
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

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
    check-cast v1, Landroidx/core/animation/Keyframe$FloatKeyframe;

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
    check-cast v2, Landroidx/core/animation/Keyframe$FloatKeyframe;

    .line 98
    iget v3, v1, Landroidx/core/animation/Keyframe$FloatKeyframe;->mValue:F

    .line 100
    iget v4, v2, Landroidx/core/animation/Keyframe$FloatKeyframe;->mValue:F

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
    invoke-static {v4, v3, p1, v3}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 123
    move-result p1

    .line 126
    goto/16 :goto_2

    .line 127
    :cond_4
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 129
    move-result-object v1

    .line 132
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 133
    move-result-object v2

    .line 136
    invoke-interface {v0, p1, v1, v2}, Landroidx/core/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    move-result-object p1

    .line 140
    check-cast p1, Ljava/lang/Float;

    .line 141
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 143
    move-result p1

    .line 146
    goto :goto_2

    .line 147
    :cond_5
    iget-object v1, v0, Landroidx/core/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    .line 148
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 150
    move-result-object v1

    .line 153
    check-cast v1, Landroidx/core/animation/Keyframe$FloatKeyframe;

    .line 154
    move v3, v2

    .line 156
    :goto_1
    iget v4, v0, Landroidx/core/animation/KeyframeSet;->mNumKeyframes:I

    .line 157
    if-ge v3, v4, :cond_9

    .line 159
    iget-object v4, v0, Landroidx/core/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    .line 161
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 163
    move-result-object v4

    .line 166
    check-cast v4, Landroidx/core/animation/Keyframe$FloatKeyframe;

    .line 167
    iget v5, v4, Landroidx/core/animation/Keyframe;->mFraction:F

    .line 169
    cmpg-float v6, p1, v5

    .line 171
    if-gez v6, :cond_8

    .line 173
    iget-object v2, v4, Landroidx/core/animation/Keyframe;->mInterpolator:Landroidx/core/animation/Interpolator;

    .line 175
    iget v3, v1, Landroidx/core/animation/Keyframe;->mFraction:F

    .line 177
    sub-float/2addr p1, v3

    .line 179
    sub-float/2addr v5, v3

    .line 180
    div-float/2addr p1, v5

    .line 181
    iget v1, v1, Landroidx/core/animation/Keyframe$FloatKeyframe;->mValue:F

    .line 182
    iget v3, v4, Landroidx/core/animation/Keyframe$FloatKeyframe;->mValue:F

    .line 184
    if-eqz v2, :cond_6

    .line 186
    invoke-interface {v2, p1}, Landroidx/core/animation/Interpolator;->getInterpolation(F)F

    .line 188
    move-result p1

    .line 191
    :cond_6
    iget-object v0, v0, Landroidx/core/animation/KeyframeSet;->mEvaluator:Landroidx/core/animation/TypeEvaluator;

    .line 192
    if-nez v0, :cond_7

    .line 194
    invoke-static {v3, v1, p1, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 196
    move-result p1

    .line 199
    goto :goto_2

    .line 200
    :cond_7
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 201
    move-result-object v1

    .line 204
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 205
    move-result-object v2

    .line 208
    invoke-interface {v0, p1, v1, v2}, Landroidx/core/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    move-result-object p1

    .line 212
    check-cast p1, Ljava/lang/Float;

    .line 213
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 215
    move-result p1

    .line 218
    goto :goto_2

    .line 219
    :cond_8
    add-int/lit8 v3, v3, 0x1

    .line 220
    move-object v1, v4

    .line 222
    goto :goto_1

    .line 223
    :cond_9
    iget-object p1, v0, Landroidx/core/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    .line 224
    sub-int/2addr v4, v2

    .line 226
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 227
    move-result-object p1

    .line 230
    check-cast p1, Landroidx/core/animation/Keyframe;

    .line 231
    invoke-virtual {p1}, Landroidx/core/animation/Keyframe;->getValue()Ljava/lang/Object;

    .line 233
    move-result-object p1

    .line 236
    check-cast p1, Ljava/lang/Float;

    .line 237
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 239
    move-result p1

    .line 242
    :goto_2
    iput p1, p0, Landroidx/core/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatAnimatedValue:F

    .line 243
    return-void
    .line 245
.end method

.method public final clone()Landroidx/core/animation/PropertyValuesHolder;
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/core/animation/PropertyValuesHolder;->clone()Landroidx/core/animation/PropertyValuesHolder;

    move-result-object p0

    check-cast p0, Landroidx/core/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    .line 2
    iget-object v0, p0, Landroidx/core/animation/PropertyValuesHolder;->mKeyframes:Landroidx/core/animation/Keyframes;

    check-cast v0, Landroidx/core/animation/FloatKeyframeSet;

    iput-object v0, p0, Landroidx/core/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatKeyframes:Landroidx/core/animation/FloatKeyframeSet;

    return-object p0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    .line 3
    invoke-super {p0}, Landroidx/core/animation/PropertyValuesHolder;->clone()Landroidx/core/animation/PropertyValuesHolder;

    move-result-object p0

    check-cast p0, Landroidx/core/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    .line 4
    iget-object v0, p0, Landroidx/core/animation/PropertyValuesHolder;->mKeyframes:Landroidx/core/animation/Keyframes;

    check-cast v0, Landroidx/core/animation/FloatKeyframeSet;

    iput-object v0, p0, Landroidx/core/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatKeyframes:Landroidx/core/animation/FloatKeyframeSet;

    return-object p0
.end method

.method public final getAnimatedValue()Ljava/lang/Object;
    .locals 0

    .line 1
    iget p0, p0, Landroidx/core/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatAnimatedValue:F

    .line 2
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

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
    iget p0, p0, Landroidx/core/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatAnimatedValue:F

    .line 8
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 10
    move-result-object p0

    .line 13
    invoke-virtual {v1, p1, p0}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 14
    return-void

    .line 17
    :cond_0
    iget-object v1, p0, Landroidx/core/animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    .line 18
    if-eqz v1, :cond_1

    .line 20
    :try_start_0
    iget-object v1, p0, Landroidx/core/animation/PropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    .line 22
    iget v2, p0, Landroidx/core/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatAnimatedValue:F

    .line 24
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 26
    move-result-object v2

    .line 29
    const/4 v3, 0x0

    .line 30
    aput-object v2, v1, v3

    .line 31
    iget-object v1, p0, Landroidx/core/animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    .line 33
    iget-object p0, p0, Landroidx/core/animation/PropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    .line 35
    invoke-virtual {v1, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    goto :goto_0

    .line 40
    :catch_0
    move-exception p0

    .line 41
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    .line 42
    move-result-object p0

    .line 45
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    goto :goto_0

    .line 49
    :catch_1
    move-exception p0

    .line 50
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    .line 51
    move-result-object p0

    .line 54
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_1
    :goto_0
    return-void
    .line 58
.end method

.method public final varargs setFloatValues([F)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/core/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 2
    iget-object p1, p0, Landroidx/core/animation/PropertyValuesHolder;->mKeyframes:Landroidx/core/animation/Keyframes;

    .line 5
    check-cast p1, Landroidx/core/animation/FloatKeyframeSet;

    .line 7
    iput-object p1, p0, Landroidx/core/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatKeyframes:Landroidx/core/animation/FloatKeyframeSet;

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
