.class public Lcom/android/settings/wifi/TetherStatusController;
.super Lcom/android/settings/BaseSettingsController;
.source "TetherStatusController.java"


# instance fields
.field private mHasRegister:Z

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/android/settings/BaseSettingsController;-><init>(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 18
    new-instance p1, Lcom/android/settings/wifi/TetherStatusController$1;

    invoke-direct {p1, p0}, Lcom/android/settings/wifi/TetherStatusController$1;-><init>(Lcom/android/settings/wifi/TetherStatusController;)V

    iput-object p1, p0, Lcom/android/settings/wifi/TetherStatusController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 27
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/TetherStatusController;->mIntentFilter:Landroid/content/IntentFilter;

    const-string p0, "android.net.conn.TETHER_STATE_CHANGED"

    .line 28
    invoke-virtual {p1, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public isWifiTetherEnabled(Landroid/content/Context;)Z
    .locals 0

    const-string/jumbo p0, "wifi"

    .line 64
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 65
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result p0

    const/16 p1, 0xd

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public pause()V
    .locals 0

    .line 0
    return-void
.end method

.method public resume()V
    .locals 0

    .line 0
    return-void
.end method

.method public start()V
    .locals 4

    .line 37
    iget-object v0, p0, Lcom/android/settings/BaseSettingsController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/TetherStatusController;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/TetherStatusController;->mIntentFilter:Landroid/content/IntentFilter;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/android/settings/wifi/TetherStatusController;->mHasRegister:Z

    return-void
.end method

.method public stop()V
    .locals 2

    .line 47
    iget-boolean v0, p0, Lcom/android/settings/wifi/TetherStatusController;->mHasRegister:Z

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/android/settings/BaseSettingsController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/TetherStatusController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/android/settings/wifi/TetherStatusController;->mHasRegister:Z

    :cond_0
    return-void
.end method

.method public updateStatus()V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/android/settings/BaseSettingsController;->mStatusView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 57
    iget-object v1, p0, Lcom/android/settings/BaseSettingsController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/TetherStatusController;->isWifiTetherEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 58
    sget p0, Lcom/android/settings/R$string;->wireless_on:I

    goto :goto_0

    .line 59
    :cond_0
    sget p0, Lcom/android/settings/R$string;->wireless_off:I

    .line 56
    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    return-void
.end method
