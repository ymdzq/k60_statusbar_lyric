.class Lcom/android/settings/wifi/MiuiWifiSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "MiuiWifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/MiuiWifiSettings;->initBroadcastReceiver(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/MiuiWifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/MiuiWifiSettings;)V
    .locals 0

    .line 568
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings$2;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 571
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.wifi.SCAN_RESULTS"

    .line 572
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$2;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fgetmMainHandler(Lcom/android/settings/wifi/MiuiWifiSettings;)Lcom/android/settings/wifi/MiuiWifiSettings$MainThreadHandler;

    move-result-object p0

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    :cond_0
    const-string v0, "android.net.wifi.STATE_CHANGE"

    .line 574
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p1, "networkInfo"

    .line 576
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    const/4 p2, -0x1

    if-eqz p1, :cond_5

    .line 578
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$2;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fgetmUserSelect(Lcom/android/settings/wifi/MiuiWifiSettings;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$2;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fgetmNetworkState(Lcom/android/settings/wifi/MiuiWifiSettings;)Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v3, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, v3, :cond_1

    .line 579
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v0, v3, :cond_1

    .line 580
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$2;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fgetmMainHandler(Lcom/android/settings/wifi/MiuiWifiSettings;)Lcom/android/settings/wifi/MiuiWifiSettings$MainThreadHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 581
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$2;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fgetmUserSelect(Lcom/android/settings/wifi/MiuiWifiSettings;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, v3, :cond_2

    .line 582
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$2;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fgetmMainHandler(Lcom/android/settings/wifi/MiuiWifiSettings;)Lcom/android/settings/wifi/MiuiWifiSettings$MainThreadHandler;

    move-result-object v0

    const/4 v3, 0x2

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 584
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$2;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {v0, v2}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fputmUserSelect(Lcom/android/settings/wifi/MiuiWifiSettings;Z)V

    .line 586
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$2;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fputmNetworkState(Lcom/android/settings/wifi/MiuiWifiSettings;Landroid/net/NetworkInfo$State;)V

    .line 588
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$smisPad()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 589
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$2;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fgetmSameAccountAccessPoint(Lcom/android/settings/wifi/MiuiWifiSettings;)Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$2;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fgetmVirtualAPPreference(Lcom/android/settings/wifi/MiuiWifiSettings;)Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 591
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$2;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    iget-object v0, v0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 592
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 593
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiSettings$2;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fgetmSameAccountAccessPoint(Lcom/android/settings/wifi/MiuiWifiSettings;)Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;->getSsid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 594
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive connected: ssid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$2;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {v0, v2}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fputmIsConnecting(Lcom/android/settings/wifi/MiuiWifiSettings;Z)V

    .line 596
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$2;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$mremoveVirtualAPPreference(Lcom/android/settings/wifi/MiuiWifiSettings;)V

    .line 599
    :cond_3
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$sfgetmWifiHelpWorkHandler()Lcom/android/settings/wifi/MiuiWifiSettings$MessageHandler;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 600
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$sfgetmWifiHelpWorkHandler()Lcom/android/settings/wifi/MiuiWifiSettings$MessageHandler;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$sfgetmWifiHelpWorkHandler()Lcom/android/settings/wifi/MiuiWifiSettings$MessageHandler;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4, v2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 603
    :cond_4
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings$2;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {p1}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fgetmWaitingNetworkId(Lcom/android/settings/wifi/MiuiWifiSettings;)I

    move-result p1

    if-eq p1, p2, :cond_5

    .line 605
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings$2;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    iget-object v0, p1, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {p1}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fgetmWaitingNetworkId(Lcom/android/settings/wifi/MiuiWifiSettings;)I

    move-result p1

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 608
    :cond_5
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$2;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {p0, p2}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fputmWaitingNetworkId(Lcom/android/settings/wifi/MiuiWifiSettings;I)V

    goto/16 :goto_1

    :cond_6
    const-string v0, "miui.intent.CACHE_OPENWIFI"

    .line 609
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 610
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$2;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {p0, p2}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fputmOpenWifiIntent(Lcom/android/settings/wifi/MiuiWifiSettings;Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_7
    const-string/jumbo v0, "show_dpp_qr_code"

    .line 611
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 612
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$2;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fgetmDppHandler(Lcom/android/settings/wifi/MiuiWifiSettings;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0x5001

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    :cond_8
    const-string/jumbo v0, "scan_dpp_success"

    .line 613
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 614
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings$2;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "wifi_qr_code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/dpp/WifiQrCode;

    invoke-static {p1, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fputmWifiQrcode(Lcom/android/settings/wifi/MiuiWifiSettings;Lcom/android/settings/wifi/dpp/WifiQrCode;)V

    .line 616
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings$2;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string/jumbo v0, "wifi_net_work_config"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    invoke-static {p1, p2}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fputmWifiNetworkConfig(Lcom/android/settings/wifi/MiuiWifiSettings;Lcom/android/settings/wifi/dpp/WifiNetworkConfig;)V

    .line 618
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$2;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fgetmDppHandler(Lcom/android/settings/wifi/MiuiWifiSettings;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0x5002

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_9
    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 619
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    iget-object p2, p0, Lcom/android/settings/wifi/MiuiWifiSettings$2;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {p2}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fgetmIsDeviceLockNeed(Lcom/android/settings/wifi/MiuiWifiSettings;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 620
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$2;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$misCustShowSkipButton(Lcom/android/settings/wifi/MiuiWifiSettings;)V

    goto :goto_1

    :cond_a
    const-string p2, "miui.intent.action.WIFI_CONNECTION_FAILURE"

    .line 621
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 622
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$smisPad()Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    .line 625
    :cond_b
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "recv connect fail event."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$sfgetmEasyTetherConnectingPreference()Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 627
    invoke-static {}, Lcom/android/wifitrackerlib/BaseWifiTracker;->isVerboseLoggingEnabled()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 628
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$sfgetmEasyTetherConnectingPreference()Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " connect failed."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    :cond_c
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$2;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$mupdatePrefForEasyTetherConnectFail(Lcom/android/settings/wifi/MiuiWifiSettings;)V

    :cond_d
    :goto_1
    return-void
.end method
