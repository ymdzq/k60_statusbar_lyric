.class public abstract Landroidx/transition/TranslationAnimationCreator;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public static createAnimation(Landroid/view/View;Landroidx/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;Landroidx/transition/Transition;)Landroid/animation/Animator;
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    .line 4
    move-result v2

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    .line 8
    move-result v3

    .line 11
    iget-object v4, v1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 12
    const v5, 0x7f0a09da    # @id/transition_position

    .line 14
    invoke-virtual {v4, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 17
    move-result-object v4

    .line 20
    check-cast v4, [I

    .line 21
    const/4 v5, 0x1

    .line 23
    const/4 v6, 0x0

    .line 24
    if-eqz v4, :cond_0

    .line 25
    aget v7, v4, v6

    .line 27
    sub-int/2addr v7, p2

    .line 29
    int-to-float v7, v7

    .line 30
    add-float/2addr v7, v2

    .line 31
    aget v4, v4, v5

    .line 32
    sub-int v4, v4, p3

    .line 34
    int-to-float v4, v4

    .line 36
    add-float/2addr v4, v3

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move/from16 v7, p4

    .line 39
    move/from16 v4, p5

    .line 41
    :goto_0
    sub-float v8, v7, v2

    .line 43
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    .line 45
    move-result v8

    .line 48
    add-int/2addr v8, p2

    .line 49
    sub-float v9, v4, v3

    .line 50
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    .line 52
    move-result v9

    .line 55
    add-int v9, v9, p3

    .line 56
    invoke-virtual {p0, v7}, Landroid/view/View;->setTranslationX(F)V

    .line 58
    invoke-virtual {p0, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 61
    cmpl-float v10, v7, p6

    .line 64
    if-nez v10, :cond_1

    .line 66
    cmpl-float v10, v4, p7

    .line 68
    if-nez v10, :cond_1

    .line 70
    const/4 v0, 0x0

    .line 72
    return-object v0

    .line 73
    :cond_1
    sget-object v10, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 74
    const/4 v11, 0x2

    .line 76
    new-array v12, v11, [F

    .line 77
    aput v7, v12, v6

    .line 79
    aput p6, v12, v5

    .line 81
    invoke-static {v10, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 83
    move-result-object v7

    .line 86
    sget-object v10, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 87
    new-array v11, v11, [F

    .line 89
    aput v4, v11, v6

    .line 91
    aput p7, v11, v5

    .line 93
    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 95
    move-result-object v4

    .line 98
    filled-new-array {v7, v4}, [Landroid/animation/PropertyValuesHolder;

    .line 99
    move-result-object v4

    .line 102
    invoke-static {p0, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    .line 103
    move-result-object v4

    .line 106
    new-instance v5, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;

    .line 107
    iget-object v1, v1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 109
    move-object p1, v5

    .line 111
    move-object p2, p0

    .line 112
    move-object/from16 p3, v1

    .line 113
    move/from16 p4, v8

    .line 115
    move/from16 p5, v9

    .line 117
    move/from16 p6, v2

    .line 119
    move/from16 p7, v3

    .line 121
    invoke-direct/range {p1 .. p7}, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;-><init>(Landroid/view/View;Landroid/view/View;IIFF)V

    .line 123
    move-object/from16 v0, p9

    .line 126
    invoke-virtual {v0, v5}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)V

    .line 128
    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 131
    invoke-virtual {v4, v5}, Landroid/animation/Animator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    .line 134
    move-object/from16 v0, p8

    .line 137
    invoke-virtual {v4, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 139
    return-object v4
    .line 142
.end method
