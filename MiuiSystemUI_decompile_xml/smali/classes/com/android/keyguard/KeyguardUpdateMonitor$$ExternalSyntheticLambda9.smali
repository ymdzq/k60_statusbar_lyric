.class public final synthetic Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda9;->f$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda9;->f$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const-string v0, "#startBiometricWatchdog"

    .line 7
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceManager:Landroid/hardware/face/BaseMiuiFaceManager;

    .line 12
    if-eqz v0, :cond_0

    .line 14
    iget-object v0, v0, Landroid/hardware/face/BaseMiuiFaceManager;->mFaceManager:Landroid/hardware/face/FaceManager;

    .line 16
    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLogger:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;

    .line 20
    iget-object v1, v0, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 22
    const-string v2, "KeyguardUpdateMonitorLog"

    .line 24
    sget-object v3, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 26
    const-string v0, "Scheduling biometric watchdog for "

    .line 28
    const-string v4, "face"

    .line 30
    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    move-result-object v4

    .line 35
    const/4 v5, 0x0

    .line 36
    const/16 v6, 0x8

    .line 37
    const/4 v7, 0x0

    .line 39
    invoke-static/range {v1 .. v7}, Lcom/android/systemui/log/LogBuffer;->log$default(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 40
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceManager:Landroid/hardware/face/BaseMiuiFaceManager;

    .line 43
    iget-object p0, p0, Landroid/hardware/face/BaseMiuiFaceManager;->mFaceManager:Landroid/hardware/face/FaceManager;

    .line 45
    invoke-virtual {p0}, Landroid/hardware/face/FaceManager;->scheduleWatchdog()V

    .line 47
    :cond_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 50
    return-void
    .line 53
.end method
