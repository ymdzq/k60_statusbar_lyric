.class public final Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView$1;
.super Lcom/android/wm/shell/miuifreeform/miuibubbles/views/RelativeTouchListener;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView$1;->this$0:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;

    .line 2
    invoke-direct {p0}, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/RelativeTouchListener;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onDown(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView$1;->this$0:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mHideFlyout:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView$$ExternalSyntheticLambda1;

    .line 4
    invoke-virtual {p1, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    const/4 p0, 0x1

    .line 9
    return p0
    .line 10
.end method

.method public final onMove(Landroid/view/View;FFFFFF)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView$1;->this$0:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;

    .line 2
    iget-boolean p1, p1, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->isOnLeft:Z

    .line 4
    const/high16 p3, 0x3f800000    # 1.0f

    .line 6
    const/4 p5, 0x0

    .line 8
    if-eqz p1, :cond_0

    .line 9
    cmpl-float p6, p4, p5

    .line 11
    if-gtz p6, :cond_1

    .line 13
    :cond_0
    if-nez p1, :cond_3

    .line 15
    cmpg-float p1, p4, p5

    .line 17
    if-gez p1, :cond_3

    .line 19
    :cond_1
    cmpl-float p1, p4, p5

    .line 21
    if-ltz p1, :cond_2

    .line 23
    move p1, p3

    .line 25
    goto :goto_0

    .line 26
    :cond_2
    const/high16 p1, -0x40800000    # -1.0f

    .line 27
    :goto_0
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    .line 29
    move-result p4

    .line 32
    iget-object p5, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView$1;->this$0:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;

    .line 33
    iget-object p5, p5, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mPositioner:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;

    .line 35
    iget-object p5, p5, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;->mAvailableRegion:Landroid/graphics/Rect;

    .line 37
    invoke-virtual {p5}, Landroid/graphics/Rect;->width()I

    .line 39
    move-result p5

    .line 42
    int-to-float p5, p5

    .line 43
    invoke-static {p4, p5}, Lmiuix/animation/Folme;->afterFrictionValue(FF)F

    .line 44
    move-result p4

    .line 47
    const p5, 0x3dcccccd    # 0.1f

    .line 48
    mul-float/2addr p4, p5

    .line 51
    mul-float/2addr p4, p1

    .line 52
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView$1;->this$0:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;

    .line 53
    invoke-virtual {p1, p3}, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->setAlpha(F)V

    .line 55
    goto :goto_1

    .line 58
    :cond_3
    const/high16 p1, 0x43160000    # 150.0f

    .line 59
    invoke-static {p4, p5, p1}, Lmiuix/animation/Folme;->perFromValue(FFF)F

    .line 61
    move-result p1

    .line 64
    invoke-static {p1, p3}, Ljava/lang/Math;->min(FF)F

    .line 65
    move-result p1

    .line 68
    invoke-static {p1, p5}, Ljava/lang/Math;->max(FF)F

    .line 69
    move-result p1

    .line 72
    iget-object p5, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView$1;->this$0:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;

    .line 73
    filled-new-array {p5}, [Landroid/view/View;

    .line 75
    move-result-object p5

    .line 78
    invoke-static {p5}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 79
    move-result-object p5

    .line 82
    invoke-interface {p5}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 83
    move-result-object p5

    .line 86
    sget-object p6, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 87
    sub-float/2addr p3, p1

    .line 89
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 90
    move-result-object p1

    .line 93
    filled-new-array {p6, p1}, [Ljava/lang/Object;

    .line 94
    move-result-object p1

    .line 97
    invoke-interface {p5, p1}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 98
    :goto_1
    add-float/2addr p2, p4

    .line 101
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView$1;->this$0:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;

    .line 102
    iput p2, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mRestingTranslationX:F

    .line 104
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 106
    return-void
    .line 109
.end method

.method public final onUp(Landroid/view/View;FFFFFF)V
    .locals 1

    .line 1
    iget-object p3, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView$1;->this$0:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;

    .line 2
    iget-boolean p5, p3, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->isOnLeft:Z

    .line 4
    const/4 p7, 0x1

    .line 6
    const/4 v0, 0x0

    .line 7
    if-eqz p5, :cond_0

    .line 8
    const/high16 p5, -0x3b860000    # -1000.0f

    .line 10
    cmpl-float p5, p6, p5

    .line 12
    if-lez p5, :cond_1

    .line 14
    const/high16 p5, -0x3cea0000    # -150.0f

    .line 16
    cmpl-float p4, p4, p5

    .line 18
    if-lez p4, :cond_1

    .line 20
    goto :goto_0

    .line 22
    :cond_0
    const/high16 p5, 0x447a0000    # 1000.0f

    .line 23
    cmpg-float p5, p6, p5

    .line 25
    if-gez p5, :cond_1

    .line 27
    const/high16 p5, 0x43160000    # 150.0f

    .line 29
    cmpg-float p4, p4, p5

    .line 31
    if-gez p4, :cond_1

    .line 33
    :goto_0
    move p4, p7

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move p4, v0

    .line 37
    :goto_1
    if-eqz p4, :cond_2

    .line 38
    sget-object p3, Lcom/android/wm/shell/miuifreeform/miuibubbles/animation/MiuiBubbleAnimator;->ANIM_CONFIG_TO_EDGE:Lmiuix/animation/base/AnimConfig;

    .line 40
    filled-new-array {p1}, [Landroid/view/View;

    .line 42
    move-result-object p1

    .line 45
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 46
    move-result-object p1

    .line 49
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 50
    move-result-object p1

    .line 53
    new-instance p3, Lmiuix/animation/controller/AnimState;

    .line 54
    invoke-direct {p3}, Lmiuix/animation/controller/AnimState;-><init>()V

    .line 56
    sget-object p4, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    .line 59
    float-to-double p5, p2

    .line 61
    invoke-virtual {p3, p4, p5, p6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 62
    move-result-object p2

    .line 65
    new-instance p3, Lmiuix/animation/base/AnimConfig;

    .line 66
    invoke-direct {p3}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 68
    const/4 p5, 0x2

    .line 71
    new-array p6, p5, [F

    .line 72
    fill-array-data p6, :array_0

    .line 74
    const/4 p7, -0x2

    .line 77
    invoke-virtual {p3, p7, p6}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 78
    move-result-object p3

    .line 81
    new-array p5, p5, [F

    .line 82
    fill-array-data p5, :array_1

    .line 84
    const-wide/16 p6, -0x2

    .line 87
    invoke-virtual {p3, p4, p6, p7, p5}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;J[F)Lmiuix/animation/base/AnimConfig;

    .line 89
    move-result-object p3

    .line 92
    filled-new-array {p3}, [Lmiuix/animation/base/AnimConfig;

    .line 93
    move-result-object p3

    .line 96
    invoke-interface {p1, p2, p3}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 97
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView$1;->this$0:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;

    .line 100
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mHideFlyout:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView$$ExternalSyntheticLambda1;

    .line 102
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 104
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mHideFlyout:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView$$ExternalSyntheticLambda1;

    .line 107
    const-wide/16 p2, 0x1388

    .line 109
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 111
    goto :goto_3

    .line 114
    :cond_2
    invoke-virtual {p3, p7}, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->animateFlyoutCollapsed(Z)V

    .line 115
    invoke-static {}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->getInstance()Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;

    .line 118
    move-result-object p1

    .line 121
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView$1;->this$0:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;

    .line 122
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 124
    move-result-object p2

    .line 127
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView$1;->this$0:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;

    .line 128
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mHostBubble:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;

    .line 130
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->bubbleEntry:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;

    .line 132
    iget-object p3, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;->mFreeformMode:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiFreeformMode;

    .line 134
    sget-object p4, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiFreeformMode;->MODE_FREEFORM:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiFreeformMode;

    .line 136
    if-ne p3, p4, :cond_3

    .line 138
    goto :goto_2

    .line 140
    :cond_3
    move p7, v0

    .line 141
    :goto_2
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;->packageName:Ljava/lang/String;

    .line 142
    invoke-virtual {p1, p2, p7, p0, v0}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->trackBubbleMessageCollapsed(Landroid/content/Context;ZLjava/lang/String;Z)V

    .line 144
    :goto_3
    return-void

    .line 147
    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3e800000    # 0.25f
    .end array-data

    .line 148
    :array_1
    .array-data 4
        0x3f266666    # 0.65f
        0x3e800000    # 0.25f
    .end array-data
    .line 156
.end method
