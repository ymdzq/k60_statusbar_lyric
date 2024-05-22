.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/FoldCoordinator$cancelScheduledTask$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/FoldCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/FoldCoordinator;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/FoldCoordinator$cancelScheduledTask$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/FoldCoordinator;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/FoldCoordinator$cancelScheduledTask$1;->$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/FoldCoordinator$cancelScheduledTask$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/FoldCoordinator;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/FoldCoordinator;->context:Landroid/content/Context;

    .line 4
    new-instance v1, Landroid/content/Intent;

    .line 6
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/FoldCoordinator$cancelScheduledTask$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/FoldCoordinator;

    .line 8
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/coordinator/FoldCoordinator;->FOLD_ACTION:Ljava/lang/String;

    .line 10
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 12
    const-string v2, "com.android.systemui"

    .line 15
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    move-result-object v1

    .line 20
    new-instance v2, Landroid/net/Uri$Builder;

    .line 21
    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    .line 23
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/FoldCoordinator$cancelScheduledTask$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/FoldCoordinator;

    .line 26
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    const-string v3, "fold"

    .line 31
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 33
    move-result-object v2

    .line 36
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/FoldCoordinator$cancelScheduledTask$1;->$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 37
    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 39
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 41
    move-result-object v3

    .line 44
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 45
    move-result-object v2

    .line 48
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 49
    move-result-object v2

    .line 52
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 53
    move-result-object v1

    .line 56
    const/high16 v2, 0x10000000

    .line 57
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 59
    move-result-object v1

    .line 62
    const/high16 v2, 0x24000000

    .line 63
    const/4 v3, 0x1

    .line 65
    invoke-static {v0, v3, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 66
    move-result-object v0

    .line 69
    if-eqz v0, :cond_0

    .line 70
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/FoldCoordinator$cancelScheduledTask$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/FoldCoordinator;

    .line 72
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/FoldCoordinator;->mAm:Landroid/app/AlarmManager;

    .line 74
    if-eqz p0, :cond_0

    .line 76
    invoke-virtual {p0, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 78
    :cond_0
    return-void
    .line 81
.end method
