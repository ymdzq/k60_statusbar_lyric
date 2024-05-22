.class public final synthetic Lcom/android/systemui/statusbar/notification/MiuiNotificationListener$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/MiuiNotificationListener;

.field public final synthetic f$1:Landroid/service/notification/StatusBarNotification;

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/service/notification/NotificationListenerService$RankingMap;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/MiuiNotificationListener;Landroid/service/notification/StatusBarNotification;ILandroid/service/notification/NotificationListenerService$RankingMap;I)V
    .locals 0

    .line 1
    iput p5, p0, Lcom/android/systemui/statusbar/notification/MiuiNotificationListener$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/MiuiNotificationListener$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/statusbar/notification/MiuiNotificationListener;

    .line 4
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/MiuiNotificationListener$$ExternalSyntheticLambda2;->f$1:Landroid/service/notification/StatusBarNotification;

    .line 6
    iput p3, p0, Lcom/android/systemui/statusbar/notification/MiuiNotificationListener$$ExternalSyntheticLambda2;->f$2:I

    .line 8
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/MiuiNotificationListener$$ExternalSyntheticLambda2;->f$3:Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
    .line 15
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/MiuiNotificationListener$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/MiuiNotificationListener$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/statusbar/notification/MiuiNotificationListener;

    .line 8
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/MiuiNotificationListener$$ExternalSyntheticLambda2;->f$1:Landroid/service/notification/StatusBarNotification;

    .line 10
    iget v4, p0, Lcom/android/systemui/statusbar/notification/MiuiNotificationListener$$ExternalSyntheticLambda2;->f$2:I

    .line 12
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/MiuiNotificationListener$$ExternalSyntheticLambda2;->f$3:Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 14
    iget-object p0, v2, Lcom/android/systemui/statusbar/notification/MiuiNotificationListener;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 16
    new-instance v0, Lcom/android/systemui/statusbar/notification/MiuiNotificationListener$$ExternalSyntheticLambda2;

    .line 18
    const/4 v6, 0x1

    .line 20
    move-object v1, v0

    .line 21
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/MiuiNotificationListener$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/notification/MiuiNotificationListener;Landroid/service/notification/StatusBarNotification;ILandroid/service/notification/NotificationListenerService$RankingMap;I)V

    .line 22
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 25
    return-void

    .line 28
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/MiuiNotificationListener$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/statusbar/notification/MiuiNotificationListener;

    .line 29
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/MiuiNotificationListener$$ExternalSyntheticLambda2;->f$1:Landroid/service/notification/StatusBarNotification;

    .line 31
    iget v2, p0, Lcom/android/systemui/statusbar/notification/MiuiNotificationListener$$ExternalSyntheticLambda2;->f$2:I

    .line 33
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/MiuiNotificationListener$$ExternalSyntheticLambda2;->f$3:Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 35
    invoke-static {v0, v1, v2, p0}, Lcom/android/systemui/statusbar/notification/MiuiNotificationListener;->$r8$lambda$dp1ypQkY5b4FG42ow6RVSXV7tno(Lcom/android/systemui/statusbar/notification/MiuiNotificationListener;Landroid/service/notification/StatusBarNotification;ILandroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 37
    return-void

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 42
.end method
