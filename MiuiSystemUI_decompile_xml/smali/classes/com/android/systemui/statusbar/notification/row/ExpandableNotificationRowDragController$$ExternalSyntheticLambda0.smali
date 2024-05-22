.class public final synthetic Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnDragListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    .line 7
    move-result p0

    .line 10
    const/4 v0, 0x1

    .line 11
    if-eq p0, v0, :cond_6

    .line 12
    const/4 v1, 0x4

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eq p0, v1, :cond_0

    .line 16
    move v0, v2

    .line 18
    goto/16 :goto_2

    .line 19
    :cond_0
    invoke-virtual {p2}, Landroid/view/DragEvent;->getResult()Z

    .line 21
    move-result p0

    .line 24
    if-eqz p0, :cond_4

    .line 25
    instance-of p0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 27
    if-eqz p0, :cond_5

    .line 29
    move-object p0, p1

    .line 31
    check-cast p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 32
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mOnDragSuccessListener:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnDragSuccessListener;

    .line 34
    if-eqz p2, :cond_5

    .line 36
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 38
    move-result-object p0

    .line 41
    check-cast p2, Lcom/android/systemui/statusbar/notification/NotificationClicker$1;

    .line 42
    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/NotificationClicker$1;->this$0:Lcom/android/systemui/statusbar/notification/NotificationClicker;

    .line 44
    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/NotificationClicker;->mNotificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

    .line 46
    check-cast p2, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;

    .line 48
    iget-object v1, p2, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mVisibilityProvider:Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;

    .line 50
    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/provider/NotificationVisibilityProviderImpl;

    .line 52
    invoke-virtual {v1, p0, v0}, Lcom/android/systemui/statusbar/notification/collection/provider/NotificationVisibilityProviderImpl;->obtain(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Lcom/android/internal/statusbar/NotificationVisibility;

    .line 54
    move-result-object v1

    .line 57
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 58
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 60
    move-result-object v3

    .line 63
    iget v3, v3, Landroid/app/Notification;->flags:I

    .line 64
    const/16 v4, 0x10

    .line 66
    and-int/2addr v3, v4

    .line 68
    if-eq v3, v4, :cond_1

    .line 69
    move v3, v2

    .line 71
    goto :goto_0

    .line 72
    :cond_1
    move v3, v0

    .line 73
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 74
    if-nez v3, :cond_2

    .line 76
    iget-object v3, p2, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 78
    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->isNotificationKeptForRemoteInputHistory(Ljava/lang/String;)Z

    .line 80
    move-result v3

    .line 83
    if-eqz v3, :cond_3

    .line 84
    :cond_2
    iget-object v3, p2, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mOnUserInteractionCallback:Lcom/android/systemui/statusbar/notification/collection/inflation/OnUserInteractionCallbackImpl;

    .line 86
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    new-instance v5, Lcom/android/systemui/statusbar/notification/collection/inflation/OnUserInteractionCallbackImpl$$ExternalSyntheticLambda0;

    .line 91
    invoke-direct {v5, v3}, Lcom/android/systemui/statusbar/notification/collection/inflation/OnUserInteractionCallbackImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/collection/inflation/OnUserInteractionCallbackImpl;)V

    .line 93
    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/collection/inflation/OnUserInteractionCallbackImpl;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    .line 96
    invoke-virtual {v3, p0, v0, v5}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->registerFutureDismissal(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ILcom/android/systemui/statusbar/notification/collection/NotifCollection$DismissedByUserStatsCreator;)Lcom/android/systemui/statusbar/notification/collection/NotifCollection$FutureDismissal;

    .line 98
    move-result-object p0

    .line 101
    new-instance v3, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$$ExternalSyntheticLambda2;

    .line 102
    invoke-direct {v3, p2, p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;Ljava/lang/Object;I)V

    .line 104
    iget-object p0, p2, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mMainThreadHandler:Landroid/os/Handler;

    .line 107
    invoke-virtual {p0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 109
    :cond_3
    iget-object p0, p2, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mClickNotifier:Lcom/android/systemui/statusbar/NotificationClickNotifier;

    .line 112
    invoke-virtual {p0, v4, v1}, Lcom/android/systemui/statusbar/NotificationClickNotifier;->onNotificationClick(Ljava/lang/String;Lcom/android/internal/statusbar/NotificationVisibility;)V

    .line 114
    iput-boolean v2, p2, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mIsCollapsingToShowActivityOverLockscreen:Z

    .line 117
    goto :goto_1

    .line 119
    :cond_4
    invoke-virtual {p2}, Landroid/view/DragEvent;->getDragSurface()Landroid/view/SurfaceControl;

    .line 120
    move-result-object p0

    .line 123
    new-instance p2, Landroid/view/SurfaceControl$Transaction;

    .line 124
    invoke-direct {p2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 126
    const/4 v1, 0x2

    .line 129
    new-array v1, v1, [F

    .line 130
    fill-array-data v1, :array_0

    .line 132
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 135
    move-result-object v1

    .line 138
    const-wide/16 v2, 0xc8

    .line 139
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 141
    sget-object v2, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 144
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 146
    new-instance v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController$$ExternalSyntheticLambda1;

    .line 149
    invoke-direct {v2, p2, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController$$ExternalSyntheticLambda1;-><init>(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 151
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 154
    new-instance v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController$1;

    .line 157
    invoke-direct {v2, p2, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController$1;-><init>(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 159
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 162
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 165
    :cond_5
    :goto_1
    const/4 p0, 0x0

    .line 168
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 169
    :cond_6
    :goto_2
    return v0

    .line 172
    nop

    .line 173
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
    .line 174
.end method
