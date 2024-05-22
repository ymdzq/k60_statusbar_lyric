.class public final Lcom/android/systemui/statusbar/ToggleManagerController;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mBgHandler:Landroid/os/Handler;

.field public final mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

.field public final mBroadcastReceiver:Lcom/android/systemui/statusbar/ToggleManagerController$1;

.field public final mConnectivityManager:Landroid/net/ConnectivityManager;

.field public final mContext:Landroid/content/Context;

.field public final mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

.field public final mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

.field public final mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

.field public final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/statusbar/policy/BluetoothController;Lcom/android/systemui/statusbar/connectivity/NetworkController;Landroid/net/ConnectivityManager;Lcom/android/systemui/statusbar/policy/FlashlightController;Lcom/android/systemui/statusbar/policy/HotspotController;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/systemui/statusbar/ToggleManagerController$1;

    .line 5
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/ToggleManagerController$1;-><init>(Lcom/android/systemui/statusbar/ToggleManagerController;)V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/statusbar/ToggleManagerController;->mBroadcastReceiver:Lcom/android/systemui/statusbar/ToggleManagerController$1;

    .line 10
    iput-object p1, p0, Lcom/android/systemui/statusbar/ToggleManagerController;->mContext:Landroid/content/Context;

    .line 12
    iput-object p6, p0, Lcom/android/systemui/statusbar/ToggleManagerController;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 14
    iput-object p3, p0, Lcom/android/systemui/statusbar/ToggleManagerController;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 16
    iput-object p5, p0, Lcom/android/systemui/statusbar/ToggleManagerController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 18
    check-cast p4, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    .line 20
    iget-object p3, p4, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    .line 22
    iput-object p3, p0, Lcom/android/systemui/statusbar/ToggleManagerController;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    .line 24
    iput-object p7, p0, Lcom/android/systemui/statusbar/ToggleManagerController;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    .line 26
    const-string/jumbo p3, "wifi"

    .line 28
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    move-result-object p1

    .line 34
    check-cast p1, Landroid/net/wifi/WifiManager;

    .line 35
    iput-object p1, p0, Lcom/android/systemui/statusbar/ToggleManagerController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 37
    iput-object p2, p0, Lcom/android/systemui/statusbar/ToggleManagerController;->mBgHandler:Landroid/os/Handler;

    .line 39
    return-void
    .line 41
.end method
