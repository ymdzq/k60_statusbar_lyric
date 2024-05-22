.class public final Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final cache$delegate:Lkotlin/Lazy;

.field public final context:Landroid/content/Context;

.field public count:I

.field public headerDif:F

.field public isFoldNeedsAnim:Z

.field public isShowingUnimportant:Z

.field public final listeners:Ljava/util/List;

.field public normalTarget:F

.field public final pipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

.field public unimportantTarget:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;->context:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;->pipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 7
    new-instance p1, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager$cache$2;

    .line 9
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager$cache$2;-><init>(Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;)V

    .line 11
    invoke-static {p1}, Lkotlin/LazyKt__LazyKt;->lazy$1(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 14
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;->cache$delegate:Lkotlin/Lazy;

    .line 18
    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;->isFoldNeedsAnim:Z

    .line 21
    new-instance p1, Ljava/util/ArrayList;

    .line 23
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;->listeners:Ljava/util/List;

    .line 28
    return-void
    .line 30
.end method


# virtual methods
.method public final addListener(Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager$ShowingUnimportantChangeListener;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->shouldSuppressFold()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;->listeners:Ljava/util/List;

    .line 9
    check-cast p0, Ljava/util/ArrayList;

    .line 11
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    return-void
    .line 16
.end method

.method public final setShowingUnimportant(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;->isShowingUnimportant:Z

    .line 2
    if-ne v0, p1, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;->isShowingUnimportant:Z

    .line 7
    const-class v0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    .line 9
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 14
    check-cast v0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    .line 15
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mPanelExpanded:Ljava/lang/Boolean;

    .line 17
    if-eqz v1, :cond_2

    .line 19
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 21
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->stopNotificationLogging()V

    .line 27
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->startNotificationLogging()V

    .line 30
    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->stopNotificationLogging()V

    .line 34
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;->listeners:Ljava/util/List;

    .line 37
    check-cast p0, Ljava/util/ArrayList;

    .line 39
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 41
    move-result-object p0

    .line 44
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    move-result v0

    .line 48
    if-eqz v0, :cond_3

    .line 49
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    move-result-object v0

    .line 54
    check-cast v0, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager$ShowingUnimportantChangeListener;

    .line 55
    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager$ShowingUnimportantChangeListener;->onShowingUnimportantChanged(Z)V

    .line 57
    goto :goto_1

    .line 60
    :cond_3
    return-void
    .line 61
.end method
