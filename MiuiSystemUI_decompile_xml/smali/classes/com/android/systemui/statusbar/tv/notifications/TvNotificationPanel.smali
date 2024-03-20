.class public final Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanel;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/CoreStartable;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field public final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field public final mContext:Landroid/content/Context;

.field public final mNotificationHandlerPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/CommandQueue;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanel;->mContext:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanel;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    move-result-object p1

    .line 12
    const p2, 0x10402bb    # @android:string/contentServiceSync

    .line 13
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanel;->mNotificationHandlerPackage:Ljava/lang/String;

    .line 20
    return-void
    .line 22
.end method


# virtual methods
.method public final animateCollapsePanels(IZ)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanel;->mNotificationHandlerPackage:Ljava/lang/String;

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 4
    move-result v0

    .line 7
    const-string v1, "android.app.action.CLOSE_NOTIFICATION_HANDLER_PANEL"

    .line 8
    if-nez v0, :cond_0

    .line 10
    and-int/lit8 p1, p1, 0x4

    .line 12
    if-nez p1, :cond_0

    .line 14
    new-instance p1, Landroid/content/Intent;

    .line 16
    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    iget-object p0, p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanel;->mContext:Landroid/content/Context;

    .line 24
    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 26
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 28
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanel;->openInternalNotificationPanel(Ljava/lang/String;)V

    .line 32
    :goto_0
    return-void
    .line 35
.end method

.method public final animateExpandNotificationsPanel()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanel;->mNotificationHandlerPackage:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 4
    move-result v0

    .line 7
    const-string v1, "android.app.action.OPEN_NOTIFICATION_HANDLER_PANEL"

    .line 8
    if-nez v0, :cond_0

    .line 10
    new-instance v0, Landroid/content/Intent;

    .line 12
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanel;->startNotificationHandlerActivity(Landroid/content/Intent;)V

    .line 17
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanel;->openInternalNotificationPanel(Ljava/lang/String;)V

    .line 21
    :goto_0
    return-void
.end method

.method public final openInternalNotificationPanel(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanel;->mContext:Landroid/content/Context;

    .line 4
    const-class v1, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity;

    .line 6
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 8
    const/high16 v1, 0x24000000

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 13
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    sget-object p1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 19
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 21
    return-void
.end method

.method public final start()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanel;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 4
    return-void
    .line 7
.end method

.method public final startNotificationHandlerActivity(Landroid/content/Intent;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanel;->mNotificationHandlerPackage:Ljava/lang/String;

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanel;->mContext:Landroid/content/Context;

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 9
    move-result-object v0

    .line 12
    const/high16 v1, 0x100000

    .line 13
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 15
    move-result-object v0

    .line 18
    const-string v1, "TvNotificationPanel"

    .line 19
    if-eqz v0, :cond_1

    .line 21
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 23
    if-eqz v0, :cond_1

    .line 25
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 27
    if-eqz v0, :cond_0

    .line 29
    const-string v2, "android.permission.STATUS_BAR_SERVICE"

    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    move-result v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    const/high16 v0, 0x24000000

    .line 39
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 41
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 44
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 46
    goto :goto_0

    .line 49
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 50
    const-string v0, "Not launching notification handler activity: Notification handler does not require the STATUS_BAR_SERVICE permission for intent "

    .line 52
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 57
    move-result-object p1

    .line 60
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object p0

    .line 67
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    goto :goto_0

    .line 71
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 72
    const-string v0, "Not launching notification handler activity: Could not resolve activityInfo for intent "

    .line 74
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 79
    move-result-object p1

    .line 82
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object p0

    .line 89
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :goto_0
    return-void
    .line 93
.end method

.method public final togglePanel()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanel;->mNotificationHandlerPackage:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 4
    move-result v0

    .line 7
    const-string v1, "android.app.action.TOGGLE_NOTIFICATION_HANDLER_PANEL"

    .line 8
    if-nez v0, :cond_0

    .line 10
    new-instance v0, Landroid/content/Intent;

    .line 12
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanel;->startNotificationHandlerActivity(Landroid/content/Intent;)V

    .line 17
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanel;->openInternalNotificationPanel(Ljava/lang/String;)V

    .line 21
    :goto_0
    return-void
.end method
