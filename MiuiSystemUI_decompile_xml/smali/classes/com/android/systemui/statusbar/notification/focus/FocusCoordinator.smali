.class public final Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/notification/collection/coordinator/Coordinator;


# instance fields
.field public final mAodFocusNotifListeners:Ljava/util/List;

.field public final mAodFocusNotifications:Ljava/util/Map;

.field public mBgHandle:Landroid/os/Handler;

.field public final mCanShowFocusObserver:Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator$1;

.field public mContext:Landroid/content/Context;

.field public mCurUpdatableFocusNnotifs:Ljava/lang/String;

.field public mDumpManager:Lcom/android/systemui/dump/DumpManager;

.field public final mFocusNotifListener:Ljava/util/List;

.field public final mFocusNotifications:Ljava/util/Map;

.field public mNotificationUpdater:Lcom/android/systemui/statusbar/notification/collection/NotifCollection$$ExternalSyntheticLambda4;

.field public mPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

.field public final mStatusBarFocusNotifListener:Ljava/util/List;

.field public final mStatusBarFocusNotifications:Ljava/util/Map;


# direct methods
.method public static -$$Nest$mupdatableFocusSettings(Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    new-instance v0, Lorg/json/JSONArray;

    .line 5
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 7
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;->mFocusNotifications:Ljava/util/Map;

    .line 10
    check-cast v1, Landroid/util/ArrayMap;

    .line 12
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 14
    move-result-object v1

    .line 17
    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 18
    move-result-object v1

    .line 21
    new-instance v2, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator$$ExternalSyntheticLambda0;

    .line 22
    const/4 v3, 0x1

    .line 24
    invoke-direct {v2, v3}, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator$$ExternalSyntheticLambda0;-><init>(I)V

    .line 25
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 28
    move-result-object v1

    .line 31
    new-instance v2, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator$$ExternalSyntheticLambda3;

    .line 32
    const/4 v4, 0x3

    .line 34
    invoke-direct {v2, v4}, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator$$ExternalSyntheticLambda3;-><init>(I)V

    .line 35
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 38
    move-result-object v1

    .line 41
    new-instance v2, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator$$ExternalSyntheticLambda2;

    .line 42
    invoke-direct {v2, v3, v0}, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 44
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 47
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;->mCurUpdatableFocusNnotifs:Ljava/lang/String;

    .line 54
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 56
    move-result v1

    .line 59
    if-eqz v1, :cond_0

    .line 60
    goto :goto_0

    .line 62
    :cond_0
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;->mCurUpdatableFocusNnotifs:Ljava/lang/String;

    .line 63
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;->mBgHandle:Landroid/os/Handler;

    .line 65
    new-instance v2, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator$$ExternalSyntheticLambda5;

    .line 67
    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 72
    :goto_0
    return-void
    .line 75
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;->mFocusNotifications:Ljava/util/Map;

    .line 10
    new-instance v0, Landroid/util/ArrayMap;

    .line 12
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;->mStatusBarFocusNotifications:Ljava/util/Map;

    .line 17
    new-instance v0, Landroid/util/ArrayMap;

    .line 19
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;->mAodFocusNotifications:Ljava/util/Map;

    .line 24
    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;->mCurUpdatableFocusNnotifs:Ljava/lang/String;

    .line 27
    new-instance v0, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator$1;

    .line 29
    sget-object v1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 31
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    .line 33
    move-result-object v1

    .line 36
    check-cast v1, Landroid/os/Handler;

    .line 37
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator$1;-><init>(Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;Landroid/os/Handler;)V

    .line 39
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;->mCanShowFocusObserver:Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator$1;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    .line 44
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;->mAodFocusNotifListeners:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    .line 51
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;->mStatusBarFocusNotifListener:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    .line 58
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 60
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;->mFocusNotifListener:Ljava/util/List;

    .line 63
    return-void
    .line 65
.end method


# virtual methods
.method public final attach(Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;->mPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 2
    new-instance v0, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator$2;

    .line 4
    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator$2;-><init>()V

    .line 6
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addPromoter(Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifPromoter;)V

    .line 9
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$$ExternalSyntheticLambda4;

    .line 17
    const-string v2, "FocusNotification"

    .line 19
    invoke-direct {v1, v0, v2}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotifCollection;Ljava/lang/String;)V

    .line 21
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;->mNotificationUpdater:Lcom/android/systemui/statusbar/notification/collection/NotifCollection$$ExternalSyntheticLambda4;

    .line 24
    new-instance v0, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator$3;

    .line 26
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator$3;-><init>(Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;)V

    .line 28
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addCollectionListener(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;)V

    .line 31
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 34
    invoke-virtual {p1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    .line 36
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;->mContext:Landroid/content/Context;

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 41
    move-result-object p1

    .line 44
    sget-object v0, Lcom/android/systemui/statusbar/notification/NotificationProvider;->URI_CAN_SHOW_FOCUS:Landroid/net/Uri;

    .line 45
    const/4 v1, -0x1

    .line 47
    const/4 v2, 0x0

    .line 48
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;->mCanShowFocusObserver:Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator$1;

    .line 49
    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 51
    return-void
    .line 54
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;->mFocusNotifications:Ljava/util/Map;

    .line 2
    check-cast p2, Landroid/util/ArrayMap;

    .line 4
    invoke-virtual {p2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 6
    move-result-object p2

    .line 9
    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 10
    move-result-object p2

    .line 13
    new-instance v0, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator$$ExternalSyntheticLambda3;

    .line 14
    const/4 v1, 0x0

    .line 16
    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator$$ExternalSyntheticLambda3;-><init>(I)V

    .line 17
    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 20
    move-result-object p2

    .line 23
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    new-instance v0, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator$$ExternalSyntheticLambda4;

    .line 27
    invoke-direct {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator$$ExternalSyntheticLambda4;-><init>(Ljava/io/PrintWriter;I)V

    .line 29
    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 32
    const-string p2, "Aod:"

    .line 35
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 37
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;->mAodFocusNotifications:Ljava/util/Map;

    .line 40
    check-cast p2, Landroid/util/ArrayMap;

    .line 42
    invoke-virtual {p2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 44
    move-result-object p2

    .line 47
    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 48
    move-result-object p2

    .line 51
    new-instance v0, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator$$ExternalSyntheticLambda3;

    .line 52
    const/4 v1, 0x1

    .line 54
    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator$$ExternalSyntheticLambda3;-><init>(I)V

    .line 55
    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 58
    move-result-object p2

    .line 61
    new-instance v0, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator$$ExternalSyntheticLambda4;

    .line 62
    invoke-direct {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator$$ExternalSyntheticLambda4;-><init>(Ljava/io/PrintWriter;I)V

    .line 64
    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 67
    const-string p2, "StatusBar:"

    .line 70
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 72
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;->mStatusBarFocusNotifications:Ljava/util/Map;

    .line 75
    check-cast p0, Landroid/util/ArrayMap;

    .line 77
    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 79
    move-result-object p0

    .line 82
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 83
    move-result-object p0

    .line 86
    new-instance p2, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator$$ExternalSyntheticLambda3;

    .line 87
    const/4 v0, 0x2

    .line 89
    invoke-direct {p2, v0}, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator$$ExternalSyntheticLambda3;-><init>(I)V

    .line 90
    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 93
    move-result-object p0

    .line 96
    new-instance p2, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator$$ExternalSyntheticLambda4;

    .line 97
    invoke-direct {p2, p1, v0}, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator$$ExternalSyntheticLambda4;-><init>(Ljava/io/PrintWriter;I)V

    .line 99
    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 102
    return-void
    .line 105
.end method
