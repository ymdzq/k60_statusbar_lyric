.class public interface abstract Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# virtual methods
.method public abstract canChildBeDismissed(Landroid/view/View;)Z
.end method

.method public abstract canChildBeDismissedInDirection(Landroid/view/View;)Z
.end method

.method public bridge synthetic canChildBeDragged(ILandroid/view/View;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method

.method public abstract getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;
.end method

.method public abstract getConstrainSwipeStartPosition()I
.end method

.method public abstract getFalsingThresholdFactor()F
.end method

.method public abstract handleChildViewDismissed(Landroid/view/View;)V
.end method

.method public abstract isAntiFalsingNeeded()Z
.end method

.method public abstract onBeginDrag(Landroid/view/View;)V
.end method

.method public abstract onChildDismissed(Landroid/view/View;)V
.end method

.method public abstract onChildSnappedBack(FLandroid/view/View;)V
.end method

.method public abstract onDismiss()V
.end method

.method public abstract onDragCancelled(Landroid/view/View;)V
.end method

.method public abstract onLongPressSent(Landroid/view/View;)V
.end method

.method public abstract onSnooze(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;)V
.end method

.method public abstract shouldDismissQuickly()Z
.end method

.method public abstract updateSwipeProgress(Landroid/view/View;FZ)Z
.end method
