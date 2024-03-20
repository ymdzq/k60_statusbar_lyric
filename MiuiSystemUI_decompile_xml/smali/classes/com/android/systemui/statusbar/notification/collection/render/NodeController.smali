.class public interface abstract Lcom/android/systemui/statusbar/notification/collection/render/NodeController;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# virtual methods
.method public abstract addChildAt(Lcom/android/systemui/statusbar/notification/collection/render/NodeController;I)V
.end method

.method public abstract getChildAt(I)Landroid/view/View;
.end method

.method public abstract getChildCount()I
.end method

.method public abstract getNodeLabel()Ljava/lang/String;
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public abstract moveChildTo(Lcom/android/systemui/statusbar/notification/collection/render/NodeController;I)V
.end method

.method public abstract offerToKeepInParentForAnimation()Z
.end method

.method public abstract onViewAdded()V
.end method

.method public abstract onViewMoved()V
.end method

.method public abstract onViewRemoved()V
.end method

.method public abstract removeChild(Lcom/android/systemui/statusbar/notification/collection/render/NodeController;Z)V
.end method

.method public abstract removeFromParentIfKeptForAnimation()Z
.end method

.method public abstract resetKeepInParentForAnimation()V
.end method
