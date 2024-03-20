.class public Lcom/android/settings/wifi/passpoint/PasspointConfigureReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PasspointConfigureReceiver.java"


# static fields
.field private static mIsRegistered:Z

.field private static mPasspointConfigureReceiver:Lcom/android/settings/wifi/passpoint/PasspointConfigureReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private disablePasspointWifiReceiver(Landroid/content/Context;)V
    .locals 1

    .line 74
    sget-boolean v0, Lcom/android/settings/wifi/passpoint/PasspointConfigureReceiver;->mIsRegistered:Z

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p0, 0x0

    .line 76
    sput-boolean p0, Lcom/android/settings/wifi/passpoint/PasspointConfigureReceiver;->mIsRegistered:Z

    :cond_0
    return-void
.end method

.method public static enablePasspointWifiReceiver(Landroid/content/Context;)V
    .locals 2

    .line 61
    sget-object v0, Lcom/android/settings/wifi/passpoint/PasspointConfigureReceiver;->mPasspointConfigureReceiver:Lcom/android/settings/wifi/passpoint/PasspointConfigureReceiver;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/android/settings/wifi/passpoint/PasspointConfigureReceiver;

    invoke-direct {v0}, Lcom/android/settings/wifi/passpoint/PasspointConfigureReceiver;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/passpoint/PasspointConfigureReceiver;->mPasspointConfigureReceiver:Lcom/android/settings/wifi/passpoint/PasspointConfigureReceiver;

    .line 64
    :cond_0
    sget-boolean v0, Lcom/android/settings/wifi/passpoint/PasspointConfigureReceiver;->mIsRegistered:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 65
    sput-boolean v0, Lcom/android/settings/wifi/passpoint/PasspointConfigureReceiver;->mIsRegistered:Z

    .line 66
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 67
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 68
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v1, Lcom/android/settings/wifi/passpoint/PasspointConfigureReceiver;->mPasspointConfigureReceiver:Lcom/android/settings/wifi/passpoint/PasspointConfigureReceiver;

    .line 70
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 22
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "wifi"

    .line 23
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 24
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 25
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result p2

    if-ne p2, v3, :cond_5

    .line 26
    invoke-static {p1}, Lcom/android/settings/wifi/passpoint/MiuiPasspointR1Utils;->removeAllUnregisteredConfig(Landroid/content/Context;)V

    .line 27
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/passpoint/PasspointConfigureReceiver;->disablePasspointWifiReceiver(Landroid/content/Context;)V

    goto/16 :goto_2

    :cond_0
    const-string p0, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 29
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "networkInfo"

    .line 30
    invoke-virtual {p2, p0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/net/NetworkInfo;

    if-eqz p0, :cond_5

    .line 31
    sget-object p2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 32
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 33
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->isPasspointAp()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->isOsuAp()Z

    move-result p2

    if-nez p2, :cond_5

    .line 34
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getPasspointProviderFriendlyName()Ljava/lang/String;

    move-result-object p2

    .line 35
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getPasspointFqdn()Ljava/lang/String;

    move-result-object p0

    .line 36
    invoke-static {p1, p0}, Lcom/android/settings/wifi/passpoint/MiuiPasspointR1Utils;->getRegisterState(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 37
    invoke-static {p1, p0, p2}, Lcom/android/settings/wifi/passpoint/MiuiPasspointR1Utils;->gotoLoginActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 39
    :cond_1
    new-instance p0, Landroid/content/Intent;

    const-string p2, "com.miui.wifi.passpoint.action.PASSPOINT_CONNECTED"

    invoke-direct {p0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2

    :cond_2
    const-string p0, "android.settings.wifi.PASSPOINT_LOGIN_RESULT"

    .line 44
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "friendly_name"

    .line 45
    invoke-virtual {p2, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "result"

    .line 46
    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eqz p0, :cond_3

    .line 48
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "exands"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "exands.com"

    goto :goto_0

    :cond_3
    const-string p0, ""

    .line 51
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_5

    if-nez p2, :cond_4

    move v0, v3

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    .line 52
    :goto_1
    invoke-static {p1, p0, v0}, Lcom/android/settings/wifi/passpoint/MiuiPasspointR1Utils;->saveRegisterState(Landroid/content/Context;Ljava/lang/String;Z)V

    if-ne p2, v3, :cond_5

    .line 55
    invoke-static {p1, p0}, Lcom/android/settings/wifi/passpoint/MiuiPasspointR1Utils;->removePasspointConfig(Landroid/content/Context;Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method
