.class public abstract Lcom/android/systemui/statusbar/policy/dagger/StatusBarPolicyModule_ProvideAccessPointControllerImplFactory;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static provideAccessPointControllerImpl(Landroid/os/UserManager;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl$WifiPickerTrackerFactory;)Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;
    .locals 16

    .line 1
    new-instance v14, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;

    .line 2
    move-object/from16 v0, p0

    .line 4
    move-object/from16 v1, p1

    .line 6
    move-object/from16 v2, p2

    .line 8
    move-object/from16 v3, p3

    .line 10
    invoke-direct {v14, v0, v1, v2, v3}, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;-><init>(Landroid/os/UserManager;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl$WifiPickerTrackerFactory;)V

    .line 12
    iget-object v0, v14, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    .line 15
    if-nez v0, :cond_1

    .line 17
    iget-object v2, v14, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    .line 19
    iget-object v0, v14, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->mWifiPickerTrackerFactory:Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl$WifiPickerTrackerFactory;

    .line 21
    iget-object v4, v0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl$WifiPickerTrackerFactory;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 23
    if-nez v4, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v15, Lcom/android/wifitrackerlib/WifiPickerTracker;

    .line 29
    iget-object v5, v0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl$WifiPickerTrackerFactory;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 31
    iget-object v6, v0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl$WifiPickerTrackerFactory;->mMainHandler:Landroid/os/Handler;

    .line 33
    iget-object v7, v0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl$WifiPickerTrackerFactory;->mWorkerHandler:Landroid/os/Handler;

    .line 35
    iget-object v8, v0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl$WifiPickerTrackerFactory;->mClock:Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl$WifiPickerTrackerFactory$1;

    .line 37
    const-wide/16 v9, 0x3a98

    .line 39
    const-wide/16 v11, 0x2710

    .line 41
    new-instance v1, Lcom/android/wifitrackerlib/WifiTrackerInjector;

    .line 43
    iget-object v3, v0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl$WifiPickerTrackerFactory;->mContext:Landroid/content/Context;

    .line 45
    invoke-direct {v1, v3}, Lcom/android/wifitrackerlib/WifiTrackerInjector;-><init>(Landroid/content/Context;)V

    .line 47
    move-object v0, v15

    .line 50
    move-object v13, v14

    .line 51
    invoke-direct/range {v0 .. v13}, Lcom/android/wifitrackerlib/WifiPickerTracker;-><init>(Lcom/android/wifitrackerlib/WifiTrackerInjector;Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;JJLcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;)V

    .line 52
    :goto_0
    iput-object v0, v14, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    .line 55
    :cond_1
    return-object v14
    .line 57
.end method
