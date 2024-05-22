.class public interface abstract Lcom/android/systemui/statusbar/notification/collection/render/NodeController;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


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
