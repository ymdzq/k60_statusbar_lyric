.class public abstract Lcom/android/systemui/statusbar/notification/PropertyAnimator;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->getAnimatorTag()I

    .line 2
    move-result v0

    .line 5
    sget-object v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->NO_NEW_ANIMATIONS:Lcom/android/systemui/statusbar/notification/stack/ViewState$1;

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Landroid/animation/ValueAnimator;

    .line 12
    if-nez v0, :cond_1

    .line 14
    if-eqz p4, :cond_0

    .line 16
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->getProperty()Landroid/util/Property;

    .line 19
    move-result-object p1

    .line 22
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 23
    move-result-object p2

    .line 26
    invoke-virtual {p1, p0, p2}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    goto :goto_2

    .line 30
    :cond_1
    :goto_0
    if-eqz p4, :cond_2

    .line 31
    goto :goto_1

    .line 33
    :cond_2
    const/4 p3, 0x0

    .line 34
    :goto_1
    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->startAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    .line 35
    :goto_2
    return-void
    .line 38
.end method

.method public static startAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->getProperty()Landroid/util/Property;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->getAnimationStartTag()I

    .line 6
    move-result v1

    .line 9
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->getAnimationEndTag()I

    .line 10
    move-result v2

    .line 13
    sget-object v3, Lcom/android/systemui/statusbar/notification/stack/ViewState;->NO_NEW_ANIMATIONS:Lcom/android/systemui/statusbar/notification/stack/ViewState$1;

    .line 14
    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 16
    move-result-object v3

    .line 19
    check-cast v3, Ljava/lang/Float;

    .line 20
    invoke-virtual {p0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 22
    move-result-object v4

    .line 25
    check-cast v4, Ljava/lang/Float;

    .line 26
    if-eqz v4, :cond_0

    .line 28
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 30
    move-result v5

    .line 33
    cmpl-float v5, v5, p2

    .line 34
    if-nez v5, :cond_0

    .line 36
    return-void

    .line 38
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->getAnimatorTag()I

    .line 39
    move-result p1

    .line 42
    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 43
    move-result-object v5

    .line 46
    check-cast v5, Landroid/animation/ValueAnimator;

    .line 47
    const/4 v6, 0x0

    .line 49
    if-eqz p3, :cond_1

    .line 50
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 52
    move-result-object v7

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    move-object v7, v6

    .line 57
    :goto_0
    const/4 v8, 0x1

    .line 58
    const/4 v9, 0x2

    .line 59
    const/4 v10, 0x0

    .line 60
    if-eqz v7, :cond_a

    .line 61
    invoke-virtual {v7, v0}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->shouldAnimateProperty(Landroid/util/Property;)Z

    .line 63
    move-result v7

    .line 66
    if-nez v7, :cond_2

    .line 67
    goto/16 :goto_2

    .line 69
    :cond_2
    invoke-virtual {v0, p0}, Landroid/util/Property;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    move-result-object v3

    .line 74
    check-cast v3, Ljava/lang/Float;

    .line 75
    invoke-virtual {p3, v0}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFinishListener(Landroid/util/Property;)Landroid/animation/AnimatorListenerAdapter;

    .line 77
    move-result-object v4

    .line 80
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 81
    move-result-object v7

    .line 84
    invoke-virtual {v3, v7}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    .line 85
    move-result v7

    .line 88
    if-eqz v7, :cond_5

    .line 89
    if-eqz v5, :cond_3

    .line 91
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    .line 93
    :cond_3
    if-eqz v4, :cond_4

    .line 96
    invoke-virtual {v4, v6}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 98
    :cond_4
    return-void

    .line 101
    :cond_5
    new-array v6, v9, [F

    .line 102
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 104
    move-result v7

    .line 107
    aput v7, v6, v10

    .line 108
    aput p2, v6, v8

    .line 110
    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 112
    move-result-object v6

    .line 115
    new-instance v7, Lcom/android/systemui/statusbar/notification/PropertyAnimator$$ExternalSyntheticLambda0;

    .line 116
    invoke-direct {v7, v0, p0}, Lcom/android/systemui/statusbar/notification/PropertyAnimator$$ExternalSyntheticLambda0;-><init>(Landroid/util/Property;Landroid/view/View;)V

    .line 118
    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 121
    invoke-virtual {p3, v0, p0}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getCustomInterpolator(Landroid/util/Property;Landroid/view/View;)Landroid/view/animation/Interpolator;

    .line 124
    move-result-object v0

    .line 127
    if-eqz v0, :cond_6

    .line 128
    goto :goto_1

    .line 130
    :cond_6
    sget-object v0, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 131
    :goto_1
    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 133
    iget-wide v7, p3, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    .line 136
    invoke-static {v7, v8, v5}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    .line 138
    move-result-wide v7

    .line 141
    invoke-virtual {v6, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 142
    iget-wide v7, p3, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    .line 145
    const-wide/16 v9, 0x0

    .line 147
    cmp-long v0, v7, v9

    .line 149
    if-lez v0, :cond_8

    .line 151
    if-eqz v5, :cond_7

    .line 153
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 155
    move-result v0

    .line 158
    const/4 v5, 0x0

    .line 159
    cmpl-float v0, v0, v5

    .line 160
    if-nez v0, :cond_8

    .line 162
    :cond_7
    iget-wide v7, p3, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    .line 164
    invoke-virtual {v6, v7, v8}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 166
    :cond_8
    if-eqz v4, :cond_9

    .line 169
    invoke-virtual {v6, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 171
    :cond_9
    new-instance p3, Lcom/android/systemui/statusbar/notification/PropertyAnimator$1;

    .line 174
    invoke-direct {p3, p0, p1, v1, v2}, Lcom/android/systemui/statusbar/notification/PropertyAnimator$1;-><init>(Landroid/view/View;III)V

    .line 176
    invoke-virtual {v6, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 179
    invoke-static {v6, v4}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    .line 182
    invoke-virtual {p0, p1, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 185
    invoke-virtual {p0, v1, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 188
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 191
    move-result-object p1

    .line 194
    invoke-virtual {p0, v2, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 195
    return-void

    .line 198
    :cond_a
    :goto_2
    if-eqz v5, :cond_b

    .line 199
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    .line 201
    move-result-object p1

    .line 204
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 205
    move-result p3

    .line 208
    sub-float p3, p2, p3

    .line 209
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 211
    move-result v0

    .line 214
    add-float/2addr v0, p3

    .line 215
    aget-object p1, p1, v10

    .line 216
    new-array p3, v9, [F

    .line 218
    aput v0, p3, v10

    .line 220
    aput p2, p3, v8

    .line 222
    invoke-virtual {p1, p3}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 224
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 227
    move-result-object p1

    .line 230
    invoke-virtual {p0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 231
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 234
    move-result-object p1

    .line 237
    invoke-virtual {p0, v2, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 238
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    .line 241
    move-result-wide p0

    .line 244
    invoke-virtual {v5, p0, p1}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 245
    return-void

    .line 248
    :cond_b
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 249
    move-result-object p1

    .line 252
    invoke-virtual {v0, p0, p1}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 253
    return-void
    .line 256
.end method
