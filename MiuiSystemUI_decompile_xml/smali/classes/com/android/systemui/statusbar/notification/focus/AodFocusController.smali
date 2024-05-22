.class public final Lcom/android/systemui/statusbar/notification/focus/AodFocusController;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/notification/collection/coordinator/Coordinator;


# instance fields
.field public final mAodFocusNotifications:Ljava/util/List;

.field public final mAodFocusViews:Ljava/util/Map;

.field public mContext:Landroid/content/Context;

.field public mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

.field public mDumpManager:Lcom/android/systemui/dump/DumpManager;

.field public mFocusController:Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;

.field public mFocusRoot:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    .line 5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/focus/AodFocusController;->mAodFocusViews:Ljava/util/Map;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/focus/AodFocusController;->mAodFocusNotifications:Ljava/util/List;

    .line 17
    return-void
    .line 19
.end method


# virtual methods
.method public final attach(Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/focus/AodFocusController;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 2
    invoke-virtual {p1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    .line 4
    new-instance p1, Landroid/widget/FrameLayout;

    .line 7
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/focus/AodFocusController;->mContext:Landroid/content/Context;

    .line 9
    invoke-direct {p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 11
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/focus/AodFocusController;->mFocusRoot:Landroid/view/ViewGroup;

    .line 14
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/focus/AodFocusController;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 16
    new-instance v0, Lcom/android/systemui/statusbar/notification/focus/AodFocusController$$ExternalSyntheticLambda0;

    .line 18
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/focus/AodFocusController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/focus/AodFocusController;)V

    .line 20
    iput-object v0, p1, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mAodFocusViewListener:Lcom/android/systemui/statusbar/notification/focus/AodFocusController$$ExternalSyntheticLambda0;

    .line 23
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/focus/AodFocusController;->mFocusController:Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;

    .line 25
    new-instance v0, Lcom/android/systemui/statusbar/notification/focus/AodFocusController$1;

    .line 27
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/focus/AodFocusController$1;-><init>(Lcom/android/systemui/statusbar/notification/focus/AodFocusController;)V

    .line 29
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;->mAodFocusNotifListeners:Ljava/util/List;

    .line 32
    check-cast p0, Ljava/util/ArrayList;

    .line 34
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    return-void
    .line 39
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/focus/AodFocusController;->mAodFocusNotifications:Ljava/util/List;

    .line 2
    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 4
    move-result-object p2

    .line 7
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$$ExternalSyntheticLambda5;

    .line 8
    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$$ExternalSyntheticLambda5;-><init>()V

    .line 10
    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 13
    move-result-object p2

    .line 16
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance v0, Lcom/android/systemui/statusbar/notification/focus/AodFocusController$$ExternalSyntheticLambda1;

    .line 20
    const/4 v1, 0x0

    .line 22
    invoke-direct {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/focus/AodFocusController$$ExternalSyntheticLambda1;-><init>(Ljava/io/PrintWriter;I)V

    .line 23
    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 26
    const-string p2, "HasView:"

    .line 29
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 31
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/focus/AodFocusController;->mAodFocusViews:Ljava/util/Map;

    .line 34
    check-cast p0, Ljava/util/HashMap;

    .line 36
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 38
    move-result-object p0

    .line 41
    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    .line 42
    move-result-object p0

    .line 45
    new-instance p2, Lcom/android/systemui/statusbar/notification/focus/AodFocusController$$ExternalSyntheticLambda1;

    .line 46
    const/4 v0, 0x1

    .line 48
    invoke-direct {p2, p1, v0}, Lcom/android/systemui/statusbar/notification/focus/AodFocusController$$ExternalSyntheticLambda1;-><init>(Ljava/io/PrintWriter;I)V

    .line 49
    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 52
    return-void
    .line 55
.end method

.method public final getCurrentEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/focus/AodFocusController;->mAodFocusNotifications:Ljava/util/List;

    .line 2
    move-object v0, p0

    .line 4
    check-cast v0, Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 7
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    const/4 p0, 0x0

    .line 13
    return-object p0

    .line 14
    :cond_0
    move-object v0, p0

    .line 15
    check-cast v0, Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 18
    move-result v0

    .line 21
    add-int/lit8 v0, v0, -0x1

    .line 22
    check-cast p0, Ljava/util/ArrayList;

    .line 24
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object p0

    .line 29
    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 30
    return-object p0
    .line 32
.end method

.method public final updateCurrent(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/focus/AodFocusController;->mFocusRoot:Landroid/view/ViewGroup;

    .line 2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    .line 4
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    if-eqz v0, :cond_5

    .line 13
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/focus/AodFocusController;->mFocusRoot:Landroid/view/ViewGroup;

    .line 15
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 17
    if-eqz p1, :cond_5

    .line 20
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/focus/AodFocusController;->mAodFocusViews:Ljava/util/Map;

    .line 22
    move-object v1, v0

    .line 24
    check-cast v1, Ljava/util/HashMap;

    .line 25
    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 27
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    move-result-object v1

    .line 32
    check-cast v1, Landroid/view/View;

    .line 33
    const-string v3, "FocusNotification"

    .line 35
    if-nez v1, :cond_4

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    const-string v4, "enable=true applyCache="

    .line 41
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v1

    .line 52
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 56
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 58
    move-result-object v1

    .line 61
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/focus/FocusUtils;->isFocusNotification(Landroid/app/Notification;)Z

    .line 62
    move-result v1

    .line 65
    const/4 v4, 0x0

    .line 66
    if-nez v1, :cond_1

    .line 67
    goto :goto_1

    .line 69
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 70
    move-result-object v1

    .line 73
    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 74
    const-string v5, "miui.focus.rvAod"

    .line 76
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 78
    move-result-object v1

    .line 81
    instance-of v5, v1, Landroid/widget/RemoteViews;

    .line 82
    if-eqz v5, :cond_2

    .line 84
    check-cast v1, Landroid/widget/RemoteViews;

    .line 86
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 88
    move-result-object p1

    .line 91
    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->handleFocusAppIcon(Landroid/app/Notification;Landroid/widget/RemoteViews;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    goto :goto_2

    .line 95
    :catch_0
    move-exception p1

    .line 96
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 97
    :cond_2
    :goto_1
    move-object v1, v4

    .line 100
    :goto_2
    if-eqz v1, :cond_3

    .line 101
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/focus/AodFocusController;->mContext:Landroid/content/Context;

    .line 103
    invoke-virtual {v1, p1, v4}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 105
    move-result-object p1

    .line 108
    move-object v1, p1

    .line 109
    goto :goto_3

    .line 110
    :cond_3
    move-object v1, v4

    .line 111
    :goto_3
    check-cast v0, Ljava/util/HashMap;

    .line 112
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/focus/AodFocusController;->mFocusRoot:Landroid/view/ViewGroup;

    .line 117
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 119
    new-instance p0, Ljava/lang/StringBuilder;

    .line 122
    const-string p1, "enable=true Showing="

    .line 124
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    move-result-object p0

    .line 135
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_5
    return-void
    .line 139
.end method
