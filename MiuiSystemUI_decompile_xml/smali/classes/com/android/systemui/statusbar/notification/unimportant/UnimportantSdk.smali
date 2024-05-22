.class public final Lcom/android/systemui/statusbar/notification/unimportant/UnimportantSdk;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/plugins/PluginListener;
.implements Lcom/android/systemui/plugins/miui/notification/UnimportantSdkPlugin;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mPlugins:Lcom/android/systemui/plugins/miui/notification/UnimportantSdkPlugin;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/unimportant/UnimportantSdk;->mPlugins:Lcom/android/systemui/plugins/miui/notification/UnimportantSdkPlugin;

    .line 6
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/unimportant/UnimportantSdk;->mContext:Landroid/content/Context;

    .line 8
    const-class p1, Lcom/android/systemui/plugins/PluginManager;

    .line 10
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 15
    check-cast p1, Lcom/android/systemui/plugins/PluginManager;

    .line 16
    const/4 v0, 0x1

    .line 18
    const-string v1, "miui.notification.action.PLUGIN_SDK_UNIMPORTANT"

    .line 19
    const-class v2, Lcom/android/systemui/plugins/miui/notification/UnimportantSdkPlugin;

    .line 21
    invoke-interface {p1, v1, p0, v2, v0}, Lcom/android/systemui/plugins/PluginManager;->addPluginListener(Ljava/lang/String;Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    .line 23
    return-void
    .line 26
.end method


# virtual methods
.method public final foldReason(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)I
    .locals 0

    .line 1
    if-eqz p1, :cond_2

    .line 2
    if-eqz p2, :cond_2

    .line 4
    if-nez p3, :cond_0

    .line 6
    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/unimportant/UnimportantSdk;->init()V

    .line 9
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/unimportant/UnimportantSdk;->mPlugins:Lcom/android/systemui/plugins/miui/notification/UnimportantSdkPlugin;

    .line 12
    if-nez p0, :cond_1

    .line 14
    const/4 p0, 0x0

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/systemui/plugins/miui/notification/UnimportantSdkPlugin;->foldReason(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)I

    .line 18
    move-result p0

    .line 21
    :goto_0
    return p0

    .line 22
    :cond_2
    :goto_1
    const/16 p0, 0x139

    .line 23
    return p0
    .line 25
.end method

.method public final init()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/unimportant/UnimportantSdk;->mPlugins:Lcom/android/systemui/plugins/miui/notification/UnimportantSdkPlugin;

    .line 2
    if-nez p0, :cond_0

    .line 4
    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {p0}, Lcom/android/systemui/plugins/miui/notification/UnimportantSdkPlugin;->init()V

    .line 7
    :goto_0
    return-void
    .line 10
.end method

.method public final onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/plugins/miui/notification/UnimportantSdkPlugin;

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/unimportant/UnimportantSdk;->mPlugins:Lcom/android/systemui/plugins/miui/notification/UnimportantSdkPlugin;

    .line 4
    sget-object p1, Lcom/android/systemui/statusbar/notification/unimportant/FoldCloudDataHelper;->logger:Lcom/android/systemui/log/UnimportantNotifLogger;

    .line 6
    sget-object p1, Lcom/android/systemui/statusbar/notification/unimportant/FoldCloudDataHelper;->bgHandler:Landroid/os/Handler;

    .line 8
    new-instance p2, Lcom/android/systemui/statusbar/notification/unimportant/FoldCloudDataHelper$updateAll$1;

    .line 10
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/unimportant/UnimportantSdk;->mContext:Landroid/content/Context;

    .line 12
    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/notification/unimportant/FoldCloudDataHelper$updateAll$1;-><init>(Landroid/content/Context;)V

    .line 14
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    return-void
    .line 20
.end method

.method public final onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/plugins/miui/notification/UnimportantSdkPlugin;

    .line 2
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/unimportant/UnimportantSdk;->mPlugins:Lcom/android/systemui/plugins/miui/notification/UnimportantSdkPlugin;

    .line 5
    return-void
    .line 7
.end method

.method public final updatePushFilter(Ljava/util/List;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_2

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/unimportant/UnimportantSdk;->init()V

    .line 11
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/unimportant/UnimportantSdk;->mPlugins:Lcom/android/systemui/plugins/miui/notification/UnimportantSdkPlugin;

    .line 14
    if-nez p0, :cond_1

    .line 16
    goto :goto_0

    .line 18
    :cond_1
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/miui/notification/UnimportantSdkPlugin;->updatePushFilter(Ljava/util/List;)V

    .line 19
    :cond_2
    :goto_0
    return-void
    .line 22
.end method
