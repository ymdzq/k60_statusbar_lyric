.class public final Lcom/android/wm/shell/transition/DefaultTransitionHandler;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionHandler;


# instance fields
.field public final mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public mAnimationDimmer:Landroid/view/animation/Animation;

.field public final mAnimations:Landroid/util/ArrayMap;

.field public final mContext:Landroid/content/Context;

.field public final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field public final mEnterpriseResourceUpdatedReceiver:Lcom/android/wm/shell/transition/DefaultTransitionHandler$1;

.field public mEnterpriseThumbnailDrawable:Landroid/graphics/drawable/Drawable;

.field public final mInsets:Landroid/graphics/Rect;

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mMainHandler:Landroid/os/Handler;

.field public mProvisioned:Z

.field public final mRootTDAOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

.field public final mRotator:Lcom/android/wm/shell/transition/CounterRotatorHelper;

.field public final mSurfaceSession:Landroid/view/SurfaceSession;

.field public final mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

.field public final mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

.field public mTransitionAnimationScaleSetting:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/view/SurfaceSession;

    .line 5
    invoke-direct {v0}, Landroid/view/SurfaceSession;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 10
    new-instance v0, Landroid/util/ArrayMap;

    .line 12
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mAnimations:Landroid/util/ArrayMap;

    .line 17
    new-instance v0, Lcom/android/wm/shell/transition/CounterRotatorHelper;

    .line 19
    invoke-direct {v0}, Lcom/android/wm/shell/transition/CounterRotatorHelper;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mRotator:Lcom/android/wm/shell/transition/CounterRotatorHelper;

    .line 24
    new-instance v0, Landroid/graphics/Rect;

    .line 26
    const/4 v1, 0x0

    .line 28
    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 29
    iput-object v0, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mInsets:Landroid/graphics/Rect;

    .line 32
    const/high16 v0, 0x3f800000    # 1.0f

    .line 34
    iput v0, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransitionAnimationScaleSetting:F

    .line 36
    new-instance v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$1;

    .line 38
    invoke-direct {v0, p0}, Lcom/android/wm/shell/transition/DefaultTransitionHandler$1;-><init>(Lcom/android/wm/shell/transition/DefaultTransitionHandler;)V

    .line 40
    iput-object v0, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mEnterpriseResourceUpdatedReceiver:Lcom/android/wm/shell/transition/DefaultTransitionHandler$1;

    .line 43
    iput-object p3, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 45
    iput-object p4, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 47
    iput-object p1, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mContext:Landroid/content/Context;

    .line 49
    iput-object p6, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mMainHandler:Landroid/os/Handler;

    .line 51
    iput-object p5, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 53
    iput-object p7, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 55
    new-instance p3, Lcom/android/internal/policy/TransitionAnimation;

    .line 57
    const-string p4, "ShellTransitions"

    .line 59
    invoke-direct {p3, p1, v1, p4}, Lcom/android/internal/policy/TransitionAnimation;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    .line 61
    iput-object p3, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    .line 64
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 66
    const-class p3, Landroid/app/admin/DevicePolicyManager;

    .line 69
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 71
    move-result-object p3

    .line 74
    check-cast p3, Landroid/app/admin/DevicePolicyManager;

    .line 75
    iput-object p3, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 77
    new-instance p3, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda0;

    .line 79
    const/4 p4, 0x1

    .line 81
    invoke-direct {p3, p4, p0}, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 82
    invoke-virtual {p2, p0, p3}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Object;Ljava/lang/Runnable;)V

    .line 85
    iput-object p8, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mRootTDAOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    .line 88
    invoke-static {}, Lcom/android/wm/shell/common/transition/DefaultTransitionStub;->getInstance()Lcom/android/wm/shell/common/transition/DefaultTransitionStub;

    .line 90
    move-result-object p0

    .line 93
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/transition/DefaultTransitionStub;->initContext(Landroid/content/Context;)V

    .line 94
    invoke-static {}, Lcom/android/wm/shell/common/transition/DefaultTransitionStub;->getInstance()Lcom/android/wm/shell/common/transition/DefaultTransitionStub;

    .line 97
    move-result-object p0

    .line 100
    invoke-virtual {p0, p5, p1, p6}, Lcom/android/wm/shell/common/transition/DefaultTransitionStub;->registerListener(Ljava/util/concurrent/Executor;Landroid/content/Context;Landroid/os/Handler;)V

    .line 101
    return-void
    .line 104
.end method

.method public static applyTransformation(JLandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/animation/Animation;Landroid/view/animation/Transformation;[FLandroid/graphics/Point;FLandroid/graphics/Rect;)V
    .locals 11

    .line 1
    move-object v7, p2

    .line 2
    move-object v8, p3

    .line 3
    move-object v9, p4

    .line 4
    move-object/from16 v10, p5

    .line 5
    move-object/from16 v0, p7

    .line 7
    move/from16 v1, p8

    .line 9
    move-object/from16 v2, p9

    .line 11
    invoke-virtual/range {p5 .. p5}, Landroid/view/animation/Transformation;->clear()V

    .line 13
    move-wide v3, p0

    .line 16
    invoke-virtual {p4, p0, p1, v10}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 17
    if-eqz v0, :cond_0

    .line 20
    invoke-virtual/range {p5 .. p5}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    .line 22
    move-result-object v5

    .line 25
    iget v6, v0, Landroid/graphics/Point;->x:I

    .line 26
    int-to-float v6, v6

    .line 28
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 29
    int-to-float v0, v0

    .line 31
    invoke-virtual {v5, v6, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 32
    :cond_0
    invoke-virtual/range {p5 .. p5}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    .line 35
    move-result-object v0

    .line 38
    move-object/from16 v5, p6

    .line 39
    invoke-virtual {p2, p3, v0, v5}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    .line 41
    invoke-virtual/range {p5 .. p5}, Landroid/view/animation/Transformation;->getAlpha()F

    .line 44
    move-result v0

    .line 47
    invoke-virtual {p2, p3, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 48
    if-nez v2, :cond_1

    .line 51
    const/4 v0, 0x0

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    .line 55
    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 57
    :goto_0
    invoke-virtual/range {p5 .. p5}, Landroid/view/animation/Transformation;->getInsets()Landroid/graphics/Insets;

    .line 60
    move-result-object v2

    .line 63
    sget-object v5, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 64
    invoke-static {v2, v5}, Landroid/graphics/Insets;->min(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    .line 66
    move-result-object v2

    .line 69
    sget-object v5, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 70
    invoke-virtual {v2, v5}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    .line 72
    move-result v5

    .line 75
    if-nez v5, :cond_2

    .line 76
    if-eqz v0, :cond_2

    .line 78
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 80
    move-result v5

    .line 83
    if-nez v5, :cond_2

    .line 84
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 86
    invoke-virtual {p2, p3, v0}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 89
    :cond_2
    invoke-virtual {p4}, Landroid/view/animation/Animation;->hasRoundedCorners()Z

    .line 92
    move-result v2

    .line 95
    if-eqz v2, :cond_5

    .line 96
    const/4 v2, 0x0

    .line 98
    cmpl-float v2, v1, v2

    .line 99
    if-lez v2, :cond_5

    .line 101
    if-nez v0, :cond_3

    .line 103
    invoke-virtual/range {p5 .. p5}, Landroid/view/animation/Transformation;->hasClipRect()Z

    .line 105
    move-result v2

    .line 108
    if-eqz v2, :cond_5

    .line 109
    :cond_3
    if-eqz v0, :cond_4

    .line 111
    invoke-virtual {p2, p3, v0}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 113
    invoke-virtual {p2, p3, v1}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 116
    goto :goto_1

    .line 119
    :cond_4
    invoke-virtual {p2, p3, v1}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 120
    new-instance v0, Landroid/graphics/Rect;

    .line 123
    invoke-virtual/range {p5 .. p5}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    .line 125
    move-result-object v1

    .line 128
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 129
    invoke-virtual/range {p5 .. p5}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    .line 131
    move-result-object v2

    .line 134
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 135
    invoke-virtual/range {p5 .. p5}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    .line 137
    move-result-object v5

    .line 140
    iget v5, v5, Landroid/graphics/Rect;->right:I

    .line 141
    invoke-virtual/range {p5 .. p5}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    .line 143
    move-result-object v6

    .line 146
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    .line 147
    invoke-direct {v0, v1, v2, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 149
    invoke-virtual {p2, p3, v0}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 152
    :cond_5
    :goto_1
    instance-of v0, v9, Landroid/view/animation/AnimationSet;

    .line 155
    if-eqz v0, :cond_6

    .line 157
    move-object v0, v9

    .line 159
    check-cast v0, Landroid/view/animation/AnimationSet;

    .line 160
    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    .line 162
    move-result-object v0

    .line 165
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 166
    move-result v1

    .line 169
    add-int/lit8 v1, v1, -0x1

    .line 170
    :goto_2
    if-ltz v1, :cond_7

    .line 172
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 174
    move-result-object v2

    .line 177
    check-cast v2, Landroid/view/animation/Animation;

    .line 178
    invoke-static {}, Lcom/android/wm/shell/common/transition/DefaultTransitionStub;->getInstance()Lcom/android/wm/shell/common/transition/DefaultTransitionStub;

    .line 180
    move-result-object v5

    .line 183
    invoke-virtual {v5, v2, p2}, Lcom/android/wm/shell/common/transition/DefaultTransitionStub;->stepAnimationDimmerIfNeeded(Landroid/view/animation/Animation;Landroid/view/SurfaceControl$Transaction;)Z

    .line 184
    invoke-static {}, Lcom/android/wm/shell/common/transition/DefaultTransitionStub;->getInstance()Lcom/android/wm/shell/common/transition/DefaultTransitionStub;

    .line 187
    move-result-object v5

    .line 190
    invoke-virtual {v5, v2, p3, p2, v10}, Lcom/android/wm/shell/common/transition/DefaultTransitionStub;->updateFloatingWindowAnimation(Landroid/view/animation/Animation;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/animation/Transformation;)V

    .line 191
    add-int/lit8 v1, v1, -0x1

    .line 194
    goto :goto_2

    .line 196
    :cond_6
    invoke-static {}, Lcom/android/wm/shell/common/transition/DefaultTransitionStub;->getInstance()Lcom/android/wm/shell/common/transition/DefaultTransitionStub;

    .line 197
    move-result-object v0

    .line 200
    invoke-virtual {v0, p4, p2}, Lcom/android/wm/shell/common/transition/DefaultTransitionStub;->stepAnimationDimmerIfNeeded(Landroid/view/animation/Animation;Landroid/view/SurfaceControl$Transaction;)Z

    .line 201
    invoke-static {}, Lcom/android/wm/shell/common/transition/DefaultTransitionStub;->getInstance()Lcom/android/wm/shell/common/transition/DefaultTransitionStub;

    .line 204
    move-result-object v0

    .line 207
    invoke-virtual {v0, p4, p3, p2, v10}, Lcom/android/wm/shell/common/transition/DefaultTransitionStub;->updateFloatingWindowAnimation(Landroid/view/animation/Animation;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/animation/Transformation;)V

    .line 208
    :cond_7
    invoke-static {}, Lcom/android/wm/shell/common/transition/DefaultTransitionStub;->getInstance()Lcom/android/wm/shell/common/transition/DefaultTransitionStub;

    .line 211
    move-result-object v0

    .line 214
    move-wide v1, p0

    .line 215
    move-object v3, p2

    .line 216
    move-object v4, p3

    .line 217
    move-object v5, p4

    .line 218
    move-object/from16 v6, p5

    .line 219
    invoke-virtual/range {v0 .. v6}, Lcom/android/wm/shell/common/transition/DefaultTransitionStub;->applyScaleTransformation(JLandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/animation/Animation;Landroid/view/animation/Transformation;)V

    .line 221
    invoke-static {}, Lcom/android/wm/shell/common/transition/DefaultTransitionStub;->getInstance()Lcom/android/wm/shell/common/transition/DefaultTransitionStub;

    .line 224
    move-result-object v0

    .line 227
    invoke-virtual {v0, p2, p4}, Lcom/android/wm/shell/common/transition/DefaultTransitionStub;->applySwapAnimationTransformation(Landroid/view/SurfaceControl$Transaction;Landroid/view/animation/Animation;)V

    .line 228
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 231
    move-result-object v0

    .line 234
    invoke-virtual {v0}, Landroid/view/Choreographer;->getVsyncId()J

    .line 235
    move-result-wide v0

    .line 238
    invoke-virtual {p2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setFrameTimelineVsync(J)Landroid/view/SurfaceControl$Transaction;

    .line 239
    invoke-virtual/range {p5 .. p5}, Landroid/view/animation/Transformation;->hasClipRect()Z

    .line 242
    move-result v0

    .line 245
    if-eqz v0, :cond_8

    .line 246
    invoke-virtual/range {p5 .. p5}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    .line 248
    move-result-object v0

    .line 251
    invoke-virtual {v0}, Landroid/graphics/Rect;->isValid()Z

    .line 252
    move-result v0

    .line 255
    if-eqz v0, :cond_8

    .line 256
    invoke-virtual/range {p5 .. p5}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    .line 258
    move-result-object v0

    .line 261
    invoke-virtual {p2, p3, v0}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 262
    :cond_8
    invoke-static {}, Lcom/android/wm/shell/common/splitmode/SplitTransitionStub;->getInstance()Lcom/android/wm/shell/common/splitmode/SplitTransitionStub;

    .line 265
    move-result-object v0

    .line 268
    invoke-virtual {v0, p4, p2}, Lcom/android/wm/shell/common/splitmode/SplitTransitionStub;->stepSplitDimmerIfNeeded(Landroid/view/animation/Animation;Landroid/view/SurfaceControl$Transaction;)Z

    .line 269
    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 272
    return-void
.end method

.method public static buildSurfaceAnimation(Ljava/util/ArrayList;Landroid/view/animation/Animation;Landroid/view/SurfaceControl;Ljava/lang/Runnable;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Landroid/graphics/Point;FLandroid/graphics/Rect;)V
    .locals 17

    .line 1
    invoke-virtual/range {p4 .. p4}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    .line 2
    move-result-object v10

    .line 5
    const/4 v0, 0x2

    .line 6
    new-array v0, v0, [F

    .line 7
    fill-array-data v0, :array_0

    .line 9
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 12
    move-result-object v14

    .line 15
    new-instance v11, Landroid/view/animation/Transformation;

    .line 16
    invoke-direct {v11}, Landroid/view/animation/Transformation;-><init>()V

    .line 18
    const/16 v0, 0x9

    .line 21
    new-array v12, v0, [F

    .line 23
    const/high16 v0, 0x3f800000    # 1.0f

    .line 25
    invoke-virtual {v14, v0}, Landroid/animation/ValueAnimator;->overrideDurationScale(F)V

    .line 27
    invoke-virtual/range {p1 .. p1}, Landroid/view/animation/Animation;->computeDurationHint()J

    .line 30
    move-result-wide v0

    .line 33
    invoke-virtual {v14, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 34
    new-instance v15, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda4;

    .line 37
    move-object v0, v15

    .line 39
    move-object v1, v14

    .line 40
    move-object v2, v10

    .line 41
    move-object/from16 v3, p2

    .line 42
    move-object/from16 v4, p1

    .line 44
    move-object v5, v11

    .line 46
    move-object v6, v12

    .line 47
    move-object/from16 v7, p6

    .line 48
    move/from16 v8, p7

    .line 50
    move-object/from16 v9, p8

    .line 52
    invoke-direct/range {v0 .. v9}, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda4;-><init>(Landroid/animation/ValueAnimator;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/animation/Animation;Landroid/view/animation/Transformation;[FLandroid/graphics/Point;FLandroid/graphics/Rect;)V

    .line 54
    invoke-virtual {v14, v15}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 57
    new-instance v13, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda5;

    .line 60
    move-object v0, v13

    .line 62
    move-object/from16 v10, p4

    .line 63
    move-object/from16 v11, p5

    .line 65
    move-object/from16 v12, p0

    .line 67
    move-object/from16 v16, v13

    .line 69
    move-object/from16 v13, p3

    .line 71
    invoke-direct/range {v0 .. v13}, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda5;-><init>(Landroid/animation/ValueAnimator;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/animation/Animation;Landroid/view/animation/Transformation;[FLandroid/graphics/Point;FLandroid/graphics/Rect;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    .line 73
    new-instance v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$3;

    .line 76
    move-object/from16 v1, v16

    .line 78
    invoke-direct {v0, v1, v14, v15}, Lcom/android/wm/shell/transition/DefaultTransitionHandler$3;-><init>(Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda5;Landroid/animation/ValueAnimator;Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda4;)V

    .line 80
    invoke-virtual {v14, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 83
    move-object/from16 v0, p0

    .line 86
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    return-void

    .line 91
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
    .line 92
.end method

.method public static getRotationAnimationHint(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;Lcom/android/wm/shell/common/DisplayController;)I
    .locals 14

    .line 1
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 8
    const v3, -0x22cbaff3

    .line 10
    const-string v4, "Display is changing, resolve the animation hint."

    .line 13
    invoke-static {v0, v3, v2, v4, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 15
    :cond_0
    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getRotationAnimation()I

    .line 18
    move-result v0

    .line 21
    const/4 v3, 0x3

    .line 22
    if-ne v0, v3, :cond_2

    .line 23
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 25
    if-eqz v0, :cond_1

    .line 27
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 29
    const v4, 0x6a87ab97

    .line 31
    const-string v5, "  display requests explicit seamless"

    .line 34
    invoke-static {v0, v4, v2, v5, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 36
    :cond_1
    return v3

    .line 39
    :cond_2
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 40
    move-result-object v0

    .line 43
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 44
    move-result v0

    .line 47
    move-object v7, v1

    .line 48
    move v4, v2

    .line 49
    move v5, v4

    .line 50
    move v6, v5

    .line 51
    move v8, v6

    .line 52
    :goto_0
    const/4 v9, 0x1

    .line 53
    const/4 v10, 0x2

    .line 54
    if-ge v4, v0, :cond_e

    .line 55
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 57
    move-result-object v11

    .line 60
    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 61
    move-result-object v11

    .line 64
    check-cast v11, Landroid/window/TransitionInfo$Change;

    .line 65
    invoke-virtual {v11}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 67
    move-result v12

    .line 70
    const/4 v13, 0x6

    .line 71
    if-eq v12, v13, :cond_3

    .line 72
    goto/16 :goto_3

    .line 74
    :cond_3
    invoke-virtual {v11}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    .line 76
    move-result v12

    .line 79
    invoke-virtual {v11}, Landroid/window/TransitionInfo$Change;->getStartRotation()I

    .line 80
    move-result v13

    .line 83
    if-ne v12, v13, :cond_4

    .line 84
    goto/16 :goto_3

    .line 86
    :cond_4
    invoke-virtual {v11}, Landroid/window/TransitionInfo$Change;->getFlags()I

    .line 88
    move-result v12

    .line 91
    and-int/lit8 v12, v12, 0x20

    .line 92
    if-eqz v12, :cond_5

    .line 94
    invoke-virtual {v11}, Landroid/window/TransitionInfo$Change;->getFlags()I

    .line 96
    move-result v10

    .line 99
    and-int/lit16 v10, v10, 0x80

    .line 100
    if-eqz v10, :cond_d

    .line 102
    sget-boolean v6, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 104
    if-eqz v6, :cond_6

    .line 106
    sget-object v6, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 108
    const v10, 0x2859e70

    .line 110
    const-string v11, "  display has system alert windows, so not seamless."

    .line 113
    invoke-static {v6, v10, v2, v11, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 115
    goto :goto_1

    .line 118
    :cond_5
    invoke-virtual {v11}, Landroid/window/TransitionInfo$Change;->getFlags()I

    .line 119
    move-result v12

    .line 122
    and-int/2addr v10, v12

    .line 123
    if-eqz v10, :cond_7

    .line 124
    invoke-virtual {v11}, Landroid/window/TransitionInfo$Change;->getRotationAnimation()I

    .line 126
    move-result v10

    .line 129
    if-eq v10, v3, :cond_d

    .line 130
    sget-boolean v6, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 132
    if-eqz v6, :cond_6

    .line 134
    sget-object v6, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 136
    const v10, 0x3c83dd70

    .line 138
    const-string v11, "  wallpaper is participating but isn\'t seamless."

    .line 141
    invoke-static {v6, v10, v2, v11, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 143
    :cond_6
    :goto_1
    move v6, v9

    .line 146
    goto :goto_3

    .line 147
    :cond_7
    invoke-virtual {v11}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 148
    move-result-object v10

    .line 151
    if-eqz v10, :cond_d

    .line 152
    invoke-virtual {v11}, Landroid/window/TransitionInfo$Change;->getRotationAnimation()I

    .line 154
    move-result v10

    .line 157
    invoke-virtual {v11}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 158
    move-result-object v11

    .line 161
    if-nez v7, :cond_8

    .line 162
    move v12, v9

    .line 164
    goto :goto_2

    .line 165
    :cond_8
    move v12, v2

    .line 166
    :goto_2
    if-eqz v12, :cond_a

    .line 167
    const/4 v7, -0x1

    .line 169
    if-eq v10, v7, :cond_9

    .line 170
    if-eq v10, v3, :cond_9

    .line 172
    move v8, v10

    .line 174
    :cond_9
    move-object v7, v11

    .line 175
    :cond_a
    if-eq v10, v3, :cond_c

    .line 176
    sget-boolean v5, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 178
    if-eqz v5, :cond_b

    .line 180
    iget v5, v11, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 182
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 184
    move-result-object v5

    .line 187
    sget-object v9, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 188
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 190
    move-result-object v5

    .line 193
    const v10, 0x7224977c

    .line 194
    const-string v11, "  task %s isn\'t requesting seamless, so not seamless."

    .line 197
    invoke-static {v9, v10, v2, v11, v5}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 199
    :cond_b
    move v5, v2

    .line 202
    goto :goto_3

    .line 203
    :cond_c
    if-eqz v12, :cond_d

    .line 204
    move v5, v9

    .line 206
    :cond_d
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 207
    goto/16 :goto_0

    .line 209
    :cond_e
    if-eqz v5, :cond_1c

    .line 211
    if-eqz v6, :cond_f

    .line 213
    goto/16 :goto_8

    .line 215
    :cond_f
    iget v0, v7, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 217
    move-object/from16 v4, p2

    .line 219
    invoke-virtual {v4, v0}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    .line 221
    move-result-object v0

    .line 224
    iget-boolean v4, v0, Lcom/android/wm/shell/common/DisplayLayout;->mAllowSeamlessRotationDespiteNavBarMoving:Z

    .line 225
    if-eqz v4, :cond_11

    .line 227
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 229
    if-eqz v0, :cond_10

    .line 231
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 233
    const v4, 0x39b15331

    .line 235
    const-string v5, "  nav bar allows seamless."

    .line 238
    invoke-static {v0, v4, v2, v5, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 240
    :cond_10
    return v3

    .line 243
    :cond_11
    iget v4, v0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 244
    iget v5, v0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 246
    if-le v4, v5, :cond_12

    .line 248
    move v4, v9

    .line 250
    goto :goto_4

    .line 251
    :cond_12
    move v4, v2

    .line 252
    :goto_4
    iget v5, v0, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    .line 253
    rem-int/2addr v5, v10

    .line 255
    if-eqz v5, :cond_13

    .line 256
    xor-int/lit8 v4, v4, 0x1

    .line 258
    :cond_13
    if-eqz v4, :cond_15

    .line 260
    iget-boolean v4, v0, Lcom/android/wm/shell/common/DisplayLayout;->mReverseDefaultRotation:Z

    .line 262
    if-eqz v4, :cond_14

    .line 264
    move v10, v3

    .line 266
    goto :goto_5

    .line 267
    :cond_14
    move v10, v9

    .line 268
    :cond_15
    :goto_5
    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getStartRotation()I

    .line 269
    move-result v4

    .line 272
    if-eq v4, v10, :cond_1b

    .line 273
    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    .line 275
    move-result v4

    .line 278
    if-ne v4, v10, :cond_16

    .line 279
    goto :goto_7

    .line 281
    :cond_16
    iget-boolean v4, v0, Lcom/android/wm/shell/common/DisplayLayout;->mNavigationBarCanMove:Z

    .line 282
    if-eqz v4, :cond_17

    .line 284
    iget v4, v0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 286
    iget v0, v0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 288
    if-eq v4, v0, :cond_17

    .line 290
    goto :goto_6

    .line 292
    :cond_17
    move v9, v2

    .line 293
    :goto_6
    if-nez v9, :cond_19

    .line 294
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 296
    if-eqz v0, :cond_18

    .line 298
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 300
    const v3, -0x4598ff3b

    .line 302
    const-string v4, "  nav bar changes sides, so not seamless."

    .line 305
    invoke-static {v0, v3, v2, v4, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 307
    :cond_18
    return v8

    .line 310
    :cond_19
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 311
    if-eqz v0, :cond_1a

    .line 313
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 315
    const v4, 0x4875c331

    .line 317
    const-string v5, "  Rotation IS seamless."

    .line 320
    invoke-static {v0, v4, v2, v5, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 322
    :cond_1a
    return v3

    .line 325
    :cond_1b
    :goto_7
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 326
    if-eqz v0, :cond_1c

    .line 328
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 330
    const v3, 0x459b7c3c

    .line 332
    const-string v4, "  rotation involves upside-down portrait, so not seamless."

    .line 335
    invoke-static {v0, v3, v2, v4, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 337
    :cond_1c
    :goto_8
    return v8
    .line 340
.end method


# virtual methods
.method public final attachThumbnailAnimation(Ljava/util/ArrayList;Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda1;Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo$AnimationOptions;F)V
    .locals 25

    .line 1
    move-object/from16 v6, p0

    .line 2
    iget-object v0, v6, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 4
    invoke-virtual {v0}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    .line 6
    move-result-object v3

    .line 9
    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 10
    move-result-object v0

    .line 13
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$AnimationOptions;->getThumbnail()Landroid/hardware/HardwareBuffer;

    .line 14
    move-result-object v1

    .line 17
    iget-object v2, v6, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 18
    invoke-static {v2, v0, v1, v3}, Lcom/android/wm/shell/transition/WindowThumbnail;->createAndAttach(Landroid/view/SurfaceSession;Landroid/view/SurfaceControl;Landroid/hardware/HardwareBuffer;Landroid/view/SurfaceControl$Transaction;)Lcom/android/wm/shell/transition/WindowThumbnail;

    .line 20
    move-result-object v7

    .line 23
    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 24
    move-result-object v9

    .line 27
    iget-object v0, v6, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mContext:Landroid/content/Context;

    .line 28
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 30
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 34
    move-result-object v0

    .line 37
    iget v12, v0, Landroid/content/res/Configuration;->orientation:I

    .line 38
    iget-object v8, v6, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    .line 40
    iget-object v10, v6, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mInsets:Landroid/graphics/Rect;

    .line 42
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$AnimationOptions;->getThumbnail()Landroid/hardware/HardwareBuffer;

    .line 44
    move-result-object v11

    .line 47
    const/4 v13, 0x0

    .line 48
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$AnimationOptions;->getTransitionBounds()Landroid/graphics/Rect;

    .line 49
    move-result-object v14

    .line 52
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$AnimationOptions;->getType()I

    .line 53
    move-result v0

    .line 56
    const/4 v1, 0x3

    .line 57
    if-ne v0, v1, :cond_0

    .line 58
    const/4 v0, 0x1

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    const/4 v0, 0x0

    .line 62
    :goto_0
    move v15, v0

    .line 63
    invoke-virtual/range {v8 .. v15}, Lcom/android/internal/policy/TransitionAnimation;->createThumbnailAspectScaleAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/hardware/HardwareBuffer;ILandroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/view/animation/Animation;

    .line 64
    move-result-object v8

    .line 67
    new-instance v19, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda7;

    .line 68
    const/4 v5, 0x0

    .line 70
    move-object/from16 v0, v19

    .line 71
    move-object/from16 v1, p0

    .line 73
    move-object v2, v7

    .line 75
    move-object/from16 v4, p2

    .line 76
    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda7;-><init>(Lcom/android/wm/shell/transition/DefaultTransitionHandler;Lcom/android/wm/shell/transition/WindowThumbnail;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda1;I)V

    .line 78
    const-wide/16 v0, 0xbb8

    .line 81
    invoke-virtual {v8, v0, v1}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 83
    iget v0, v6, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransitionAnimationScaleSetting:F

    .line 86
    invoke-virtual {v8, v0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 88
    iget-object v0, v7, Lcom/android/wm/shell/transition/WindowThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 91
    iget-object v1, v6, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 93
    iget-object v2, v6, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 95
    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    .line 97
    move-result-object v22

    .line 100
    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 101
    move-result-object v24

    .line 104
    move-object/from16 v16, p1

    .line 105
    move-object/from16 v17, v8

    .line 107
    move-object/from16 v18, v0

    .line 109
    move-object/from16 v20, v1

    .line 111
    move-object/from16 v21, v2

    .line 113
    move/from16 v23, p5

    .line 115
    invoke-static/range {v16 .. v24}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->buildSurfaceAnimation(Ljava/util/ArrayList;Landroid/view/animation/Animation;Landroid/view/SurfaceControl;Ljava/lang/Runnable;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Landroid/graphics/Point;FLandroid/graphics/Rect;)V

    .line 117
    return-void
    .line 120
.end method

.method public final handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public final mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mAnimations:Landroid/util/ArrayMap;

    .line 2
    invoke-virtual {p1, p4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 7
    check-cast p1, Ljava/util/ArrayList;

    .line 8
    if-nez p1, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 13
    move-result p2

    .line 16
    add-int/lit8 p2, p2, -0x1

    .line 17
    :goto_0
    if-ltz p2, :cond_1

    .line 19
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object p3

    .line 24
    check-cast p3, Landroid/animation/Animator;

    .line 25
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    new-instance p4, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda0;

    .line 30
    const/4 p5, 0x0

    .line 32
    invoke-direct {p4, p5, p3}, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 33
    iget-object p3, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 36
    check-cast p3, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 38
    invoke-virtual {p3, p4}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 40
    add-int/lit8 p2, p2, -0x1

    .line 43
    goto :goto_0

    .line 45
    :cond_1
    return-void
    .line 46
.end method

.method public final setAnimScaleSetting(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransitionAnimationScaleSetting:F

    .line 2
    return-void
    .line 4
.end method

.method public final startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 41

    .line 1
    move-object/from16 v7, p0

    .line 2
    move-object/from16 v8, p1

    .line 4
    move-object/from16 v9, p2

    .line 6
    move-object/from16 v10, p3

    .line 8
    move-object/from16 v11, p4

    .line 10
    move-object/from16 v4, p5

    .line 12
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 14
    const/4 v6, 0x0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 22
    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 23
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 28
    const v2, -0x8b57885

    .line 29
    const-string/jumbo v3, "start default transition animation, info = %s"

    .line 32
    invoke-static {v1, v2, v6, v3, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 35
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    .line 38
    move-result v0

    .line 41
    const/16 v1, 0xb

    .line 42
    const/4 v12, 0x0

    .line 44
    const/4 v13, 0x1

    .line 45
    if-ne v0, v1, :cond_1

    .line 46
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->isKeyguardGoingAway()Z

    .line 48
    move-result v0

    .line 51
    if-nez v0, :cond_1

    .line 52
    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 54
    invoke-interface {v4, v12, v12}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    .line 57
    return v13

    .line 60
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    .line 61
    move-result v0

    .line 64
    invoke-static {v0}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    .line 65
    move-result v0

    .line 68
    if-eqz v0, :cond_2

    .line 69
    goto :goto_2

    .line 71
    :cond_2
    invoke-static {v9, v13}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    .line 72
    move-result v0

    .line 75
    move v1, v6

    .line 76
    :goto_0
    if-ltz v0, :cond_5

    .line 77
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 79
    move-result-object v2

    .line 82
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 83
    move-result-object v2

    .line 86
    check-cast v2, Landroid/window/TransitionInfo$Change;

    .line 87
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 89
    move-result v3

    .line 92
    invoke-static {v3}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    .line 93
    move-result v3

    .line 96
    if-eqz v3, :cond_3

    .line 97
    goto :goto_1

    .line 99
    :cond_3
    const/high16 v1, 0x40000

    .line 100
    invoke-virtual {v2, v1}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    .line 102
    move-result v1

    .line 105
    if-eqz v1, :cond_4

    .line 106
    move v1, v13

    .line 108
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 109
    goto :goto_0

    .line 111
    :cond_4
    :goto_2
    move v1, v6

    .line 112
    :cond_5
    if-nez v1, :cond_76

    .line 113
    invoke-static {v9, v13}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    .line 115
    move-result v0

    .line 118
    :goto_3
    if-ltz v0, :cond_7

    .line 119
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 121
    move-result-object v1

    .line 124
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 125
    move-result-object v1

    .line 128
    check-cast v1, Landroid/window/TransitionInfo$Change;

    .line 129
    invoke-static {v1}, Lcom/android/wm/shell/util/TransitionUtil;->isOrderOnly(Landroid/window/TransitionInfo$Change;)Z

    .line 131
    move-result v1

    .line 134
    if-nez v1, :cond_6

    .line 135
    move v0, v6

    .line 137
    goto :goto_4

    .line 138
    :cond_6
    add-int/lit8 v0, v0, -0x1

    .line 139
    goto :goto_3

    .line 141
    :cond_7
    move v0, v13

    .line 142
    :goto_4
    if-nez v0, :cond_76

    .line 143
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getFlags()I

    .line 145
    move-result v0

    .line 148
    and-int/lit16 v0, v0, 0x400

    .line 149
    if-eqz v0, :cond_8

    .line 151
    invoke-static {}, Lcom/android/wm/shell/common/transition/DefaultTransitionStub;->getInstance()Lcom/android/wm/shell/common/transition/DefaultTransitionStub;

    .line 153
    move-result-object v0

    .line 156
    invoke-virtual {v0}, Lcom/android/wm/shell/common/transition/DefaultTransitionStub;->shouldApplySwapAnimation()Z

    .line 157
    move-result v0

    .line 160
    if-nez v0, :cond_8

    .line 161
    goto/16 :goto_40

    .line 163
    :cond_8
    iget-object v0, v7, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mAnimations:Landroid/util/ArrayMap;

    .line 165
    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 167
    move-result v1

    .line 170
    if-nez v1, :cond_75

    .line 171
    new-instance v15, Ljava/util/ArrayList;

    .line 173
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 175
    invoke-virtual {v0, v8, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    new-instance v23, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda1;

    .line 181
    move-object/from16 v0, v23

    .line 183
    move-object/from16 v1, p0

    .line 185
    move-object v2, v15

    .line 187
    move-object/from16 v3, p1

    .line 188
    move-object/from16 v4, p5

    .line 190
    move-object/from16 v5, p2

    .line 192
    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/transition/DefaultTransitionHandler;Ljava/util/ArrayList;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/TransitionInfo;)V

    .line 194
    iget-object v0, v7, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mAnimationDimmer:Landroid/view/animation/Animation;

    .line 197
    if-nez v0, :cond_9

    .line 199
    goto :goto_5

    .line 201
    :cond_9
    iput-object v12, v7, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mAnimationDimmer:Landroid/view/animation/Animation;

    .line 202
    :goto_5
    new-instance v12, Ljava/util/ArrayList;

    .line 204
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 206
    invoke-static {v9, v13}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    .line 209
    move-result v0

    .line 212
    move v1, v6

    .line 213
    move v2, v1

    .line 214
    :goto_6
    if-ltz v0, :cond_c

    .line 215
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 217
    move-result-object v3

    .line 220
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 221
    move-result-object v3

    .line 224
    check-cast v3, Landroid/window/TransitionInfo$Change;

    .line 225
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getFlags()I

    .line 227
    move-result v4

    .line 230
    and-int/2addr v4, v13

    .line 231
    if-eqz v4, :cond_b

    .line 232
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 234
    move-result v4

    .line 237
    invoke-static {v4}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 238
    move-result v4

    .line 241
    if-eqz v4, :cond_a

    .line 242
    move v1, v13

    .line 244
    goto :goto_7

    .line 245
    :cond_a
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 246
    move-result v3

    .line 249
    invoke-static {v3}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    .line 250
    move-result v3

    .line 253
    if-eqz v3, :cond_b

    .line 254
    move v2, v13

    .line 256
    :cond_b
    :goto_7
    add-int/lit8 v0, v0, -0x1

    .line 257
    goto :goto_6

    .line 259
    :cond_c
    const/4 v0, 0x4

    .line 260
    if-eqz v1, :cond_e

    .line 261
    if-eqz v2, :cond_e

    .line 263
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    .line 265
    move-result v1

    .line 268
    invoke-static {v1}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 269
    move-result v1

    .line 272
    if-eqz v1, :cond_d

    .line 273
    const/4 v1, 0x3

    .line 275
    goto :goto_8

    .line 276
    :cond_d
    move v1, v0

    .line 277
    goto :goto_8

    .line 278
    :cond_e
    if-eqz v1, :cond_f

    .line 279
    move v14, v13

    .line 281
    goto :goto_9

    .line 282
    :cond_f
    if-eqz v2, :cond_10

    .line 283
    const/4 v1, 0x2

    .line 285
    :goto_8
    move v14, v1

    .line 286
    goto :goto_9

    .line 287
    :cond_10
    move v14, v6

    .line 288
    :goto_9
    invoke-static {v9, v13}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    .line 289
    move-result v1

    .line 292
    :goto_a
    const/4 v2, 0x5

    .line 293
    if-ltz v1, :cond_12

    .line 294
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 296
    move-result-object v3

    .line 299
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 300
    move-result-object v3

    .line 303
    check-cast v3, Landroid/window/TransitionInfo$Change;

    .line 304
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 306
    move-result-object v4

    .line 309
    if-eqz v4, :cond_11

    .line 310
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 312
    move-result-object v3

    .line 315
    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    .line 316
    if-ne v3, v2, :cond_11

    .line 318
    move v5, v13

    .line 320
    goto :goto_b

    .line 321
    :cond_11
    add-int/lit8 v1, v1, -0x1

    .line 322
    goto :goto_a

    .line 324
    :cond_12
    move v5, v6

    .line 325
    :goto_b
    invoke-static {v9, v13}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    .line 326
    move-result v1

    .line 329
    move v2, v6

    .line 330
    :goto_c
    const/4 v3, 0x6

    .line 331
    if-ltz v1, :cond_16

    .line 332
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 334
    move-result-object v4

    .line 337
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 338
    move-result-object v4

    .line 341
    check-cast v4, Landroid/window/TransitionInfo$Change;

    .line 342
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 344
    move-result v13

    .line 347
    if-ne v13, v3, :cond_13

    .line 348
    goto :goto_d

    .line 350
    :cond_13
    invoke-virtual {v4, v0}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    .line 351
    move-result v13

    .line 354
    if-eqz v13, :cond_15

    .line 355
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 357
    move-result v3

    .line 360
    invoke-static {v3}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 361
    move-result v3

    .line 364
    if-eqz v3, :cond_14

    .line 365
    add-int/lit8 v6, v6, 0x1

    .line 367
    goto :goto_d

    .line 369
    :cond_14
    add-int/lit8 v2, v2, 0x1

    .line 370
    :goto_d
    add-int/lit8 v1, v1, -0x1

    .line 372
    const/4 v13, 0x1

    .line 374
    goto :goto_c

    .line 375
    :cond_15
    const/4 v0, 0x0

    .line 376
    goto :goto_e

    .line 377
    :cond_16
    add-int/2addr v6, v2

    .line 378
    if-lez v6, :cond_15

    .line 379
    const/4 v0, 0x1

    .line 381
    :goto_e
    move v13, v0

    .line 382
    const/4 v0, 0x1

    .line 383
    invoke-static {v9, v0}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    .line 384
    move-result v0

    .line 387
    const/4 v1, 0x0

    .line 388
    const/4 v2, 0x0

    .line 389
    move v6, v0

    .line 390
    move/from16 v32, v1

    .line 391
    move/from16 v33, v2

    .line 393
    move-object v4, v11

    .line 395
    :goto_f
    iget-object v2, v7, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mRotator:Lcom/android/wm/shell/transition/CounterRotatorHelper;

    .line 396
    if-ltz v6, :cond_71

    .line 398
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 400
    move-result-object v0

    .line 403
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 404
    move-result-object v0

    .line 407
    move-object v1, v0

    .line 408
    check-cast v1, Landroid/window/TransitionInfo$Change;

    .line 409
    const/16 v0, 0x4200

    .line 411
    invoke-virtual {v1, v0}, Landroid/window/TransitionInfo$Change;->hasAllFlags(I)Z

    .line 413
    move-result v0

    .line 416
    if-eqz v0, :cond_17

    .line 417
    goto :goto_10

    .line 419
    :cond_17
    const v0, 0x10102

    .line 420
    invoke-virtual {v1, v0}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    .line 423
    move-result v0

    .line 426
    if-eqz v0, :cond_18

    .line 427
    :goto_10
    move-object v1, v4

    .line 429
    move/from16 v35, v6

    .line 430
    move-object/from16 p5, v12

    .line 432
    move v12, v5

    .line 434
    goto/16 :goto_1a

    .line 435
    :cond_18
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 437
    move-result-object v0

    .line 440
    if-eqz v0, :cond_19

    .line 441
    const/4 v0, 0x1

    .line 443
    goto :goto_11

    .line 444
    :cond_19
    const/4 v0, 0x0

    .line 445
    :goto_11
    move/from16 v34, v0

    .line 446
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 448
    move-result v0

    .line 451
    iget-object v8, v7, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 452
    if-ne v0, v3, :cond_1e

    .line 454
    const/16 v3, 0x20

    .line 456
    invoke-virtual {v1, v3}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    .line 458
    move-result v3

    .line 461
    if-eqz v3, :cond_1e

    .line 462
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    .line 464
    move-result v3

    .line 467
    move-object/from16 p5, v4

    .line 468
    const/4 v4, 0x6

    .line 470
    if-ne v3, v4, :cond_1d

    .line 471
    invoke-static {v1, v9, v8}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->getRotationAnimationHint(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;Lcom/android/wm/shell/common/DisplayController;)I

    .line 473
    move-result v4

    .line 476
    const/4 v3, 0x3

    .line 477
    if-ne v4, v3, :cond_1a

    .line 478
    const/4 v3, 0x1

    .line 480
    goto :goto_12

    .line 481
    :cond_1a
    const/4 v3, 0x0

    .line 482
    :goto_12
    move/from16 v16, v3

    .line 483
    if-nez v3, :cond_1c

    .line 485
    const/4 v3, 0x2

    .line 487
    if-eq v4, v3, :cond_1b

    .line 488
    invoke-static {}, Lcom/android/wm/shell/common/transition/DefaultTransitionStub;->getInstance()Lcom/android/wm/shell/common/transition/DefaultTransitionStub;

    .line 490
    move-result-object v3

    .line 493
    invoke-virtual {v3, v9, v1, v6}, Lcom/android/wm/shell/common/transition/DefaultTransitionStub;->allowDisplayRotationAnimation(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;I)Z

    .line 494
    move-result v3

    .line 497
    if-eqz v3, :cond_1c

    .line 498
    invoke-static {}, Lcom/android/wm/shell/common/transition/DefaultTransitionStub;->getInstance()Lcom/android/wm/shell/common/transition/DefaultTransitionStub;

    .line 500
    move-result-object v0

    .line 503
    invoke-virtual {v0, v10, v1}, Lcom/android/wm/shell/common/transition/DefaultTransitionStub;->createBlackCoverLeashIfNeeded(Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo$Change;)V

    .line 504
    move-object/from16 v0, p0

    .line 507
    move-object v3, v1

    .line 509
    move-object/from16 v1, p3

    .line 510
    move-object v2, v3

    .line 512
    move-object/from16 v3, p2

    .line 513
    move-object/from16 v8, p5

    .line 515
    move-object/from16 p5, v12

    .line 517
    move v12, v5

    .line 519
    move-object v5, v15

    .line 520
    move/from16 v35, v6

    .line 521
    move-object/from16 v6, v23

    .line 523
    invoke-virtual/range {v0 .. v6}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->startRotationAnimation(Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;ILjava/util/ArrayList;Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda1;)V

    .line 525
    const/16 v33, 0x1

    .line 528
    goto/16 :goto_18

    .line 530
    :cond_1b
    move/from16 v35, v6

    .line 532
    move-object/from16 v6, p5

    .line 534
    move-object/from16 p5, v12

    .line 536
    move v12, v5

    .line 538
    move-object v5, v1

    .line 539
    goto :goto_13

    .line 540
    :cond_1c
    move/from16 v35, v6

    .line 541
    move-object/from16 v6, p5

    .line 543
    move-object/from16 p5, v12

    .line 545
    move v12, v5

    .line 547
    move-object v5, v1

    .line 548
    const/4 v3, 0x2

    .line 549
    :goto_13
    const/4 v1, 0x6

    .line 550
    goto :goto_15

    .line 551
    :cond_1d
    move/from16 v35, v6

    .line 552
    move-object/from16 v6, p5

    .line 554
    move-object/from16 p5, v12

    .line 556
    move v12, v5

    .line 558
    move-object v5, v1

    .line 559
    const/4 v1, 0x2

    .line 560
    invoke-virtual {v2, v9, v5, v10}, Lcom/android/wm/shell/transition/CounterRotatorHelper;->handleClosingChanges(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;)V

    .line 561
    goto :goto_14

    .line 564
    :cond_1e
    move/from16 v35, v6

    .line 565
    move-object/from16 p5, v12

    .line 567
    move-object v6, v4

    .line 569
    move v12, v5

    .line 570
    move-object v5, v1

    .line 571
    const/4 v1, 0x2

    .line 572
    :goto_14
    move v3, v1

    .line 573
    const/4 v1, 0x6

    .line 574
    const/4 v4, 0x0

    .line 575
    move/from16 v16, v4

    .line 576
    :goto_15
    if-ne v0, v1, :cond_27

    .line 578
    if-eqz v34, :cond_1f

    .line 580
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 582
    move-result-object v1

    .line 585
    if-eqz v1, :cond_1f

    .line 586
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 588
    move-result-object v1

    .line 591
    invoke-virtual {v9, v1}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    .line 592
    move-result-object v1

    .line 595
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 596
    move-result-object v1

    .line 599
    if-eqz v1, :cond_1f

    .line 600
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 602
    move-result-object v0

    .line 605
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->positionInParent:Landroid/graphics/Point;

    .line 606
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 608
    move-result-object v1

    .line 611
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 612
    int-to-float v2, v2

    .line 614
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 615
    int-to-float v0, v0

    .line 617
    invoke-virtual {v10, v1, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 618
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 621
    move-result-object v0

    .line 624
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 625
    move-result-object v1

    .line 628
    invoke-virtual {v9, v1}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    .line 629
    move-result-object v1

    .line 632
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 633
    move-result-object v1

    .line 636
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 637
    move-result v0

    .line 640
    if-nez v0, :cond_20

    .line 641
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 643
    move-result-object v0

    .line 646
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 647
    move-result-object v1

    .line 650
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 651
    move-result v1

    .line 654
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 655
    move-result-object v2

    .line 658
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 659
    move-result v2

    .line 662
    invoke-virtual {v10, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 663
    goto :goto_16

    .line 666
    :cond_1f
    if-eqz v34, :cond_21

    .line 667
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 669
    move-result-object v1

    .line 672
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 673
    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 675
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    .line 677
    move-result v1

    .line 680
    if-ne v1, v3, :cond_21

    .line 681
    :cond_20
    :goto_16
    move-object v1, v6

    .line 683
    goto/16 :goto_1a

    .line 684
    :cond_21
    invoke-static {v9, v5}, Lcom/android/wm/shell/util/TransitionUtil;->rootIndexFor(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;)I

    .line 686
    move-result v1

    .line 689
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 690
    move-result-object v3

    .line 693
    if-eqz v3, :cond_22

    .line 694
    invoke-static {}, Lcom/android/wm/shell/sosc/SoScUtils;->getInstance()Lcom/android/wm/shell/sosc/SoScUtils;

    .line 696
    move-result-object v3

    .line 699
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 700
    move-result-object v4

    .line 703
    invoke-virtual {v3, v4}, Lcom/android/wm/shell/sosc/SoScUtils;->needAdjustSurfaceForMinimizedMode(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 704
    move-result v3

    .line 707
    if-eqz v3, :cond_22

    .line 708
    invoke-static {}, Lcom/android/wm/shell/sosc/SoScUtils;->getInstance()Lcom/android/wm/shell/sosc/SoScUtils;

    .line 710
    move-result-object v3

    .line 713
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 714
    move-result-object v4

    .line 717
    iget v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 718
    invoke-virtual {v3, v4}, Lcom/android/wm/shell/sosc/SoScUtils;->isSoScRootTask(I)Z

    .line 720
    move-result v3

    .line 723
    if-eqz v3, :cond_22

    .line 724
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 726
    move-result-object v1

    .line 729
    invoke-static {}, Lcom/android/wm/shell/sosc/SoScUtils;->getInstance()Lcom/android/wm/shell/sosc/SoScUtils;

    .line 730
    move-result-object v3

    .line 733
    invoke-virtual {v3}, Lcom/android/wm/shell/sosc/SoScUtils;->getMinimizedPoint()Landroid/graphics/Point;

    .line 734
    move-result-object v3

    .line 737
    iget v3, v3, Landroid/graphics/Point;->x:I

    .line 738
    int-to-float v3, v3

    .line 740
    invoke-static {}, Lcom/android/wm/shell/sosc/SoScUtils;->getInstance()Lcom/android/wm/shell/sosc/SoScUtils;

    .line 741
    move-result-object v4

    .line 744
    invoke-virtual {v4}, Lcom/android/wm/shell/sosc/SoScUtils;->getMinimizedPoint()Landroid/graphics/Point;

    .line 745
    move-result-object v4

    .line 748
    iget v4, v4, Landroid/graphics/Point;->y:I

    .line 749
    int-to-float v4, v4

    .line 751
    invoke-virtual {v10, v1, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 752
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 755
    move-result-object v1

    .line 758
    invoke-static {}, Lcom/android/wm/shell/sosc/SoScUtils;->getInstance()Lcom/android/wm/shell/sosc/SoScUtils;

    .line 759
    move-result-object v3

    .line 762
    invoke-virtual {v3}, Lcom/android/wm/shell/sosc/SoScUtils;->getMinimizedPoint()Landroid/graphics/Point;

    .line 763
    move-result-object v3

    .line 766
    iget v3, v3, Landroid/graphics/Point;->x:I

    .line 767
    int-to-float v3, v3

    .line 769
    invoke-static {}, Lcom/android/wm/shell/sosc/SoScUtils;->getInstance()Lcom/android/wm/shell/sosc/SoScUtils;

    .line 770
    move-result-object v4

    .line 773
    invoke-virtual {v4}, Lcom/android/wm/shell/sosc/SoScUtils;->getMinimizedPoint()Landroid/graphics/Point;

    .line 774
    move-result-object v4

    .line 777
    iget v4, v4, Landroid/graphics/Point;->y:I

    .line 778
    int-to-float v4, v4

    .line 780
    invoke-virtual {v6, v1, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 781
    move-object/from16 v18, v6

    .line 784
    goto :goto_17

    .line 786
    :cond_22
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 787
    move-result-object v3

    .line 790
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 791
    move-result-object v4

    .line 794
    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 795
    invoke-virtual {v9, v1}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    .line 797
    move-result-object v17

    .line 800
    move-object/from16 v18, v6

    .line 801
    invoke-virtual/range {v17 .. v17}, Landroid/window/TransitionInfo$Root;->getOffset()Landroid/graphics/Point;

    .line 803
    move-result-object v6

    .line 806
    iget v6, v6, Landroid/graphics/Point;->x:I

    .line 807
    sub-int/2addr v4, v6

    .line 809
    int-to-float v4, v4

    .line 810
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 811
    move-result-object v6

    .line 814
    iget v6, v6, Landroid/graphics/Rect;->top:I

    .line 815
    invoke-virtual {v9, v1}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    .line 817
    move-result-object v1

    .line 820
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Root;->getOffset()Landroid/graphics/Point;

    .line 821
    move-result-object v1

    .line 824
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 825
    sub-int/2addr v6, v1

    .line 827
    int-to-float v1, v6

    .line 828
    invoke-virtual {v10, v3, v4, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 829
    :goto_17
    if-eqz v16, :cond_23

    .line 832
    move-object/from16 v1, v18

    .line 834
    goto/16 :goto_1a

    .line 836
    :cond_23
    if-nez v34, :cond_24

    .line 838
    const/16 v1, 0x200

    .line 840
    invoke-virtual {v5, v1}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    .line 842
    move-result v1

    .line 845
    const/16 v3, 0x400

    .line 846
    if-eqz v1, :cond_25

    .line 848
    invoke-virtual {v5, v3}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    .line 850
    move-result v1

    .line 853
    if-nez v1, :cond_25

    .line 854
    :cond_24
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 856
    move-result-object v1

    .line 859
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 860
    move-result-object v3

    .line 863
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 864
    move-result v3

    .line 867
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 868
    move-result-object v4

    .line 871
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 872
    move-result v4

    .line 875
    invoke-virtual {v10, v1, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 876
    :cond_25
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 879
    move-result-object v1

    .line 882
    if-nez v1, :cond_26

    .line 883
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getStartRotation()I

    .line 885
    move-result v1

    .line 888
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    .line 889
    move-result v3

    .line 892
    if-eq v1, v3, :cond_26

    .line 893
    const/4 v4, 0x0

    .line 895
    move-object/from16 v0, p0

    .line 896
    move-object/from16 v1, p3

    .line 898
    move-object v2, v5

    .line 900
    move-object/from16 v3, p2

    .line 901
    move-object v5, v15

    .line 903
    move-object/from16 v8, v18

    .line 904
    move-object/from16 v6, v23

    .line 906
    invoke-virtual/range {v0 .. v6}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->startRotationAnimation(Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;ILjava/util/ArrayList;Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda1;)V

    .line 908
    :goto_18
    move-object v1, v8

    .line 911
    goto :goto_1a

    .line 912
    :cond_26
    move-object/from16 v1, v18

    .line 913
    goto :goto_19

    .line 915
    :cond_27
    move-object v1, v6

    .line 916
    :goto_19
    if-eqz v33, :cond_28

    .line 917
    invoke-static {v0}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    .line 919
    move-result v3

    .line 922
    if-eqz v3, :cond_28

    .line 923
    invoke-static {}, Lcom/android/wm/shell/common/transition/DefaultTransitionStub;->getInstance()Lcom/android/wm/shell/common/transition/DefaultTransitionStub;

    .line 925
    move-result-object v3

    .line 928
    invoke-virtual {v3}, Lcom/android/wm/shell/common/transition/DefaultTransitionStub;->hasBlackCoverLeash()Z

    .line 929
    move-result v3

    .line 932
    if-nez v3, :cond_28

    .line 933
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 935
    move-result-object v0

    .line 938
    invoke-virtual {v10, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 939
    goto :goto_1a

    .line 942
    :cond_28
    const/high16 v3, 0x20000

    .line 943
    invoke-virtual {v5, v3}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    .line 945
    move-result v3

    .line 948
    if-eqz v3, :cond_29

    .line 949
    goto :goto_1a

    .line 951
    :cond_29
    invoke-static {v5, v9}, Landroid/window/TransitionInfo;->isIndependent(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)Z

    .line 952
    move-result v3

    .line 955
    if-nez v3, :cond_2a

    .line 956
    :goto_1a
    move-object/from16 v26, p5

    .line 958
    move-object v4, v1

    .line 960
    move-object v8, v10

    .line 961
    move/from16 v38, v13

    .line 962
    move/from16 v25, v14

    .line 964
    move-object/from16 v36, v15

    .line 966
    goto/16 :goto_3d

    .line 968
    :cond_2a
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    .line 970
    move-result v1

    .line 973
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getFlags()I

    .line 974
    move-result v3

    .line 977
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 978
    move-result v6

    .line 981
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getFlags()I

    .line 982
    move-result v4

    .line 985
    invoke-static {v1}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 986
    move-result v16

    .line 989
    move/from16 v17, v0

    .line 990
    invoke-static {v6}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 992
    move-result v0

    .line 995
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 996
    move-result-object v18

    .line 999
    if-eqz v18, :cond_2b

    .line 1000
    const/16 v18, 0x1

    .line 1002
    goto :goto_1b

    .line 1004
    :cond_2b
    const/16 v18, 0x0

    .line 1005
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getAnimationOptions()Landroid/window/TransitionInfo$AnimationOptions;

    .line 1007
    move-result-object v19

    .line 1010
    if-eqz v19, :cond_2c

    .line 1011
    invoke-virtual/range {v19 .. v19}, Landroid/window/TransitionInfo$AnimationOptions;->getType()I

    .line 1013
    move-result v20

    .line 1016
    goto :goto_1c

    .line 1017
    :cond_2c
    const/16 v20, 0x0

    .line 1018
    :goto_1c
    move-object/from16 v36, v15

    .line 1020
    move/from16 v15, v20

    .line 1022
    invoke-static {v6}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    .line 1024
    move-result v20

    .line 1027
    if-eqz v20, :cond_2e

    .line 1028
    iget v11, v2, Lcom/android/wm/shell/transition/CounterRotatorHelper;->mLastRotationDelta:I

    .line 1030
    if-nez v11, :cond_2d

    .line 1032
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 1034
    move-result-object v11

    .line 1037
    move-object/from16 v37, v8

    .line 1038
    move/from16 v38, v13

    .line 1040
    goto :goto_1d

    .line 1042
    :cond_2d
    new-instance v11, Landroid/graphics/Rect;

    .line 1043
    move-object/from16 v37, v8

    .line 1045
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 1047
    move-result-object v8

    .line 1050
    invoke-direct {v11, v8}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1051
    iget-object v8, v2, Lcom/android/wm/shell/transition/CounterRotatorHelper;->mLastDisplayBounds:Landroid/graphics/Rect;

    .line 1054
    move/from16 v38, v13

    .line 1056
    iget v13, v2, Lcom/android/wm/shell/transition/CounterRotatorHelper;->mLastRotationDelta:I

    .line 1058
    invoke-static {v11, v8, v13}, Landroid/util/RotationUtils;->rotateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 1060
    goto :goto_1d

    .line 1063
    :cond_2e
    move-object/from16 v37, v8

    .line 1064
    move/from16 v38, v13

    .line 1066
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 1068
    move-result-object v11

    .line 1071
    :goto_1d
    invoke-static {}, Lcom/android/wm/shell/common/splitmode/SplitTransitionStub;->getInstance()Lcom/android/wm/shell/common/splitmode/SplitTransitionStub;

    .line 1072
    move-result-object v8

    .line 1075
    invoke-virtual {v8, v1}, Lcom/android/wm/shell/common/splitmode/SplitTransitionStub;->isInSplitMode(I)Z

    .line 1076
    move-result v8

    .line 1079
    iget-object v13, v7, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    .line 1080
    iget-object v10, v7, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mContext:Landroid/content/Context;

    .line 1082
    if-eqz v8, :cond_2f

    .line 1084
    invoke-static {}, Lcom/android/wm/shell/common/splitmode/SplitTransitionStub;->getInstance()Lcom/android/wm/shell/common/splitmode/SplitTransitionStub;

    .line 1086
    move-result-object v0

    .line 1089
    invoke-virtual {v0, v9, v5, v10}, Lcom/android/wm/shell/common/splitmode/SplitTransitionStub;->loadMiuiSplitModeAnimation(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;Landroid/content/Context;)Landroid/view/animation/Animation;

    .line 1090
    move-result-object v0

    .line 1093
    goto/16 :goto_1f

    .line 1094
    :cond_2f
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->isKeyguardGoingAway()Z

    .line 1096
    move-result v8

    .line 1099
    if-eqz v8, :cond_31

    .line 1100
    and-int/lit8 v0, v4, 0x1

    .line 1102
    if-eqz v0, :cond_30

    .line 1104
    const/4 v0, 0x1

    .line 1106
    goto :goto_1e

    .line 1107
    :cond_30
    const/4 v0, 0x0

    .line 1108
    :goto_1e
    invoke-virtual {v13, v3, v0}, Lcom/android/internal/policy/TransitionAnimation;->loadKeyguardExitAnimation(IZ)Landroid/view/animation/Animation;

    .line 1109
    move-result-object v0

    .line 1112
    goto/16 :goto_1f

    .line 1113
    :cond_31
    const/16 v3, 0x9

    .line 1115
    if-ne v1, v3, :cond_32

    .line 1117
    invoke-virtual {v13}, Lcom/android/internal/policy/TransitionAnimation;->loadKeyguardUnoccludeAnimation()Landroid/view/animation/Animation;

    .line 1119
    move-result-object v0

    .line 1122
    goto :goto_1f

    .line 1123
    :cond_32
    and-int/lit8 v3, v4, 0x10

    .line 1124
    if-eqz v3, :cond_34

    .line 1126
    if-eqz v16, :cond_33

    .line 1128
    invoke-virtual {v13, v0}, Lcom/android/internal/policy/TransitionAnimation;->loadVoiceActivityOpenAnimation(Z)Landroid/view/animation/Animation;

    .line 1130
    move-result-object v0

    .line 1133
    goto :goto_1f

    .line 1134
    :cond_33
    invoke-virtual {v13, v0}, Lcom/android/internal/policy/TransitionAnimation;->loadVoiceActivityExitAnimation(Z)Landroid/view/animation/Animation;

    .line 1135
    move-result-object v0

    .line 1138
    goto :goto_1f

    .line 1139
    :cond_34
    const/high16 v3, 0x3f800000    # 1.0f

    .line 1140
    const/4 v8, 0x6

    .line 1142
    if-ne v6, v8, :cond_37

    .line 1143
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1145
    move-result-object v0

    .line 1148
    if-eqz v0, :cond_35

    .line 1149
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1151
    move-result-object v0

    .line 1154
    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 1155
    move-result v0

    .line 1158
    const/4 v1, 0x5

    .line 1159
    if-ne v0, v1, :cond_35

    .line 1160
    move-object/from16 v40, v2

    .line 1162
    move-object/from16 v39, v10

    .line 1164
    move/from16 v2, v17

    .line 1166
    move-object v10, v5

    .line 1168
    goto/16 :goto_22

    .line 1169
    :cond_35
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1171
    move-result-object v0

    .line 1174
    if-eqz v0, :cond_36

    .line 1175
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1177
    move-result-object v0

    .line 1180
    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    .line 1181
    move-result v0

    .line 1184
    const/4 v1, 0x2

    .line 1185
    if-ne v0, v1, :cond_36

    .line 1186
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .line 1188
    invoke-direct {v0, v3, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1190
    const-wide/16 v3, 0x32

    .line 1193
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1195
    goto :goto_1f

    .line 1198
    :cond_36
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .line 1199
    invoke-direct {v0, v3, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1201
    const-wide/16 v3, 0x150

    .line 1204
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1206
    goto :goto_1f

    .line 1209
    :cond_37
    const/4 v8, 0x5

    .line 1210
    if-ne v1, v8, :cond_38

    .line 1211
    iget-object v0, v7, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mInsets:Landroid/graphics/Rect;

    .line 1213
    invoke-virtual {v13, v11, v0, v11}, Lcom/android/internal/policy/TransitionAnimation;->createRelaunchAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    .line 1215
    move-result-object v0

    .line 1218
    :goto_1f
    move-object/from16 v40, v2

    .line 1219
    move-object/from16 v39, v10

    .line 1221
    move/from16 v2, v17

    .line 1223
    move-object v10, v5

    .line 1225
    goto/16 :goto_25

    .line 1226
    :cond_38
    const/4 v8, 0x1

    .line 1228
    if-ne v15, v8, :cond_3c

    .line 1229
    if-eqz v18, :cond_39

    .line 1231
    invoke-virtual/range {v19 .. v19}, Landroid/window/TransitionInfo$AnimationOptions;->getOverrideTaskTransition()Z

    .line 1233
    move-result v8

    .line 1236
    if-eqz v8, :cond_3c

    .line 1237
    :cond_39
    invoke-virtual/range {v19 .. v19}, Landroid/window/TransitionInfo$AnimationOptions;->getPackageName()Ljava/lang/String;

    .line 1239
    move-result-object v1

    .line 1242
    if-eqz v0, :cond_3a

    .line 1243
    invoke-virtual/range {v19 .. v19}, Landroid/window/TransitionInfo$AnimationOptions;->getEnterResId()I

    .line 1245
    move-result v0

    .line 1248
    goto :goto_20

    .line 1249
    :cond_3a
    invoke-virtual/range {v19 .. v19}, Landroid/window/TransitionInfo$AnimationOptions;->getExitResId()I

    .line 1250
    move-result v0

    .line 1253
    :goto_20
    invoke-virtual {v13, v1, v0}, Lcom/android/internal/policy/TransitionAnimation;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    .line 1254
    move-result-object v4

    .line 1257
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getFloatWindowTaskScale()F

    .line 1258
    move-result v0

    .line 1261
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getFloatWindowActivityRecordScale()F

    .line 1262
    move-result v1

    .line 1265
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    .line 1266
    move-result v0

    .line 1269
    cmpg-float v0, v0, v3

    .line 1270
    if-gez v0, :cond_3b

    .line 1272
    const/4 v0, 0x1

    .line 1274
    goto :goto_21

    .line 1275
    :cond_3b
    const/4 v0, 0x0

    .line 1276
    :goto_21
    move v8, v0

    .line 1277
    invoke-static {}, Lcom/android/wm/shell/common/transition/DefaultTransitionStub;->getInstance()Lcom/android/wm/shell/common/transition/DefaultTransitionStub;

    .line 1278
    move-result-object v0

    .line 1281
    iget-object v1, v7, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mContext:Landroid/content/Context;

    .line 1282
    move/from16 v15, v17

    .line 1284
    move-object v3, v2

    .line 1286
    move-object v2, v4

    .line 1287
    move-object v4, v3

    .line 1288
    move-object/from16 v3, p2

    .line 1289
    move-object/from16 v39, v10

    .line 1291
    move-object v10, v4

    .line 1293
    move-object v4, v5

    .line 1294
    move-object/from16 v40, v10

    .line 1295
    move-object v10, v5

    .line 1297
    move v5, v8

    .line 1298
    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/common/transition/DefaultTransitionStub;->updateAnimationIfNeed(Landroid/content/Context;Landroid/view/animation/Animation;Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;Z)Landroid/view/animation/Animation;

    .line 1299
    move-result-object v0

    .line 1302
    move v2, v15

    .line 1303
    goto/16 :goto_25

    .line 1304
    :cond_3c
    move-object/from16 v40, v2

    .line 1306
    move-object/from16 v39, v10

    .line 1308
    move/from16 v2, v17

    .line 1310
    move-object v10, v5

    .line 1312
    const/16 v3, 0xc

    .line 1313
    if-ne v15, v3, :cond_3d

    .line 1315
    if-eqz v0, :cond_3d

    .line 1317
    invoke-virtual {v13}, Lcom/android/internal/policy/TransitionAnimation;->loadCrossProfileAppEnterAnimation()Landroid/view/animation/Animation;

    .line 1319
    move-result-object v0

    .line 1322
    goto/16 :goto_25

    .line 1323
    :cond_3d
    const/16 v3, 0xb

    .line 1325
    if-ne v15, v3, :cond_3e

    .line 1327
    invoke-virtual/range {v19 .. v19}, Landroid/window/TransitionInfo$AnimationOptions;->getTransitionBounds()Landroid/graphics/Rect;

    .line 1329
    move-result-object v22

    .line 1332
    move-object/from16 v16, v13

    .line 1333
    move/from16 v17, v1

    .line 1335
    move/from16 v18, v14

    .line 1337
    move/from16 v19, v0

    .line 1339
    move-object/from16 v20, v11

    .line 1341
    move-object/from16 v21, v11

    .line 1343
    invoke-virtual/range {v16 .. v22}, Lcom/android/internal/policy/TransitionAnimation;->createClipRevealAnimationLocked(IIZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    .line 1345
    move-result-object v0

    .line 1348
    goto/16 :goto_25

    .line 1349
    :cond_3e
    const/4 v3, 0x2

    .line 1351
    if-ne v15, v3, :cond_3f

    .line 1352
    invoke-virtual/range {v19 .. v19}, Landroid/window/TransitionInfo$AnimationOptions;->getTransitionBounds()Landroid/graphics/Rect;

    .line 1354
    move-result-object v21

    .line 1357
    move-object/from16 v16, v13

    .line 1358
    move/from16 v17, v1

    .line 1360
    move/from16 v18, v14

    .line 1362
    move/from16 v19, v0

    .line 1364
    move-object/from16 v20, v11

    .line 1366
    invoke-virtual/range {v16 .. v21}, Lcom/android/internal/policy/TransitionAnimation;->createScaleUpAnimationLocked(IIZLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    .line 1368
    move-result-object v0

    .line 1371
    goto :goto_25

    .line 1372
    :cond_3f
    const/4 v3, 0x3

    .line 1373
    if-eq v15, v3, :cond_44

    .line 1374
    const/4 v3, 0x4

    .line 1376
    if-ne v15, v3, :cond_40

    .line 1377
    goto :goto_23

    .line 1379
    :cond_40
    and-int/lit8 v0, v4, 0x8

    .line 1380
    if-eqz v0, :cond_41

    .line 1382
    if-eqz v16, :cond_41

    .line 1384
    goto :goto_22

    .line 1386
    :cond_41
    if-eqz v19, :cond_42

    .line 1387
    invoke-static {}, Lcom/android/wm/shell/common/transition/DefaultTransitionStub;->getInstance()Lcom/android/wm/shell/common/transition/DefaultTransitionStub;

    .line 1389
    move-result-object v0

    .line 1392
    invoke-virtual/range {v19 .. v19}, Landroid/window/TransitionInfo$AnimationOptions;->getCustomTypeForScale()I

    .line 1393
    move-result v1

    .line 1396
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/transition/DefaultTransitionStub;->isScaleType(I)Z

    .line 1397
    move-result v0

    .line 1400
    if-eqz v0, :cond_42

    .line 1401
    invoke-static {}, Lcom/android/wm/shell/common/transition/DefaultTransitionStub;->getInstance()Lcom/android/wm/shell/common/transition/DefaultTransitionStub;

    .line 1403
    move-result-object v0

    .line 1406
    invoke-virtual {v0, v9, v10}, Lcom/android/wm/shell/common/transition/DefaultTransitionStub;->loadScaleAnimation(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;)Landroid/view/animation/Animation;

    .line 1407
    move-result-object v0

    .line 1410
    goto :goto_25

    .line 1411
    :cond_42
    const/4 v0, 0x5

    .line 1412
    if-ne v15, v0, :cond_43

    .line 1413
    :goto_22
    const/4 v0, 0x0

    .line 1415
    goto :goto_27

    .line 1416
    :cond_43
    invoke-static {v9, v10, v14, v13, v12}, Lcom/android/wm/shell/transition/TransitionAnimationHelper;->loadAttributeAnimation(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;ILcom/android/internal/policy/TransitionAnimation;Z)Landroid/view/animation/Animation;

    .line 1417
    move-result-object v0

    .line 1420
    goto :goto_25

    .line 1421
    :cond_44
    :goto_23
    const/4 v3, 0x3

    .line 1422
    if-ne v15, v3, :cond_45

    .line 1423
    const/4 v3, 0x1

    .line 1425
    goto :goto_24

    .line 1426
    :cond_45
    const/4 v3, 0x0

    .line 1427
    :goto_24
    move/from16 v26, v3

    .line 1428
    invoke-virtual/range {v19 .. v19}, Landroid/window/TransitionInfo$AnimationOptions;->getThumbnail()Landroid/hardware/HardwareBuffer;

    .line 1430
    move-result-object v30

    .line 1433
    invoke-virtual/range {v19 .. v19}, Landroid/window/TransitionInfo$AnimationOptions;->getTransitionBounds()Landroid/graphics/Rect;

    .line 1434
    move-result-object v31

    .line 1437
    move-object/from16 v24, v13

    .line 1438
    move/from16 v25, v0

    .line 1440
    move-object/from16 v27, v11

    .line 1442
    move/from16 v28, v1

    .line 1444
    move/from16 v29, v14

    .line 1446
    invoke-virtual/range {v24 .. v31}, Lcom/android/internal/policy/TransitionAnimation;->createThumbnailEnterExitAnimationLocked(ZZLandroid/graphics/Rect;IILandroid/hardware/HardwareBuffer;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    .line 1448
    move-result-object v0

    .line 1451
    :goto_25
    if-eqz v0, :cond_48

    .line 1452
    invoke-virtual {v0}, Landroid/view/animation/Animation;->isInitialized()Z

    .line 1454
    move-result v1

    .line 1457
    if-nez v1, :cond_47

    .line 1458
    invoke-static {v6}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    .line 1460
    move-result v1

    .line 1463
    if-eqz v1, :cond_46

    .line 1464
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 1466
    move-result-object v1

    .line 1469
    goto :goto_26

    .line 1470
    :cond_46
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 1471
    move-result-object v1

    .line 1474
    :goto_26
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 1475
    move-result v3

    .line 1478
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 1479
    move-result v1

    .line 1482
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    .line 1483
    move-result v4

    .line 1486
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    .line 1487
    move-result v5

    .line 1490
    invoke-virtual {v0, v3, v1, v4, v5}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 1491
    :cond_47
    const-wide/16 v3, 0xbb8

    .line 1494
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 1496
    invoke-static {}, Lcom/android/wm/shell/common/transition/DefaultTransitionStub;->getInstance()Lcom/android/wm/shell/common/transition/DefaultTransitionStub;

    .line 1499
    move-result-object v1

    .line 1502
    iget v3, v7, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransitionAnimationScaleSetting:F

    .line 1503
    invoke-virtual {v1, v9, v3}, Lcom/android/wm/shell/common/transition/DefaultTransitionStub;->getScaleCurrentDuration(Landroid/window/TransitionInfo;F)F

    .line 1505
    move-result v1

    .line 1508
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 1509
    :cond_48
    :goto_27
    move-object v6, v0

    .line 1512
    if-eqz v6, :cond_70

    .line 1513
    if-eqz v34, :cond_52

    .line 1515
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getFlags()I

    .line 1517
    move-result v0

    .line 1520
    const/4 v1, 0x4

    .line 1521
    and-int/2addr v0, v1

    .line 1522
    if-eqz v0, :cond_49

    .line 1523
    const/4 v0, 0x1

    .line 1525
    goto :goto_28

    .line 1526
    :cond_49
    const/4 v0, 0x0

    .line 1527
    :goto_28
    if-nez v0, :cond_4e

    .line 1528
    const/4 v0, 0x1

    .line 1530
    if-eq v2, v0, :cond_4b

    .line 1531
    const/4 v0, 0x2

    .line 1533
    if-eq v2, v0, :cond_4b

    .line 1534
    const/4 v0, 0x3

    .line 1536
    if-eq v2, v0, :cond_4b

    .line 1537
    if-ne v2, v1, :cond_4a

    .line 1539
    goto :goto_29

    .line 1541
    :cond_4a
    const/4 v0, 0x0

    .line 1542
    goto :goto_2a

    .line 1543
    :cond_4b
    :goto_29
    const/4 v0, 0x1

    .line 1544
    :goto_2a
    if-eqz v0, :cond_4e

    .line 1545
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    .line 1547
    move-result v0

    .line 1550
    const/4 v1, 0x1

    .line 1551
    if-eq v0, v1, :cond_4d

    .line 1552
    const/4 v1, 0x2

    .line 1554
    if-eq v0, v1, :cond_4d

    .line 1555
    const/4 v1, 0x3

    .line 1557
    if-eq v0, v1, :cond_4d

    .line 1558
    const/4 v1, 0x4

    .line 1560
    if-ne v0, v1, :cond_4c

    .line 1561
    goto :goto_2b

    .line 1563
    :cond_4c
    const/4 v0, 0x0

    .line 1564
    goto :goto_2c

    .line 1565
    :cond_4d
    :goto_2b
    const/4 v0, 0x1

    .line 1566
    :goto_2c
    if-eqz v0, :cond_4e

    .line 1567
    if-nez v14, :cond_4e

    .line 1569
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    .line 1571
    move-result-object v0

    .line 1574
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    .line 1575
    move-result-object v0

    .line 1578
    const v1, 0x106029d    # @android:color/perms_dangerous_grp_color

    .line 1579
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    .line 1582
    move-result v0

    .line 1585
    move/from16 v32, v0

    .line 1586
    :cond_4e
    const/4 v0, 0x1

    .line 1588
    if-ne v14, v0, :cond_50

    .line 1589
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    .line 1591
    move-result v0

    .line 1594
    invoke-static {v0}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 1595
    move-result v0

    .line 1598
    if-eqz v0, :cond_50

    .line 1599
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 1601
    move-result-object v0

    .line 1604
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 1605
    move-result v0

    .line 1608
    add-int/lit8 v1, v0, 0x1

    .line 1609
    invoke-static {v2}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 1611
    move-result v3

    .line 1614
    if-eqz v3, :cond_4f

    .line 1615
    sub-int v1, v1, v35

    .line 1617
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 1619
    move-result-object v0

    .line 1622
    move-object/from16 v8, p3

    .line 1623
    move-object/from16 v3, v39

    .line 1625
    invoke-virtual {v8, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 1627
    goto/16 :goto_2d

    .line 1630
    :cond_4f
    move-object/from16 v8, p3

    .line 1632
    move-object/from16 v3, v39

    .line 1634
    invoke-static {v2}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    .line 1636
    move-result v4

    .line 1639
    if-eqz v4, :cond_53

    .line 1640
    add-int/2addr v1, v0

    .line 1642
    sub-int v1, v1, v35

    .line 1643
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 1645
    move-result-object v0

    .line 1648
    invoke-virtual {v8, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 1649
    goto :goto_2d

    .line 1652
    :cond_50
    move-object/from16 v8, p3

    .line 1653
    move-object/from16 v3, v39

    .line 1655
    if-eqz v38, :cond_51

    .line 1657
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    .line 1659
    move-result v0

    .line 1662
    invoke-static {v0}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 1663
    move-result v0

    .line 1666
    if-eqz v0, :cond_51

    .line 1667
    invoke-static {v2}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    .line 1669
    move-result v0

    .line 1672
    if-eqz v0, :cond_51

    .line 1673
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 1675
    move-result-object v0

    .line 1678
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 1679
    move-result v0

    .line 1682
    add-int/lit8 v1, v0, 0x1

    .line 1683
    add-int/2addr v1, v0

    .line 1685
    sub-int v1, v1, v35

    .line 1686
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 1688
    move-result-object v0

    .line 1691
    invoke-virtual {v8, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 1692
    goto :goto_2d

    .line 1695
    :cond_51
    invoke-virtual {v6}, Landroid/view/animation/Animation;->getZAdjustment()I

    .line 1696
    move-result v0

    .line 1699
    const/4 v1, 0x1

    .line 1700
    if-ne v0, v1, :cond_53

    .line 1701
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->isAllowModifyAnimation()Z

    .line 1703
    move-result v0

    .line 1706
    if-eqz v0, :cond_53

    .line 1707
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    .line 1709
    move-result v0

    .line 1712
    invoke-static {v0}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    .line 1713
    move-result v0

    .line 1716
    if-eqz v0, :cond_53

    .line 1717
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 1719
    move-result-object v0

    .line 1722
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 1723
    move-result v0

    .line 1726
    add-int/lit8 v4, v0, 0x1

    .line 1727
    add-int/2addr v4, v0

    .line 1729
    add-int/2addr v4, v1

    .line 1730
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 1731
    move-result-object v0

    .line 1734
    invoke-virtual {v8, v0, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 1735
    goto :goto_2d

    .line 1738
    :cond_52
    move-object/from16 v8, p3

    .line 1739
    move-object/from16 v3, v39

    .line 1741
    :cond_53
    :goto_2d
    move/from16 v0, v32

    .line 1743
    invoke-virtual {v6}, Landroid/view/animation/Animation;->hasRoundedCorners()Z

    .line 1745
    move-result v1

    .line 1748
    if-eqz v1, :cond_55

    .line 1749
    if-eqz v34, :cond_55

    .line 1751
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1753
    move-result-object v1

    .line 1756
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 1757
    move-object/from16 v4, v37

    .line 1759
    invoke-virtual {v4, v1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayContext(I)Landroid/content/Context;

    .line 1761
    move-result-object v1

    .line 1764
    if-eqz v1, :cond_57

    .line 1765
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->isInNoAnimationDisplay()Z

    .line 1767
    move-result v4

    .line 1770
    if-eqz v4, :cond_54

    .line 1771
    goto :goto_2e

    .line 1773
    :cond_54
    invoke-static {v1}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getMiuiWindowCornerRadius(Landroid/content/Context;)F

    .line 1774
    move-result v1

    .line 1777
    goto :goto_2f

    .line 1778
    :cond_55
    invoke-virtual {v6}, Landroid/view/animation/Animation;->hasRoundedCorners()Z

    .line 1779
    move-result v1

    .line 1782
    if-eqz v1, :cond_57

    .line 1783
    if-nez v34, :cond_57

    .line 1785
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    .line 1787
    move-result v1

    .line 1790
    const/4 v4, 0x1

    .line 1791
    if-eq v1, v4, :cond_56

    .line 1792
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    .line 1794
    move-result v1

    .line 1797
    const/4 v4, 0x2

    .line 1798
    if-ne v1, v4, :cond_57

    .line 1799
    :cond_56
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getWindowCornerRadius()F

    .line 1801
    move-result v1

    .line 1804
    goto :goto_2f

    .line 1805
    :cond_57
    :goto_2e
    const/4 v1, 0x0

    .line 1806
    :goto_2f
    move v11, v1

    .line 1807
    invoke-static {v9, v10, v6, v0}, Lcom/android/wm/shell/transition/TransitionAnimationHelper;->getTransitionBackgroundColorIfSet(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;Landroid/view/animation/Animation;I)I

    .line 1808
    move-result v24

    .line 1811
    if-nez v34, :cond_59

    .line 1812
    invoke-virtual {v6}, Landroid/view/animation/Animation;->hasExtension()Z

    .line 1814
    move-result v0

    .line 1817
    if-eqz v0, :cond_59

    .line 1818
    invoke-static {v2}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 1820
    move-result v0

    .line 1823
    if-nez v0, :cond_58

    .line 1824
    move-object/from16 v5, p4

    .line 1826
    invoke-static {v10, v6, v8, v5}, Lcom/android/wm/shell/transition/TransitionAnimationHelper;->edgeExtendWindow(Landroid/window/TransitionInfo$Change;Landroid/view/animation/Animation;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    .line 1828
    goto :goto_30

    .line 1831
    :cond_58
    move-object/from16 v5, p4

    .line 1832
    new-instance v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda2;

    .line 1834
    invoke-direct {v0, v10, v6, v5}, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda2;-><init>(Landroid/window/TransitionInfo$Change;Landroid/view/animation/Animation;Landroid/view/SurfaceControl$Transaction;)V

    .line 1836
    move-object/from16 v4, p5

    .line 1839
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1841
    goto :goto_31

    .line 1844
    :cond_59
    move-object/from16 v5, p4

    .line 1845
    :goto_30
    move-object/from16 v4, p5

    .line 1847
    :goto_31
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    .line 1849
    move-result v0

    .line 1852
    const/4 v1, 0x1

    .line 1853
    if-eq v0, v1, :cond_5b

    .line 1854
    const/4 v1, 0x3

    .line 1856
    if-eq v0, v1, :cond_5b

    .line 1857
    const/4 v1, 0x2

    .line 1859
    if-eq v0, v1, :cond_5b

    .line 1860
    const/4 v1, 0x4

    .line 1862
    if-ne v0, v1, :cond_5a

    .line 1863
    goto :goto_32

    .line 1865
    :cond_5a
    const/4 v0, 0x0

    .line 1866
    goto :goto_33

    .line 1867
    :cond_5b
    const/4 v0, 0x4

    .line 1868
    move v1, v0

    .line 1869
    :goto_32
    const/4 v0, 0x1

    .line 1870
    :goto_33
    if-eqz v0, :cond_5e

    .line 1871
    invoke-virtual {v10, v1}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    .line 1873
    move-result v0

    .line 1876
    if-nez v0, :cond_5e

    .line 1877
    instance-of v0, v6, Landroid/view/animation/AnimationSet;

    .line 1879
    if-eqz v0, :cond_5d

    .line 1881
    move-object v0, v6

    .line 1883
    check-cast v0, Landroid/view/animation/AnimationSet;

    .line 1884
    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    .line 1886
    move-result-object v0

    .line 1889
    if-eqz v0, :cond_5e

    .line 1890
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 1892
    move-result v1

    .line 1895
    if-lez v1, :cond_5e

    .line 1896
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1898
    move-result-object v0

    .line 1901
    :goto_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1902
    move-result v1

    .line 1905
    if-eqz v1, :cond_5e

    .line 1906
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1908
    move-result-object v1

    .line 1911
    check-cast v1, Landroid/view/animation/Animation;

    .line 1912
    iget-object v15, v7, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mAnimationDimmer:Landroid/view/animation/Animation;

    .line 1914
    if-eqz v15, :cond_5c

    .line 1916
    goto :goto_35

    .line 1918
    :cond_5c
    invoke-static {}, Lcom/android/wm/shell/common/transition/DefaultTransitionStub;->getInstance()Lcom/android/wm/shell/common/transition/DefaultTransitionStub;

    .line 1919
    move-result-object v15

    .line 1922
    move-object/from16 p5, v0

    .line 1923
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 1925
    move-result-object v0

    .line 1928
    invoke-virtual {v15, v1, v0, v8}, Lcom/android/wm/shell/common/transition/DefaultTransitionStub;->dimAnimationDimmerAboveIfNeeded(Landroid/view/animation/Animation;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)Landroid/view/animation/Animation;

    .line 1929
    move-result-object v0

    .line 1932
    iput-object v0, v7, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mAnimationDimmer:Landroid/view/animation/Animation;

    .line 1933
    move-object/from16 v0, p5

    .line 1935
    goto :goto_34

    .line 1937
    :cond_5d
    invoke-static {}, Lcom/android/wm/shell/common/transition/DefaultTransitionStub;->getInstance()Lcom/android/wm/shell/common/transition/DefaultTransitionStub;

    .line 1938
    move-result-object v0

    .line 1941
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 1942
    move-result-object v1

    .line 1945
    invoke-virtual {v0, v6, v1, v8}, Lcom/android/wm/shell/common/transition/DefaultTransitionStub;->dimAnimationDimmerAboveIfNeeded(Landroid/view/animation/Animation;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)Landroid/view/animation/Animation;

    .line 1946
    move-result-object v0

    .line 1949
    iput-object v0, v7, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mAnimationDimmer:Landroid/view/animation/Animation;

    .line 1950
    :cond_5e
    :goto_35
    if-nez v34, :cond_62

    .line 1952
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    .line 1954
    move-result v0

    .line 1957
    const/4 v1, 0x1

    .line 1958
    if-eq v0, v1, :cond_5f

    .line 1959
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    .line 1961
    move-result v0

    .line 1964
    const/4 v1, 0x2

    .line 1965
    if-ne v0, v1, :cond_62

    .line 1966
    :cond_5f
    const/4 v0, 0x4

    .line 1968
    invoke-virtual {v10, v0}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    .line 1969
    move-result v0

    .line 1972
    if-eqz v0, :cond_62

    .line 1973
    instance-of v0, v6, Landroid/view/animation/AnimationSet;

    .line 1975
    if-eqz v0, :cond_61

    .line 1977
    move-object v0, v6

    .line 1979
    check-cast v0, Landroid/view/animation/AnimationSet;

    .line 1980
    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    .line 1982
    move-result-object v0

    .line 1985
    if-eqz v0, :cond_62

    .line 1986
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 1988
    move-result v1

    .line 1991
    if-lez v1, :cond_62

    .line 1992
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1994
    move-result-object v0

    .line 1997
    :goto_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1998
    move-result v1

    .line 2001
    if-eqz v1, :cond_62

    .line 2002
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2004
    move-result-object v1

    .line 2007
    check-cast v1, Landroid/view/animation/Animation;

    .line 2008
    iget-object v15, v7, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mAnimationDimmer:Landroid/view/animation/Animation;

    .line 2010
    if-eqz v15, :cond_60

    .line 2012
    goto :goto_37

    .line 2014
    :cond_60
    invoke-static {}, Lcom/android/wm/shell/common/transition/DefaultTransitionStub;->getInstance()Lcom/android/wm/shell/common/transition/DefaultTransitionStub;

    .line 2015
    move-result-object v15

    .line 2018
    move-object/from16 p5, v0

    .line 2019
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    .line 2021
    move-result-object v0

    .line 2024
    invoke-virtual {v15, v1, v8, v0}, Lcom/android/wm/shell/common/transition/DefaultTransitionStub;->dimAnimationDimmerBelowIfNeeded(Landroid/view/animation/Animation;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)Landroid/view/animation/Animation;

    .line 2025
    move-result-object v0

    .line 2028
    iput-object v0, v7, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mAnimationDimmer:Landroid/view/animation/Animation;

    .line 2029
    move-object/from16 v0, p5

    .line 2031
    goto :goto_36

    .line 2033
    :cond_61
    invoke-static {}, Lcom/android/wm/shell/common/transition/DefaultTransitionStub;->getInstance()Lcom/android/wm/shell/common/transition/DefaultTransitionStub;

    .line 2034
    move-result-object v0

    .line 2037
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    .line 2038
    move-result-object v1

    .line 2041
    invoke-virtual {v0, v6, v8, v1}, Lcom/android/wm/shell/common/transition/DefaultTransitionStub;->dimAnimationDimmerBelowIfNeeded(Landroid/view/animation/Animation;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)Landroid/view/animation/Animation;

    .line 2042
    move-result-object v0

    .line 2045
    iput-object v0, v7, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mAnimationDimmer:Landroid/view/animation/Animation;

    .line 2046
    :cond_62
    :goto_37
    invoke-static {}, Lcom/android/wm/shell/common/transition/DefaultTransitionStub;->getInstance()Lcom/android/wm/shell/common/transition/DefaultTransitionStub;

    .line 2048
    move-result-object v0

    .line 2051
    invoke-virtual {v0, v9, v10, v8}, Lcom/android/wm/shell/common/transition/DefaultTransitionStub;->prepareScaleAnimation(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;)V

    .line 2052
    invoke-static {v2}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    .line 2055
    move-result v0

    .line 2058
    if-eqz v0, :cond_64

    .line 2059
    new-instance v0, Landroid/graphics/Rect;

    .line 2061
    move-object/from16 v2, v40

    .line 2063
    iget v1, v2, Lcom/android/wm/shell/transition/CounterRotatorHelper;->mLastRotationDelta:I

    .line 2065
    if-nez v1, :cond_63

    .line 2067
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 2069
    move-result-object v1

    .line 2072
    goto :goto_38

    .line 2073
    :cond_63
    new-instance v1, Landroid/graphics/Rect;

    .line 2074
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 2076
    move-result-object v15

    .line 2079
    invoke-direct {v1, v15}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2080
    iget-object v15, v2, Lcom/android/wm/shell/transition/CounterRotatorHelper;->mLastDisplayBounds:Landroid/graphics/Rect;

    .line 2083
    iget v2, v2, Lcom/android/wm/shell/transition/CounterRotatorHelper;->mLastRotationDelta:I

    .line 2085
    invoke-static {v1, v15, v2}, Landroid/util/RotationUtils;->rotateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 2087
    :goto_38
    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2090
    goto :goto_39

    .line 2093
    :cond_64
    new-instance v0, Landroid/graphics/Rect;

    .line 2094
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 2096
    move-result-object v1

    .line 2099
    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2100
    :goto_39
    const/4 v1, 0x0

    .line 2103
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 2104
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 2107
    move-result v1

    .line 2110
    const/4 v2, 0x6

    .line 2111
    if-ne v1, v2, :cond_65

    .line 2112
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2114
    move-result-object v1

    .line 2117
    if-eqz v1, :cond_65

    .line 2118
    invoke-static {}, Lcom/android/wm/shell/sosc/SoScUtils;->getInstance()Lcom/android/wm/shell/sosc/SoScUtils;

    .line 2120
    move-result-object v1

    .line 2123
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2124
    move-result-object v2

    .line 2127
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/sosc/SoScUtils;->needAdjustSurfaceForMinimizedMode(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 2128
    move-result v1

    .line 2131
    if-eqz v1, :cond_65

    .line 2132
    invoke-static {}, Lcom/android/wm/shell/sosc/SoScUtils;->getInstance()Lcom/android/wm/shell/sosc/SoScUtils;

    .line 2134
    move-result-object v1

    .line 2137
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2138
    move-result-object v2

    .line 2141
    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 2142
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/sosc/SoScUtils;->isSoScRootTask(I)Z

    .line 2144
    move-result v1

    .line 2147
    if-eqz v1, :cond_65

    .line 2148
    invoke-static {}, Lcom/android/wm/shell/sosc/SoScUtils;->getInstance()Lcom/android/wm/shell/sosc/SoScUtils;

    .line 2150
    move-result-object v1

    .line 2153
    invoke-virtual {v1}, Lcom/android/wm/shell/sosc/SoScUtils;->getMinimizedPoint()Landroid/graphics/Point;

    .line 2154
    move-result-object v1

    .line 2157
    iget v2, v1, Landroid/graphics/Point;->x:I

    .line 2158
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 2160
    invoke-virtual {v10, v2, v1}, Landroid/window/TransitionInfo$Change;->setEndRelOffset(II)V

    .line 2162
    :cond_65
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 2165
    move-result-object v16

    .line 2168
    iget-object v1, v7, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 2169
    iget-object v2, v7, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 2171
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    .line 2173
    move-result-object v20

    .line 2176
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->isInMiuiSizeCompatMode()Z

    .line 2177
    move-result v15

    .line 2180
    if-eqz v15, :cond_66

    .line 2181
    const/4 v0, 0x0

    .line 2183
    :cond_66
    move-object/from16 v22, v0

    .line 2184
    move/from16 v25, v14

    .line 2186
    move-object/from16 v14, v36

    .line 2188
    move-object/from16 v0, v36

    .line 2190
    move-object v15, v6

    .line 2192
    move-object/from16 v17, v23

    .line 2193
    move-object/from16 v18, v1

    .line 2195
    move-object/from16 v19, v2

    .line 2197
    move/from16 v21, v11

    .line 2199
    invoke-static/range {v14 .. v22}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->buildSurfaceAnimation(Ljava/util/ArrayList;Landroid/view/animation/Animation;Landroid/view/SurfaceControl;Ljava/lang/Runnable;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Landroid/graphics/Point;FLandroid/graphics/Rect;)V

    .line 2201
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getAnimationOptions()Landroid/window/TransitionInfo$AnimationOptions;

    .line 2204
    move-result-object v1

    .line 2207
    if-eqz v1, :cond_6e

    .line 2208
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getAnimationOptions()Landroid/window/TransitionInfo$AnimationOptions;

    .line 2210
    move-result-object v14

    .line 2213
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 2214
    move-result v1

    .line 2217
    invoke-static {v1}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 2218
    move-result v1

    .line 2221
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 2222
    move-result v2

    .line 2225
    invoke-static {v2}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    .line 2226
    move-result v2

    .line 2229
    if-eqz v1, :cond_6d

    .line 2230
    invoke-virtual {v14}, Landroid/window/TransitionInfo$AnimationOptions;->getType()I

    .line 2232
    move-result v1

    .line 2235
    const/16 v2, 0xc

    .line 2236
    if-ne v1, v2, :cond_6c

    .line 2238
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 2240
    move-result-object v1

    .line 2243
    const/16 v2, 0x1000

    .line 2244
    invoke-virtual {v10, v2}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    .line 2246
    move-result v2

    .line 2249
    if-eqz v2, :cond_67

    .line 2250
    const v2, 0x1080333    # @android:drawable/ic_alert_window_layer

    .line 2252
    invoke-virtual {v3, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 2255
    move-result-object v2

    .line 2258
    goto :goto_3a

    .line 2259
    :cond_67
    const/16 v2, 0x2000

    .line 2260
    invoke-virtual {v10, v2}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    .line 2262
    move-result v2

    .line 2265
    if-eqz v2, :cond_68

    .line 2266
    iget-object v2, v7, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mEnterpriseThumbnailDrawable:Landroid/graphics/drawable/Drawable;

    .line 2268
    goto :goto_3a

    .line 2270
    :cond_68
    const/4 v2, 0x0

    .line 2271
    :goto_3a
    if-nez v2, :cond_69

    .line 2272
    goto/16 :goto_3b

    .line 2274
    :cond_69
    invoke-virtual {v13, v2, v1}, Lcom/android/internal/policy/TransitionAnimation;->createCrossProfileAppsThumbnail(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)Landroid/hardware/HardwareBuffer;

    .line 2276
    move-result-object v2

    .line 2279
    if-nez v2, :cond_6a

    .line 2280
    goto/16 :goto_3b

    .line 2282
    :cond_6a
    iget-object v3, v7, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 2284
    invoke-virtual {v3}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    .line 2286
    move-result-object v3

    .line 2289
    iget-object v14, v7, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 2290
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 2292
    move-result-object v15

    .line 2295
    invoke-static {v14, v15, v2, v3}, Lcom/android/wm/shell/transition/WindowThumbnail;->createAndAttach(Landroid/view/SurfaceSession;Landroid/view/SurfaceControl;Landroid/hardware/HardwareBuffer;Landroid/view/SurfaceControl$Transaction;)Lcom/android/wm/shell/transition/WindowThumbnail;

    .line 2296
    move-result-object v14

    .line 2299
    invoke-virtual {v13, v1}, Lcom/android/internal/policy/TransitionAnimation;->createCrossProfileAppsThumbnailAnimationLocked(Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    .line 2300
    move-result-object v15

    .line 2303
    if-nez v15, :cond_6b

    .line 2304
    goto/16 :goto_3b

    .line 2306
    :cond_6b
    new-instance v17, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda7;

    .line 2308
    const/4 v13, 0x1

    .line 2310
    move-object v2, v0

    .line 2311
    move-object/from16 v0, v17

    .line 2312
    move-object/from16 v1, p0

    .line 2314
    move-object/from16 v36, v2

    .line 2316
    move-object v2, v14

    .line 2318
    move-object/from16 v26, v4

    .line 2319
    move-object/from16 v4, v23

    .line 2321
    move v5, v13

    .line 2323
    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda7;-><init>(Lcom/android/wm/shell/transition/DefaultTransitionHandler;Lcom/android/wm/shell/transition/WindowThumbnail;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda1;I)V

    .line 2324
    const-wide/16 v0, 0xbb8

    .line 2327
    invoke-virtual {v15, v0, v1}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 2329
    iget v0, v7, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransitionAnimationScaleSetting:F

    .line 2332
    invoke-virtual {v15, v0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 2334
    iget-object v0, v14, Lcom/android/wm/shell/transition/WindowThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 2337
    iget-object v1, v7, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 2339
    iget-object v2, v7, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 2341
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    .line 2343
    move-result-object v20

    .line 2346
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 2347
    move-result-object v22

    .line 2350
    move-object/from16 v14, v36

    .line 2351
    move-object/from16 v16, v0

    .line 2353
    move-object/from16 v18, v1

    .line 2355
    move-object/from16 v19, v2

    .line 2357
    move/from16 v21, v11

    .line 2359
    invoke-static/range {v14 .. v22}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->buildSurfaceAnimation(Ljava/util/ArrayList;Landroid/view/animation/Animation;Landroid/view/SurfaceControl;Ljava/lang/Runnable;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Landroid/graphics/Point;FLandroid/graphics/Rect;)V

    .line 2361
    goto :goto_3c

    .line 2364
    :cond_6c
    move-object/from16 v36, v0

    .line 2365
    move-object/from16 v26, v4

    .line 2367
    invoke-virtual {v14}, Landroid/window/TransitionInfo$AnimationOptions;->getType()I

    .line 2369
    move-result v0

    .line 2372
    const/4 v1, 0x3

    .line 2373
    if-ne v0, v1, :cond_6f

    .line 2374
    move-object/from16 v0, p0

    .line 2376
    move-object/from16 v1, v36

    .line 2378
    move-object/from16 v2, v23

    .line 2380
    move-object v3, v10

    .line 2382
    move-object v4, v14

    .line 2383
    move v5, v11

    .line 2384
    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->attachThumbnailAnimation(Ljava/util/ArrayList;Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda1;Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo$AnimationOptions;F)V

    .line 2385
    goto :goto_3c

    .line 2388
    :cond_6d
    move-object/from16 v36, v0

    .line 2389
    move-object/from16 v26, v4

    .line 2391
    if-eqz v2, :cond_6f

    .line 2393
    invoke-virtual {v14}, Landroid/window/TransitionInfo$AnimationOptions;->getType()I

    .line 2395
    move-result v0

    .line 2398
    const/4 v1, 0x4

    .line 2399
    if-ne v0, v1, :cond_6f

    .line 2400
    move-object/from16 v0, p0

    .line 2402
    move-object/from16 v1, v36

    .line 2404
    move-object/from16 v2, v23

    .line 2406
    move-object v3, v10

    .line 2408
    move-object v4, v14

    .line 2409
    move v5, v11

    .line 2410
    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->attachThumbnailAnimation(Ljava/util/ArrayList;Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda1;Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo$AnimationOptions;F)V

    .line 2411
    goto :goto_3c

    .line 2414
    :cond_6e
    :goto_3b
    move-object/from16 v36, v0

    .line 2415
    move-object/from16 v26, v4

    .line 2417
    :cond_6f
    :goto_3c
    invoke-static {}, Lcom/android/wm/shell/common/splitmode/SplitTransitionStub;->getInstance()Lcom/android/wm/shell/common/splitmode/SplitTransitionStub;

    .line 2419
    move-result-object v0

    .line 2422
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 2423
    move-result-object v1

    .line 2426
    invoke-virtual {v0, v6, v8, v1}, Lcom/android/wm/shell/common/splitmode/SplitTransitionStub;->dimSplitDimmerAboveIfNeeded(Landroid/view/animation/Animation;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 2427
    move-object/from16 v4, p4

    .line 2430
    move/from16 v32, v24

    .line 2432
    goto :goto_3d

    .line 2434
    :cond_70
    move-object/from16 v8, p3

    .line 2435
    move-object/from16 v26, p5

    .line 2437
    move/from16 v25, v14

    .line 2439
    move-object/from16 v4, p4

    .line 2441
    :goto_3d
    add-int/lit8 v6, v35, -0x1

    .line 2443
    const/4 v3, 0x6

    .line 2445
    move-object/from16 v11, p4

    .line 2446
    move-object v10, v8

    .line 2448
    move v5, v12

    .line 2449
    move/from16 v14, v25

    .line 2450
    move-object/from16 v12, v26

    .line 2452
    move-object/from16 v15, v36

    .line 2454
    move/from16 v13, v38

    .line 2456
    move-object/from16 v8, p1

    .line 2458
    goto/16 :goto_f

    .line 2460
    :cond_71
    move-object v1, v4

    .line 2462
    move-object v8, v10

    .line 2463
    move-object/from16 v26, v12

    .line 2464
    move-object/from16 v36, v15

    .line 2466
    if-eqz v32, :cond_72

    .line 2468
    invoke-static {}, Lcom/android/wm/shell/common/transition/DefaultTransitionStub;->getInstance()Lcom/android/wm/shell/common/transition/DefaultTransitionStub;

    .line 2470
    move-result-object v0

    .line 2473
    invoke-virtual {v0}, Lcom/android/wm/shell/common/transition/DefaultTransitionStub;->isCompatibilityMode()Z

    .line 2474
    move-result v0

    .line 2477
    if-eqz v0, :cond_72

    .line 2478
    invoke-static/range {v32 .. v32}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    .line 2480
    move-result-object v0

    .line 2483
    const/4 v3, 0x3

    .line 2484
    new-array v3, v3, [F

    .line 2485
    invoke-virtual {v0}, Landroid/graphics/Color;->red()F

    .line 2487
    move-result v4

    .line 2490
    const/4 v5, 0x0

    .line 2491
    aput v4, v3, v5

    .line 2492
    invoke-virtual {v0}, Landroid/graphics/Color;->green()F

    .line 2494
    move-result v4

    .line 2497
    const/4 v6, 0x1

    .line 2498
    aput v4, v3, v6

    .line 2499
    invoke-virtual {v0}, Landroid/graphics/Color;->blue()F

    .line 2501
    move-result v0

    .line 2504
    const/4 v4, 0x2

    .line 2505
    aput v0, v3, v4

    .line 2506
    :goto_3e
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getRootCount()I

    .line 2508
    move-result v0

    .line 2511
    if-ge v5, v0, :cond_72

    .line 2512
    invoke-virtual {v9, v5}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    .line 2514
    move-result-object v0

    .line 2517
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Root;->getDisplayId()I

    .line 2518
    move-result v0

    .line 2521
    new-instance v4, Landroid/view/SurfaceControl$Builder;

    .line 2522
    invoke-direct {v4}, Landroid/view/SurfaceControl$Builder;-><init>()V

    .line 2524
    const-string v6, "animation-background"

    .line 2527
    invoke-virtual {v4, v6}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 2529
    move-result-object v4

    .line 2532
    const-string v6, "DefaultTransitionHandler"

    .line 2533
    invoke-virtual {v4, v6}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 2535
    move-result-object v4

    .line 2538
    invoke-virtual {v4}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    .line 2539
    move-result-object v4

    .line 2542
    iget-object v6, v7, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mRootTDAOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    .line 2543
    invoke-virtual {v6, v0, v4}, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->attachToDisplayArea(ILandroid/view/SurfaceControl$Builder;)V

    .line 2545
    invoke-virtual {v4}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 2548
    move-result-object v0

    .line 2551
    invoke-virtual {v8, v0, v3}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    .line 2552
    move-result-object v4

    .line 2555
    const/4 v6, -0x1

    .line 2556
    invoke-virtual {v4, v0, v6}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 2557
    move-result-object v4

    .line 2560
    invoke-virtual {v4, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 2561
    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 2564
    add-int/lit8 v5, v5, 0x1

    .line 2567
    goto :goto_3e

    .line 2569
    :cond_72
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    .line 2570
    move-result v0

    .line 2573
    if-lez v0, :cond_73

    .line 2574
    const/4 v0, 0x1

    .line 2576
    invoke-virtual {v8, v0}, Landroid/view/SurfaceControl$Transaction;->apply(Z)V

    .line 2577
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 2580
    move-result-object v0

    .line 2583
    :goto_3f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 2584
    move-result v3

    .line 2587
    if-eqz v3, :cond_73

    .line 2588
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2590
    move-result-object v3

    .line 2593
    check-cast v3, Ljava/util/function/Consumer;

    .line 2594
    invoke-interface {v3, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2596
    goto :goto_3f

    .line 2599
    :cond_73
    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 2600
    invoke-static {}, Lcom/android/wm/shell/common/transition/DefaultTransitionStub;->getInstance()Lcom/android/wm/shell/common/transition/DefaultTransitionStub;

    .line 2603
    move-result-object v0

    .line 2606
    invoke-virtual {v0}, Lcom/android/wm/shell/common/transition/DefaultTransitionStub;->hasBlackCoverLeash()Z

    .line 2607
    move-result v0

    .line 2610
    if-eqz v0, :cond_74

    .line 2611
    invoke-virtual/range {p4 .. p4}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 2613
    :cond_74
    new-instance v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda3;

    .line 2616
    move-object/from16 v3, v36

    .line 2618
    invoke-direct {v0, v7, v3}, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/transition/DefaultTransitionHandler;Ljava/util/ArrayList;)V

    .line 2620
    iget-object v3, v7, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 2623
    check-cast v3, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 2625
    invoke-virtual {v3, v0}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 2627
    invoke-virtual {v2, v1}, Lcom/android/wm/shell/transition/CounterRotatorHelper;->cleanUp(Landroid/view/SurfaceControl$Transaction;)V

    .line 2630
    invoke-static {}, Landroid/window/TransitionMetrics;->getInstance()Landroid/window/TransitionMetrics;

    .line 2633
    move-result-object v0

    .line 2636
    move-object/from16 v1, p1

    .line 2637
    invoke-virtual {v0, v1}, Landroid/window/TransitionMetrics;->reportAnimationStart(Landroid/os/IBinder;)V

    .line 2639
    invoke-virtual/range {v23 .. v23}, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda1;->run()V

    .line 2642
    goto :goto_41

    .line 2645
    :cond_75
    move-object v1, v8

    .line 2646
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2647
    new-instance v2, Ljava/lang/StringBuilder;

    .line 2649
    const-string v3, "Got a duplicate startAnimation call for "

    .line 2651
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2653
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2656
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2659
    move-result-object v1

    .line 2662
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 2663
    throw v0

    .line 2666
    :cond_76
    :goto_40
    move-object v8, v10

    .line 2667
    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 2668
    invoke-virtual/range {p4 .. p4}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 2671
    const/4 v0, 0x0

    .line 2674
    invoke-interface {v4, v0, v0}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    .line 2675
    :goto_41
    const/4 v0, 0x1

    .line 2678
    return v0
.end method

.method public final startRotationAnimation(Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;ILjava/util/ArrayList;Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda1;)V
    .locals 38

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v9, p4

    move-object/from16 v6, p2

    .line 1
    invoke-static {v1, v6}, Lcom/android/wm/shell/util/TransitionUtil;->rootIndexFor(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;)I

    move-result v2

    .line 2
    const-class v3, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;

    invoke-static {v3}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;

    .line 3
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo;->getType()I

    move-result v4

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eq v4, v12, :cond_0

    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo;->getType()I

    move-result v4

    if-eq v4, v11, :cond_0

    move v4, v12

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iput-boolean v4, v3, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mWithinApp:Z

    .line 5
    new-instance v15, Lcom/android/wm/shell/transition/ScreenRotationAnimation;

    iget-object v14, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mSurfaceSession:Landroid/view/SurfaceSession;

    iget-object v13, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 6
    invoke-virtual {v1, v2}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    move-result-object v1

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v7

    move-object v1, v15

    move-object v2, v14

    move-object v4, v13

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/wm/shell/transition/ScreenRotationAnimation;-><init>(Landroid/content/Context;Landroid/view/SurfaceSession;Lcom/android/wm/shell/common/TransactionPool;Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl;I)V

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    new-instance v4, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda1;

    move-object v5, v13

    move-object v13, v4

    move-object v6, v14

    move-object v14, v1

    move-object v7, v15

    move-object/from16 v16, p5

    move-object/from16 v17, v3

    move-object/from16 v18, p6

    invoke-direct/range {v13 .. v18}, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda1;-><init>(Ljava/util/ArrayList;Lcom/android/wm/shell/transition/ScreenRotationAnimation;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda1;)V

    .line 10
    iget v8, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransitionAnimationScaleSetting:F

    iget-object v0, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 11
    iget-object v13, v7, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    if-nez v13, :cond_1

    move-object/from16 v37, v1

    move-object/from16 p2, v3

    goto/16 :goto_f

    :cond_1
    if-eq v9, v12, :cond_3

    if-ne v9, v11, :cond_2

    goto :goto_1

    :cond_2
    const/4 v13, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    move v13, v12

    :goto_2
    const v14, 0x10a0086    # @android:anim/screen_rotate_finish_enter

    .line 12
    iget v15, v7, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mStartHeight:I

    iget v10, v7, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mStartWidth:I

    iget v2, v7, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mEndHeight:I

    iget v12, v7, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mEndWidth:I

    if-eqz v13, :cond_5

    if-ne v9, v11, :cond_4

    const v9, 0x10a0087    # @android:anim/screen_rotate_finish_exit

    goto :goto_3

    :cond_4
    const v9, 0x10a0088    # @android:anim/screen_rotate_finish_frame

    .line 13
    :goto_3
    invoke-static {v6, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v9

    iput-object v9, v7, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 14
    invoke-static {v6, v14}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v9

    iput-object v9, v7, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    const v9, 0x10a008e    # @android:anim/screen_rotate_start_exit

    .line 15
    invoke-static {v6, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, v7, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateAlphaAnimation:Landroid/view/animation/Animation;

    move-object/from16 p6, v0

    move-object/from16 v37, v1

    move/from16 v24, v2

    move-object/from16 p2, v3

    move-object/from16 v36, v4

    move-object/from16 v25, v5

    move/from16 v23, v8

    move/from16 v22, v12

    move/from16 v21, v13

    goto/16 :goto_e

    .line 16
    :cond_5
    iget v9, v7, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mEndRotation:I

    iget v14, v7, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mStartRotation:I

    invoke-static {v9, v14}, Landroid/util/RotationUtils;->deltaRotation(II)I

    move-result v11

    move-object/from16 p2, v3

    .line 17
    iget v3, v7, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mMiuiScreenRotationMode:I

    move-object/from16 p6, v0

    iget-object v0, v7, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mSRAImpl:Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;

    if-eqz v3, :cond_10

    const/4 v3, 0x1

    if-eq v11, v3, :cond_7

    const/4 v3, 0x3

    if-ne v11, v3, :cond_6

    goto :goto_4

    :cond_6
    move-object/from16 v37, v1

    move/from16 v24, v2

    move-object/from16 v36, v4

    move-object/from16 v25, v5

    move/from16 v23, v8

    move/from16 v22, v12

    move/from16 v21, v13

    const/4 v1, 0x2

    const/4 v3, 0x1

    goto/16 :goto_b

    :cond_7
    :goto_4
    iget-boolean v3, v7, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mWithinApp:Z

    if-eqz v3, :cond_10

    .line 18
    invoke-static {v15, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 19
    invoke-static {v10, v12}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    new-instance v11, Landroid/view/animation/AnimationSet;

    move-object/from16 v25, v5

    const/4 v5, 0x0

    invoke-direct {v11, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v5, 0x1

    .line 22
    invoke-virtual {v11, v5}, Landroid/view/animation/AnimationSet;->setHasRoundedCorners(Z)V

    int-to-float v5, v3

    move/from16 p0, v3

    int-to-float v3, v6

    div-float v3, v5, v3

    .line 23
    invoke-static {v14, v9}, Landroid/util/RotationUtils;->deltaRotation(II)I

    move-result v5

    move/from16 v18, v6

    const/4 v6, 0x1

    if-eq v9, v6, :cond_a

    const/4 v6, 0x3

    if-ne v9, v6, :cond_8

    goto :goto_5

    .line 24
    :cond_8
    iget v6, v0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mMiuiScreenRotationMode:I

    move-object/from16 v36, v4

    const/4 v4, 0x2

    if-ne v6, v4, :cond_9

    .line 25
    iget-object v6, v0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mShortAlphaInterpolator:Lcom/android/wm/shell/common/transition/MiuiRotationAnimationUtils$SineEaseInInterpolater;

    iput-object v6, v0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mAlphaInterpolator:Lcom/android/wm/shell/common/transition/MiuiRotationAnimationUtils$SineEaseInInterpolater;

    .line 26
    iget v6, v0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mShortAlphaDuration:I

    iput v6, v0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mAlphaDuration:I

    :cond_9
    move/from16 v6, p0

    move-object/from16 v37, v1

    move/from16 v4, v18

    goto :goto_6

    :cond_a
    :goto_5
    move-object/from16 v36, v4

    const/4 v4, 0x2

    .line 27
    iget v6, v0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mMiuiScreenRotationMode:I

    if-ne v6, v4, :cond_b

    .line 28
    iget v4, v0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mScaleDuration:I

    iput v4, v0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mAlphaDuration:I

    :cond_b
    move/from16 v4, p0

    move-object/from16 v37, v1

    move/from16 v6, v18

    .line 29
    :goto_6
    new-instance v1, Landroid/view/animation/RotateAnimation;

    const/16 v27, 0x0

    const/high16 v19, 0x42b40000    # 90.0f

    const/high16 v20, -0x3d4c0000    # -90.0f

    move/from16 v21, v13

    const/4 v13, 0x1

    if-ne v5, v13, :cond_c

    move/from16 v28, v19

    goto :goto_7

    :cond_c
    move/from16 v28, v20

    :goto_7
    const/16 v29, 0x1

    const/high16 v30, 0x3f000000    # 0.5f

    const/16 v31, 0x1

    const/high16 v32, 0x3f000000    # 0.5f

    move-object/from16 v26, v1

    .line 30
    invoke-direct/range {v26 .. v32}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 31
    iget-object v5, v0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mMiddleEaseInterpolater:Lcom/android/wm/shell/common/transition/MiuiRotationAnimationUtils$PhysicBasedInterpolator;

    invoke-virtual {v1, v5}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 32
    iget v5, v0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mMiddleDuration:I

    move/from16 v22, v12

    int-to-long v12, v5

    invoke-virtual {v1, v12, v13}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    const/4 v5, 0x1

    .line 33
    invoke-virtual {v1, v5}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 34
    invoke-virtual {v1, v5}, Landroid/view/animation/RotateAnimation;->setFillBefore(Z)V

    .line 35
    invoke-virtual {v1, v5}, Landroid/view/animation/RotateAnimation;->setFillEnabled(Z)V

    .line 36
    invoke-virtual {v11, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 37
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v1, v13, v12}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 38
    iget-object v12, v0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mAlphaInterpolator:Lcom/android/wm/shell/common/transition/MiuiRotationAnimationUtils$SineEaseInInterpolater;

    invoke-virtual {v1, v12}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 39
    iget v12, v0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mAlphaDuration:I

    int-to-long v12, v12

    invoke-virtual {v1, v12, v13}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 40
    invoke-virtual {v1, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 41
    invoke-virtual {v1, v5}, Landroid/view/animation/AlphaAnimation;->setFillBefore(Z)V

    .line 42
    invoke-virtual {v1, v5}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    .line 43
    invoke-virtual {v11, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 44
    new-instance v1, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ShotClipAnimation;

    int-to-float v5, v4

    int-to-float v12, v6

    div-float v13, v12, v3

    move/from16 v23, v8

    sub-float v8, v5, v13

    float-to-int v8, v8

    const/16 v17, 0x2

    div-int/lit8 v32, v8, 0x2

    div-float v8, v5, v3

    move/from16 v24, v2

    sub-float v2, v12, v8

    float-to-int v2, v2

    div-int/lit8 v33, v2, 0x2

    add-float/2addr v5, v13

    float-to-int v2, v5

    div-int/lit8 v34, v2, 0x2

    add-float/2addr v12, v8

    float-to-int v2, v12

    div-int/lit8 v35, v2, 0x2

    move-object/from16 v26, v1

    move/from16 v27, v4

    move/from16 v28, v6

    move/from16 v29, v3

    move/from16 v30, v4

    move/from16 v31, v6

    invoke-direct/range {v26 .. v35}, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ShotClipAnimation;-><init>(IIFIIIIII)V

    .line 45
    iget v2, v0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mShortDuration:I

    int-to-long v4, v2

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 46
    iget-object v2, v0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mShortEaseInterpolater:Lcom/android/wm/shell/common/transition/MiuiRotationAnimationUtils$PhysicBasedInterpolator;

    .line 47
    iput-object v2, v1, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ShotClipAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 v2, 0x1

    .line 48
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    const/4 v4, 0x0

    .line 49
    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    .line 50
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 51
    invoke-virtual {v11, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 52
    new-instance v1, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ScreenScaleAnimation;

    iget v2, v0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mScaleFactor:F

    invoke-direct {v1, v2}, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ScreenScaleAnimation;-><init>(F)V

    .line 53
    iget v2, v0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mScreenRotationDuration:I

    int-to-long v4, v2

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 54
    iget v2, v0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mFirstPhaseDuration:I

    .line 55
    iput v2, v1, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ScreenScaleAnimation;->mFirstPhaseDuration:I

    .line 56
    iget v2, v0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mLongDuration:I

    .line 57
    iput v2, v1, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ScreenScaleAnimation;->mSecPhaseDuration:I

    .line 58
    iget-object v2, v0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mLongEaseInterpolator:Lcom/android/wm/shell/common/transition/MiuiRotationAnimationUtils$PhysicBasedInterpolator;

    iget-object v4, v0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mFirstPhaseInterpolator:Landroid/view/animation/Interpolator;

    .line 59
    iput-object v2, v1, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ScreenScaleAnimation;->mLongEaseInterpolator:Landroid/view/animation/Interpolator;

    .line 60
    iput-object v4, v1, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ScreenScaleAnimation;->mShortEaseInterpolator:Landroid/view/animation/Interpolator;

    .line 61
    iget v2, v0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mScaleDelayTime:I

    int-to-float v4, v2

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v4, v5

    iget v5, v0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mScreenRotationDuration:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 62
    iput v4, v1, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ScreenScaleAnimation;->mScaleBreakOffset:F

    .line 63
    iput v2, v1, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ScreenScaleAnimation;->mScaleDelayTime:I

    const/4 v2, 0x1

    .line 64
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 65
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    .line 66
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 67
    invoke-virtual {v11, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 68
    iput-object v11, v7, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 69
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 70
    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setHasRoundedCorners(Z)V

    .line 71
    invoke-static {v14, v9}, Landroid/util/RotationUtils;->deltaRotation(II)I

    move-result v4

    if-eq v9, v2, :cond_e

    const/4 v2, 0x3

    if-ne v9, v2, :cond_d

    goto :goto_8

    :cond_d
    move/from16 v6, p0

    move/from16 v5, v18

    goto :goto_9

    :cond_e
    const/4 v2, 0x3

    :goto_8
    move/from16 v5, p0

    move/from16 v6, v18

    .line 72
    :goto_9
    new-instance v8, Landroid/view/animation/RotateAnimation;

    if-ne v4, v2, :cond_f

    move/from16 v27, v19

    goto :goto_a

    :cond_f
    move/from16 v27, v20

    :goto_a
    const/16 v28, 0x0

    const/16 v29, 0x1

    const/high16 v30, 0x3f000000    # 0.5f

    const/16 v31, 0x1

    const/high16 v32, 0x3f000000    # 0.5f

    move-object/from16 v26, v8

    .line 73
    invoke-direct/range {v26 .. v32}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 74
    iget-object v2, v0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mMiddleEaseInterpolater:Lcom/android/wm/shell/common/transition/MiuiRotationAnimationUtils$PhysicBasedInterpolator;

    invoke-virtual {v8, v2}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 75
    iget v2, v0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mMiddleDuration:I

    int-to-long v11, v2

    invoke-virtual {v8, v11, v12}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    const/4 v2, 0x1

    .line 76
    invoke-virtual {v8, v2}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 77
    invoke-virtual {v8, v2}, Landroid/view/animation/RotateAnimation;->setFillBefore(Z)V

    .line 78
    invoke-virtual {v8, v2}, Landroid/view/animation/RotateAnimation;->setFillEnabled(Z)V

    .line 79
    invoke-virtual {v1, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 80
    new-instance v2, Landroid/view/animation/ClipRectAnimation;

    int-to-float v4, v5

    int-to-float v8, v6

    div-float v9, v8, v3

    sub-float v11, v4, v9

    float-to-int v11, v11

    const/4 v12, 0x2

    div-int/lit8 v27, v11, 0x2

    div-float v11, v4, v3

    sub-float v13, v8, v11

    float-to-int v13, v13

    div-int/lit8 v28, v13, 0x2

    add-float/2addr v4, v9

    float-to-int v4, v4

    div-int/lit8 v29, v4, 0x2

    add-float/2addr v8, v11

    float-to-int v4, v8

    div-int/lit8 v30, v4, 0x2

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v26, v2

    move/from16 v33, v5

    move/from16 v34, v6

    invoke-direct/range {v26 .. v34}, Landroid/view/animation/ClipRectAnimation;-><init>(IIIIIIII)V

    .line 81
    iget-object v4, v0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mShortEaseInterpolater:Lcom/android/wm/shell/common/transition/MiuiRotationAnimationUtils$PhysicBasedInterpolator;

    invoke-virtual {v2, v4}, Landroid/view/animation/ClipRectAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 82
    iget v4, v0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mShortDuration:I

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/ClipRectAnimation;->setDuration(J)V

    const/4 v4, 0x1

    .line 83
    invoke-virtual {v2, v4}, Landroid/view/animation/ClipRectAnimation;->setFillAfter(Z)V

    .line 84
    invoke-virtual {v2, v4}, Landroid/view/animation/ClipRectAnimation;->setFillBefore(Z)V

    .line 85
    invoke-virtual {v2, v4}, Landroid/view/animation/ClipRectAnimation;->setFillEnabled(Z)V

    .line 86
    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 87
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v28, 0x3f800000    # 1.0f

    const/high16 v30, 0x3f800000    # 1.0f

    const/high16 v32, 0x3f000000    # 0.5f

    const/16 v33, 0x1

    const/high16 v34, 0x3f000000    # 0.5f

    const/16 v31, 0x1

    move-object/from16 v26, v2

    move/from16 v27, v3

    move/from16 v29, v3

    invoke-direct/range {v26 .. v34}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 88
    iget-object v3, v0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mShortEaseInterpolater:Lcom/android/wm/shell/common/transition/MiuiRotationAnimationUtils$PhysicBasedInterpolator;

    invoke-virtual {v2, v3}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 89
    iget v3, v0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mShortDuration:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const/4 v3, 0x0

    .line 90
    invoke-virtual {v2, v3}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 91
    invoke-virtual {v2, v3}, Landroid/view/animation/ScaleAnimation;->setFillBefore(Z)V

    const/4 v3, 0x1

    .line 92
    invoke-virtual {v2, v3}, Landroid/view/animation/ScaleAnimation;->setFillEnabled(Z)V

    .line 93
    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 94
    new-instance v2, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ScreenScaleAnimation;

    iget v3, v0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mScaleFactor:F

    invoke-direct {v2, v3}, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ScreenScaleAnimation;-><init>(F)V

    .line 95
    iget v3, v0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mScreenRotationDuration:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 96
    iget v3, v0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mFirstPhaseDuration:I

    .line 97
    iput v3, v2, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ScreenScaleAnimation;->mFirstPhaseDuration:I

    .line 98
    iget v3, v0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mLongDuration:I

    .line 99
    iput v3, v2, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ScreenScaleAnimation;->mSecPhaseDuration:I

    .line 100
    iget-object v3, v0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mLongEaseInterpolator:Lcom/android/wm/shell/common/transition/MiuiRotationAnimationUtils$PhysicBasedInterpolator;

    iget-object v4, v0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mFirstPhaseInterpolator:Landroid/view/animation/Interpolator;

    .line 101
    iput-object v3, v2, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ScreenScaleAnimation;->mLongEaseInterpolator:Landroid/view/animation/Interpolator;

    .line 102
    iput-object v4, v2, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ScreenScaleAnimation;->mShortEaseInterpolator:Landroid/view/animation/Interpolator;

    .line 103
    iget v3, v0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mScaleDelayTime:I

    int-to-float v4, v3

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v4, v5

    iget v0, v0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mScreenRotationDuration:I

    int-to-float v0, v0

    div-float/2addr v4, v0

    .line 104
    iput v4, v2, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ScreenScaleAnimation;->mScaleBreakOffset:F

    .line 105
    iput v3, v2, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ScreenScaleAnimation;->mScaleDelayTime:I

    const/4 v3, 0x1

    .line 106
    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 107
    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    .line 108
    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 109
    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 110
    iput-object v1, v7, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    goto/16 :goto_e

    :cond_10
    move-object/from16 v37, v1

    move/from16 v24, v2

    move-object/from16 v36, v4

    move-object/from16 v25, v5

    move/from16 v23, v8

    move/from16 v22, v12

    move/from16 v21, v13

    const/4 v3, 0x1

    const/4 v1, 0x2

    :goto_b
    if-ne v11, v1, :cond_15

    .line 111
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 113
    invoke-virtual {v1, v3}, Landroid/view/animation/AnimationSet;->setHasRoundedCorners(Z)V

    .line 114
    sget-boolean v2, Lmiui/os/Build;->IS_MIUI_LITE_VERSION:Z

    const/16 v4, 0x1f4

    const/16 v5, 0x12c

    if-eqz v2, :cond_12

    :cond_11
    move v2, v5

    goto :goto_c

    .line 115
    :cond_12
    invoke-static {}, Lmiui/os/Build;->getDeviceLevelForAnimation()I

    move-result v2

    if-eq v2, v3, :cond_11

    move v2, v4

    .line 116
    :goto_c
    new-instance v3, Landroid/view/animation/RotateAnimation;

    const/16 v27, 0x0

    const/high16 v28, -0x3ccc0000    # -180.0f

    const/4 v6, 0x1

    const/high16 v33, 0x3f000000    # 0.5f

    const/16 v31, 0x1

    const/high16 v32, 0x3f000000    # 0.5f

    const/16 v29, 0x1

    const/high16 v30, 0x3f000000    # 0.5f

    move-object/from16 v26, v3

    invoke-direct/range {v26 .. v32}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 117
    iget-object v8, v0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mQuartEaseOutInterpolator:Lcom/android/wm/shell/common/transition/MiuiRotationAnimationUtils$SineEaseInInterpolater;

    invoke-virtual {v3, v8}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    int-to-long v11, v2

    .line 118
    invoke-virtual {v3, v11, v12}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    const/4 v9, 0x1

    .line 119
    invoke-virtual {v3, v9}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 120
    invoke-virtual {v3, v9}, Landroid/view/animation/RotateAnimation;->setFillBefore(Z)V

    .line 121
    invoke-virtual {v3, v9}, Landroid/view/animation/RotateAnimation;->setFillEnabled(Z)V

    .line 122
    invoke-virtual {v1, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 123
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v3, v12, v11}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 124
    invoke-virtual {v3, v8}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 125
    div-int/lit8 v11, v2, 0x2

    int-to-long v11, v11

    invoke-virtual {v3, v11, v12}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 126
    invoke-virtual {v3, v9}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 127
    invoke-virtual {v3, v9}, Landroid/view/animation/AlphaAnimation;->setFillBefore(Z)V

    .line 128
    invoke-virtual {v3, v9}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    .line 129
    invoke-virtual {v1, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 130
    new-instance v3, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ScreenScale180Animation;

    const v9, 0x3f70a3d7    # 0.94f

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v3, v11, v9, v11, v9}, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ScreenScale180Animation;-><init>(FFFF)V

    .line 131
    invoke-virtual {v3, v8}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 132
    div-int/lit8 v12, v2, 0x3

    int-to-long v12, v12

    invoke-virtual {v3, v12, v13}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const/4 v14, 0x0

    .line 133
    invoke-virtual {v3, v14}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 134
    invoke-virtual {v3, v14}, Landroid/view/animation/ScaleAnimation;->setFillBefore(Z)V

    const/4 v14, 0x1

    .line 135
    invoke-virtual {v3, v14}, Landroid/view/animation/ScaleAnimation;->setFillEnabled(Z)V

    .line 136
    invoke-virtual {v1, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 137
    new-instance v3, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ScreenScale180Animation;

    invoke-direct {v3, v9, v11, v9, v11}, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ScreenScale180Animation;-><init>(FFFF)V

    .line 138
    iget-object v0, v0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl;->mSinEaseInOutInterpolator:Lcom/android/wm/shell/common/transition/MiuiRotationAnimationUtils$SineEaseInInterpolater;

    invoke-virtual {v3, v0}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 139
    invoke-virtual {v3, v12, v13}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    const/4 v11, 0x2

    mul-int/2addr v2, v11

    const/4 v11, 0x3

    .line 140
    div-int/2addr v2, v11

    int-to-long v11, v2

    invoke-virtual {v3, v11, v12}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 141
    invoke-virtual {v3, v14}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    const/4 v2, 0x0

    .line 142
    invoke-virtual {v3, v2}, Landroid/view/animation/ScaleAnimation;->setFillBefore(Z)V

    .line 143
    invoke-virtual {v3, v14}, Landroid/view/animation/ScaleAnimation;->setFillEnabled(Z)V

    .line 144
    invoke-virtual {v1, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 145
    iput-object v1, v7, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 146
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 147
    invoke-virtual {v1, v14}, Landroid/view/animation/AnimationSet;->setHasRoundedCorners(Z)V

    .line 148
    sget-boolean v2, Lmiui/os/Build;->IS_MIUI_LITE_VERSION:Z

    if-eqz v2, :cond_14

    :cond_13
    move v4, v5

    goto :goto_d

    .line 149
    :cond_14
    invoke-static {}, Lmiui/os/Build;->getDeviceLevelForAnimation()I

    move-result v2

    if-eq v2, v14, :cond_13

    .line 150
    :goto_d
    new-instance v2, Landroid/view/animation/RotateAnimation;

    const/high16 v30, 0x43340000    # 180.0f

    const/16 v31, 0x0

    const/16 v34, 0x1

    const/high16 v35, 0x3f000000    # 0.5f

    move-object/from16 v29, v2

    move/from16 v32, v6

    invoke-direct/range {v29 .. v35}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 151
    invoke-virtual {v2, v8}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    int-to-long v5, v4

    .line 152
    invoke-virtual {v2, v5, v6}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    const/4 v3, 0x1

    .line 153
    invoke-virtual {v2, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 154
    invoke-virtual {v2, v3}, Landroid/view/animation/RotateAnimation;->setFillBefore(Z)V

    .line 155
    invoke-virtual {v2, v3}, Landroid/view/animation/RotateAnimation;->setFillEnabled(Z)V

    .line 156
    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 157
    new-instance v2, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ScreenScale180Animation;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v5, v9, v5, v9}, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ScreenScale180Animation;-><init>(FFFF)V

    .line 158
    invoke-virtual {v2, v8}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 159
    div-int/lit8 v6, v4, 0x3

    int-to-long v11, v6

    invoke-virtual {v2, v11, v12}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const/4 v6, 0x0

    .line 160
    invoke-virtual {v2, v6}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 161
    invoke-virtual {v2, v6}, Landroid/view/animation/ScaleAnimation;->setFillBefore(Z)V

    .line 162
    invoke-virtual {v2, v3}, Landroid/view/animation/ScaleAnimation;->setFillEnabled(Z)V

    .line 163
    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 164
    new-instance v2, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ScreenScale180Animation;

    invoke-direct {v2, v9, v5, v9, v5}, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ScreenScale180Animation;-><init>(FFFF)V

    .line 165
    invoke-virtual {v2, v0}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 166
    invoke-virtual {v2, v11, v12}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    const/4 v0, 0x2

    mul-int/2addr v4, v0

    const/4 v0, 0x3

    .line 167
    div-int/2addr v4, v0

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 168
    invoke-virtual {v2, v3}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    const/4 v0, 0x0

    .line 169
    invoke-virtual {v2, v0}, Landroid/view/animation/ScaleAnimation;->setFillBefore(Z)V

    .line 170
    invoke-virtual {v2, v3}, Landroid/view/animation/ScaleAnimation;->setFillEnabled(Z)V

    .line 171
    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 172
    iput-object v1, v7, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    goto :goto_e

    :cond_15
    if-eqz v11, :cond_19

    if-eq v11, v3, :cond_18

    const/4 v0, 0x2

    if-eq v11, v0, :cond_17

    const/4 v0, 0x3

    if-eq v11, v0, :cond_16

    goto :goto_e

    :cond_16
    const v0, 0x10a0093    # @android:anim/search_bar_exit

    .line 173
    invoke-static {v6, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, v7, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    const v0, 0x10a0092    # @android:anim/search_bar_enter

    .line 174
    invoke-static {v6, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, v7, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    goto :goto_e

    :cond_17
    const v0, 0x10a008c    # @android:anim/screen_rotate_plus_90_exit

    .line 175
    invoke-static {v6, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, v7, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    const v0, 0x10a008b    # @android:anim/screen_rotate_plus_90_enter

    .line 176
    invoke-static {v6, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, v7, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    goto :goto_e

    :cond_18
    const v0, 0x10a0095    # @android:anim/seekbar_thumb_unpressed_to_pressed_thumb_0_animation

    .line 177
    invoke-static {v6, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, v7, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    const v0, 0x10a0094    # @android:anim/seekbar_thumb_pressed_to_unpressed_thumb_animation

    .line 178
    invoke-static {v6, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, v7, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    goto :goto_e

    :cond_19
    const v0, 0x10a008a    # @android:anim/screen_rotate_minus_90_exit

    .line 179
    invoke-static {v6, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, v7, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    const v0, 0x10a0086    # @android:anim/screen_rotate_finish_enter

    .line 180
    invoke-static {v6, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, v7, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    .line 181
    invoke-static {}, Lcom/android/wm/shell/common/transition/DefaultTransitionStub;->getInstance()Lcom/android/wm/shell/common/transition/DefaultTransitionStub;

    move-result-object v0

    iget-object v1, v7, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/common/transition/DefaultTransitionStub;->replaceWithSwapAnimationIfNeeded(Landroid/view/animation/Animation;Z)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, v7, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 182
    invoke-static {}, Lcom/android/wm/shell/common/transition/DefaultTransitionStub;->getInstance()Lcom/android/wm/shell/common/transition/DefaultTransitionStub;

    move-result-object v0

    iget-object v1, v7, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/common/transition/DefaultTransitionStub;->replaceWithSwapAnimationIfNeeded(Landroid/view/animation/Animation;Z)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, v7, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    .line 183
    :goto_e
    iget-object v0, v7, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    move/from16 v2, v22

    move/from16 v1, v24

    invoke-virtual {v0, v2, v1, v10, v15}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 184
    iget-object v0, v7, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    const-wide/16 v3, 0x2710

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 185
    iget-object v0, v7, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    move/from16 v5, v23

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 186
    iget-object v0, v7, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2, v1, v10, v15}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 187
    iget-object v0, v7, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 188
    iget-object v0, v7, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    if-eqz v21, :cond_1a

    .line 189
    iget-object v0, v7, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateAlphaAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2, v1, v10, v15}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 190
    iget-object v0, v7, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateAlphaAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 191
    iget-object v0, v7, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateAlphaAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 192
    iget-object v0, v7, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateAlphaAnimation:Landroid/view/animation/Animation;

    iget-object v1, v7, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mAnimLeash:Landroid/view/SurfaceControl;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v16, v37

    move-object/from16 v17, v0

    move-object/from16 v18, v1

    move-object/from16 v19, v36

    move-object/from16 v20, v25

    move-object/from16 v21, p6

    invoke-static/range {v16 .. v24}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->buildSurfaceAnimation(Ljava/util/ArrayList;Landroid/view/animation/Animation;Landroid/view/SurfaceControl;Ljava/lang/Runnable;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Landroid/graphics/Point;FLandroid/graphics/Rect;)V

    .line 193
    iget-object v0, v7, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    iget-object v1, v7, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/16 v22, 0x0

    iget v2, v7, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mCornerRadius:F

    const/16 v24, 0x0

    move-object/from16 v16, v37

    move-object/from16 v17, v0

    move-object/from16 v18, v1

    move-object/from16 v19, v36

    move-object/from16 v20, v25

    move-object/from16 v21, p6

    move/from16 v23, v2

    invoke-static/range {v16 .. v24}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->buildSurfaceAnimation(Ljava/util/ArrayList;Landroid/view/animation/Animation;Landroid/view/SurfaceControl;Ljava/lang/Runnable;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Landroid/graphics/Point;FLandroid/graphics/Rect;)V

    goto :goto_f

    .line 194
    :cond_1a
    iget-object v0, v7, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    iget-object v1, v7, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/16 v22, 0x0

    iget v2, v7, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mCornerRadius:F

    const/16 v24, 0x0

    move-object/from16 v16, v37

    move-object/from16 v17, v0

    move-object/from16 v18, v1

    move-object/from16 v19, v36

    move-object/from16 v20, v25

    move-object/from16 v21, p6

    move/from16 v23, v2

    invoke-static/range {v16 .. v24}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->buildSurfaceAnimation(Ljava/util/ArrayList;Landroid/view/animation/Animation;Landroid/view/SurfaceControl;Ljava/lang/Runnable;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Landroid/graphics/Point;FLandroid/graphics/Rect;)V

    .line 195
    iget-object v0, v7, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    iget-object v1, v7, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mAnimLeash:Landroid/view/SurfaceControl;

    const/16 v22, 0x0

    iget v2, v7, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mCornerRadius:F

    const/16 v24, 0x0

    move-object/from16 v16, v37

    move-object/from16 v17, v0

    move-object/from16 v18, v1

    move-object/from16 v19, v36

    move-object/from16 v20, v25

    move-object/from16 v21, p6

    move/from16 v23, v2

    invoke-static/range {v16 .. v24}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->buildSurfaceAnimation(Ljava/util/ArrayList;Landroid/view/animation/Animation;Landroid/view/SurfaceControl;Ljava/lang/Runnable;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Landroid/graphics/Point;FLandroid/graphics/Rect;)V

    .line 196
    :goto_f
    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_10
    if-ltz v0, :cond_1b

    move-object/from16 v1, v37

    .line 197
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    move-object/from16 v3, p2

    .line 198
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, p5

    .line 199
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_10

    :cond_1b
    return-void
.end method
