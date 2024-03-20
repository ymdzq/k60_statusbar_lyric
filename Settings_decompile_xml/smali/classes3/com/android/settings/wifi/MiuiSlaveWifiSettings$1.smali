.class Lcom/android/settings/wifi/MiuiSlaveWifiSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "MiuiSlaveWifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->initBroadcastReceiver(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/MiuiSlaveWifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/MiuiSlaveWifiSettings;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings$1;->this$0:Lcom/android/settings/wifi/MiuiSlaveWifiSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 308
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.wifi.SCAN_RESULTS"

    .line 309
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings$1;->this$0:Lcom/android/settings/wifi/MiuiSlaveWifiSettings;

    invoke-static {p0}, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->-$$Nest$fgetmMainHandler(Lcom/android/settings/wifi/MiuiSlaveWifiSettings;)Lcom/android/settings/wifi/MiuiSlaveWifiSettings$MainThreadHandler;

    move-result-object p0

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    :cond_0
    const-string v0, "android.net.wifi.SLAVE_STATE_CHANGE"

    .line 311
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "networkInfo"

    .line 313
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    if-eqz p1, :cond_5

    .line 315
    iget-object p2, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings$1;->this$0:Lcom/android/settings/wifi/MiuiSlaveWifiSettings;

    invoke-static {p2}, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->-$$Nest$fgetmUserSelect(Lcom/android/settings/wifi/MiuiSlaveWifiSettings;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings$1;->this$0:Lcom/android/settings/wifi/MiuiSlaveWifiSettings;

    invoke-static {p2}, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->-$$Nest$fgetmNetworkState(Lcom/android/settings/wifi/MiuiSlaveWifiSettings;)Landroid/net/NetworkInfo$State;

    move-result-object p2

    sget-object v0, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne p2, v0, :cond_1

    .line 316
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object p2

    sget-object v0, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne p2, v0, :cond_1

    .line 317
    iget-object p2, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings$1;->this$0:Lcom/android/settings/wifi/MiuiSlaveWifiSettings;

    invoke-static {p2}, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->-$$Nest$fgetmMainHandler(Lcom/android/settings/wifi/MiuiSlaveWifiSettings;)Lcom/android/settings/wifi/MiuiSlaveWifiSettings$MainThreadHandler;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 318
    :cond_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object p2

    sget-object v0, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne p2, v0, :cond_2

    .line 319
    iget-object p2, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings$1;->this$0:Lcom/android/settings/wifi/MiuiSlaveWifiSettings;

    invoke-static {p2}, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->-$$Nest$fgetmMainHandler(Lcom/android/settings/wifi/MiuiSlaveWifiSettings;)Lcom/android/settings/wifi/MiuiSlaveWifiSettings$MainThreadHandler;

    move-result-object p2

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 321
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings$1;->this$0:Lcom/android/settings/wifi/MiuiSlaveWifiSettings;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->-$$Nest$fputmNetworkState(Lcom/android/settings/wifi/MiuiSlaveWifiSettings;Landroid/net/NetworkInfo$State;)V

    goto :goto_1

    :cond_3
    const-string v0, "miui.intent.DUAL_WIFI.CACHE_OPENWIFI"

    .line 323
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 324
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings$1;->this$0:Lcom/android/settings/wifi/MiuiSlaveWifiSettings;

    invoke-static {p0, p2}, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->-$$Nest$fputmOpenWifiIntent(Lcom/android/settings/wifi/MiuiSlaveWifiSettings;Landroid/content/Intent;)V

    goto :goto_1

    :cond_4
    const-string p2, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 325
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 326
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings$1;->this$0:Lcom/android/settings/wifi/MiuiSlaveWifiSettings;

    invoke-static {p0}, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->-$$Nest$fgetmMainHandler(Lcom/android/settings/wifi/MiuiSlaveWifiSettings;)Lcom/android/settings/wifi/MiuiSlaveWifiSettings$MainThreadHandler;

    move-result-object p0

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_5
    :goto_1
    return-void
.end method
