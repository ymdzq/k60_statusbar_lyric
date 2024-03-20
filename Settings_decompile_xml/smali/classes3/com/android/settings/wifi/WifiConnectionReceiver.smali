.class public Lcom/android/settings/wifi/WifiConnectionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiConnectionReceiver.java"


# static fields
.field private static mIsRemind:Z = true

.field private static mMobileConnected:Z = false

.field private static mWifiConnected:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private getBestConfiguration(Landroid/content/Context;Z)Landroid/net/wifi/WifiConfiguration;
    .locals 9

    const-string/jumbo p0, "wifi"

    .line 97
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 98
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 99
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object p0

    .line 100
    invoke-static {}, Lcom/android/settings/MiuiUtils;->getInstance()Lcom/android/settings/MiuiUtils;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    if-eqz p0, :cond_5

    .line 104
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/high16 v3, -0x80000000

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    const/4 v5, 0x1

    if-eqz p2, :cond_1

    if-eqz v2, :cond_1

    .line 105
    iget v6, v2, Landroid/net/wifi/WifiConfiguration;->status:I

    if-eq v6, v5, :cond_1

    iget v6, v4, Landroid/net/wifi/WifiConfiguration;->status:I

    if-ne v6, v5, :cond_1

    goto :goto_0

    .line 110
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/ScanResult;

    .line 111
    invoke-virtual {v1, p1, v4, v7}, Lcom/android/settings/MiuiUtils;->isTheSameWifi(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/ScanResult;)Z

    move-result v8

    if-eqz v8, :cond_2

    if-eqz p2, :cond_3

    if-eqz v2, :cond_3

    .line 112
    iget v6, v2, Landroid/net/wifi/WifiConfiguration;->status:I

    if-ne v6, v5, :cond_3

    iget v6, v4, Landroid/net/wifi/WifiConfiguration;->status:I

    if-eq v6, v5, :cond_3

    .line 116
    iget v3, v7, Landroid/net/wifi/ScanResult;->level:I

    move-object v2, v4

    goto :goto_1

    .line 117
    :cond_3
    iget v5, v7, Landroid/net/wifi/ScanResult;->level:I

    if-le v5, v3, :cond_4

    move-object v2, v4

    move v3, v5

    .line 121
    :cond_4
    :goto_1
    invoke-interface {p0, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return-object v2
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .line 31
    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-nez v0, :cond_0

    return-void

    .line 34
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "miui.intent.action.CONNECTIVITY_CHANGED"

    .line 35
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const v2, 0x10008000

    const-string v3, "extra_best_ap"

    const-string/jumbo v4, "wifi"

    const-string v5, "miui.intent.action.SELECT_WIFI_AP"

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v1, :cond_2

    const-string p0, "networkInfo"

    .line 36
    invoke-virtual {p2, p0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/net/NetworkInfo;

    if-eqz p0, :cond_9

    .line 38
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p2

    if-ne p2, v6, :cond_1

    .line 39
    sget-boolean p2, Lcom/android/settings/wifi/WifiConnectionReceiver;->mWifiConnected:Z

    .line 40
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    sput-boolean p0, Lcom/android/settings/wifi/WifiConnectionReceiver;->mWifiConnected:Z

    if-eqz p2, :cond_9

    if-nez p0, :cond_9

    .line 42
    sput-boolean v6, Lcom/android/settings/wifi/WifiConnectionReceiver;->mIsRemind:Z

    .line 43
    invoke-static {p1}, Lcom/android/settings/wifi/WifiConnectionDialog;->isRemind(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 44
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0, v7}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 45
    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p0

    if-nez p0, :cond_9

    .line 46
    sput-boolean v7, Lcom/android/settings/wifi/WifiConnectionReceiver;->mIsRemind:Z

    .line 47
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 48
    invoke-virtual {p0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 49
    invoke-virtual {p0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 50
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 54
    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    if-nez p1, :cond_9

    .line 55
    sget-boolean p1, Lcom/android/settings/wifi/WifiConnectionReceiver;->mMobileConnected:Z

    .line 56
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    sput-boolean p0, Lcom/android/settings/wifi/WifiConnectionReceiver;->mMobileConnected:Z

    if-nez p1, :cond_9

    if-eqz p0, :cond_9

    .line 58
    sput-boolean v6, Lcom/android/settings/wifi/WifiConnectionReceiver;->mIsRemind:Z

    goto/16 :goto_1

    :cond_2
    const-string p2, "miui.intent.action.SWITCH_TO_WIFI"

    .line 62
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v8, -0x1

    if-eqz v1, :cond_7

    invoke-static {p1}, Lcom/android/settings/wifi/WifiConnectionDialog;->isRemind(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 63
    sget-boolean v0, Lcom/android/settings/wifi/WifiConnectionReceiver;->mIsRemind:Z

    if-nez v0, :cond_3

    invoke-static {p1}, Lcom/android/settings/wifi/WifiConnectionDialog;->isWifiAutoConnectAsk(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p1}, Lcom/android/settings/wifi/WifiConnectionDialog;->isRemindExpired(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 64
    :cond_3
    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 65
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    if-ne v0, v8, :cond_4

    goto :goto_0

    .line 76
    :cond_4
    sput-boolean v7, Lcom/android/settings/wifi/WifiConnectionReceiver;->mIsRemind:Z

    goto :goto_1

    .line 66
    :cond_5
    :goto_0
    invoke-direct {p0, p1, v7}, Lcom/android/settings/wifi/WifiConnectionReceiver;->getBestConfiguration(Landroid/content/Context;Z)Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 68
    sput-boolean v7, Lcom/android/settings/wifi/WifiConnectionReceiver;->mIsRemind:Z

    .line 69
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 71
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 72
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_6
    return-void

    .line 78
    :cond_7
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    sget-boolean p2, Lcom/android/settings/wifi/WifiConnectionReceiver;->mIsRemind:Z

    if-eqz p2, :cond_9

    invoke-static {p1}, Lcom/android/settings/wifi/WifiConnectionDialog;->isRemind(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 79
    sput-boolean v7, Lcom/android/settings/wifi/WifiConnectionReceiver;->mIsRemind:Z

    .line 80
    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/WifiManager;

    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 81
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result p2

    if-ne p2, v8, :cond_9

    .line 82
    :cond_8
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-direct {p0, p1, v6}, Lcom/android/settings/wifi/WifiConnectionReceiver;->getBestConfiguration(Landroid/content/Context;Z)Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    invoke-virtual {p2, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 84
    invoke-virtual {p2, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 85
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_9
    :goto_1
    return-void
.end method
