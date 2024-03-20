.class Lcom/android/settings/bluetooth/MiuiFastConnectV2$PairingChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MiuiFastConnectV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/MiuiFastConnectV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PairingChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/MiuiFastConnectV2;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/MiuiFastConnectV2;)V
    .locals 0

    .line 535
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2$PairingChangeReceiver;->this$0:Lcom/android/settings/bluetooth/MiuiFastConnectV2;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 539
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2$PairingChangeReceiver;->this$0:Lcom/android/settings/bluetooth/MiuiFastConnectV2;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->-$$Nest$fgetmPairing(Lcom/android/settings/bluetooth/MiuiFastConnectV2;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 540
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "android.bluetooth.device.extra.PAIRING_KEY"

    .line 541
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 542
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2$PairingChangeReceiver;->this$0:Lcom/android/settings/bluetooth/MiuiFastConnectV2;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->-$$Nest$fgetDBG(Lcom/android/settings/bluetooth/MiuiFastConnectV2;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MiuiFastConnectV2_Settings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "passkey :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p2

    const/16 v0, 0x69

    .line 545
    iput v0, p2, Landroid/os/Message;->what:I

    .line 546
    invoke-virtual {p2, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 547
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2$PairingChangeReceiver;->this$0:Lcom/android/settings/bluetooth/MiuiFastConnectV2;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->-$$Nest$fgetmHandlerLock(Lcom/android/settings/bluetooth/MiuiFastConnectV2;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 548
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2$PairingChangeReceiver;->this$0:Lcom/android/settings/bluetooth/MiuiFastConnectV2;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->-$$Nest$fgetmHandler(Lcom/android/settings/bluetooth/MiuiFastConnectV2;)Lcom/android/settings/bluetooth/MiuiFastConnectV2$ServiceMessageHandler;

    move-result-object p0

    const-wide/16 v0, 0x64

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 549
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method
