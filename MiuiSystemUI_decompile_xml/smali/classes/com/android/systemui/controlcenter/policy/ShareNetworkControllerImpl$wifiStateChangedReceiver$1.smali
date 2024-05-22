.class public final Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl$wifiStateChangedReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl$wifiStateChangedReceiver$1;->this$0:Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;

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
    iget-object p1, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl$wifiStateChangedReceiver$1;->this$0:Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;

    .line 2
    iget-object p1, p1, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->callbacks:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl$wifiStateChangedReceiver$1;->this$0:Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;

    .line 13
    iget-boolean p1, p1, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->connectingHotspot:Z

    .line 15
    if-nez p1, :cond_1

    .line 17
    return-void

    .line 19
    :cond_1
    const/4 p1, 0x0

    .line 20
    if-eqz p2, :cond_2

    .line 21
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 26
    goto :goto_0

    .line 27
    :cond_2
    move-object v0, p1

    .line 28
    :goto_0
    if-nez v0, :cond_3

    .line 29
    return-void

    .line 31
    :cond_3
    const-string v1, "android.net.wifi.STATE_CHANGE"

    .line 32
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    move-result v0

    .line 37
    if-eqz v0, :cond_8

    .line 38
    const-string v0, "networkInfo"

    .line 40
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 42
    move-result-object p2

    .line 45
    check-cast p2, Landroid/net/NetworkInfo;

    .line 46
    if-nez p2, :cond_4

    .line 48
    return-void

    .line 50
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl$wifiStateChangedReceiver$1;->this$0:Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;

    .line 51
    iget-object v0, v0, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->wifiManager$delegate:Lkotlin/Lazy;

    .line 53
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 55
    move-result-object v0

    .line 58
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 59
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 61
    move-result-object v0

    .line 64
    if-eqz v0, :cond_5

    .line 65
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 67
    move-result-object v0

    .line 70
    goto :goto_1

    .line 71
    :cond_5
    move-object v0, p1

    .line 72
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 73
    move-result v1

    .line 76
    if-eqz v1, :cond_6

    .line 77
    return-void

    .line 79
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl$wifiStateChangedReceiver$1;->this$0:Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;

    .line 80
    invoke-virtual {v1}, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->getConnectedHotspot()Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Hotspot;

    .line 82
    move-result-object v1

    .line 85
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    .line 86
    move-result-object p2

    .line 89
    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    .line 90
    if-ne p2, v2, :cond_8

    .line 92
    if-eqz v1, :cond_7

    .line 94
    iget-object p1, v1, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Hotspot;->bssid:Ljava/lang/String;

    .line 96
    :cond_7
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 98
    move-result p1

    .line 101
    if-eqz p1, :cond_8

    .line 102
    iget-object p1, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl$wifiStateChangedReceiver$1;->this$0:Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;

    .line 104
    const/4 p2, 0x0

    .line 106
    iput-boolean p2, p1, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->connectingHotspot:Z

    .line 107
    invoke-virtual {p1}, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->getHotspotList()Ljava/util/List;

    .line 109
    move-result-object p2

    .line 112
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl$wifiStateChangedReceiver$1;->this$0:Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->getConnectedHotspot()Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Hotspot;

    .line 115
    move-result-object p0

    .line 118
    invoke-virtual {p1, p2, p0}, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->onHotspotUpdateCallback(Ljava/util/List;Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Hotspot;)V

    .line 119
    :cond_8
    return-void
    .line 122
.end method
