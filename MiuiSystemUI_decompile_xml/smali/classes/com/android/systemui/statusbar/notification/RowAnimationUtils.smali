.class public abstract Lcom/android/systemui/statusbar/notification/RowAnimationUtils;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public static final startTouchAnimationIfNeed(FLcom/android/systemui/statusbar/notification/row/ExpandableView;)V
    .locals 6

    .line 1
    if-eqz p1, :cond_d

    .line 2
    const/4 v0, 0x0

    .line 4
    cmpg-float v0, p0, v0

    .line 5
    if-gez v0, :cond_0

    .line 7
    goto/16 :goto_5

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isGroupExpansionChanging()Z

    .line 11
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    const/high16 v2, 0x3f800000    # 1.0f

    .line 16
    const/4 v3, 0x0

    .line 18
    if-eqz v0, :cond_4

    .line 19
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 21
    move-result-object v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/MiuiViewStateBase;->touchAnimator:Landroid/animation/ValueAnimator;

    .line 27
    if-eqz v0, :cond_1

    .line 29
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 31
    :cond_1
    cmpg-float p0, p0, v2

    .line 34
    if-nez p0, :cond_2

    .line 36
    move v3, v1

    .line 38
    :cond_2
    xor-int/lit8 p0, v3, 0x1

    .line 39
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 41
    move-result-object p1

    .line 44
    if-nez p1, :cond_3

    .line 45
    goto :goto_0

    .line 47
    :cond_3
    iput-boolean p0, p1, Lcom/android/systemui/statusbar/notification/stack/MiuiViewStateBase;->touchAnimating:Z

    .line 48
    :goto_0
    return-void

    .line 50
    :cond_4
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 51
    move-result-object v0

    .line 54
    if-eqz v0, :cond_5

    .line 55
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/MiuiViewStateBase;->touchAnimator:Landroid/animation/ValueAnimator;

    .line 57
    goto :goto_1

    .line 59
    :cond_5
    const/4 v0, 0x0

    .line 60
    :goto_1
    if-eqz v0, :cond_6

    .line 61
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 63
    move-result-object v0

    .line 66
    if-eqz v0, :cond_6

    .line 67
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/MiuiViewStateBase;->touchAnimator:Landroid/animation/ValueAnimator;

    .line 69
    if-eqz v0, :cond_6

    .line 71
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 73
    :cond_6
    const/4 v0, 0x2

    .line 76
    new-array v0, v0, [F

    .line 77
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getScaleX()F

    .line 79
    move-result v4

    .line 82
    aput v4, v0, v3

    .line 83
    aput p0, v0, v1

    .line 85
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 87
    move-result-object v0

    .line 90
    cmpg-float v2, p0, v2

    .line 91
    if-nez v2, :cond_7

    .line 93
    move v2, v1

    .line 95
    goto :goto_2

    .line 96
    :cond_7
    move v2, v3

    .line 97
    :goto_2
    if-eqz v2, :cond_8

    .line 98
    new-instance v2, Lcom/miui/utils/animation/PhysicBasedInterpolator;

    .line 100
    const v4, 0x3f19999a    # 0.6f

    .line 102
    const v5, 0x3f0e5604    # 0.556f

    .line 105
    invoke-direct {v2, v4, v5}, Lcom/miui/utils/animation/PhysicBasedInterpolator;-><init>(FF)V

    .line 108
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 111
    const-wide/16 v4, 0x1c2

    .line 114
    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 116
    goto :goto_3

    .line 119
    :cond_8
    new-instance v2, Lcom/miui/utils/animation/PhysicBasedInterpolator;

    .line 120
    const v4, 0x3f666666    # 0.9f

    .line 122
    const v5, 0x3f4ccccd    # 0.8f

    .line 125
    invoke-direct {v2, v4, v5}, Lcom/miui/utils/animation/PhysicBasedInterpolator;-><init>(FF)V

    .line 128
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 131
    const-wide/16 v4, 0x1f4

    .line 134
    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 136
    :goto_3
    new-instance v2, Lcom/android/systemui/statusbar/notification/RowAnimationUtils$startTouchAnimationIfNeed$updateListener$1;

    .line 139
    invoke-direct {v2, p1}, Lcom/android/systemui/statusbar/notification/RowAnimationUtils$startTouchAnimationIfNeed$updateListener$1;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    .line 141
    new-instance v4, Lcom/android/systemui/statusbar/notification/RowAnimationUtils$startTouchAnimationIfNeed$animatorListener$1;

    .line 144
    invoke-direct {v4, p0, p1}, Lcom/android/systemui/statusbar/notification/RowAnimationUtils$startTouchAnimationIfNeed$animatorListener$1;-><init>(FLcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    .line 146
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 149
    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 152
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 155
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 158
    move-result-object p0

    .line 161
    if-eqz p0, :cond_9

    .line 162
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiViewStateBase;->animatingMiniWindowEnter:Z

    .line 164
    if-nez p0, :cond_9

    .line 166
    move v3, v1

    .line 168
    :cond_9
    if-eqz v3, :cond_b

    .line 169
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 171
    move-result-object p0

    .line 174
    if-nez p0, :cond_a

    .line 175
    goto :goto_4

    .line 177
    :cond_a
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiViewStateBase;->touchAnimating:Z

    .line 178
    :cond_b
    :goto_4
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 180
    move-result-object p0

    .line 183
    if-nez p0, :cond_c

    .line 184
    goto :goto_5

    .line 186
    :cond_c
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiViewStateBase;->touchAnimator:Landroid/animation/ValueAnimator;

    .line 187
    :cond_d
    :goto_5
    return-void
    .line 189
.end method
