.class public interface abstract Lcom/android/wm/shell/miuifreeform/infinitymode/transition/MiuiInfinityModeTransitionCoordinator$TransitionObserver;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


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
