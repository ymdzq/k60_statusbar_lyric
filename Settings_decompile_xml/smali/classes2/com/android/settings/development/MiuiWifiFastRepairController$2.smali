.class Lcom/android/settings/development/MiuiWifiFastRepairController$2;
.super Ljava/lang/Object;
.source "MiuiWifiFastRepairController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/development/MiuiWifiFastRepairController;->installDriverAndFwiInNewThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/development/MiuiWifiFastRepairController;


# direct methods
.method constructor <init>(Lcom/android/settings/development/MiuiWifiFastRepairController;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/android/settings/development/MiuiWifiFastRepairController$2;->this$0:Lcom/android/settings/development/MiuiWifiFastRepairController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 233
    iget-object v0, p0, Lcom/android/settings/development/MiuiWifiFastRepairController$2;->this$0:Lcom/android/settings/development/MiuiWifiFastRepairController;

    iget-object v0, v0, Lcom/android/settings/development/MiuiWifiFastRepairController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isScanAlwaysAvailable()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/android/settings/development/MiuiWifiFastRepairController$2;->this$0:Lcom/android/settings/development/MiuiWifiFastRepairController;

    iget-object v0, v0, Lcom/android/settings/development/MiuiWifiFastRepairController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setScanAlwaysAvailable(Z)V

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 237
    :goto_0
    iget-object v3, p0, Lcom/android/settings/development/MiuiWifiFastRepairController$2;->this$0:Lcom/android/settings/development/MiuiWifiFastRepairController;

    iget-object v3, v3, Lcom/android/settings/development/MiuiWifiFastRepairController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 239
    iget-object v3, p0, Lcom/android/settings/development/MiuiWifiFastRepairController$2;->this$0:Lcom/android/settings/development/MiuiWifiFastRepairController;

    iget-object v3, v3, Lcom/android/settings/development/MiuiWifiFastRepairController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->stopSoftAp()Z

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    const-wide/16 v4, 0x1f4

    .line 242
    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 244
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 246
    :goto_2
    iget-object v4, p0, Lcom/android/settings/development/MiuiWifiFastRepairController$2;->this$0:Lcom/android/settings/development/MiuiWifiFastRepairController;

    iget-object v4, v4, Lcom/android/settings/development/MiuiWifiFastRepairController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const-wide/16 v4, 0x320

    .line 248
    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 250
    :catch_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    :goto_3
    const-string/jumbo v4, "wifi.driver.reinstall"

    const-string/jumbo v5, "true"

    .line 252
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object v4, p0, Lcom/android/settings/development/MiuiWifiFastRepairController$2;->this$0:Lcom/android/settings/development/MiuiWifiFastRepairController;

    iget-object v4, v4, Lcom/android/settings/development/MiuiWifiFastRepairController;->mMiuiWifiManager:Landroid/net/wifi/MiuiWifiManager;

    if-nez v4, :cond_2

    goto :goto_4

    .line 256
    :cond_2
    invoke-virtual {v4}, Landroid/net/wifi/MiuiWifiManager;->reinstallDriverAndFw()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 257
    iget-object v2, p0, Lcom/android/settings/development/MiuiWifiFastRepairController$2;->this$0:Lcom/android/settings/development/MiuiWifiFastRepairController;

    invoke-static {v2}, Lcom/android/settings/development/MiuiWifiFastRepairController;->-$$Nest$fgetmHandler(Lcom/android/settings/development/MiuiWifiFastRepairController;)Landroid/os/Handler;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/development/MiuiWifiFastRepairController$2;->this$0:Lcom/android/settings/development/MiuiWifiFastRepairController;

    invoke-static {v4}, Lcom/android/settings/development/MiuiWifiFastRepairController;->-$$Nest$fgetmHandler(Lcom/android/settings/development/MiuiWifiFastRepairController;)Landroid/os/Handler;

    move-result-object v4

    invoke-static {v4, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4

    .line 259
    :cond_3
    iget-object v4, p0, Lcom/android/settings/development/MiuiWifiFastRepairController$2;->this$0:Lcom/android/settings/development/MiuiWifiFastRepairController;

    invoke-static {v4}, Lcom/android/settings/development/MiuiWifiFastRepairController;->-$$Nest$fgetmHandler(Lcom/android/settings/development/MiuiWifiFastRepairController;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/development/MiuiWifiFastRepairController$2;->this$0:Lcom/android/settings/development/MiuiWifiFastRepairController;

    invoke-static {v5}, Lcom/android/settings/development/MiuiWifiFastRepairController;->-$$Nest$fgetmHandler(Lcom/android/settings/development/MiuiWifiFastRepairController;)Landroid/os/Handler;

    move-result-object v5

    invoke-static {v5, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_4
    if-eqz v0, :cond_4

    .line 263
    iget-object v0, p0, Lcom/android/settings/development/MiuiWifiFastRepairController$2;->this$0:Lcom/android/settings/development/MiuiWifiFastRepairController;

    iget-object v0, v0, Lcom/android/settings/development/MiuiWifiFastRepairController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setScanAlwaysAvailable(Z)V

    .line 265
    :cond_4
    iget-object v0, p0, Lcom/android/settings/development/MiuiWifiFastRepairController$2;->this$0:Lcom/android/settings/development/MiuiWifiFastRepairController;

    iget-object v0, v0, Lcom/android/settings/development/MiuiWifiFastRepairController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    if-eqz v3, :cond_5

    .line 267
    iget-object p0, p0, Lcom/android/settings/development/MiuiWifiFastRepairController$2;->this$0:Lcom/android/settings/development/MiuiWifiFastRepairController;

    iget-object p0, p0, Lcom/android/settings/development/MiuiWifiFastRepairController;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiManager;->startTetheredHotspot(Landroid/net/wifi/SoftApConfiguration;)Z

    :cond_5
    return-void
.end method
