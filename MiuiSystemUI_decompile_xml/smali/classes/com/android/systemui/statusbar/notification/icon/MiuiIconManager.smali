.class public final Lcom/android/systemui/statusbar/notification/icon/MiuiIconManager;
.super Lcom/android/systemui/statusbar/notification/icon/IconManager;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final configurationListener:Lcom/android/systemui/statusbar/notification/icon/MiuiIconManager$configurationListener$1;

.field public final notifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

.field public final notifStyleListener:Lcom/android/systemui/statusbar/notification/icon/MiuiIconManager$notifStyleListener$1;


# direct methods
.method public constructor <init>(Landroid/content/pm/LauncherApps;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;Lcom/android/systemui/statusbar/notification/icon/IconBuilder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/icon/IconManager;-><init>(Landroid/content/pm/LauncherApps;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;Lcom/android/systemui/statusbar/notification/icon/IconBuilder;)V

    .line 2
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/icon/MiuiIconManager;->notifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    .line 5
    new-instance p1, Lcom/android/systemui/statusbar/notification/icon/MiuiIconManager$notifStyleListener$1;

    .line 7
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/icon/MiuiIconManager$notifStyleListener$1;-><init>(Lcom/android/systemui/statusbar/notification/icon/MiuiIconManager;)V

    .line 9
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/icon/MiuiIconManager;->notifStyleListener:Lcom/android/systemui/statusbar/notification/icon/MiuiIconManager$notifStyleListener$1;

    .line 12
    new-instance p1, Lcom/android/systemui/statusbar/notification/icon/MiuiIconManager$configurationListener$1;

    .line 14
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/icon/MiuiIconManager$configurationListener$1;-><init>(Lcom/android/systemui/statusbar/notification/icon/MiuiIconManager;)V

    .line 16
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/icon/MiuiIconManager;->configurationListener:Lcom/android/systemui/statusbar/notification/icon/MiuiIconManager$configurationListener$1;

    .line 19
    return-void
    .line 21
.end method


# virtual methods
.method public final attach()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/icon/IconManager;->attach()V

    .line 2
    const-class v0, Lcom/miui/systemui/SettingsManager;

    .line 5
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 10
    check-cast v0, Lcom/miui/systemui/SettingsManager;

    .line 11
    iget-object v0, v0, Lcom/miui/systemui/SettingsManager;->notifStyleListeners:Ljava/util/List;

    .line 13
    check-cast v0, Ljava/util/ArrayList;

    .line 15
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/icon/MiuiIconManager;->notifStyleListener:Lcom/android/systemui/statusbar/notification/icon/MiuiIconManager$notifStyleListener$1;

    .line 17
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 19
    move-result v2

    .line 22
    if-nez v2, :cond_0

    .line 23
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    :cond_0
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 28
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 33
    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 34
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/icon/MiuiIconManager;->configurationListener:Lcom/android/systemui/statusbar/notification/icon/MiuiIconManager$configurationListener$1;

    .line 36
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 38
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 40
    return-void
    .line 43
.end method
