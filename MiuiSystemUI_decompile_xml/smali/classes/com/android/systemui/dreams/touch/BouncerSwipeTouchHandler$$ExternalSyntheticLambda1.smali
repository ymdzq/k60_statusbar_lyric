.class public final synthetic Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onInputEvent(Landroid/view/InputEvent;)V
    .locals 11

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    instance-of v0, p1, Landroid/view/MotionEvent;

    .line 7
    if-nez v0, :cond_0

    .line 9
    new-instance p0, Ljava/lang/StringBuilder;

    .line 11
    const-string v0, "non MotionEvent received:"

    .line 13
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 24
    const-string p1, "BouncerSwipeTouchHandler"

    .line 25
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    goto/16 :goto_4

    .line 30
    :cond_0
    check-cast p1, Landroid/view/MotionEvent;

    .line 32
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 34
    move-result v0

    .line 37
    const/4 v1, 0x1

    .line 38
    if-eq v0, v1, :cond_1

    .line 39
    const/4 v2, 0x3

    .line 41
    if-eq v0, v2, :cond_1

    .line 42
    iget-object p0, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 44
    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 46
    goto/16 :goto_4

    .line 49
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;->mTouchSession:Lcom/android/systemui/dreams/touch/DreamTouchHandler$TouchSession;

    .line 51
    check-cast p1, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$TouchSessionImpl;

    .line 53
    invoke-virtual {p1}, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$TouchSessionImpl;->pop()Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    .line 55
    iget-object p1, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;->mCapture:Ljava/lang/Boolean;

    .line 58
    if-eqz p1, :cond_a

    .line 60
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 62
    move-result p1

    .line 65
    if-nez p1, :cond_2

    .line 66
    goto/16 :goto_4

    .line 68
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 70
    const/16 v0, 0x3e8

    .line 72
    invoke-virtual {p1, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 74
    iget-object p1, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 77
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    .line 79
    move-result v6

    .line 82
    iget-object p1, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 83
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    .line 85
    move-result p1

    .line 88
    float-to-double v2, p1

    .line 89
    float-to-double v4, v6

    .line 90
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    .line 91
    move-result-wide v2

    .line 94
    double-to-float p1, v2

    .line 95
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 96
    move-result p1

    .line 99
    iget-object v0, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;->mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    .line 100
    iget v0, v0, Lcom/android/wm/shell/animation/FlingAnimationUtils;->mMinVelocityPxPerSecond:F

    .line 102
    cmpg-float p1, p1, v0

    .line 104
    const/4 v0, 0x0

    .line 106
    const/4 v2, 0x0

    .line 107
    if-gez p1, :cond_3

    .line 108
    iget p1, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;->mCurrentExpansion:F

    .line 110
    const/high16 v3, 0x3f000000    # 0.5f

    .line 112
    cmpl-float p1, p1, v3

    .line 114
    if-lez p1, :cond_4

    .line 116
    goto :goto_0

    .line 118
    :cond_3
    cmpl-float p1, v6, v2

    .line 119
    if-lez p1, :cond_4

    .line 121
    :goto_0
    move p1, v1

    .line 123
    goto :goto_1

    .line 124
    :cond_4
    move p1, v0

    .line 125
    :goto_1
    xor-int/2addr p1, v1

    .line 126
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 127
    move-result-object p1

    .line 130
    iput-object p1, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;->mExpanded:Ljava/lang/Boolean;

    .line 131
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 133
    move-result p1

    .line 136
    const/high16 v3, 0x3f800000    # 1.0f

    .line 137
    if-eqz p1, :cond_5

    .line 139
    move p1, v2

    .line 141
    goto :goto_2

    .line 142
    :cond_5
    move p1, v3

    .line 143
    :goto_2
    iget-boolean v4, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;->mBouncerInitiallyShowing:Z

    .line 144
    if-nez v4, :cond_6

    .line 146
    cmpl-float v4, p1, v2

    .line 148
    if-nez v4, :cond_6

    .line 150
    sget-object v4, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$DreamEvent;->DREAM_SWIPED:Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$DreamEvent;

    .line 152
    iget-object v5, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 154
    invoke-interface {v5, v4}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 156
    :cond_6
    iget-object v4, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;->mCentralSurfaces:Ljava/util/Optional;

    .line 159
    invoke-virtual {v4}, Ljava/util/Optional;->isPresent()Z

    .line 161
    move-result v4

    .line 164
    if-nez v4, :cond_7

    .line 165
    goto :goto_4

    .line 167
    :cond_7
    iget-object v4, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;->mTouchSession:Lcom/android/systemui/dreams/touch/DreamTouchHandler$TouchSession;

    .line 168
    check-cast v4, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$TouchSessionImpl;

    .line 170
    iget-object v4, v4, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$TouchSessionImpl;->mBounds:Landroid/graphics/Rect;

    .line 172
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 174
    move-result v4

    .line 177
    int-to-float v7, v4

    .line 178
    iget v4, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;->mCurrentExpansion:F

    .line 179
    mul-float v5, v7, v4

    .line 181
    mul-float v8, v7, p1

    .line 183
    sub-float v9, v8, v5

    .line 185
    iget-object v10, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;->mValueAnimatorCreator:Landroidx/core/view/ViewCompat$$ExternalSyntheticLambda0;

    .line 187
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    const/4 v10, 0x2

    .line 192
    new-array v10, v10, [F

    .line 193
    aput v4, v10, v0

    .line 195
    aput p1, v10, v1

    .line 197
    invoke-static {v10}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 199
    move-result-object v0

    .line 202
    new-instance v1, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$$ExternalSyntheticLambda3;

    .line 203
    invoke-direct {v1, p0, v9}, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;F)V

    .line 205
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 208
    iget-boolean v1, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;->mBouncerInitiallyShowing:Z

    .line 211
    if-nez v1, :cond_8

    .line 213
    cmpl-float v1, p1, v2

    .line 215
    if-nez v1, :cond_8

    .line 217
    new-instance v1, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$3;

    .line 219
    invoke-direct {v1, p0}, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$3;-><init>(Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;)V

    .line 221
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 224
    :cond_8
    cmpl-float p1, p1, v3

    .line 227
    if-nez p1, :cond_9

    .line 229
    iget-object v2, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;->mFlingAnimationUtilsClosing:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    .line 231
    move-object v3, v0

    .line 233
    move v4, v5

    .line 234
    move v5, v8

    .line 235
    invoke-virtual/range {v2 .. v7}, Lcom/android/wm/shell/animation/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFFF)V

    .line 236
    goto :goto_3

    .line 239
    :cond_9
    iget-object v2, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;->mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    .line 240
    move-object v3, v0

    .line 242
    move v4, v5

    .line 243
    move v5, v8

    .line 244
    invoke-virtual/range {v2 .. v7}, Lcom/android/wm/shell/animation/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFFF)V

    .line 245
    :goto_3
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 248
    :cond_a
    :goto_4
    return-void
    .line 251
.end method
