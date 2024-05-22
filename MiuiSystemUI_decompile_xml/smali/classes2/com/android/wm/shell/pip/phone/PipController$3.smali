.class public final Lcom/android/wm/shell/pip/phone/PipController$3;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/pip/PipParamsChangedForwarder$PipParamsChangedCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/pip/phone/PipController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/pip/phone/PipController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController$3;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onActionsChanged(Ljava/util/List;Landroid/app/RemoteAction;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$3;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    .line 4
    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mAppActions:Ljava/util/List;

    .line 6
    iput-object p2, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mCloseAction:Landroid/app/RemoteAction;

    .line 8
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->updateMenuActions()V

    .line 10
    return-void
    .line 13
.end method

.method public final onAspectRatioChanged(F)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController$3;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    .line 2
    iget-object v1, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 4
    iput p1, v1, Lcom/android/wm/shell/pip/PipBoundsState;->mAspectRatio:F

    .line 6
    invoke-virtual {v1}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 8
    move-result-object v1

    .line 11
    iget-object v2, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 12
    iget v3, v2, Lcom/android/wm/shell/pip/PipBoundsState;->mAspectRatio:F

    .line 14
    iget-object v4, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    .line 16
    invoke-virtual {v4, v1, v3}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getAdjustedDestinationBounds(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    .line 18
    move-result-object v1

    .line 21
    const-string v3, "Missing destination bounds"

    .line 22
    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    invoke-virtual {v2}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 27
    move-result-object v2

    .line 30
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 31
    move-result v2

    .line 34
    iget-object v3, v0, Lcom/android/wm/shell/pip/phone/PipController;->mTouchHandler:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    .line 35
    if-nez v2, :cond_0

    .line 37
    iget p1, v0, Lcom/android/wm/shell/pip/phone/PipController;->mEnterAnimationDuration:I

    .line 39
    const/4 v2, 0x0

    .line 41
    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 42
    invoke-virtual {v0, v1, p1, v2}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->scheduleAnimateResizePip(Landroid/graphics/Rect;II)V

    .line 44
    iget-object p1, v3, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;

    .line 47
    iget-object p1, p1, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mUserResizeBounds:Landroid/graphics/Rect;

    .line 49
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 51
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController$3;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    .line 54
    const/4 v1, 0x0

    .line 56
    const/4 v3, 0x0

    .line 57
    const/4 v4, 0x0

    .line 58
    const/4 v5, 0x0

    .line 59
    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/pip/phone/PipController;->updateMovementBounds(Landroid/graphics/Rect;ZZZLandroid/window/WindowContainerTransaction;)V

    .line 60
    goto :goto_0

    .line 63
    :cond_0
    iget-object p0, v3, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 64
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mNormalBounds:Landroid/graphics/Rect;

    .line 66
    invoke-virtual {v3, p0, p1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->updatePipSizeConstraints(Landroid/graphics/Rect;F)V

    .line 68
    :goto_0
    return-void
    .line 71
.end method
