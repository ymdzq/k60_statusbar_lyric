.class public final Lcom/android/keyguard/MiuiBleUnlockHelper$6;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/MiuiBleUnlockHelper;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/MiuiBleUnlockHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/MiuiBleUnlockHelper$6;->this$0:Lcom/android/keyguard/MiuiBleUnlockHelper;

    .line 2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    const-string v0, "ble action name: "

    .line 4
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 19
    const-string v0, "MiuiBleUnlockHelper"

    .line 20
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    const-string p1, "com.miui.keyguard.bluetoothdeviceunlock.disable"

    .line 25
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    move-result p1

    .line 34
    const/4 v0, 0x1

    .line 35
    if-nez p1, :cond_4

    .line 36
    const-string p1, "com.xiaomi.hm.health.ACTION_DEVICE_UNBIND_APPLICATION"

    .line 38
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 43
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    move-result p1

    .line 47
    if-eqz p1, :cond_0

    .line 48
    goto :goto_0

    .line 50
    :cond_0
    const-string p1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 51
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 53
    move-result-object v1

    .line 56
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    move-result p1

    .line 60
    const/4 v1, 0x2

    .line 61
    if-eqz p1, :cond_3

    .line 62
    const-string p1, "android.bluetooth.adapter.extra.STATE"

    .line 64
    const/16 v2, 0xa

    .line 66
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 68
    move-result p1

    .line 71
    const/16 p2, 0xc

    .line 72
    if-ne p1, p2, :cond_1

    .line 74
    iget-object p0, p0, Lcom/android/keyguard/MiuiBleUnlockHelper$6;->this$0:Lcom/android/keyguard/MiuiBleUnlockHelper;

    .line 76
    iget-object p0, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mHandler:Lcom/android/keyguard/MiuiBleUnlockHelper$1;

    .line 78
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 80
    goto :goto_1

    .line 83
    :cond_1
    const/16 p2, 0xd

    .line 84
    if-eq p1, p2, :cond_2

    .line 86
    if-ne p1, v2, :cond_5

    .line 88
    :cond_2
    iget-object p0, p0, Lcom/android/keyguard/MiuiBleUnlockHelper$6;->this$0:Lcom/android/keyguard/MiuiBleUnlockHelper;

    .line 90
    iget-object p0, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mHandler:Lcom/android/keyguard/MiuiBleUnlockHelper$1;

    .line 92
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 94
    goto :goto_1

    .line 97
    :cond_3
    iget-object p0, p0, Lcom/android/keyguard/MiuiBleUnlockHelper$6;->this$0:Lcom/android/keyguard/MiuiBleUnlockHelper;

    .line 98
    iget-object p0, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mHandler:Lcom/android/keyguard/MiuiBleUnlockHelper$1;

    .line 100
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 102
    goto :goto_1

    .line 105
    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/MiuiBleUnlockHelper$6;->this$0:Lcom/android/keyguard/MiuiBleUnlockHelper;

    .line 106
    iget-object p0, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mHandler:Lcom/android/keyguard/MiuiBleUnlockHelper$1;

    .line 108
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 110
    :cond_5
    :goto_1
    return-void
    .line 113
.end method
