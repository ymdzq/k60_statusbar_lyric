.class public final Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationSwipeCallback;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;


# instance fields
.field public final base:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;

.field public final mediaDataFilter:Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;

.field public final mediaTimeoutListener:Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener;

.field public final zenModeViewController:Lcom/android/systemui/statusbar/notification/zen/ZenModeViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener;Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;Lcom/android/systemui/statusbar/notification/zen/ZenModeViewController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationSwipeCallback;->base:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationSwipeCallback;->mediaTimeoutListener:Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationSwipeCallback;->mediaDataFilter:Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationSwipeCallback;->zenModeViewController:Lcom/android/systemui/statusbar/notification/zen/ZenModeViewController;

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final canChildBeDismissed(Landroid/view/View;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/stack/MiuiMediaHeaderView;

    .line 2
    if-eqz v0, :cond_3

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationSwipeCallback;->mediaTimeoutListener:Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener;

    .line 6
    iget-object p0, p0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener;->mediaListeners:Ljava/util/Map;

    .line 8
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    .line 10
    move-result p1

    .line 13
    const/4 v0, 0x1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    goto :goto_0

    .line 17
    :cond_0
    check-cast p0, Ljava/util/LinkedHashMap;

    .line 18
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 20
    move-result-object p0

    .line 23
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object p0

    .line 27
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    move-result p1

    .line 31
    if-eqz p1, :cond_2

    .line 32
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    move-result-object p1

    .line 37
    check-cast p1, Ljava/util/Map$Entry;

    .line 38
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 40
    move-result-object p1

    .line 43
    check-cast p1, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;

    .line 44
    invoke-virtual {p1}, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;->isPlaying$1()Z

    .line 46
    move-result p1

    .line 49
    if-eqz p1, :cond_1

    .line 50
    move p0, v0

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 54
    :goto_1
    xor-int/2addr p0, v0

    .line 55
    return p0

    .line 56
    :cond_3
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/zen/ZenModeView;

    .line 57
    if-eqz v0, :cond_4

    .line 59
    check-cast p1, Lcom/android/systemui/statusbar/notification/zen/ZenModeView;

    .line 61
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/zen/ZenModeView;->getCanSwipe()Z

    .line 63
    move-result p0

    .line 66
    return p0

    .line 67
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationSwipeCallback;->base:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;

    .line 68
    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;->canChildBeDismissed(Landroid/view/View;)Z

    .line 70
    move-result p0

    .line 73
    return p0
    .line 74
.end method

.method public final canChildBeDismissedInDirection(Landroid/view/View;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationSwipeCallback;->canChildBeDismissed(Landroid/view/View;)Z

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public final canChildBeDragged(ILandroid/view/View;)Z
    .locals 3

    .line 1
    instance-of v0, p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 2
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    move-object v0, p2

    .line 8
    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 9
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 11
    move-result-object v0

    .line 14
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 15
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->isPersistent()Z

    .line 17
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    move v0, v1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v0, v2

    .line 25
    :goto_0
    if-eqz v0, :cond_1

    .line 26
    move v1, v2

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    instance-of v0, p2, Lcom/android/systemui/statusbar/notification/stack/MiuiMediaHeaderView;

    .line 30
    if-eqz v0, :cond_2

    .line 32
    check-cast p2, Lcom/android/systemui/statusbar/notification/stack/MiuiMediaHeaderView;

    .line 34
    iget-object p0, p2, Lcom/android/systemui/statusbar/notification/stack/MiuiMediaHeaderView;->mScrollView:Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaScrollView;

    .line 36
    if-nez p0, :cond_3

    .line 38
    const p0, 0x7f0a0580    # @id/media_carousel_scroller

    .line 40
    invoke-virtual {p2, p0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 43
    move-result-object p0

    .line 46
    check-cast p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaScrollView;

    .line 47
    iput-object p0, p2, Lcom/android/systemui/statusbar/notification/stack/MiuiMediaHeaderView;->mScrollView:Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaScrollView;

    .line 49
    goto :goto_1

    .line 51
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationSwipeCallback;->base:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;

    .line 52
    invoke-interface {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;->canChildBeDragged(ILandroid/view/View;)Z

    .line 54
    move-result v1

    .line 57
    :cond_3
    :goto_1
    return v1
    .line 58
.end method

.method public final getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationSwipeCallback;->base:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;

    .line 2
    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;->getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public final getConstrainSwipeStartPosition()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationSwipeCallback;->base:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;

    .line 2
    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;->getConstrainSwipeStartPosition()I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final getFalsingThresholdFactor()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationSwipeCallback;->base:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;

    .line 2
    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;->getFalsingThresholdFactor()F

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final handleChildViewDismissed(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationSwipeCallback;->base:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;

    .line 2
    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;->handleChildViewDismissed(Landroid/view/View;)V

    .line 4
    return-void
    .line 7
.end method

.method public final isAntiFalsingNeeded()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationSwipeCallback;->base:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;

    .line 2
    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;->isAntiFalsingNeeded()Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final onBeginDrag(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationSwipeCallback;->base:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;

    .line 2
    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;->onBeginDrag(Landroid/view/View;)V

    .line 4
    return-void
    .line 7
.end method

.method public final onChildDismissed(Landroid/view/View;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/zen/ZenModeView;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationSwipeCallback;->zenModeViewController:Lcom/android/systemui/statusbar/notification/zen/ZenModeViewController;

    .line 6
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/zen/ZenModeViewController;->manuallyDismissed:Z

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/zen/ZenModeViewController;->updateVisibility()V

    .line 11
    const-class p0, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 14
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    move-result-object p0

    .line 19
    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 20
    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 22
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->getShadeViewController()Lcom/android/systemui/shade/ShadeViewController;

    .line 24
    move-result-object p0

    .line 27
    check-cast p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 28
    invoke-virtual {p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->updateNotificationState$1()V

    .line 30
    return-void

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationSwipeCallback;->base:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;

    .line 34
    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;->onChildDismissed(Landroid/view/View;)V

    .line 36
    instance-of p1, p1, Lcom/android/systemui/statusbar/notification/stack/MiuiMediaHeaderView;

    .line 39
    if-eqz p1, :cond_1

    .line 41
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationSwipeCallback;->mediaDataFilter:Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;

    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;->onSwipeToDismiss()V

    .line 45
    :cond_1
    return-void
    .line 48
.end method

.method public final onChildSnappedBack(FLandroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationSwipeCallback;->base:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;

    .line 2
    invoke-interface {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;->onChildSnappedBack(FLandroid/view/View;)V

    .line 4
    return-void
    .line 7
.end method

.method public final onDismiss()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationSwipeCallback;->base:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;

    .line 2
    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;->onDismiss()V

    .line 4
    return-void
    .line 7
.end method

.method public final onDragCancelled(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationSwipeCallback;->base:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;

    .line 2
    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;->onDragCancelled(Landroid/view/View;)V

    .line 4
    return-void
    .line 7
.end method

.method public final onLongPressSent(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationSwipeCallback;->base:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;

    .line 2
    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;->onLongPressSent(Landroid/view/View;)V

    .line 4
    return-void
    .line 7
.end method

.method public final onSnooze(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationSwipeCallback;->base:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;

    .line 2
    invoke-interface {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;->onSnooze(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;)V

    .line 4
    return-void
    .line 7
.end method

.method public final shouldDismissQuickly()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationSwipeCallback;->base:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;

    .line 2
    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;->shouldDismissQuickly()Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final updateSwipeProgress(Landroid/view/View;FZ)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationSwipeCallback;->base:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;

    .line 2
    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;->updateSwipeProgress(Landroid/view/View;FZ)Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method
