.class public final synthetic Lcom/android/systemui/statusbar/notification/focus/MiuiTimeoutCoordinator$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/focus/MiuiTimeoutCoordinator;

.field public final synthetic f$1:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/focus/MiuiTimeoutCoordinator;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/focus/MiuiTimeoutCoordinator$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/statusbar/notification/focus/MiuiTimeoutCoordinator;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/focus/MiuiTimeoutCoordinator$$ExternalSyntheticLambda2;->f$1:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 7
    iput-wide p3, p0, Lcom/android/systemui/statusbar/notification/focus/MiuiTimeoutCoordinator$$ExternalSyntheticLambda2;->f$2:J

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/focus/MiuiTimeoutCoordinator$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/statusbar/notification/focus/MiuiTimeoutCoordinator;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/focus/MiuiTimeoutCoordinator$$ExternalSyntheticLambda2;->f$1:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 4
    iget-wide v2, p0, Lcom/android/systemui/statusbar/notification/focus/MiuiTimeoutCoordinator$$ExternalSyntheticLambda2;->f$2:J

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    new-instance p0, Landroid/content/Intent;

    .line 11
    const-string v4, "MiuiTimeoutCoordinator.TIMEOUT"

    .line 13
    invoke-direct {p0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 15
    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/focus/MiuiTimeoutCoordinator;->mContext:Landroid/content/Context;

    .line 18
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 20
    move-result-object v4

    .line 23
    invoke-virtual {p0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    move-result-object p0

    .line 27
    new-instance v4, Landroid/net/Uri$Builder;

    .line 28
    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    .line 30
    const-string/jumbo v5, "timeout"

    .line 33
    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 36
    move-result-object v4

    .line 39
    iget-object v5, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 40
    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 42
    move-result-object v4

    .line 45
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 46
    move-result-object v4

    .line 49
    invoke-virtual {p0, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 50
    move-result-object p0

    .line 53
    const/high16 v4, 0x10000000

    .line 54
    invoke-virtual {p0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 56
    move-result-object p0

    .line 59
    const-string v4, "key"

    .line 60
    iget-object v5, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 62
    invoke-virtual {p0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    move-result-object p0

    .line 67
    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/focus/MiuiTimeoutCoordinator;->mContext:Landroid/content/Context;

    .line 68
    const/4 v6, 0x1

    .line 70
    const/high16 v7, 0xc000000

    .line 71
    invoke-static {v4, v6, p0, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 73
    move-result-object p0

    .line 76
    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/focus/MiuiTimeoutCoordinator;->mAlarmManager:Landroid/app/AlarmManager;

    .line 77
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 79
    move-result-wide v6

    .line 82
    add-long/2addr v6, v2

    .line 83
    const/4 v2, 0x2

    .line 84
    invoke-virtual {v4, v2, v6, v7, p0}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 85
    iget-object p0, v0, Lcom/android/systemui/statusbar/notification/focus/MiuiTimeoutCoordinator;->mScheduledEntry:Ljava/util/Map;

    .line 88
    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 90
    invoke-virtual {p0, v5, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    return-void
    .line 95
.end method
