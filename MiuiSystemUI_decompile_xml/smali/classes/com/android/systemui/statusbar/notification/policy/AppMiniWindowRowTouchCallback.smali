.class public interface abstract Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchCallback;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# virtual methods
.method public abstract canChildBePicked(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z
.end method

.method public abstract getChildAtRawPosition(FF)Lcom/android/systemui/statusbar/notification/row/ExpandableView;
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public onExpandedParamsUpdated(Lcom/android/systemui/statusbar/notification/MiniWindowExpandParameters;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public abstract onMiniWindowAppLaunched()V
.end method

.method public abstract onMiniWindowReset()V
.end method

.method public onMiniWindowTrackingEnd()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onMiniWindowTrackingStart()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onMiniWindowTrackingUpdate(F)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public abstract onStartMiniWindowExpandAnimation()V
.end method
