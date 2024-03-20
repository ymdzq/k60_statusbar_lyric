.class public final Lcom/android/systemui/statusbar/phone/BiometricUnlockController$3;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$3;->this$0:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onFinishedGoingToSleep()V
    .locals 8

    .line 1
    const-string v0, "BiometricUnlockController#onFinishedGoingToSleep"

    .line 2
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$3;->this$0:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 7
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingAuthenticated:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;

    .line 9
    if-eqz v1, :cond_0

    .line 11
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mLogger:Lcom/android/keyguard/logging/BiometricUnlockLogger;

    .line 13
    iget-object v1, v0, Lcom/android/keyguard/logging/BiometricUnlockLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 15
    const-string v2, "BiometricUnlockLogger"

    .line 17
    sget-object v3, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 19
    const-string v4, "onFinishedGoingToSleep with pendingAuthenticated != null"

    .line 21
    const/4 v5, 0x0

    .line 23
    const/16 v6, 0x8

    .line 24
    const/4 v7, 0x0

    .line 26
    invoke-static/range {v1 .. v7}, Lcom/android/systemui/log/LogBuffer;->log$default(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 27
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$3;->this$0:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 30
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingAuthenticated:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;

    .line 32
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mHandler:Landroid/os/Handler;

    .line 34
    new-instance v2, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$3$$ExternalSyntheticLambda0;

    .line 36
    invoke-direct {v2, p0, v1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$3$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController$3;Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;)V

    .line 38
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 41
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$3;->this$0:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 44
    const/4 v1, 0x0

    .line 46
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingAuthenticated:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;

    .line 47
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$3;->this$0:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 49
    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricAuthenticated:Z

    .line 52
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 54
    return-void
    .line 57
.end method

.method public final onStartedGoingToSleep()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$3;->this$0:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 2
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->resetMode()V

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$3;->this$0:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 7
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mFadedAwayAfterWakeAndUnlock:Z

    .line 10
    const/4 v1, 0x0

    .line 12
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingAuthenticated:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;

    .line 13
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricAuthenticated:Z

    .line 15
    const-class p0, Lcom/miui/interfaces/keyguard/IMiuiFaceUnlockManager;

    .line 17
    invoke-static {p0}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 19
    move-result-object p0

    .line 22
    check-cast p0, Lcom/miui/interfaces/keyguard/IMiuiFaceUnlockManager;

    .line 23
    check-cast p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    invoke-static {v0}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockUtils;->setScreenTurnOnDelayed(Z)V

    .line 30
    const-class v0, Lmiui/stub/MiuiStub$3;

    .line 33
    invoke-static {v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 35
    move-result-object v0

    .line 38
    check-cast v0, Lmiui/stub/MiuiStub$3;

    .line 39
    invoke-virtual {v0}, Lmiui/stub/MiuiStub$3;->userNeedsStrongAuth()Z

    .line 41
    move-result v0

    .line 44
    if-nez v0, :cond_2

    .line 45
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->isFaceAuthEnabled()Z

    .line 47
    move-result v0

    .line 50
    if-eqz v0, :cond_2

    .line 51
    new-instance v0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager$$ExternalSyntheticLambda1;

    .line 53
    invoke-direct {v0, p0}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager$$ExternalSyntheticLambda1;-><init>(Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;)V

    .line 55
    iget-object v1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 58
    if-eqz v1, :cond_2

    .line 60
    iget-object v2, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mWorkerHandler:Landroid/os/Handler;

    .line 62
    if-nez v2, :cond_0

    .line 64
    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadId()I

    .line 67
    move-result v1

    .line 70
    invoke-static {}, Landroid/os/Process;->myTid()I

    .line 71
    move-result v3

    .line 74
    if-ne v1, v3, :cond_1

    .line 75
    invoke-virtual {v0}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager$$ExternalSyntheticLambda1;->run()V

    .line 77
    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 81
    :cond_2
    :goto_0
    const-wide/16 v0, 0x0

    .line 84
    iput-wide v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mScreenOnDelay:J

    .line 86
    return-void
    .line 88
.end method
