.class public interface abstract Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# virtual methods
.method public abstract destroyWindowDecoration(Landroid/app/ActivityManager$RunningTaskInfo;)V
.end method

.method public getBottomCaptionHeight()I
    .locals 0

    .line 1
    const/4 p0, -0x1

    .line 2
    return p0
    .line 3
.end method

.method public getCaptionHeight(Z)I
    .locals 0

    .line 1
    const/4 p0, -0x1

    .line 2
    return p0
    .line 3
.end method

.method public getMiuiFreeformModeController()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public onFreeformCaptionClicked(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onInfiniteModeResizing(ILandroid/graphics/Rect;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onInfiniteModeResizingFinished(IF)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onMiuiFreeformAvoidEnd(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onMiuiFreeformAvoidStart(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onMiuiFreeformBottomDragEnd(IZ)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onMiuiFreeformBottomDragStart(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onMiuiFreeformHandleEventEnd(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onMiuiFreeformHide(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onMiuiFreeformMiniTapEnd(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onMiuiFreeformMiniTapStart(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onMiuiFreeformMoveEnd(IZ)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onMiuiFreeformMoveStart(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onMiuiFreeformResizeEnd(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onMiuiFreeformResizeStart(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onMiuiFreeformScaleChanged(IF)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onMiuiFreeformShow(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public abstract onTaskChanging(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
.end method

.method public abstract onTaskClosing(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
.end method

.method public abstract onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
.end method

.method public abstract onTaskOpening(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)Z
.end method

.method public abstract onTransitionFinished(Landroid/os/IBinder;)V
.end method

.method public abstract onTransitionMerged(Landroid/os/IBinder;Landroid/os/IBinder;)V
.end method

.method public abstract onTransitionReady(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;)V
.end method

.method public setBottomCaptionVisibility(Landroid/app/ActivityManager$RunningTaskInfo;Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setCaptionVisibility(Landroid/app/ActivityManager$RunningTaskInfo;Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public abstract setFreeformTaskTransitionStarter(Lcom/android/wm/shell/freeform/FreeformTaskTransitionStarter;)V
.end method

.method public setFullscreenTaskListener(Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setMiuiFreeFormTouchExcludeRegion(Landroid/graphics/Region;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setMiuiFreeformModeController(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public syncBoundsChange(ILandroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
