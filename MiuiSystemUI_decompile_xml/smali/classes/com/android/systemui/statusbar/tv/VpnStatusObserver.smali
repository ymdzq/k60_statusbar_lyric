.class public final Lcom/android/systemui/statusbar/tv/VpnStatusObserver;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/CoreStartable;
.implements Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;


# instance fields
.field public final context:Landroid/content/Context;

.field public final notificationManager:Landroid/app/NotificationManager;

.field public final securityController:Lcom/android/systemui/statusbar/policy/SecurityController;

.field public vpnConnected:Z

.field public final vpnConnectedNotificationBuilder:Landroid/app/Notification$Builder;

.field public final vpnDisconnectedNotification:Landroid/app/Notification;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/SecurityController;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/tv/VpnStatusObserver;->context:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/tv/VpnStatusObserver;->securityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 7
    invoke-static {p1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    .line 9
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/android/systemui/statusbar/tv/VpnStatusObserver;->notificationManager:Landroid/app/NotificationManager;

    .line 13
    new-instance v1, Landroid/app/NotificationChannel;

    .line 15
    const-string v2, "VPN Status"

    .line 17
    const/4 v3, 0x4

    .line 19
    invoke-direct {v1, v2, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 20
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 23
    new-instance v0, Landroid/app/Notification$Builder;

    .line 26
    invoke-direct {v0, p1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 28
    move-object v1, p2

    .line 31
    check-cast v1, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 32
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->isVpnBranded()Z

    .line 34
    move-result v1

    .line 37
    const v3, 0x7f081806    # @drawable/stat_sys_branded_vpn 'res/drawable/stat_sys_branded_vpn.xml'

    .line 38
    const v4, 0x7f081911    # @drawable/stat_sys_vpn_ic 'res/drawable/stat_sys_vpn_ic.xml'

    .line 41
    if-eqz v1, :cond_0

    .line 44
    move v1, v3

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move v1, v4

    .line 48
    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 49
    move-result-object v0

    .line 52
    const/4 v1, 0x1

    .line 53
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 54
    move-result-object v0

    .line 57
    const-string/jumbo v5, "sys"

    .line 58
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 61
    move-result-object v0

    .line 64
    new-instance v6, Landroid/app/Notification$TvExtender;

    .line 65
    invoke-direct {v6}, Landroid/app/Notification$TvExtender;-><init>()V

    .line 67
    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->extend(Landroid/app/Notification$Extender;)Landroid/app/Notification$Builder;

    .line 70
    move-result-object v0

    .line 73
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 74
    move-result-object v0

    .line 77
    const v6, 0x7f13089f    # @string/notification_vpn_connected 'VPN is connected'

    .line 78
    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 81
    move-result-object v6

    .line 84
    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 85
    move-result-object v0

    .line 88
    invoke-static {p1}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanel(Landroid/content/Context;)Landroid/app/PendingIntent;

    .line 89
    move-result-object v6

    .line 92
    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 93
    move-result-object v0

    .line 96
    iput-object v0, p0, Lcom/android/systemui/statusbar/tv/VpnStatusObserver;->vpnConnectedNotificationBuilder:Landroid/app/Notification$Builder;

    .line 97
    new-instance v0, Landroid/app/Notification$Builder;

    .line 99
    invoke-direct {v0, p1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 101
    check-cast p2, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 104
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->isVpnBranded()Z

    .line 106
    move-result p2

    .line 109
    if-eqz p2, :cond_1

    .line 110
    goto :goto_1

    .line 112
    :cond_1
    move v3, v4

    .line 113
    :goto_1
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 114
    move-result-object p2

    .line 117
    invoke-virtual {p2, v1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 118
    move-result-object p2

    .line 121
    invoke-virtual {p2, v5}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 122
    move-result-object p2

    .line 125
    new-instance v0, Landroid/app/Notification$TvExtender;

    .line 126
    invoke-direct {v0}, Landroid/app/Notification$TvExtender;-><init>()V

    .line 128
    invoke-virtual {p2, v0}, Landroid/app/Notification$Builder;->extend(Landroid/app/Notification$Extender;)Landroid/app/Notification$Builder;

    .line 131
    move-result-object p2

    .line 134
    const-wide/16 v0, 0x1388

    .line 135
    invoke-virtual {p2, v0, v1}, Landroid/app/Notification$Builder;->setTimeoutAfter(J)Landroid/app/Notification$Builder;

    .line 137
    move-result-object p2

    .line 140
    const v0, 0x7f1308a0    # @string/notification_vpn_disconnected 'VPN is disconnected'

    .line 141
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 144
    move-result-object p1

    .line 147
    invoke-virtual {p2, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 148
    move-result-object p1

    .line 151
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 152
    move-result-object p1

    .line 155
    iput-object p1, p0, Lcom/android/systemui/statusbar/tv/VpnStatusObserver;->vpnDisconnectedNotification:Landroid/app/Notification;

    .line 156
    return-void
    .line 158
.end method


# virtual methods
.method public final onStateChanged()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/tv/VpnStatusObserver;->securityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 2
    move-object v1, v0

    .line 4
    check-cast v1, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 5
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->isVpnEnabled()Z

    .line 7
    move-result v1

    .line 10
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/tv/VpnStatusObserver;->vpnConnected:Z

    .line 11
    if-eq v2, v1, :cond_3

    .line 13
    const-string v2, "VpnStatusObserver"

    .line 15
    iget-object v3, p0, Lcom/android/systemui/statusbar/tv/VpnStatusObserver;->notificationManager:Landroid/app/NotificationManager;

    .line 17
    const/16 v4, 0x14

    .line 19
    if-eqz v1, :cond_2

    .line 21
    check-cast v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 23
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->getPrimaryVpnName()Ljava/lang/String;

    .line 25
    move-result-object v5

    .line 28
    if-nez v5, :cond_0

    .line 29
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->getWorkProfileVpnName()Ljava/lang/String;

    .line 31
    move-result-object v5

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/tv/VpnStatusObserver;->vpnConnectedNotificationBuilder:Landroid/app/Notification$Builder;

    .line 35
    if-eqz v5, :cond_1

    .line 37
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 39
    move-result-object v5

    .line 42
    iget-object v6, p0, Lcom/android/systemui/statusbar/tv/VpnStatusObserver;->context:Landroid/content/Context;

    .line 43
    const v7, 0x7f13088a    # @string/notification_disclosure_vpn_text 'Via %1$s'

    .line 45
    invoke-virtual {v6, v7, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    move-result-object v5

    .line 51
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 52
    :cond_1
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 55
    move-result-object v0

    .line 58
    invoke-virtual {v3, v2, v4, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 59
    goto :goto_0

    .line 62
    :cond_2
    invoke-virtual {v3, v2, v4}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 63
    const/16 v0, 0x11

    .line 66
    iget-object v4, p0, Lcom/android/systemui/statusbar/tv/VpnStatusObserver;->vpnDisconnectedNotification:Landroid/app/Notification;

    .line 68
    invoke-virtual {v3, v2, v0, v4}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 70
    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/tv/VpnStatusObserver;->vpnConnected:Z

    .line 73
    :cond_3
    return-void
    .line 75
.end method

.method public final start()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/tv/VpnStatusObserver;->securityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 2
    check-cast v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 4
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 6
    return-void
    .line 9
.end method
