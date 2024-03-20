.class public Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;
.super Landroid/service/notification/NotificationListenerService;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/plugins/PluginListener;


# static fields
.field public static sPluginCtx:Landroid/content/Context;


# instance fields
.field public mConnected:Z

.field public final mPluginManager:Lcom/android/systemui/plugins/PluginManager;

.field public final mPlugins:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/android/systemui/plugins/PluginManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->mPlugins:Ljava/util/ArrayList;

    .line 10
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->mPluginManager:Lcom/android/systemui/plugins/PluginManager;

    .line 12
    return-void
    .line 14
.end method

.method public static synthetic access$001(Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;)[Landroid/service/notification/StatusBarNotification;
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public static synthetic access$101(Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;)Landroid/service/notification/NotificationListenerService$RankingMap;
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->getCurrentRanking()Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method


# virtual methods
.method public final getActiveNotifications()[Landroid/service/notification/StatusBarNotification;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    .line 2
    move-result-object v0

    .line 5
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->mPlugins:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object p0

    .line 11
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 21
    check-cast v1, Lcom/android/systemui/plugins/NotificationListenerController;

    .line 22
    invoke-interface {v1, v0}, Lcom/android/systemui/plugins/NotificationListenerController;->getActiveNotifications([Landroid/service/notification/StatusBarNotification;)[Landroid/service/notification/StatusBarNotification;

    .line 24
    move-result-object v0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return-object v0
    .line 29
.end method

.method public final getCurrentRanking()Landroid/service/notification/NotificationListenerService$RankingMap;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->getCurrentRanking()Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 2
    move-result-object v0

    .line 5
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->mPlugins:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object p0

    .line 11
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 21
    check-cast v1, Lcom/android/systemui/plugins/NotificationListenerController;

    .line 22
    invoke-interface {v1, v0}, Lcom/android/systemui/plugins/NotificationListenerController;->getCurrentRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 24
    move-result-object v0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return-object v0
    .line 29
.end method

.method public final onPluginConnected(Lcom/android/systemui/plugins/NotificationListenerController;Landroid/content/Context;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->mConnected:Z

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins$1;-><init>(Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;)V

    .line 5
    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/NotificationListenerController;->onListenerConnected(Lcom/android/systemui/plugins/NotificationListenerController$NotificationProvider;)V

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->mPlugins:Ljava/util/ArrayList;

    new-instance p1, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 7
    sput-object p2, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->sPluginCtx:Landroid/content/Context;

    return-void
.end method

.method public final bridge synthetic onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/plugins/NotificationListenerController;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->onPluginConnected(Lcom/android/systemui/plugins/NotificationListenerController;Landroid/content/Context;)V

    return-void
.end method

.method public final onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/plugins/NotificationListenerController;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->mPlugins:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    const/4 p0, 0x0

    .line 9
    sput-object p0, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->sPluginCtx:Landroid/content/Context;

    .line 10
    return-void
    .line 12
.end method

.method public final registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V

    .line 2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->mPluginManager:Lcom/android/systemui/plugins/PluginManager;

    .line 5
    const-class p2, Lcom/android/systemui/plugins/NotificationListenerController;

    .line 7
    invoke-interface {p1, p0, p2}, Lcom/android/systemui/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;)V

    .line 9
    return-void
    .line 12
.end method

.method public final unregisterAsSystemService()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->unregisterAsSystemService()V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->mPluginManager:Lcom/android/systemui/plugins/PluginManager;

    .line 5
    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/PluginManager;->removePluginListener(Lcom/android/systemui/plugins/PluginListener;)V

    .line 7
    return-void
    .line 10
.end method
