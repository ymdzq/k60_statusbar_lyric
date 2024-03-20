.class Lcom/android/settings/wifi/MiuiSlaveWifiEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "MiuiSlaveWifiEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler$1;->this$0:Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 75
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiSlaveWifiEnabler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.net.wifi.WIFI_SLAVE_STATE_CHANGED"

    .line 77
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler$1;->this$0:Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;

    const-string/jumbo p1, "wifi_state"

    const/16 v0, 0x12

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;->-$$Nest$mhandleWifiStateChanged(Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;I)V

    goto :goto_1

    :cond_0
    const-string v0, "miui.net.wifi.p2p.SLAVE_STATE_CHANGED"

    .line 80
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string/jumbo p1, "wifi_p2p_state"

    const/4 v0, 0x1

    .line 81
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x2

    const/4 v1, 0x0

    if-ne p1, p2, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    if-nez p1, :cond_2

    .line 84
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler$1;->this$0:Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;

    invoke-static {p1}, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;->-$$Nest$fgetmIsSlaveWifiNeedOn(Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 85
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler$1;->this$0:Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;

    invoke-static {p1}, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;->-$$Nest$fgetmSlaveWifiUtils(Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;)Lcom/android/settingslib/wifi/SlaveWifiUtils;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/settingslib/wifi/SlaveWifiUtils;->setWifiSlaveEnabled(Z)Z

    .line 86
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler$1;->this$0:Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;

    invoke-static {p0, v1}, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;->-$$Nest$fputmIsSlaveWifiNeedOn(Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;Z)V

    :cond_2
    :goto_1
    return-void
.end method
