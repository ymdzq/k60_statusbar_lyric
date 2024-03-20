.class public final Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final bgHandler:Landroid/os/Handler;

.field public final context:Landroid/content/Context;

.field public final logger:Lcom/android/systemui/log/NotificationAlertLogger;

.field public final pipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;Landroid/os/Handler;Landroid/content/Context;Lcom/android/systemui/log/NotificationAlertLogger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager;->pipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager;->bgHandler:Landroid/os/Handler;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager;->context:Landroid/content/Context;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager;->logger:Lcom/android/systemui/log/NotificationAlertLogger;

    .line 11
    return-void
    .line 13
.end method

.method public static needStatBadgeNum(Lcom/android/systemui/statusbar/notification/ExpandedNotification;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 2
    const-string v1, "com.android.systemui"

    .line 4
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    return v1

    .line 13
    :cond_0
    invoke-static {p0}, Lcom/android/systemui/media/controls/pipeline/MediaDataManagerKt;->isMediaNotification(Landroid/service/notification/StatusBarNotification;)Z

    .line 14
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    return v1

    .line 20
    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/notification/NotificationUtil;->PKG_HOME:Ljava/lang/String;

    .line 21
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 23
    move-result-object v0

    .line 26
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->hasProgressbar(Landroid/app/Notification;)Z

    .line 27
    move-result v0

    .line 30
    if-eqz v0, :cond_2

    .line 31
    return v1

    .line 33
    :cond_2
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 34
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Landroid/app/Notification;->isGroupSummary()Z

    .line 38
    move-result v0

    .line 41
    if-eqz v0, :cond_3

    .line 42
    goto :goto_0

    .line 44
    :cond_3
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    .line 45
    move-result v1

    .line 48
    :goto_0
    return v1
    .line 49
.end method


# virtual methods
.method public final updateAppBadgeNum(Lcom/android/systemui/statusbar/notification/ExpandedNotification;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager;->pipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getAllNotifs()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    new-instance v1, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager$updateAppBadgeNum$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager$updateAppBadgeNum$1;-><init>(Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager;Lcom/android/systemui/statusbar/notification/ExpandedNotification;Ljava/util/List;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager;->bgHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final updateAppBadgeNum(Ljava/lang/String;Ljava/lang/CharSequence;IIZ)V
    .locals 8

    if-nez p1, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v5, v0

    .line 4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.APPLICATION_MESSAGE_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-lez p3, :cond_1

    .line 5
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const-string v2, "android.intent.extra.update_application_message_text"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.update_application_component_name"

    .line 6
    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "userId"

    .line 7
    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "targetPkg"

    .line 8
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string p2, "miui.intent.extra.application_show_corner"

    .line 9
    invoke-virtual {v0, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 10
    sget-object v6, Lcom/android/systemui/statusbar/notification/NotificationUtil;->PKG_HOME:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager;->logger:Lcom/android/systemui/log/NotificationAlertLogger;

    move v2, p3

    move v3, p4

    move-object v4, p1

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/log/NotificationAlertLogger;->logBadge(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 p1, -0x1

    .line 12
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager;->context:Landroid/content/Context;

    if-ne p4, p1, :cond_2

    .line 13
    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_2

    .line 14
    :cond_2
    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :goto_2
    return-void
.end method
