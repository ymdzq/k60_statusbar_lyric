.class public final Lcom/android/systemui/statusbar/phone/MiuiHeadsUpTouchHelper;
.super Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchCallback;


# instance fields
.field public final callback:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;

.field public final hunViewController:Lcom/android/systemui/shade/NotificationPanelViewController$11;

.field public final mContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

.field public final mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

.field public final mStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

.field public final mTouchHelper:Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper;

.field public mTrackingMiniWindowHeadsUp:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/shade/HeadsUpTouchCallbackWrapper;Lcom/android/systemui/shade/MiuiNotificationPanelViewController$headsUpViewController$1;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;-><init>(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;Lcom/android/systemui/shade/NotificationPanelViewController$11;)V

    .line 2
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/MiuiHeadsUpTouchHelper;->callback:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;

    .line 5
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/MiuiHeadsUpTouchHelper;->hunViewController:Lcom/android/systemui/shade/NotificationPanelViewController$11;

    .line 7
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiHeadsUpTouchHelper;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/MiuiHeadsUpTouchHelper;->mContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/MiuiHeadsUpTouchHelper;->mStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 13
    new-instance p1, Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper;

    .line 15
    sget-object p2, Lcom/miui/systemui/events/MiniWindowEventSource;->HEADS_UP:Lcom/miui/systemui/events/MiniWindowEventSource;

    .line 17
    invoke-direct {p1, p0, p2}, Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper;-><init>(Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchCallback;Lcom/miui/systemui/events/MiniWindowEventSource;)V

    .line 19
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiHeadsUpTouchHelper;->mTouchHelper:Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper;

    .line 22
    return-void
    .line 24
.end method


# virtual methods
.method public final canChildBePicked(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiHeadsUpTouchHelper;->callback:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;

    .line 2
    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;->isExpanded()Z

    .line 4
    move-result p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    instance-of p0, p1, Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow;

    .line 10
    if-eqz p0, :cond_0

    .line 12
    move-object p0, p1

    .line 14
    check-cast p0, Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow;

    .line 15
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsHeadsUp:Z

    .line 17
    if-eqz p0, :cond_0

    .line 19
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isPinned()Z

    .line 21
    move-result p0

    .line 24
    if-eqz p0, :cond_0

    .line 25
    const/4 p0, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    :goto_0
    return p0
    .line 30
.end method

.method public final getChildAtRawPosition(FF)Lcom/android/systemui/statusbar/notification/row/ExpandableView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiHeadsUpTouchHelper;->callback:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;

    .line 2
    invoke-interface {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;->getChildAtRawPosition(FF)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiHeadsUpTouchHelper;->callback:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;

    .line 2
    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;->getContext()Landroid/content/Context;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public final onExpandedParamsUpdated(Lcom/android/systemui/statusbar/notification/MiniWindowExpandParameters;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiHeadsUpTouchHelper;->mContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    .line 2
    check-cast p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;->applyLaunchAnimationParams(Lcom/android/systemui/statusbar/notification/LaunchAnimationParameters;)V

    .line 6
    return-void
    .line 9
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHeadsUpTouchHelper;->mTouchHelper:Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper;

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 10
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_0
    const/4 p0, 0x1

    .line 15
    return p0
    .line 16
.end method

.method public final onMiniWindowAppLaunched()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiHeadsUpTouchHelper;->mStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 3
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setHeadsUpGoingAwayAnimationsAllowed(Z)V

    .line 5
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiHeadsUpTouchHelper;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->releaseAllImmediately()V

    .line 10
    const/4 p0, 0x1

    .line 13
    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setHeadsUpGoingAwayAnimationsAllowed(Z)V

    .line 14
    return-void
    .line 17
.end method

.method public final onMiniWindowReset()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHeadsUpTouchHelper;->mContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    .line 2
    check-cast v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;

    .line 4
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;->applyLaunchAnimationParams(Lcom/android/systemui/statusbar/notification/LaunchAnimationParameters;)V

    .line 7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHeadsUpTouchHelper;->hunViewController:Lcom/android/systemui/shade/NotificationPanelViewController$11;

    .line 10
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController$11;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 12
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeHeadsUpTracker:Lcom/android/systemui/shade/NotificationPanelViewController$11;

    .line 14
    invoke-static {v0, v1}, Lcom/android/systemui/shade/NotificationPanelViewController$11;->-$$Nest$mupdateTrackingHeadsUp(Lcom/android/systemui/shade/NotificationPanelViewController$11;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 16
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->setTrackingHeadsUp(Z)V

    .line 20
    return-void
    .line 23
.end method

.method public final onMiniWindowTrackingEnd()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHeadsUpTouchHelper;->mTrackingMiniWindowHeadsUp:Z

    .line 3
    return-void
    .line 5
.end method

.method public final onMiniWindowTrackingStart()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHeadsUpTouchHelper;->mTrackingMiniWindowHeadsUp:Z

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->setTrackingHeadsUp(Z)V

    .line 5
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiHeadsUpTouchHelper;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 8
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getTopHeadsUpEntry()Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;

    .line 10
    move-result-object v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    iget-boolean v2, v1, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->extended:Z

    .line 17
    if-nez v2, :cond_1

    .line 19
    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->extended:Z

    .line 21
    const/4 v0, 0x0

    .line 23
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->updateEntry(Z)V

    .line 24
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiHeadsUpTouchHelper;->hunViewController:Lcom/android/systemui/shade/NotificationPanelViewController$11;

    .line 27
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$11;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 29
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 31
    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 38
    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBarService;->clearNotificationEffects()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :catch_0
    return-void
    .line 43
.end method

.method public final onStartMiniWindowExpandAnimation()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHeadsUpTouchHelper;->mTouchHelper:Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper;

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 10
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_0
    const/4 p0, 0x1

    .line 15
    return p0
    .line 16
.end method
