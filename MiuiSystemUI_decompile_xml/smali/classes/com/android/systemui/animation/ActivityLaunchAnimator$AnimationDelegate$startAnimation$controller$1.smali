.class public final Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate$startAnimation$controller$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;


# instance fields
.field public final synthetic $$delegate_0:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

.field public final synthetic $delegate:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

.field public final synthetic $iCallback:Landroid/view/IRemoteAnimationFinishedCallback;

.field public final synthetic $navigationBar:Landroid/view/RemoteAnimationTarget;

.field public final synthetic $window:Landroid/view/RemoteAnimationTarget;

.field public final synthetic this$0:Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;


# direct methods
.method public constructor <init>(Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;Landroid/view/IRemoteAnimationFinishedCallback;Landroid/view/RemoteAnimationTarget;Landroid/view/RemoteAnimationTarget;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate$startAnimation$controller$1;->$delegate:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate$startAnimation$controller$1;->this$0:Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate$startAnimation$controller$1;->$iCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    .line 6
    iput-object p4, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate$startAnimation$controller$1;->$window:Landroid/view/RemoteAnimationTarget;

    .line 8
    iput-object p5, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate$startAnimation$controller$1;->$navigationBar:Landroid/view/RemoteAnimationTarget;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate$startAnimation$controller$1;->$$delegate_0:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    .line 15
    return-void
    .line 17
.end method


# virtual methods
.method public final createAnimatorState()Lcom/android/systemui/animation/LaunchAnimator$State;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate$startAnimation$controller$1;->$$delegate_0:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    .line 2
    invoke-interface {p0}, Lcom/android/systemui/animation/LaunchAnimator$Controller;->createAnimatorState()Lcom/android/systemui/animation/LaunchAnimator$State;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public final getLaunchContainer()Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate$startAnimation$controller$1;->$$delegate_0:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    .line 2
    invoke-interface {p0}, Lcom/android/systemui/animation/LaunchAnimator$Controller;->getLaunchContainer()Landroid/view/ViewGroup;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public final getOpeningWindowSyncView()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate$startAnimation$controller$1;->$$delegate_0:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    .line 2
    invoke-interface {p0}, Lcom/android/systemui/animation/LaunchAnimator$Controller;->getOpeningWindowSyncView()Landroid/view/View;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public final isBelowAnimatingWindow()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate$startAnimation$controller$1;->$$delegate_0:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    .line 2
    invoke-interface {p0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;->isBelowAnimatingWindow()Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final isDialogLaunch()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate$startAnimation$controller$1;->$$delegate_0:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    .line 2
    invoke-interface {p0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;->isDialogLaunch()Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final onIntentStarted(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate$startAnimation$controller$1;->$$delegate_0:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    .line 2
    invoke-interface {p0, p1}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;->onIntentStarted(Z)V

    .line 4
    return-void
    .line 7
.end method

.method public final onLaunchAnimationCancelled(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate$startAnimation$controller$1;->$$delegate_0:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    .line 2
    invoke-interface {p0, p1}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;->onLaunchAnimationCancelled(Ljava/lang/Boolean;)V

    .line 4
    return-void
    .line 7
.end method

.method public final onLaunchAnimationEnd(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate$startAnimation$controller$1;->this$0:Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;->listener:Lcom/android/systemui/animation/ActivityLaunchAnimator$Listener;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Listener;->onLaunchAnimationEnd()V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate$startAnimation$controller$1;->$iCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    .line 11
    if-eqz v0, :cond_1

    .line 13
    :try_start_0
    invoke-interface {v0}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    goto :goto_0

    .line 18
    :catch_0
    move-exception v0

    .line 19
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 20
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate$startAnimation$controller$1;->$delegate:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    .line 23
    invoke-interface {p0, p1}, Lcom/android/systemui/animation/LaunchAnimator$Controller;->onLaunchAnimationEnd(Z)V

    .line 25
    return-void
    .line 28
.end method

.method public final onLaunchAnimationProgress(Lcom/android/systemui/animation/LaunchAnimator$State;FF)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    move/from16 v8, p3

    .line 6
    iget-boolean v2, v1, Lcom/android/systemui/animation/LaunchAnimator$State;->visible:Z

    .line 8
    const/high16 v9, 0x3f800000    # 1.0f

    .line 10
    const/4 v10, 0x1

    .line 12
    iget-object v11, v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate$startAnimation$controller$1;->this$0:Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;

    .line 13
    if-nez v2, :cond_2

    .line 15
    iget-object v2, v11, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;->transactionApplierView:Landroid/view/View;

    .line 17
    invoke-virtual {v2}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 19
    move-result-object v2

    .line 22
    if-eqz v2, :cond_2

    .line 23
    iget-object v12, v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate$startAnimation$controller$1;->$window:Landroid/view/RemoteAnimationTarget;

    .line 25
    iget-object v2, v12, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    .line 27
    invoke-virtual {v2}, Landroid/view/SurfaceControl;->isValid()Z

    .line 29
    move-result v2

    .line 32
    if-nez v2, :cond_0

    .line 33
    goto/16 :goto_1

    .line 35
    :cond_0
    iget-object v2, v12, Landroid/view/RemoteAnimationTarget;->screenSpaceBounds:Landroid/graphics/Rect;

    .line 37
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 39
    iget v4, v2, Landroid/graphics/Rect;->right:I

    .line 41
    add-int v5, v3, v4

    .line 43
    int-to-float v5, v5

    .line 45
    const/high16 v6, 0x40000000    # 2.0f

    .line 46
    div-float/2addr v5, v6

    .line 48
    iget v7, v2, Landroid/graphics/Rect;->top:I

    .line 49
    iget v13, v2, Landroid/graphics/Rect;->bottom:I

    .line 51
    add-int v14, v7, v13

    .line 53
    int-to-float v14, v14

    .line 55
    div-float/2addr v14, v6

    .line 56
    sub-int/2addr v4, v3

    .line 57
    sub-int/2addr v13, v7

    .line 58
    iget v3, v1, Lcom/android/systemui/animation/LaunchAnimator$State;->right:I

    .line 59
    iget v7, v1, Lcom/android/systemui/animation/LaunchAnimator$State;->left:I

    .line 61
    sub-int/2addr v3, v7

    .line 63
    int-to-float v3, v3

    .line 64
    int-to-float v4, v4

    .line 65
    div-float/2addr v3, v4

    .line 66
    iget v4, v1, Lcom/android/systemui/animation/LaunchAnimator$State;->bottom:I

    .line 67
    iget v7, v1, Lcom/android/systemui/animation/LaunchAnimator$State;->top:I

    .line 69
    sub-int/2addr v4, v7

    .line 71
    int-to-float v4, v4

    .line 72
    int-to-float v7, v13

    .line 73
    div-float/2addr v4, v7

    .line 74
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    .line 75
    move-result v13

    .line 78
    iget-object v15, v11, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;->matrix:Landroid/graphics/Matrix;

    .line 79
    invoke-virtual {v15}, Landroid/graphics/Matrix;->reset()V

    .line 81
    invoke-virtual {v15, v13, v13, v5, v14}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 84
    mul-float v3, v7, v13

    .line 87
    sub-float/2addr v3, v7

    .line 89
    iget v4, v1, Lcom/android/systemui/animation/LaunchAnimator$State;->left:I

    .line 90
    int-to-float v7, v4

    .line 92
    iget v14, v1, Lcom/android/systemui/animation/LaunchAnimator$State;->right:I

    .line 93
    sub-int/2addr v14, v4

    .line 95
    int-to-float v4, v14

    .line 96
    div-float/2addr v4, v6

    .line 97
    add-float/2addr v4, v7

    .line 98
    sub-float/2addr v4, v5

    .line 99
    iget v5, v1, Lcom/android/systemui/animation/LaunchAnimator$State;->top:I

    .line 100
    iget v7, v2, Landroid/graphics/Rect;->top:I

    .line 102
    sub-int/2addr v5, v7

    .line 104
    int-to-float v5, v5

    .line 105
    div-float/2addr v3, v6

    .line 106
    add-float/2addr v3, v5

    .line 107
    invoke-virtual {v15, v4, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 108
    iget v3, v1, Lcom/android/systemui/animation/LaunchAnimator$State;->left:I

    .line 111
    int-to-float v4, v3

    .line 113
    iget v5, v2, Landroid/graphics/Rect;->left:I

    .line 114
    int-to-float v5, v5

    .line 116
    sub-float/2addr v4, v5

    .line 117
    iget v5, v1, Lcom/android/systemui/animation/LaunchAnimator$State;->top:I

    .line 118
    int-to-float v6, v5

    .line 120
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 121
    int-to-float v2, v2

    .line 123
    sub-float/2addr v6, v2

    .line 124
    iget-object v2, v11, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;->windowCropF:Landroid/graphics/RectF;

    .line 125
    iget v7, v1, Lcom/android/systemui/animation/LaunchAnimator$State;->right:I

    .line 127
    sub-int/2addr v7, v3

    .line 129
    int-to-float v3, v7

    .line 130
    add-float/2addr v3, v4

    .line 131
    iget v7, v1, Lcom/android/systemui/animation/LaunchAnimator$State;->bottom:I

    .line 132
    sub-int/2addr v7, v5

    .line 134
    int-to-float v5, v7

    .line 135
    add-float/2addr v5, v6

    .line 136
    invoke-virtual {v2, v4, v6, v3, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 137
    iget-object v3, v11, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;->invertMatrix:Landroid/graphics/Matrix;

    .line 140
    invoke-virtual {v15, v3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 142
    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 145
    iget v3, v2, Landroid/graphics/RectF;->left:F

    .line 148
    invoke-static {v3}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    .line 150
    move-result v3

    .line 153
    iget v4, v2, Landroid/graphics/RectF;->top:F

    .line 154
    invoke-static {v4}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    .line 156
    move-result v4

    .line 159
    iget v5, v2, Landroid/graphics/RectF;->right:F

    .line 160
    invoke-static {v5}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    .line 162
    move-result v5

    .line 165
    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    .line 166
    invoke-static {v2}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    .line 168
    move-result v2

    .line 171
    iget-object v14, v11, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;->windowCrop:Landroid/graphics/Rect;

    .line 172
    invoke-virtual {v14, v3, v4, v5, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 174
    iget-object v2, v11, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;->controller:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    .line 177
    invoke-interface {v2}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;->isBelowAnimatingWindow()Z

    .line 179
    move-result v2

    .line 182
    if-eqz v2, :cond_1

    .line 183
    sget-object v2, Lcom/android/systemui/animation/LaunchAnimator;->SRC_MODE:Landroid/graphics/PorterDuffXfermode;

    .line 185
    sget-object v2, Lcom/android/systemui/animation/ActivityLaunchAnimator;->TIMINGS:Lcom/android/systemui/animation/LaunchAnimator$Timings;

    .line 187
    const-wide/16 v4, 0x96

    .line 189
    const-wide/16 v6, 0xb7

    .line 191
    move/from16 v3, p3

    .line 193
    invoke-static/range {v2 .. v7}, Lcom/android/systemui/animation/LaunchAnimator$Companion;->getProgress(Lcom/android/systemui/animation/LaunchAnimator$Timings;FJJ)F

    .line 195
    move-result v2

    .line 198
    sget-object v3, Lcom/android/systemui/animation/ActivityLaunchAnimator;->INTERPOLATORS:Lcom/android/systemui/animation/LaunchAnimator$Interpolators;

    .line 199
    iget-object v3, v3, Lcom/android/systemui/animation/LaunchAnimator$Interpolators;->contentAfterFadeInInterpolator:Landroid/view/animation/Interpolator;

    .line 201
    invoke-interface {v3, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    .line 203
    move-result v2

    .line 206
    goto :goto_0

    .line 207
    :cond_1
    move v2, v9

    .line 208
    :goto_0
    iget v3, v1, Lcom/android/systemui/animation/LaunchAnimator$State;->topCornerRadius:F

    .line 209
    iget v4, v1, Lcom/android/systemui/animation/LaunchAnimator$State;->bottomCornerRadius:F

    .line 211
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    .line 213
    move-result v3

    .line 216
    div-float/2addr v3, v13

    .line 217
    new-instance v4, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    .line 218
    iget-object v5, v12, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    .line 220
    invoke-direct {v4, v5}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;-><init>(Landroid/view/SurfaceControl;)V

    .line 222
    invoke-virtual {v4, v2}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withAlpha(F)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    .line 225
    move-result-object v2

    .line 228
    invoke-virtual {v2, v15}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withMatrix(Landroid/graphics/Matrix;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    .line 229
    move-result-object v2

    .line 232
    invoke-virtual {v2, v14}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withWindowCrop(Landroid/graphics/Rect;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    .line 233
    move-result-object v2

    .line 236
    invoke-virtual {v2, v3}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withCornerRadius(F)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    .line 237
    move-result-object v2

    .line 240
    invoke-virtual {v2, v10}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withVisibility(Z)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    .line 241
    move-result-object v2

    .line 244
    invoke-virtual {v2}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->build()Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    .line 245
    move-result-object v2

    .line 248
    iget-object v3, v11, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;->transactionApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    .line 249
    filled-new-array {v2}, [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    .line 251
    move-result-object v2

    .line 254
    invoke-virtual {v3, v2}, Landroid/view/SyncRtSurfaceTransactionApplier;->scheduleApply([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    .line 255
    :cond_2
    :goto_1
    iget-object v12, v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate$startAnimation$controller$1;->$navigationBar:Landroid/view/RemoteAnimationTarget;

    .line 258
    if-eqz v12, :cond_5

    .line 260
    iget-object v2, v11, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;->transactionApplierView:Landroid/view/View;

    .line 262
    invoke-virtual {v2}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 264
    move-result-object v2

    .line 267
    if-eqz v2, :cond_5

    .line 268
    iget-object v2, v12, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    .line 270
    invoke-virtual {v2}, Landroid/view/SurfaceControl;->isValid()Z

    .line 272
    move-result v2

    .line 275
    if-nez v2, :cond_3

    .line 276
    goto/16 :goto_3

    .line 278
    :cond_3
    sget-object v2, Lcom/android/systemui/animation/LaunchAnimator;->SRC_MODE:Landroid/graphics/PorterDuffXfermode;

    .line 280
    sget-object v13, Lcom/android/systemui/animation/ActivityLaunchAnimator;->TIMINGS:Lcom/android/systemui/animation/LaunchAnimator$Timings;

    .line 282
    sget-wide v4, Lcom/android/systemui/animation/ActivityLaunchAnimator;->ANIMATION_DELAY_NAV_FADE_IN:J

    .line 284
    const-wide/16 v6, 0x85

    .line 286
    move-object v2, v13

    .line 288
    move/from16 v3, p3

    .line 289
    invoke-static/range {v2 .. v7}, Lcom/android/systemui/animation/LaunchAnimator$Companion;->getProgress(Lcom/android/systemui/animation/LaunchAnimator$Timings;FJJ)F

    .line 291
    move-result v2

    .line 294
    new-instance v14, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    .line 295
    iget-object v3, v12, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    .line 297
    invoke-direct {v14, v3}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;-><init>(Landroid/view/SurfaceControl;)V

    .line 299
    const/4 v3, 0x0

    .line 302
    cmpl-float v4, v2, v3

    .line 303
    if-lez v4, :cond_4

    .line 305
    iget-object v4, v11, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;->matrix:Landroid/graphics/Matrix;

    .line 307
    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 309
    iget v5, v1, Lcom/android/systemui/animation/LaunchAnimator$State;->top:I

    .line 312
    iget-object v6, v12, Landroid/view/RemoteAnimationTarget;->sourceContainerBounds:Landroid/graphics/Rect;

    .line 314
    iget v6, v6, Landroid/graphics/Rect;->top:I

    .line 316
    sub-int/2addr v5, v6

    .line 318
    int-to-float v5, v5

    .line 319
    invoke-virtual {v4, v3, v5}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 320
    iget v3, v1, Lcom/android/systemui/animation/LaunchAnimator$State;->left:I

    .line 323
    iget v5, v1, Lcom/android/systemui/animation/LaunchAnimator$State;->right:I

    .line 325
    iget v6, v1, Lcom/android/systemui/animation/LaunchAnimator$State;->bottom:I

    .line 327
    iget v7, v1, Lcom/android/systemui/animation/LaunchAnimator$State;->top:I

    .line 329
    sub-int/2addr v6, v7

    .line 331
    const/4 v7, 0x0

    .line 332
    iget-object v9, v11, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;->windowCrop:Landroid/graphics/Rect;

    .line 333
    invoke-virtual {v9, v3, v7, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 335
    sget-object v3, Lcom/android/systemui/animation/ActivityLaunchAnimator;->NAV_FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 338
    check-cast v3, Landroid/view/animation/PathInterpolator;

    .line 340
    invoke-virtual {v3, v2}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    .line 342
    move-result v2

    .line 345
    invoke-virtual {v14, v2}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withAlpha(F)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    .line 346
    move-result-object v2

    .line 349
    invoke-virtual {v2, v4}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withMatrix(Landroid/graphics/Matrix;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    .line 350
    move-result-object v2

    .line 353
    invoke-virtual {v2, v9}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withWindowCrop(Landroid/graphics/Rect;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    .line 354
    move-result-object v2

    .line 357
    invoke-virtual {v2, v10}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withVisibility(Z)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    .line 358
    goto :goto_2

    .line 361
    :cond_4
    const-wide/16 v4, 0x0

    .line 362
    const-wide/16 v6, 0x85

    .line 364
    move-object v2, v13

    .line 366
    move/from16 v3, p3

    .line 367
    invoke-static/range {v2 .. v7}, Lcom/android/systemui/animation/LaunchAnimator$Companion;->getProgress(Lcom/android/systemui/animation/LaunchAnimator$Timings;FJJ)F

    .line 369
    move-result v2

    .line 372
    sget-object v3, Lcom/android/systemui/animation/ActivityLaunchAnimator;->NAV_FADE_OUT_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 373
    invoke-virtual {v3, v2}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    .line 375
    move-result v2

    .line 378
    sub-float/2addr v9, v2

    .line 379
    invoke-virtual {v14, v9}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withAlpha(F)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    .line 380
    :goto_2
    iget-object v2, v11, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;->transactionApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    .line 383
    invoke-virtual {v14}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->build()Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    .line 385
    move-result-object v3

    .line 388
    filled-new-array {v3}, [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    .line 389
    move-result-object v3

    .line 392
    invoke-virtual {v2, v3}, Landroid/view/SyncRtSurfaceTransactionApplier;->scheduleApply([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    .line 393
    :cond_5
    :goto_3
    iget-object v2, v11, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;->listener:Lcom/android/systemui/animation/ActivityLaunchAnimator$Listener;

    .line 396
    if-eqz v2, :cond_6

    .line 398
    invoke-interface {v2, v8}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Listener;->onLaunchAnimationProgress(F)V

    .line 400
    :cond_6
    iget-object v0, v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate$startAnimation$controller$1;->$delegate:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    .line 403
    move/from16 v2, p2

    .line 405
    invoke-interface {v0, v1, v2, v8}, Lcom/android/systemui/animation/LaunchAnimator$Controller;->onLaunchAnimationProgress(Lcom/android/systemui/animation/LaunchAnimator$State;FF)V

    .line 407
    return-void
    .line 410
.end method

.method public final onLaunchAnimationStart(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate$startAnimation$controller$1;->this$0:Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;->listener:Lcom/android/systemui/animation/ActivityLaunchAnimator$Listener;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Listener;->onLaunchAnimationStart()V

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate$startAnimation$controller$1;->$delegate:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    .line 11
    invoke-interface {p0, p1}, Lcom/android/systemui/animation/LaunchAnimator$Controller;->onLaunchAnimationStart(Z)V

    .line 13
    return-void
    .line 16
.end method

.method public final setLaunchContainer(Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate$startAnimation$controller$1;->$$delegate_0:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    .line 2
    invoke-interface {p0, p1}, Lcom/android/systemui/animation/LaunchAnimator$Controller;->setLaunchContainer(Landroid/view/ViewGroup;)V

    .line 4
    return-void
    .line 7
.end method
