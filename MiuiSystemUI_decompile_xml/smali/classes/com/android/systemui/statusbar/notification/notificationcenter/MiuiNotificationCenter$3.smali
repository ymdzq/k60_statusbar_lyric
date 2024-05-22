.class public final Lcom/android/systemui/statusbar/notification/notificationcenter/MiuiNotificationCenter$3;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/notificationcenter/MiuiNotificationCenter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/notificationcenter/MiuiNotificationCenter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/notificationcenter/MiuiNotificationCenter$3;->this$0:Lcom/android/systemui/statusbar/notification/notificationcenter/MiuiNotificationCenter;

    .line 2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/notificationcenter/MiuiNotificationCenter$3;->this$0:Lcom/android/systemui/statusbar/notification/notificationcenter/MiuiNotificationCenter;

    .line 11
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 13
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    new-instance p2, Landroid/os/Bundle;

    .line 24
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 26
    const-string v0, "packageName"

    .line 29
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    new-instance p1, Lcom/android/systemui/statusbar/notification/notificationcenter/MiuiNotificationCenter$$ExternalSyntheticLambda0;

    .line 34
    const-string v0, "clearPkgUsageInfoWhenRemoved"

    .line 36
    invoke-direct {p1, p0, v0, p2}, Lcom/android/systemui/statusbar/notification/notificationcenter/MiuiNotificationCenter$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/notificationcenter/MiuiNotificationCenter;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 38
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/notificationcenter/MiuiNotificationCenter;->mHandler:Landroid/os/Handler;

    .line 41
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 43
    :cond_1
    :goto_0
    return-void
    .line 46
.end method
