.class public Lcom/android/settings/network/InternetResetHelper$RecoveryWorker;
.super Ljava/lang/Object;
.source "InternetResetHelper.java"

# interfaces
.implements Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$RecoveryStatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/InternetResetHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecoveryWorker"
.end annotation


# static fields
.field private static sCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/network/InternetResetHelper;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/android/settings/network/InternetResetHelper$RecoveryWorker;

.field private static sIsRecovering:Z

.field private static sRecoveryManager:Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isRecovering()Z
    .locals 0

    .line 230
    sget-boolean p0, Lcom/android/settings/network/InternetResetHelper$RecoveryWorker;->sIsRecovering:Z

    return p0
.end method

.method public isRecoveryAvailable()Z
    .locals 0

    .line 240
    sget-object p0, Lcom/android/settings/network/InternetResetHelper$RecoveryWorker;->sRecoveryManager:Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;

    invoke-virtual {p0}, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->isRecoveryAvailable()Z

    move-result p0

    return p0
.end method

.method public onSubsystemRestartOperationBegin()V
    .locals 1

    const-string p0, "RecoveryWorker"

    const-string v0, "The connectivity subsystem is starting for recovery."

    .line 257
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    .line 258
    sput-boolean p0, Lcom/android/settings/network/InternetResetHelper$RecoveryWorker;->sIsRecovering:Z

    return-void
.end method

.method public onSubsystemRestartOperationEnd()V
    .locals 1

    const-string p0, "RecoveryWorker"

    const-string v0, "The connectivity subsystem is done for recovery."

    .line 263
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 264
    sput-boolean p0, Lcom/android/settings/network/InternetResetHelper$RecoveryWorker;->sIsRecovering:Z

    .line 265
    sget-object p0, Lcom/android/settings/network/InternetResetHelper$RecoveryWorker;->sCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/network/InternetResetHelper;

    if-nez p0, :cond_0

    return-void

    .line 267
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/InternetResetHelper;->resumePreferences()V

    return-void
.end method

.method public triggerRestart()Z
    .locals 4

    .line 245
    invoke-virtual {p0}, Lcom/android/settings/network/InternetResetHelper$RecoveryWorker;->isRecoveryAvailable()Z

    move-result p0

    const-string v0, "RecoveryWorker"

    if-nez p0, :cond_0

    const-string p0, "The connectivity subsystem is not available to restart."

    .line 246
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    .line 249
    sput-boolean p0, Lcom/android/settings/network/InternetResetHelper$RecoveryWorker;->sIsRecovering:Z

    .line 250
    sget-object v1, Lcom/android/settings/network/InternetResetHelper$RecoveryWorker;->sRecoveryManager:Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;

    const/4 v2, 0x0

    sget-object v3, Lcom/android/settings/network/InternetResetHelper$RecoveryWorker;->sInstance:Lcom/android/settings/network/InternetResetHelper$RecoveryWorker;

    invoke-virtual {v1, v2, v3}, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->triggerSubsystemRestart(Ljava/lang/String;Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$RecoveryStatusCallback;)V

    const-string v1, "The connectivity subsystem is restarting for recovery."

    .line 251
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method
