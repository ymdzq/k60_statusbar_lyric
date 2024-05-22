.class public final Lcom/android/systemui/statusbar/policy/MiuiHeadsUpPolicy;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;


# instance fields
.field public final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final context:Landroid/content/Context;

.field public final headsUpManagerPhone:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

.field public final mCloseSystemDialogReceiver:Lcom/android/systemui/statusbar/policy/MiuiHeadsUpPolicy$mCloseSystemDialogReceiver$1;

.field public final mKeyguardUpdateMonitorCallback:Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MiuiHeadsUpPolicy;->context:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/MiuiHeadsUpPolicy;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/MiuiHeadsUpPolicy;->headsUpManagerPhone:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 9
    new-instance p1, Lcom/android/systemui/statusbar/policy/MiuiHeadsUpPolicy$mKeyguardUpdateMonitorCallback$1;

    .line 11
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/policy/MiuiHeadsUpPolicy$mKeyguardUpdateMonitorCallback$1;-><init>(Lcom/android/systemui/statusbar/policy/MiuiHeadsUpPolicy;)V

    .line 13
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MiuiHeadsUpPolicy;->mKeyguardUpdateMonitorCallback:Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;

    .line 16
    new-instance p1, Lcom/android/systemui/statusbar/policy/MiuiHeadsUpPolicy$mCloseSystemDialogReceiver$1;

    .line 18
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/policy/MiuiHeadsUpPolicy$mCloseSystemDialogReceiver$1;-><init>(Lcom/android/systemui/statusbar/policy/MiuiHeadsUpPolicy;)V

    .line 20
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MiuiHeadsUpPolicy;->mCloseSystemDialogReceiver:Lcom/android/systemui/statusbar/policy/MiuiHeadsUpPolicy$mCloseSystemDialogReceiver$1;

    .line 23
    return-void
    .line 25
.end method


# virtual methods
.method public final onHeadsUpUnPinned(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 2

    .line 1
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 2
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 4
    move-result-object p0

    .line 7
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 8
    const-string v1, "miui.exitFloating"

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 12
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 18
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 20
    move-result-object v0

    .line 23
    instance-of v1, v0, Landroid/app/PendingIntent;

    .line 24
    if-eqz v1, :cond_0

    .line 26
    check-cast v0, Landroid/app/PendingIntent;

    .line 28
    goto :goto_0

    .line 30
    :cond_0
    iget-object p0, p0, Landroid/app/Notification;->extraNotification:Landroid/app/MiuiNotification;

    .line 31
    invoke-virtual {p0}, Landroid/app/MiuiNotification;->getExitFloatingIntent()Landroid/app/PendingIntent;

    .line 33
    move-result-object v0

    .line 36
    :goto_0
    if-eqz v0, :cond_1

    .line 37
    :try_start_0
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    goto :goto_1

    .line 42
    :catch_0
    move-exception p0

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    const-string/jumbo v1, "sendExitFloatingIntent "

    .line 46
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 52
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object p1

    .line 60
    const-string v0, "HeadsUpManagerInjector"

    .line 61
    invoke-static {v0, p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    :cond_1
    :goto_1
    return-void
    .line 66
.end method
