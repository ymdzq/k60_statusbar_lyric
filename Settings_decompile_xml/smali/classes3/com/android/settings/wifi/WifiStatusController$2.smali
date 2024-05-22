.class Lcom/android/settings/wifi/WifiStatusController$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiStatusController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiStatusController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiStatusController;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiStatusController;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/android/settings/wifi/WifiStatusController$2;->this$0:Lcom/android/settings/wifi/WifiStatusController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 149
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 150
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusController$2;->this$0:Lcom/android/settings/wifi/WifiStatusController;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiStatusController;->-$$Nest$fgetmVerbose(Lcom/android/settings/wifi/WifiStatusController;)Z

    move-result v0

    const-string v1, "WifiStatusController"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 151
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo p1, "wifi_state"

    const/4 v0, 0x4

    .line 152
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_1

    .line 154
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusController$2;->this$0:Lcom/android/settings/wifi/WifiStatusController;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiStatusController;->-$$Nest$fgetmWifiEnabled(Lcom/android/settings/wifi/WifiStatusController;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    if-eq p1, p2, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusController$2;->this$0:Lcom/android/settings/wifi/WifiStatusController;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiStatusController;->-$$Nest$fgetmWifiEnabled(Lcom/android/settings/wifi/WifiStatusController;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 156
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusController$2;->this$0:Lcom/android/settings/wifi/WifiStatusController;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiStatusController;->updateStatus()V

    .line 158
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusController$2;->this$0:Lcom/android/settings/wifi/WifiStatusController;

    if-ne p1, p2, :cond_4

    const/4 p1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, p1}, Lcom/android/settings/wifi/WifiStatusController;->-$$Nest$fputmWifiEnabled(Lcom/android/settings/wifi/WifiStatusController;Z)V

    goto/16 :goto_2

    :cond_5
    const-string v0, "android.net.wifi.STATE_CHANGE"

    .line 159
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p1, "networkInfo"

    .line 160
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    if-eqz p1, :cond_8

    .line 161
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusController$2;->this$0:Lcom/android/settings/wifi/WifiStatusController;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiStatusController;->-$$Nest$fgetmNetworkConnected(Lcom/android/settings/wifi/WifiStatusController;)Z

    move-result v0

    if-eq p2, v0, :cond_8

    .line 162
    iget-object p2, p0, Lcom/android/settings/wifi/WifiStatusController$2;->this$0:Lcom/android/settings/wifi/WifiStatusController;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    invoke-static {p2, p1}, Lcom/android/settings/wifi/WifiStatusController;->-$$Nest$fputmNetworkConnected(Lcom/android/settings/wifi/WifiStatusController;Z)V

    .line 163
    iget-object p1, p0, Lcom/android/settings/wifi/WifiStatusController$2;->this$0:Lcom/android/settings/wifi/WifiStatusController;

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiStatusController;->updateStatus()V

    goto :goto_2

    :cond_6
    const-string p2, "com.xiaomi.bluetooth.action.connectedDeviceNameChanged"

    .line 165
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 166
    iget-object p1, p0, Lcom/android/settings/wifi/WifiStatusController$2;->this$0:Lcom/android/settings/wifi/WifiStatusController;

    invoke-static {p1}, Lcom/android/settings/wifi/WifiStatusController;->-$$Nest$fgetmEasyTetherCoreService(Lcom/android/settings/wifi/WifiStatusController;)Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 168
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiStatusController$2;->this$0:Lcom/android/settings/wifi/WifiStatusController;

    invoke-static {p1}, Lcom/android/settings/wifi/WifiStatusController;->-$$Nest$fgetmEasyTetherCoreService(Lcom/android/settings/wifi/WifiStatusController;)Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService;->getEasyTetherConnectedHotspotEntry()Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 170
    iget-object p2, p0, Lcom/android/settings/wifi/WifiStatusController$2;->this$0:Lcom/android/settings/wifi/WifiStatusController;

    invoke-virtual {p1}, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->getSsid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/settings/wifi/WifiStatusController;->-$$Nest$fputmStatusViewText(Lcom/android/settings/wifi/WifiStatusController;Ljava/lang/String;)V

    .line 171
    iget-object p1, p0, Lcom/android/settings/wifi/WifiStatusController$2;->this$0:Lcom/android/settings/wifi/WifiStatusController;

    invoke-static {p1}, Lcom/android/settings/wifi/WifiStatusController;->-$$Nest$fgetmVerbose(Lcom/android/settings/wifi/WifiStatusController;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 172
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "easyTether connected device name changed, "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/settings/wifi/WifiStatusController$2;->this$0:Lcom/android/settings/wifi/WifiStatusController;

    invoke-static {p2}, Lcom/android/settings/wifi/WifiStatusController;->-$$Nest$fgetmStatusViewText(Lcom/android/settings/wifi/WifiStatusController;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p1, "getEasyTetherConnectedHotspotEntry error."

    .line 176
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/android/settings/wifi/WifiStatusController$2;->this$0:Lcom/android/settings/wifi/WifiStatusController;

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiStatusController;->updateStatus()V

    .line 181
    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/android/settings/wifi/WifiStatusController$2;->this$0:Lcom/android/settings/wifi/WifiStatusController;

    invoke-static {p1}, Lcom/android/settings/wifi/WifiStatusController;->-$$Nest$fgetmVerbose(Lcom/android/settings/wifi/WifiStatusController;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 182
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "WiFi status "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/settings/wifi/WifiStatusController$2;->this$0:Lcom/android/settings/wifi/WifiStatusController;

    invoke-static {p2}, Lcom/android/settings/wifi/WifiStatusController;->-$$Nest$fgetmWifiEnabled(Lcom/android/settings/wifi/WifiStatusController;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " Connected: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/wifi/WifiStatusController$2;->this$0:Lcom/android/settings/wifi/WifiStatusController;

    invoke-static {p0}, Lcom/android/settings/wifi/WifiStatusController;->-$$Nest$fgetmNetworkConnected(Lcom/android/settings/wifi/WifiStatusController;)Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method
