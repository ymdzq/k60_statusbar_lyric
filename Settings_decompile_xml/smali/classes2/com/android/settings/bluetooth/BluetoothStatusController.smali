.class public Lcom/android/settings/bluetooth/BluetoothStatusController;
.super Lcom/android/settings/BaseSettingsController;
.source "BluetoothStatusController.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mHasRegister:Z

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/settings/BaseSettingsController;-><init>(Landroid/content/Context;Landroid/widget/TextView;)V

    const-string p1, "BluetoothStatusController"

    .line 26
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothStatusController;->TAG:Ljava/lang/String;

    .line 31
    new-instance p1, Lcom/android/settings/bluetooth/BluetoothStatusController$1;

    invoke-direct {p1, p0}, Lcom/android/settings/bluetooth/BluetoothStatusController$1;-><init>(Lcom/android/settings/bluetooth/BluetoothStatusController;)V

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothStatusController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 62
    invoke-static {}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getInstance()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothStatusController;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 64
    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothStatusController;->mIntentFilter:Landroid/content/IntentFilter;

    return-void
.end method


# virtual methods
.method handleStateChanged(I)V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/android/settings/BaseSettingsController;->mStatusView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 111
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v0, 0xb

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_1

    .line 121
    iget-object p0, p0, Lcom/android/settings/BaseSettingsController;->mStatusView:Landroid/widget/TextView;

    sget p1, Lcom/android/settings/R$string;->wireless_off:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 115
    :cond_1
    iget-object p0, p0, Lcom/android/settings/BaseSettingsController;->mStatusView:Landroid/widget/TextView;

    sget p1, Lcom/android/settings/R$string;->wireless_on:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
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

    .line 79
    iget-object v0, p0, Lcom/android/settings/BaseSettingsController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothStatusController;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothStatusController;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothStatusController;->mHasRegister:Z

    .line 82
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothStatusController;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    const-string v1, "BluetoothStatusController"

    if-nez v0, :cond_0

    const-string/jumbo v0, "start: mLocalAdapter is null"

    .line 83
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xa

    .line 84
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothStatusController;->handleStateChanged(I)V

    return-void

    .line 87
    :cond_0
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BluetoothState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothStatusController;->handleStateChanged(I)V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 95
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothStatusController;->mHasRegister:Z

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/settings/BaseSettingsController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothStatusController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 97
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothStatusController;->mHasRegister:Z

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothStatusController;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_1

    const/16 v0, 0xa

    .line 101
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothStatusController;->handleStateChanged(I)V

    :cond_1
    return-void
.end method

.method protected updateStatus()V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothStatusController;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    const/16 v0, 0xa

    .line 129
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothStatusController;->handleStateChanged(I)V

    return-void

    .line 134
    :cond_0
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothStatusController;->handleStateChanged(I)V

    return-void
.end method
