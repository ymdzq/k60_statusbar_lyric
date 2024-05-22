.class public final Lcom/android/systemui/wifi/WifiDebuggingSecondaryUserActivity$WifiChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mActivity:Landroid/app/Activity;

.field public final synthetic this$0:Lcom/android/systemui/wifi/WifiDebuggingSecondaryUserActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wifi/WifiDebuggingSecondaryUserActivity;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/wifi/WifiDebuggingSecondaryUserActivity$WifiChangeReceiver;->this$0:Lcom/android/systemui/wifi/WifiDebuggingSecondaryUserActivity;

    .line 2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/android/systemui/wifi/WifiDebuggingSecondaryUserActivity$WifiChangeReceiver;->mActivity:Landroid/app/Activity;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    move-result-object p1

    .line 5
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-eqz v0, :cond_0

    .line 13
    const-string/jumbo p1, "wifi_state"

    .line 15
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 18
    move-result p1

    .line 21
    if-ne p1, v1, :cond_3

    .line 22
    iget-object p0, p0, Lcom/android/systemui/wifi/WifiDebuggingSecondaryUserActivity$WifiChangeReceiver;->mActivity:Landroid/app/Activity;

    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 26
    goto :goto_0

    .line 29
    :cond_0
    const-string v0, "android.net.wifi.STATE_CHANGE"

    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    move-result p1

    .line 35
    if-eqz p1, :cond_3

    .line 36
    const-string p1, "networkInfo"

    .line 38
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 40
    move-result-object p1

    .line 43
    check-cast p1, Landroid/net/NetworkInfo;

    .line 44
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    .line 46
    move-result p2

    .line 49
    if-ne p2, v1, :cond_3

    .line 50
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 52
    move-result p1

    .line 55
    if-nez p1, :cond_1

    .line 56
    iget-object p0, p0, Lcom/android/systemui/wifi/WifiDebuggingSecondaryUserActivity$WifiChangeReceiver;->mActivity:Landroid/app/Activity;

    .line 58
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 60
    return-void

    .line 63
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/wifi/WifiDebuggingSecondaryUserActivity$WifiChangeReceiver;->this$0:Lcom/android/systemui/wifi/WifiDebuggingSecondaryUserActivity;

    .line 64
    iget-object p1, p1, Lcom/android/systemui/wifi/WifiDebuggingSecondaryUserActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 66
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 68
    move-result-object p1

    .line 71
    if-eqz p1, :cond_2

    .line 72
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    .line 74
    move-result p1

    .line 77
    const/4 p2, -0x1

    .line 78
    if-ne p1, p2, :cond_3

    .line 79
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/wifi/WifiDebuggingSecondaryUserActivity$WifiChangeReceiver;->mActivity:Landroid/app/Activity;

    .line 81
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 83
    :cond_3
    :goto_0
    return-void
    .line 86
.end method
