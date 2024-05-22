.class public final synthetic Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler$1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler$1;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler$1;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler$1;->this$0:Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;

    .line 4
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    .line 6
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, v0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mDismissalPending:Z

    .line 9
    iget-object v1, v0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mTemporaryBoundsPhysicsAnimator:Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 11
    sget-object v2, Lcom/android/wm/shell/animation/FloatProperties;->RECT_Y:Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_X$1;

    .line 13
    iget-object v3, v0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 15
    iget-object v3, v3, Lcom/android/wm/shell/pip/PipBoundsState;->mMovementBounds:Landroid/graphics/Rect;

    .line 17
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    .line 19
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    .line 21
    move-result-object v4

    .line 24
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 25
    move-result v4

    .line 28
    const/4 v5, 0x2

    .line 29
    mul-int/2addr v4, v5

    .line 30
    add-int/2addr v4, v3

    .line 31
    int-to-float v3, v4

    .line 32
    const/4 v4, 0x0

    .line 33
    iget-object v6, v0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 34
    invoke-virtual {v1, v2, v3, v4, v6}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)V

    .line 36
    new-instance v2, Lcom/android/wm/shell/pip/phone/PipMotionHelper$$ExternalSyntheticLambda2;

    .line 39
    invoke-direct {v2, v0, v5}, Lcom/android/wm/shell/pip/phone/PipMotionHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/pip/phone/PipMotionHelper;I)V

    .line 41
    filled-new-array {v2}, [Ljava/lang/Runnable;

    .line 44
    move-result-object v2

    .line 47
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/animation/PhysicsAnimator;->withEndActions([Ljava/lang/Runnable;)V

    .line 48
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    .line 51
    move-result-object v1

    .line 54
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 55
    int-to-float v1, v1

    .line 57
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    .line 58
    move-result-object v2

    .line 61
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 62
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    .line 64
    move-result-object v3

    .line 67
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 68
    move-result v3

    .line 71
    add-int/2addr v3, v2

    .line 72
    int-to-float v2, v3

    .line 73
    const/4 v3, 0x0

    .line 74
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->startBoundsAnimator(FFLcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda1;)V

    .line 75
    const/4 v1, 0x0

    .line 78
    iput-boolean v1, v0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mDismissalPending:Z

    .line 79
    iget-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mEnableDismissDragToEdge:Z

    .line 81
    if-nez v0, :cond_0

    .line 83
    goto :goto_0

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mTargetViewContainer:Lcom/android/wm/shell/bubbles/DismissView;

    .line 86
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/DismissView;->hide()V

    .line 88
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mPipUiEventLogger:Lcom/android/wm/shell/pip/PipUiEventLogger;

    .line 91
    sget-object v0, Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_DRAG_TO_REMOVE:Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;

    .line 93
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/pip/PipUiEventLogger;->log(Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;)V

    .line 95
    return-void
    .line 98
.end method
