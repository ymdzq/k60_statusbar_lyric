.class Lcom/android/settings/MiuiTetherSettings$1;
.super Ljava/lang/Object;
.source "MiuiTetherSettings.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$SoftApCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MiuiTetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiTetherSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiTetherSettings;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/android/settings/MiuiTetherSettings$1;->this$0:Lcom/android/settings/MiuiTetherSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectedClientsChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiClient;",
            ">;)V"
        }
    .end annotation

    .line 305
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings$1;->this$0:Lcom/android/settings/MiuiTetherSettings;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/settings/MiuiTetherSettings;->-$$Nest$fputmNumClients(Lcom/android/settings/MiuiTetherSettings;I)V

    .line 306
    iget-object p0, p0, Lcom/android/settings/MiuiTetherSettings$1;->this$0:Lcom/android/settings/MiuiTetherSettings;

    invoke-static {p0}, Lcom/android/settings/MiuiTetherSettings;->-$$Nest$mmanageShowConnectedDevices(Lcom/android/settings/MiuiTetherSettings;)V

    return-void
.end method

.method public onStateChanged(II)V
    .locals 6

    const/16 p2, 0xb

    const/16 v0, 0xd

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, p2, :cond_3

    .line 273
    iget-object p2, p0, Lcom/android/settings/MiuiTetherSettings$1;->this$0:Lcom/android/settings/MiuiTetherSettings;

    invoke-static {p2}, Lcom/android/settings/MiuiTetherSettings;->-$$Nest$fgetmRestartWifiApAfterConfigChange(Lcom/android/settings/MiuiTetherSettings;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 274
    iget-object p2, p0, Lcom/android/settings/MiuiTetherSettings$1;->this$0:Lcom/android/settings/MiuiTetherSettings;

    invoke-static {p2, v2}, Lcom/android/settings/MiuiTetherSettings;->-$$Nest$fputmRestartWifiApAfterConfigChange(Lcom/android/settings/MiuiTetherSettings;Z)V

    const-string p2, "Restarting WifiAp due to prior config change."

    const-string v3, "MiuiTetherSettings"

    .line 275
    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object p2, p0, Lcom/android/settings/MiuiTetherSettings$1;->this$0:Lcom/android/settings/MiuiTetherSettings;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 277
    iget-object p2, p0, Lcom/android/settings/MiuiTetherSettings$1;->this$0:Lcom/android/settings/MiuiTetherSettings;

    invoke-static {p2}, Lcom/android/settings/MiuiTetherSettings;->-$$Nest$fgetmDelayStartTetherRunnable(Lcom/android/settings/MiuiTetherSettings;)Ljava/lang/Runnable;

    move-result-object p2

    if-nez p2, :cond_0

    .line 278
    iget-object p2, p0, Lcom/android/settings/MiuiTetherSettings$1;->this$0:Lcom/android/settings/MiuiTetherSettings;

    new-instance v3, Lcom/android/settings/MiuiTetherSettings$1$1;

    invoke-direct {v3, p0}, Lcom/android/settings/MiuiTetherSettings$1$1;-><init>(Lcom/android/settings/MiuiTetherSettings$1;)V

    invoke-static {p2, v3}, Lcom/android/settings/MiuiTetherSettings;->-$$Nest$fputmDelayStartTetherRunnable(Lcom/android/settings/MiuiTetherSettings;Ljava/lang/Runnable;)V

    .line 285
    :cond_0
    iget-object p2, p0, Lcom/android/settings/MiuiTetherSettings$1;->this$0:Lcom/android/settings/MiuiTetherSettings;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object p2

    iget-object v3, p0, Lcom/android/settings/MiuiTetherSettings$1;->this$0:Lcom/android/settings/MiuiTetherSettings;

    invoke-static {v3}, Lcom/android/settings/MiuiTetherSettings;->-$$Nest$fgetmDelayStartTetherRunnable(Lcom/android/settings/MiuiTetherSettings;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x1f4

    invoke-virtual {p2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    const-string p2, "The fragment is not added, skip restart."

    .line 287
    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 290
    :cond_2
    iget-object p2, p0, Lcom/android/settings/MiuiTetherSettings$1;->this$0:Lcom/android/settings/MiuiTetherSettings;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v2}, Landroid/provider/MiuiSettings$System;->setRestartWifiApAfterConfigChange(Landroid/content/Context;Z)V

    .line 292
    :goto_0
    iget-object p2, p0, Lcom/android/settings/MiuiTetherSettings$1;->this$0:Lcom/android/settings/MiuiTetherSettings;

    invoke-static {p2, v2}, Lcom/android/settings/MiuiTetherSettings;->-$$Nest$fputmSoftApEnabled(Lcom/android/settings/MiuiTetherSettings;Z)V

    .line 293
    iget-object p2, p0, Lcom/android/settings/MiuiTetherSettings$1;->this$0:Lcom/android/settings/MiuiTetherSettings;

    invoke-static {p2}, Lcom/android/settings/MiuiTetherSettings;->-$$Nest$mmanageShowConnectedDevices(Lcom/android/settings/MiuiTetherSettings;)V

    goto :goto_1

    :cond_3
    if-ne p1, v0, :cond_4

    .line 295
    iget-object p2, p0, Lcom/android/settings/MiuiTetherSettings$1;->this$0:Lcom/android/settings/MiuiTetherSettings;

    invoke-static {p2, v1}, Lcom/android/settings/MiuiTetherSettings;->-$$Nest$fputmSoftApEnabled(Lcom/android/settings/MiuiTetherSettings;Z)V

    .line 296
    iget-object p2, p0, Lcom/android/settings/MiuiTetherSettings$1;->this$0:Lcom/android/settings/MiuiTetherSettings;

    invoke-static {p2}, Lcom/android/settings/MiuiTetherSettings;->-$$Nest$mmanageShowConnectedDevices(Lcom/android/settings/MiuiTetherSettings;)V

    .line 298
    :cond_4
    :goto_1
    iget-object p2, p0, Lcom/android/settings/MiuiTetherSettings$1;->this$0:Lcom/android/settings/MiuiTetherSettings;

    if-ne p1, v0, :cond_5

    move v2, v1

    :cond_5
    invoke-static {p2, v2}, Lcom/android/settings/MiuiTetherSettings;->-$$Nest$mshowOrHideShareQrcode(Lcom/android/settings/MiuiTetherSettings;Z)V

    .line 299
    iget-object p1, p0, Lcom/android/settings/MiuiTetherSettings$1;->this$0:Lcom/android/settings/MiuiTetherSettings;

    invoke-static {p1, v1}, Lcom/android/settings/MiuiTetherSettings;->-$$Nest$fputmPageRefreshComplete(Lcom/android/settings/MiuiTetherSettings;Z)V

    .line 300
    iget-object p0, p0, Lcom/android/settings/MiuiTetherSettings$1;->this$0:Lcom/android/settings/MiuiTetherSettings;

    invoke-virtual {p0}, Lcom/android/settings/MiuiTetherSettings;->highlightPreferenceIfNeeded()V

    return-void
.end method
