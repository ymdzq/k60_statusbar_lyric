.class public final Lcom/android/systemui/doze/DozeLog$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/doze/DozeLog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/doze/DozeLog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/doze/DozeLog$1;->this$0:Lcom/android/systemui/doze/DozeLog;

    .line 2
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onEmergencyCallAction()V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/systemui/doze/DozeLog$1;->this$0:Lcom/android/systemui/doze/DozeLog;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    sget-object v1, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 9
    sget-object v2, Lcom/android/systemui/doze/DozeLogger$logEmergencyCall$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logEmergencyCall$2;

    .line 11
    const-string v3, "DozeLog"

    .line 13
    iget-object v0, v0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 15
    const/4 v4, 0x0

    .line 17
    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 18
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 22
    iget-object p0, p0, Lcom/android/systemui/doze/DozeLog;->mEmergencyCallStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    .line 25
    iget v0, p0, Lcom/android/systemui/doze/DozeLog$SummaryStats;->mCount:I

    .line 27
    add-int/lit8 v0, v0, 0x1

    .line 29
    iput v0, p0, Lcom/android/systemui/doze/DozeLog$SummaryStats;->mCount:I

    .line 31
    return-void
    .line 33
.end method

.method public final onFinishedGoingToSleep(I)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/systemui/doze/DozeLog$1;->this$0:Lcom/android/systemui/doze/DozeLog;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 9
    sget-object v1, Lcom/android/systemui/doze/DozeLogger$logScreenOff$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logScreenOff$2;

    .line 11
    const/4 v2, 0x0

    .line 13
    iget-object p0, p0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 14
    const-string v3, "DozeLog"

    .line 16
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 18
    move-result-object v0

    .line 21
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 22
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 25
    return-void
    .line 28
.end method

.method public final onKeyguardBouncerFullyShowingChanged(Z)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/systemui/doze/DozeLog$1;->this$0:Lcom/android/systemui/doze/DozeLog;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 9
    sget-object v1, Lcom/android/systemui/doze/DozeLogger$logKeyguardBouncerChanged$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logKeyguardBouncerChanged$2;

    .line 11
    const/4 v2, 0x0

    .line 13
    iget-object p0, p0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 14
    const-string v3, "DozeLog"

    .line 16
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 18
    move-result-object v0

    .line 21
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 22
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 25
    return-void
    .line 28
.end method

.method public final onKeyguardVisibilityChanged(Z)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/systemui/doze/DozeLog$1;->this$0:Lcom/android/systemui/doze/DozeLog;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    sget-object v1, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 9
    sget-object v2, Lcom/android/systemui/doze/DozeLogger$logKeyguardVisibilityChange$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logKeyguardVisibilityChange$2;

    .line 11
    const/4 v3, 0x0

    .line 13
    iget-object v0, v0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 14
    const-string v4, "DozeLog"

    .line 16
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 18
    move-result-object v1

    .line 21
    invoke-interface {v1, p1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 22
    invoke-virtual {v0, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 25
    if-nez p1, :cond_0

    .line 28
    const/4 p1, 0x0

    .line 30
    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeLog;->mPulsing:Z

    .line 31
    :cond_0
    return-void
    .line 33
.end method

.method public final onStartedWakingUp()V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/systemui/doze/DozeLog$1;->this$0:Lcom/android/systemui/doze/DozeLog;

    .line 2
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeLog;->mPulsing:Z

    .line 4
    iget-object v1, p0, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    sget-object v2, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 11
    sget-object v3, Lcom/android/systemui/doze/DozeLogger$logScreenOn$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logScreenOn$2;

    .line 13
    const-string v4, "DozeLog"

    .line 15
    iget-object v1, v1, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 17
    const/4 v5, 0x0

    .line 19
    invoke-virtual {v1, v4, v2, v3, v5}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 20
    move-result-object v2

    .line 23
    invoke-interface {v2, v0}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 24
    invoke-virtual {v1, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 27
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeLog;->mPulsing:Z

    .line 30
    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/android/systemui/doze/DozeLog;->mScreenOnPulsingStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    .line 34
    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeLog;->mScreenOnNotPulsingStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    .line 37
    :goto_0
    iget v1, v0, Lcom/android/systemui/doze/DozeLog$SummaryStats;->mCount:I

    .line 39
    add-int/lit8 v1, v1, 0x1

    .line 41
    iput v1, v0, Lcom/android/systemui/doze/DozeLog$SummaryStats;->mCount:I

    .line 43
    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeLog;->mPulsing:Z

    .line 46
    return-void
    .line 48
.end method
