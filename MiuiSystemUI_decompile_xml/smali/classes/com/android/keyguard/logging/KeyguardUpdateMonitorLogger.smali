.class public final Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final logBuffer:Lcom/android/systemui/log/LogBuffer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/log/LogBuffer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final d(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->log(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;)V

    .line 4
    return-void
    .line 7
.end method

.method public final log(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 2
    const-string v1, "KeyguardUpdateMonitorLog"

    .line 4
    const/4 v4, 0x0

    .line 6
    const/16 v5, 0x8

    .line 7
    const/4 v6, 0x0

    .line 9
    move-object v2, p2

    .line 10
    move-object v3, p1

    .line 11
    invoke-static/range {v0 .. v6}, Lcom/android/systemui/log/LogBuffer;->log$default(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 12
    return-void
    .line 15
.end method

.method public final logActiveUnlockRequestSkippedForWakeReasonDueToFaceConfig(I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logActiveUnlockRequestSkippedForWakeReasonDueToFaceConfig$2;->INSTANCE:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logActiveUnlockRequestSkippedForWakeReasonDueToFaceConfig$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "ActiveUnlock"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 18
    return-void
    .line 21
.end method

.method public final logActiveUnlockTriggered(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logActiveUnlockTriggered$2;->INSTANCE:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logActiveUnlockTriggered$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "ActiveUnlock"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 18
    return-void
    .line 21
.end method

.method public final logAssistantVisible(Z)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->VERBOSE:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logAssistantVisible$2;->INSTANCE:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logAssistantVisible$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "KeyguardUpdateMonitorLog"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 18
    return-void
    .line 21
.end method

.method public final logAuthInterruptDetected(Z)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logAuthInterruptDetected$2;->INSTANCE:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logAuthInterruptDetected$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "KeyguardUpdateMonitorLog"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 18
    return-void
    .line 21
.end method

.method public final logBroadcastReceived(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logBroadcastReceived$2;->INSTANCE:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logBroadcastReceived$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "KeyguardUpdateMonitorLog"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 18
    return-void
    .line 21
.end method

.method public final logDeviceProvisionedState(Z)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logDeviceProvisionedState$2;->INSTANCE:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logDeviceProvisionedState$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "KeyguardUpdateMonitorLog"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 18
    return-void
    .line 21
.end method

.method public final logException(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->ERROR:Lcom/android/systemui/log/LogLevel;

    .line 2
    new-instance v1, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logException$2;

    .line 4
    invoke-direct {v1, p2}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logException$2;-><init>(Ljava/lang/String;)V

    .line 6
    const-string p2, "KeyguardUpdateMonitorLog"

    .line 9
    iget-object p0, p0, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 11
    invoke-virtual {p0, p2, v0, v1, p1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 13
    move-result-object p1

    .line 16
    invoke-virtual {p0, p1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 17
    return-void
    .line 20
.end method

.method public final logFaceAuthDisabledForUser(I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logFaceAuthDisabledForUser$2;->INSTANCE:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logFaceAuthDisabledForUser$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "KeyguardUpdateMonitorLog"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 18
    return-void
    .line 21
.end method

.method public final logFaceAuthError(ILjava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logFaceAuthError$2;->INSTANCE:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logFaceAuthError$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "KeyguardUpdateMonitorLog"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 15
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 18
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 21
    return-void
    .line 24
.end method

.method public final logFaceAuthForWrongUser(I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logFaceAuthForWrongUser$2;->INSTANCE:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logFaceAuthForWrongUser$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "KeyguardUpdateMonitorLog"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 18
    return-void
    .line 21
.end method

.method public final logFaceAuthRequested(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logFaceAuthRequested$2;->INSTANCE:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logFaceAuthRequested$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "KeyguardUpdateMonitorLog"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 18
    return-void
    .line 21
.end method

.method public final logFaceAuthSuccess(I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logFaceAuthSuccess$2;->INSTANCE:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logFaceAuthSuccess$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "KeyguardUpdateMonitorLog"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 18
    return-void
    .line 21
.end method

.method public final logFaceDetected(IZ)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logFaceDetected$2;->INSTANCE:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logFaceDetected$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "KeyguardUpdateMonitorLog"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 15
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 18
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 21
    return-void
    .line 24
.end method

.method public final logFaceEnrolledUpdated(ZZ)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logFaceEnrolledUpdated$2;->INSTANCE:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logFaceEnrolledUpdated$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "KeyguardUpdateMonitorLog"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 15
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setBool2(Z)V

    .line 18
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 21
    return-void
    .line 24
.end method

.method public final logFaceLockoutReset()V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logFaceLockoutReset$2;->INSTANCE:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logFaceLockoutReset$2;

    .line 4
    const-string v2, "KeyguardUpdateMonitorLog"

    .line 6
    iget-object p0, p0, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 8
    const/4 v3, 0x0

    .line 10
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-interface {v0, v1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 16
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 19
    return-void
    .line 22
.end method

.method public final logFaceRunningState(I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logFaceRunningState$2;->INSTANCE:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logFaceRunningState$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "KeyguardUpdateMonitorLog"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 18
    return-void
    .line 21
.end method

.method public final logFaceUnlockPossible(Z)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logFaceUnlockPossible$2;->INSTANCE:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logFaceUnlockPossible$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "KeyguardUpdateMonitorLog"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 18
    return-void
    .line 21
.end method

.method public final logFingerprintDetected(IZ)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logFingerprintDetected$2;->INSTANCE:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logFingerprintDetected$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "KeyguardUpdateMonitorLog"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 15
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 18
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 21
    return-void
    .line 24
.end method

.method public final logFingerprintDisabledForUser(I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logFingerprintDisabledForUser$2;->INSTANCE:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logFingerprintDisabledForUser$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "KeyguardUpdateMonitorLog"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 18
    return-void
    .line 21
.end method

.method public final logFingerprintError(ILjava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logFingerprintError$2;->INSTANCE:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logFingerprintError$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "KeyguardUpdateMonitorLog"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 15
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 18
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 21
    return-void
    .line 24
.end method

.method public final logFingerprintLockoutReset(I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logFingerprintLockoutReset$2;->INSTANCE:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logFingerprintLockoutReset$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "KeyguardUpdateMonitorLog"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 18
    return-void
    .line 21
.end method

.method public final logFingerprintRunningState(I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logFingerprintRunningState$2;->INSTANCE:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logFingerprintRunningState$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "KeyguardUpdateMonitorLog"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 18
    return-void
    .line 21
.end method

.method public final logFingerprintSuccess(IZ)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logFingerprintSuccess$2;->INSTANCE:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logFingerprintSuccess$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "KeyguardUpdateMonitorLog"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 15
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 18
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 21
    return-void
    .line 24
.end method

.method public final logFpEnrolledUpdated(IZZ)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logFpEnrolledUpdated$2;->INSTANCE:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logFpEnrolledUpdated$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "KeyguardUpdateMonitorLog"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 15
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 18
    invoke-interface {v0, p3}, Lcom/android/systemui/log/LogMessage;->setBool2(Z)V

    .line 21
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 24
    return-void
    .line 27
.end method

.method public final logHandleBatteryUpdate(Lcom/miui/charge/MiuiBatteryStatus;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logHandleBatteryUpdate$2;->INSTANCE:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logHandleBatteryUpdate$2;

    .line 4
    const-string v2, "KeyguardUpdateMonitorLog"

    .line 6
    iget-object p0, p0, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 8
    const/4 v3, 0x0

    .line 10
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-interface {v0, v1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 16
    iget v1, p1, Lcom/miui/charge/MiuiBatteryStatus;->status:I

    .line 19
    invoke-interface {v0, v1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 21
    iget v1, p1, Lcom/miui/charge/MiuiBatteryStatus;->chargingStatus:I

    .line 24
    invoke-interface {v0, v1}, Lcom/android/systemui/log/LogMessage;->setInt2(I)V

    .line 26
    iget v1, p1, Lcom/miui/charge/MiuiBatteryStatus;->level:I

    .line 29
    int-to-long v1, v1

    .line 31
    invoke-interface {v0, v1, v2}, Lcom/android/systemui/log/LogMessage;->setLong1(J)V

    .line 32
    iget v1, p1, Lcom/miui/charge/MiuiBatteryStatus;->maxChargingWattage:I

    .line 35
    int-to-long v1, v1

    .line 37
    invoke-interface {v0, v1, v2}, Lcom/android/systemui/log/LogMessage;->setLong2(J)V

    .line 38
    iget p1, p1, Lcom/miui/charge/MiuiBatteryStatus;->plugged:I

    .line 41
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 43
    move-result-object p1

    .line 46
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 50
    return-void
    .line 53
.end method

.method public final logHandlerHasAuthContinueMsgs(I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logHandlerHasAuthContinueMsgs$2;->INSTANCE:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logHandlerHasAuthContinueMsgs$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "KeyguardUpdateMonitorLog"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 18
    return-void
    .line 21
.end method

.method public final logInvalidSubId(I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logInvalidSubId$2;->INSTANCE:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logInvalidSubId$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "KeyguardUpdateMonitorLog"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 18
    return-void
    .line 21
.end method

.method public final logKeyguardListenerModel(Lcom/android/keyguard/KeyguardActiveUnlockModel;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->VERBOSE:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logKeyguardListenerModel$2;->INSTANCE:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logKeyguardListenerModel$2;

    .line 4
    const-string v2, "KeyguardUpdateMonitorLog"

    .line 6
    iget-object p0, p0, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 8
    const/4 v3, 0x0

    .line 10
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 18
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 22
    return-void
    .line 25
.end method

.method public final logKeyguardShowingChanged(ZZZ)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logKeyguardShowingChanged$2;->INSTANCE:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logKeyguardShowingChanged$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "KeyguardUpdateMonitorLog"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 15
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setBool2(Z)V

    .line 18
    invoke-interface {v0, p3}, Lcom/android/systemui/log/LogMessage;->setBool3(Z)V

    .line 21
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 24
    return-void
    .line 27
.end method

.method public final logKeyguardStateUpdate(ZZZZ)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logKeyguardStateUpdate$2;->INSTANCE:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logKeyguardStateUpdate$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "KeyguardState"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 15
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setBool2(Z)V

    .line 18
    invoke-interface {v0, p3}, Lcom/android/systemui/log/LogMessage;->setBool3(Z)V

    .line 21
    invoke-interface {v0, p4}, Lcom/android/systemui/log/LogMessage;->setBool4(Z)V

    .line 24
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 27
    return-void
    .line 30
.end method

.method public final logMissingSupervisorAppError(I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->ERROR:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logMissingSupervisorAppError$2;->INSTANCE:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logMissingSupervisorAppError$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "KeyguardUpdateMonitorLog"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 18
    return-void
    .line 21
.end method

.method public final logPhoneStateChanged(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logPhoneStateChanged$2;->INSTANCE:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logPhoneStateChanged$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "KeyguardUpdateMonitorLog"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 18
    return-void
    .line 21
.end method

.method public final logPrimaryKeyguardBouncerChanged(ZZ)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logPrimaryKeyguardBouncerChanged$2;->INSTANCE:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logPrimaryKeyguardBouncerChanged$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "KeyguardUpdateMonitorLog"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 15
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setBool2(Z)V

    .line 18
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 21
    return-void
    .line 24
.end method

.method public final logReportSuccessfulBiometricUnlock(IZ)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logReportSuccessfulBiometricUnlock$2;->INSTANCE:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logReportSuccessfulBiometricUnlock$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "KeyguardUpdateMonitorLog"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 15
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 18
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 21
    return-void
    .line 24
.end method

.method public final logRetryAfterFpErrorWithDelay(IILjava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logRetryAfterFpErrorWithDelay$2;->INSTANCE:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logRetryAfterFpErrorWithDelay$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "KeyguardUpdateMonitorLog"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 15
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setInt2(I)V

    .line 18
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 24
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 28
    return-void
    .line 31
.end method

.method public final logRetryAfterFpHwUnavailable(I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->WARNING:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logRetryAfterFpHwUnavailable$2;->INSTANCE:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logRetryAfterFpHwUnavailable$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "KeyguardUpdateMonitorLog"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 18
    return-void
    .line 21
.end method

.method public final logRetryingAfterFaceHwUnavailable(I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->WARNING:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logRetryingAfterFaceHwUnavailable$2;->INSTANCE:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logRetryingAfterFaceHwUnavailable$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "KeyguardUpdateMonitorLog"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 18
    return-void
    .line 21
.end method

.method public final logSendPrimaryBouncerChanged(ZZ)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logSendPrimaryBouncerChanged$2;->INSTANCE:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logSendPrimaryBouncerChanged$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "KeyguardUpdateMonitorLog"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 15
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setBool2(Z)V

    .line 18
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 21
    return-void
    .line 24
.end method

.method public final logServiceProvidersUpdated(Landroid/content/Intent;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->VERBOSE:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logServiceProvidersUpdated$2;->INSTANCE:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logServiceProvidersUpdated$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "KeyguardUpdateMonitorLog"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    const-string v1, "android.telephony.extra.SUBSCRIPTION_INDEX"

    .line 15
    const/4 v2, -0x1

    .line 17
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 18
    move-result v1

    .line 21
    invoke-interface {v0, v1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 22
    const-string v1, "android.telephony.extra.SPN"

    .line 25
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 30
    invoke-interface {v0, v1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 31
    const-string v1, "android.telephony.extra.PLMN"

    .line 34
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 39
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 43
    return-void
    .line 46
.end method

.method public final logServiceStateChange(ILandroid/telephony/ServiceState;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logServiceStateChange$2;->INSTANCE:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logServiceStateChange$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "KeyguardUpdateMonitorLog"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 15
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 21
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 25
    return-void
    .line 28
.end method

.method public final logServiceStateIntent(Ljava/lang/String;Landroid/telephony/ServiceState;I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->VERBOSE:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logServiceStateIntent$2;->INSTANCE:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logServiceStateIntent$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "KeyguardUpdateMonitorLog"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 15
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 21
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 22
    invoke-interface {v0, p3}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 25
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 28
    return-void
    .line 31
.end method

.method public final logSimState(III)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logSimState$2;->INSTANCE:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logSimState$2;

    const/4 v2, 0x0

    .line 3
    iget-object p0, p0, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    const-string v3, "KeyguardUpdateMonitorLog"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    move-result-object v0

    .line 4
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 5
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setInt2(I)V

    int-to-long p1, p3

    .line 6
    invoke-interface {v0, p1, p2}, Lcom/android/systemui/log/LogMessage;->setLong1(J)V

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    return-void
.end method

.method public final logSimState(IIIZZ)V
    .locals 4

    .line 8
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 9
    sget-object v1, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logSimState$4;->INSTANCE:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logSimState$4;

    const/4 v2, 0x0

    .line 10
    iget-object p0, p0, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    const-string v3, "KeyguardUpdateMonitorLog"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    move-result-object v0

    .line 11
    invoke-interface {v0, p4}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 12
    invoke-interface {v0, p5}, Lcom/android/systemui/log/LogMessage;->setBool2(Z)V

    .line 13
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 14
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setInt2(I)V

    int-to-long p1, p3

    .line 15
    invoke-interface {v0, p1, p2}, Lcom/android/systemui/log/LogMessage;->setLong1(J)V

    .line 16
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    return-void
.end method

.method public final logSimStateFromIntent(Ljava/lang/String;IILjava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->VERBOSE:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logSimStateFromIntent$2;->INSTANCE:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logSimStateFromIntent$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "KeyguardUpdateMonitorLog"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 15
    invoke-interface {v0, p4}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 18
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 21
    invoke-interface {v0, p3}, Lcom/android/systemui/log/LogMessage;->setInt2(I)V

    .line 24
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 27
    return-void
    .line 30
.end method

.method public final logSimUnlocked(I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->VERBOSE:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logSimUnlocked$2;->INSTANCE:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logSimUnlocked$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "KeyguardUpdateMonitorLog"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 18
    return-void
    .line 21
.end method

.method public final logSkipUpdateFaceListeningOnWakeup(I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->VERBOSE:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logSkipUpdateFaceListeningOnWakeup$2;->INSTANCE:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logSkipUpdateFaceListeningOnWakeup$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "KeyguardUpdateMonitorLog"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-static {p1}, Landroid/os/PowerManager;->wakeReasonToString(I)Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 18
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 22
    return-void
    .line 25
.end method

.method public final logStartedListeningForFace(ILcom/android/keyguard/FaceAuthUiEvent;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->VERBOSE:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logStartedListeningForFace$2;->INSTANCE:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logStartedListeningForFace$2;

    .line 4
    const-string v2, "KeyguardUpdateMonitorLog"

    .line 6
    iget-object p0, p0, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 8
    const/4 v3, 0x0

    .line 10
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 15
    invoke-virtual {p2}, Lcom/android/keyguard/FaceAuthUiEvent;->getReason()Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 21
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p2}, Lcom/android/keyguard/FaceAuthUiEvent;->extraInfoToString()Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 28
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 32
    return-void
    .line 35
.end method

.method public final logStoppedListeningForFace(ILjava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->VERBOSE:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logStoppedListeningForFace$2;->INSTANCE:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logStoppedListeningForFace$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "KeyguardUpdateMonitorLog"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 15
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 21
    return-void
    .line 24
.end method

.method public final logSubInfo(Landroid/telephony/SubscriptionInfo;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->VERBOSE:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logSubInfo$2;->INSTANCE:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logSubInfo$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "KeyguardUpdateMonitorLog"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 18
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 22
    return-void
    .line 25
.end method

.method public final logTaskStackChangedForAssistant(Z)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->VERBOSE:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logTaskStackChangedForAssistant$2;->INSTANCE:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logTaskStackChangedForAssistant$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "KeyguardUpdateMonitorLog"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 18
    return-void
    .line 21
.end method

.method public final logTimeFormatChanged(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logTimeFormatChanged$2;->INSTANCE:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logTimeFormatChanged$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "KeyguardUpdateMonitorLog"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 18
    return-void
    .line 21
.end method

.method public final logTrustChanged(IZZ)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logTrustChanged$2;->INSTANCE:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logTrustChanged$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "KeyguardUpdateMonitorLog"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 15
    invoke-interface {v0, p3}, Lcom/android/systemui/log/LogMessage;->setBool2(Z)V

    .line 18
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 21
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 24
    return-void
    .line 27
.end method

.method public final logTrustGrantedWithFlags(Ljava/lang/String;ZII)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logTrustGrantedWithFlags$2;->INSTANCE:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logTrustGrantedWithFlags$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "KeyguardUpdateMonitorLog"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p3}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 15
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 18
    invoke-interface {v0, p4}, Lcom/android/systemui/log/LogMessage;->setInt2(I)V

    .line 21
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 27
    return-void
    .line 30
.end method

.method public final logTrustUsuallyManagedUpdated(IZZLjava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    new-instance v1, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logTrustUsuallyManagedUpdated$2;

    .line 4
    invoke-direct {v1, p4}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logTrustUsuallyManagedUpdated$2;-><init>(Ljava/lang/String;)V

    .line 6
    const-string v2, "KeyguardUpdateMonitorLog"

    .line 9
    iget-object p0, p0, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 11
    const/4 v3, 0x0

    .line 13
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 14
    move-result-object v0

    .line 17
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 18
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 21
    invoke-interface {v0, p3}, Lcom/android/systemui/log/LogMessage;->setBool2(Z)V

    .line 24
    invoke-interface {v0, p4}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 30
    return-void
    .line 33
.end method

.method public final logUdfpsPointerDown(I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logUdfpsPointerDown$2;->INSTANCE:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logUdfpsPointerDown$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "KeyguardUpdateMonitorLog"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 18
    return-void
    .line 21
.end method

.method public final logUdfpsPointerUp(I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logUdfpsPointerUp$2;->INSTANCE:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logUdfpsPointerUp$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "KeyguardUpdateMonitorLog"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 18
    return-void
    .line 21
.end method

.method public final logUnexpectedFaceCancellationSignalState(IZ)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->ERROR:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logUnexpectedFaceCancellationSignalState$2;->INSTANCE:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logUnexpectedFaceCancellationSignalState$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "KeyguardUpdateMonitorLog"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 15
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 18
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 21
    return-void
    .line 24
.end method

.method public final logUnexpectedFpCancellationSignalState(IZ)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->ERROR:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logUnexpectedFpCancellationSignalState$2;->INSTANCE:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logUnexpectedFpCancellationSignalState$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string v3, "KeyguardUpdateMonitorLog"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 15
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 18
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 21
    return-void
    .line 24
.end method

.method public final logUserRequestedUnlock(Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;Ljava/lang/String;Z)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logUserRequestedUnlock$2;->INSTANCE:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logUserRequestedUnlock$2;

    .line 4
    const-string v2, "ActiveUnlock"

    .line 6
    iget-object p0, p0, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 8
    const/4 v3, 0x0

    .line 10
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 18
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 19
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 22
    invoke-interface {v0, p3}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 25
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 28
    return-void
    .line 31
.end method

.method public final v(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->VERBOSE:Lcom/android/systemui/log/LogLevel;

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->log(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;)V

    .line 4
    return-void
    .line 7
.end method
