.class public Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;
.super Ljava/lang/Object;
.source "ConnectivitySubsystemsRecoveryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$RecoveryStatusCallback;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentRecoveryCallback:Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$RecoveryStatusCallback;

.field private final mHandler:Landroid/os/Handler;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTelephonyRestartInProgress:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRestartInProgress:Z

.field private final mWifiSubsystemRestartTrackingCallback:Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback;


# direct methods
.method public static synthetic $r8$lambda$0MglNoW0hajYYb7x7k3f46D7JDE(Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->lambda$triggerSubsystemRestart$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$Kc1LnCr4qS-bbOmzOfsHTpD36Ss(Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$RecoveryStatusCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->lambda$triggerSubsystemRestart$3(Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$RecoveryStatusCallback;)V

    return-void
.end method

.method private isApmEnabled()Z
    .locals 2

    .line 158
    iget-object p0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "airplane_mode_on"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private isWifiEnabled()Z
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 167
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$triggerSubsystemRestart$2()V
    .locals 1

    .line 297
    invoke-virtual {p0}, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->stopTrackingWifiRestart()V

    .line 298
    invoke-virtual {p0}, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->stopTrackingTelephonyRestart()V

    const/4 v0, 0x0

    .line 299
    iput-boolean v0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mWifiRestartInProgress:Z

    .line 300
    iput-boolean v0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mTelephonyRestartInProgress:Z

    .line 301
    iget-object v0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mCurrentRecoveryCallback:Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$RecoveryStatusCallback;

    if-eqz v0, :cond_0

    .line 302
    invoke-interface {v0}, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$RecoveryStatusCallback;->onSubsystemRestartOperationEnd()V

    const/4 v0, 0x0

    .line 303
    iput-object v0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mCurrentRecoveryCallback:Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$RecoveryStatusCallback;

    :cond_0
    return-void
.end method

.method private synthetic lambda$triggerSubsystemRestart$3(Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$RecoveryStatusCallback;)V
    .locals 3

    .line 267
    iget-boolean v0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mWifiRestartInProgress:Z

    const-string v1, "ConnectivitySubsystemsRecoveryManager"

    if-eqz v0, :cond_0

    const-string p0, "Wifi restart still in progress"

    .line 268
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 272
    :cond_0
    iget-boolean v0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mTelephonyRestartInProgress:Z

    if-eqz v0, :cond_1

    const-string p0, "Telephony restart still in progress"

    .line 273
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 277
    :cond_1
    invoke-direct {p0}, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->isWifiEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 278
    iget-object v0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->restartWifiSubsystem()V

    .line 279
    iput-boolean v1, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mWifiRestartInProgress:Z

    .line 281
    invoke-virtual {p0}, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->startTrackingWifiRestart()V

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 284
    :goto_0
    iget-object v2, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->isApmEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 285
    iget-object v2, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->rebootRadio()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 286
    iput-boolean v1, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mTelephonyRestartInProgress:Z

    .line 288
    invoke-virtual {p0}, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->startTrackingTelephonyRestart()V

    goto :goto_1

    :cond_3
    move v1, v0

    :goto_1
    if-eqz v1, :cond_4

    .line 293
    iput-object p1, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mCurrentRecoveryCallback:Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$RecoveryStatusCallback;

    .line 294
    invoke-interface {p1}, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$RecoveryStatusCallback;->onSubsystemRestartOperationBegin()V

    .line 296
    iget-object p1, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;)V

    const-wide/16 v1, 0x3a98

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void
.end method


# virtual methods
.method public isRecoveryAvailable()Z
    .locals 1

    .line 177
    invoke-direct {p0}, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->isApmEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 180
    :cond_0
    invoke-direct {p0}, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->isWifiEnabled()Z

    move-result p0

    return p0
.end method

.method startTrackingTelephonyRestart()V
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    return-void

    .line 215
    :cond_0
    new-instance v1, Landroid/os/HandlerExecutor;

    iget-object p0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    const/4 p0, 0x0

    invoke-virtual {v0, v1, p0}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    return-void
.end method

.method startTrackingWifiRestart()V
    .locals 3

    .line 200
    iget-object v0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    return-void

    .line 201
    :cond_0
    new-instance v1, Landroid/os/HandlerExecutor;

    iget-object v2, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object p0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mWifiSubsystemRestartTrackingCallback:Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback;

    invoke-virtual {v0, v1, p0}, Landroid/net/wifi/WifiManager;->registerSubsystemRestartTrackingCallback(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback;)V

    return-void
.end method

.method stopTrackingTelephonyRestart()V
    .locals 1

    .line 221
    iget-object p0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 222
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    return-void
.end method

.method stopTrackingWifiRestart()V
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    return-void

    .line 208
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mWifiSubsystemRestartTrackingCallback:Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback;

    invoke-virtual {v0, p0}, Landroid/net/wifi/WifiManager;->unregisterSubsystemRestartTrackingCallback(Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback;)V

    return-void
.end method

.method public triggerSubsystemRestart(Ljava/lang/String;Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$RecoveryStatusCallback;)V
    .locals 1

    .line 264
    iget-object p1, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$RecoveryStatusCallback;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
