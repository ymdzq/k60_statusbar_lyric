.class public interface abstract Lcom/android/wm/shell/miuifreeform/infinitymode/transition/MiuiInfinityModeTransitionCoordinator$TransitionObserver;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# virtual methods
.method public abstract onMaximizeModeTransitionFinished(Landroid/view/SurfaceControl$Transaction;)V
.end method

.method public abstract onTransactionFinished()V
.end method

.method public abstract onTransactionReady(ILandroid/view/SurfaceControl$Transaction;)V
.end method

.method public abstract onTransitionFail()V
.end method

.method public abstract onTransitionMergeByBoundsChange(ILandroid/graphics/Rect;FLandroid/view/SurfaceControl$Transaction;)V
.end method

.method public abstract onTransitionMergeByModeChange([Landroid/view/RemoteAnimationTarget;Landroid/view/SurfaceControl$Transaction;)V
.end method

.method public abstract onTransitionStart([Landroid/view/RemoteAnimationTarget;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)V
.end method

.method public abstract onTransitionSuspend()V
.end method
