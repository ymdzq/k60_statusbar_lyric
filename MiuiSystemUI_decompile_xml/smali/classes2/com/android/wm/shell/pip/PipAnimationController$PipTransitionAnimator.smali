.class public abstract Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;
.super Landroid/animation/ValueAnimator;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Landroid/animation/Animator$AnimatorListener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mAnimationType:I

.field public final mBaseValue:Ljava/lang/Object;

.field public mContentOverlay:Lcom/android/wm/shell/pip/PipContentOverlay;

.field public mCurrentValue:Ljava/lang/Object;

.field public final mDestinationBounds:Landroid/graphics/Rect;

.field public mEndValue:Ljava/lang/Object;

.field public mHasRequestedEnd:Z

.field public final mLeash:Landroid/view/SurfaceControl;

.field public mPipAnimationCallback:Lcom/android/wm/shell/pip/PipAnimationController$PipAnimationCallback;

.field public mPipTransactionHandler:Lcom/android/wm/shell/pip/PipAnimationController$PipTransactionHandler;

.field public mStartValue:Ljava/lang/Object;

.field public mSurfaceControlTransactionFactory:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

.field public mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

.field public final mTaskInfo:Landroid/app/TaskInfo;

.field public mTransitionDirection:I


# direct methods
.method public constructor <init>(Landroid/app/TaskInfo;Landroid/view/SurfaceControl;ILandroid/graphics/Rect;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mDestinationBounds:Landroid/graphics/Rect;

    .line 10
    iput-object p1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mTaskInfo:Landroid/app/TaskInfo;

    .line 12
    iput-object p2, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mLeash:Landroid/view/SurfaceControl;

    .line 14
    iput p3, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mAnimationType:I

    .line 16
    invoke-virtual {v0, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 18
    iput-object p5, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mBaseValue:Ljava/lang/Object;

    .line 21
    iput-object p6, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mStartValue:Ljava/lang/Object;

    .line 23
    iput-object p7, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mEndValue:Ljava/lang/Object;

    .line 25
    invoke-virtual {p0, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 27
    invoke-virtual {p0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 30
    new-instance p1, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;

    .line 33
    invoke-direct {p1}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    .line 38
    const/4 p1, 0x0

    .line 40
    iput p1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mTransitionDirection:I

    .line 41
    return-void
    .line 43
.end method

.method public static ofBounds(Landroid/app/TaskInfo;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IFI)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;
    .locals 22

    .line 1
    move-object/from16 v0, p2

    .line 2
    move-object/from16 v15, p4

    .line 4
    move-object/from16 v10, p5

    .line 6
    move/from16 v14, p8

    .line 8
    invoke-static/range {p6 .. p6}, Lcom/android/wm/shell/pip/PipAnimationController;->isOutPipDirection(I)Z

    .line 10
    move-result v11

    .line 13
    invoke-static/range {p6 .. p6}, Lcom/android/wm/shell/pip/PipAnimationController;->isInPipDirection(I)Z

    .line 14
    move-result v13

    .line 17
    if-eqz v11, :cond_0

    .line 18
    new-instance v1, Landroid/graphics/Rect;

    .line 20
    invoke-direct {v1, v15}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 22
    goto :goto_0

    .line 25
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    .line 26
    invoke-direct {v1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 28
    :goto_0
    move-object v12, v1

    .line 31
    const/4 v1, 0x1

    .line 32
    const/4 v2, 0x0

    .line 33
    if-eq v14, v1, :cond_2

    .line 34
    const/4 v1, 0x3

    .line 36
    if-ne v14, v1, :cond_1

    .line 37
    goto :goto_1

    .line 39
    :cond_1
    move-object v8, v2

    .line 40
    move-object/from16 v16, v8

    .line 41
    move-object v9, v12

    .line 43
    goto :goto_3

    .line 44
    :cond_2
    :goto_1
    new-instance v1, Landroid/graphics/Rect;

    .line 45
    invoke-direct {v1, v15}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 47
    new-instance v3, Landroid/graphics/Rect;

    .line 50
    invoke-direct {v3, v15}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 52
    invoke-static {v3, v12, v14}, Landroid/util/RotationUtils;->rotateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 55
    if-eqz v11, :cond_3

    .line 58
    move-object v4, v3

    .line 60
    goto :goto_2

    .line 61
    :cond_3
    move-object v4, v12

    .line 62
    :goto_2
    move-object/from16 v16, v1

    .line 63
    move-object v8, v3

    .line 65
    move-object v9, v4

    .line 66
    :goto_3
    if-nez v10, :cond_4

    .line 67
    move-object/from16 v18, v2

    .line 69
    goto :goto_4

    .line 71
    :cond_4
    new-instance v1, Landroid/graphics/Rect;

    .line 72
    iget v2, v10, Landroid/graphics/Rect;->left:I

    .line 74
    iget v3, v9, Landroid/graphics/Rect;->left:I

    .line 76
    sub-int/2addr v2, v3

    .line 78
    iget v3, v10, Landroid/graphics/Rect;->top:I

    .line 79
    iget v4, v9, Landroid/graphics/Rect;->top:I

    .line 81
    sub-int/2addr v3, v4

    .line 83
    iget v4, v9, Landroid/graphics/Rect;->right:I

    .line 84
    iget v5, v10, Landroid/graphics/Rect;->right:I

    .line 86
    sub-int/2addr v4, v5

    .line 88
    iget v5, v9, Landroid/graphics/Rect;->bottom:I

    .line 89
    iget v6, v10, Landroid/graphics/Rect;->bottom:I

    .line 91
    sub-int/2addr v5, v6

    .line 93
    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 94
    move-object/from16 v18, v1

    .line 97
    :goto_4
    new-instance v1, Landroid/graphics/Rect;

    .line 99
    move-object/from16 v19, v1

    .line 101
    const/4 v2, 0x0

    .line 103
    invoke-direct {v1, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 104
    new-instance v21, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;

    .line 107
    move-object/from16 v1, v21

    .line 109
    new-instance v2, Landroid/graphics/Rect;

    .line 111
    move-object v5, v2

    .line 113
    invoke-direct {v2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 114
    new-instance v0, Landroid/graphics/Rect;

    .line 117
    move-object v6, v0

    .line 119
    move-object/from16 v2, p3

    .line 120
    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 122
    new-instance v0, Landroid/graphics/Rect;

    .line 125
    move-object v7, v0

    .line 127
    invoke-direct {v0, v15}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 128
    move-object/from16 v2, p0

    .line 131
    move-object/from16 v3, p1

    .line 133
    move-object/from16 v4, p4

    .line 135
    move-object v0, v9

    .line 137
    move/from16 v9, p7

    .line 138
    move-object/from16 v10, p5

    .line 140
    move-object v14, v0

    .line 142
    move-object/from16 v15, v16

    .line 143
    move-object/from16 v16, p4

    .line 145
    move/from16 v17, p8

    .line 147
    move/from16 v20, p6

    .line 149
    invoke-direct/range {v1 .. v20}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;-><init>(Landroid/app/TaskInfo;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;ZLandroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 151
    return-object v21
    .line 154
.end method


# virtual methods
.method public abstract applySurfaceControlTransaction(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;F)V
.end method

.method public getAnimationType()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mAnimationType:I

    .line 2
    return p0
    .line 4
.end method

.method public final getContentOverlayLeash()Landroid/view/SurfaceControl;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mContentOverlay:Lcom/android/wm/shell/pip/PipContentOverlay;

    .line 2
    if-nez p0, :cond_0

    .line 4
    const/4 p0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipContentOverlay;->mLeash:Landroid/view/SurfaceControl;

    .line 8
    :goto_0
    return-object p0
    .line 10
.end method

.method public getEndValue()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mEndValue:Ljava/lang/Object;

    .line 2
    return-object p0
    .line 4
.end method

.method public getTransitionDirection()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mTransitionDirection:I

    .line 2
    return p0
    .line 4
.end method

.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mPipAnimationCallback:Lcom/android/wm/shell/pip/PipAnimationController$PipAnimationCallback;

    .line 2
    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/pip/PipAnimationController$PipAnimationCallback;->onPipAnimationCancel(Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;)V

    .line 6
    :cond_0
    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mTransitionDirection:I

    .line 10
    return-void
    .line 12
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-boolean p1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mHasRequestedEnd:Z

    .line 2
    if-eqz p1, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mHasRequestedEnd:Z

    .line 8
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mEndValue:Ljava/lang/Object;

    .line 10
    iput-object p1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mCurrentValue:Ljava/lang/Object;

    .line 12
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    .line 14
    check-cast p1, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;

    .line 16
    invoke-virtual {p1}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 18
    move-result-object p1

    .line 21
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mLeash:Landroid/view/SurfaceControl;

    .line 22
    iget v1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mTransitionDirection:I

    .line 24
    invoke-virtual {p0, v1, v0, p1}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->onEndTransaction(ILandroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    .line 26
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mPipAnimationCallback:Lcom/android/wm/shell/pip/PipAnimationController$PipAnimationCallback;

    .line 29
    if-eqz v0, :cond_1

    .line 31
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mTaskInfo:Landroid/app/TaskInfo;

    .line 33
    invoke-virtual {v0, v1, p1, p0}, Lcom/android/wm/shell/pip/PipAnimationController$PipAnimationCallback;->onPipAnimationEnd(Landroid/app/TaskInfo;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;)V

    .line 35
    :cond_1
    const/4 p1, 0x0

    .line 38
    iput p1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mTransitionDirection:I

    .line 39
    return-void
    .line 41
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mStartValue:Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mCurrentValue:Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mLeash:Landroid/view/SurfaceControl;

    .line 6
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    .line 8
    check-cast v0, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;

    .line 10
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 12
    move-result-object v0

    .line 15
    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->onStartTransaction(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    .line 16
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mPipAnimationCallback:Lcom/android/wm/shell/pip/PipAnimationController$PipAnimationCallback;

    .line 19
    if-eqz p1, :cond_0

    .line 21
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/pip/PipAnimationController$PipAnimationCallback;->onPipAnimationStart(Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;)V

    .line 23
    :cond_0
    return-void
    .line 26
.end method

.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mHasRequestedEnd:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mLeash:Landroid/view/SurfaceControl;

    .line 7
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    .line 9
    check-cast v1, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;

    .line 11
    invoke-virtual {v1}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 13
    move-result-object v1

    .line 16
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 17
    move-result p1

    .line 20
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->applySurfaceControlTransaction(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;F)V

    .line 21
    return-void
    .line 24
.end method

.method public onEndTransaction(ILandroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public abstract onStartTransaction(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V
.end method

.method public final reattachContentOverlay(Lcom/android/wm/shell/pip/PipContentOverlay;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    .line 2
    check-cast v0, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;

    .line 4
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 6
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mContentOverlay:Lcom/android/wm/shell/pip/PipContentOverlay;

    .line 10
    if-eqz v1, :cond_0

    .line 12
    invoke-virtual {v1, v0}, Lcom/android/wm/shell/pip/PipContentOverlay;->detach(Landroid/view/SurfaceControl$Transaction;)V

    .line 14
    :cond_0
    iput-object p1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mContentOverlay:Lcom/android/wm/shell/pip/PipContentOverlay;

    .line 17
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mLeash:Landroid/view/SurfaceControl;

    .line 19
    invoke-virtual {p1, v0, p0}, Lcom/android/wm/shell/pip/PipContentOverlay;->attach(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 21
    return-void
    .line 24
.end method

.method public final setDestinationBounds(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mDestinationBounds:Landroid/graphics/Rect;

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4
    iget p1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mAnimationType:I

    .line 7
    const/4 v0, 0x1

    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mLeash:Landroid/view/SurfaceControl;

    .line 12
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    .line 14
    check-cast v0, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;

    .line 16
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 18
    move-result-object v0

    .line 21
    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->onStartTransaction(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    .line 22
    :cond_0
    return-void
    .line 25
.end method

.method public setPipAnimationCallback(Lcom/android/wm/shell/pip/PipAnimationController$PipAnimationCallback;)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mPipAnimationCallback:Lcom/android/wm/shell/pip/PipAnimationController$PipAnimationCallback;

    .line 2
    return-object p0
    .line 4
.end method

.method public setSurfaceControlTransactionFactory(Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    .line 2
    return-void
    .line 4
.end method

.method public setTransitionDirection(I)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_0

    .line 3
    iput p1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mTransitionDirection:I

    .line 5
    :cond_0
    return-object p0
    .line 7
.end method

.method public final shouldApplyShadowRadius()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mTransitionDirection:I

    .line 2
    invoke-static {v0}, Lcom/android/wm/shell/pip/PipAnimationController;->isOutPipDirection(I)Z

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_1

    .line 9
    iget p0, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mTransitionDirection:I

    .line 11
    const/4 v0, 0x5

    .line 13
    const/4 v2, 0x1

    .line 14
    if-ne p0, v0, :cond_0

    .line 15
    move p0, v2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move p0, v1

    .line 19
    :goto_0
    if-nez p0, :cond_1

    .line 20
    move v1, v2

    .line 22
    :cond_1
    return v1
    .line 23
.end method

.method public abstract updateEndValue(Ljava/lang/Object;)V
.end method
