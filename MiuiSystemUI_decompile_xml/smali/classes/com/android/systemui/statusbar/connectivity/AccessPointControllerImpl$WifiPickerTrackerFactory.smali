.class public final Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl$WifiPickerTrackerFactory;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mClock:Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl$WifiPickerTrackerFactory$1;

.field public final mConnectivityManager:Landroid/net/ConnectivityManager;

.field public final mContext:Landroid/content/Context;

.field public final mMainHandler:Landroid/os/Handler;

.field public final mWifiManager:Landroid/net/wifi/WifiManager;

.field public final mWorkerHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl$WifiPickerTrackerFactory$1;

    .line 5
    sget-object v1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    .line 7
    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl$WifiPickerTrackerFactory$1;-><init>(Ljava/time/ZoneId;)V

    .line 9
    iput-object v0, p0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl$WifiPickerTrackerFactory;->mClock:Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl$WifiPickerTrackerFactory$1;

    .line 12
    iput-object p1, p0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl$WifiPickerTrackerFactory;->mContext:Landroid/content/Context;

    .line 14
    iput-object p2, p0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl$WifiPickerTrackerFactory;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 16
    iput-object p3, p0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl$WifiPickerTrackerFactory;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 18
    iput-object p4, p0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl$WifiPickerTrackerFactory;->mMainHandler:Landroid/os/Handler;

    .line 20
    iput-object p5, p0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl$WifiPickerTrackerFactory;->mWorkerHandler:Landroid/os/Handler;

    .line 22
    return-void
    .line 24
.end method
