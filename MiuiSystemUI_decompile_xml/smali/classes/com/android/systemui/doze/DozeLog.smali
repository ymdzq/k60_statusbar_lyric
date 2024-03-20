.class public final Lcom/android/systemui/doze/DozeLog;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final mEmergencyCallStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

.field public final mKeyguardCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public final mLogger:Lcom/android/systemui/doze/DozeLogger;

.field public final mNotificationPulseStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

.field public final mPickupPulseNearVibrationStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

.field public final mPickupPulseNotNearVibrationStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

.field public final mProxStats:[[Lcom/android/systemui/doze/DozeLog$SummaryStats;

.field public mPulsing:Z

.field public final mScreenOnNotPulsingStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

.field public final mScreenOnPulsingStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

.field public final mSince:J


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/doze/DozeLogger;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/systemui/doze/DozeLog$1;

    .line 5
    invoke-direct {v0, p0}, Lcom/android/systemui/doze/DozeLog$1;-><init>(Lcom/android/systemui/doze/DozeLog;)V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/doze/DozeLog;->mKeyguardCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 10
    iput-object p3, p0, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    move-result-wide v0

    .line 17
    iput-wide v0, p0, Lcom/android/systemui/doze/DozeLog;->mSince:J

    .line 18
    new-instance p3, Lcom/android/systemui/doze/DozeLog$SummaryStats;

    .line 20
    invoke-direct {p3, p0}, Lcom/android/systemui/doze/DozeLog$SummaryStats;-><init>(Lcom/android/systemui/doze/DozeLog;)V

    .line 22
    iput-object p3, p0, Lcom/android/systemui/doze/DozeLog;->mPickupPulseNearVibrationStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    .line 25
    new-instance p3, Lcom/android/systemui/doze/DozeLog$SummaryStats;

    .line 27
    invoke-direct {p3, p0}, Lcom/android/systemui/doze/DozeLog$SummaryStats;-><init>(Lcom/android/systemui/doze/DozeLog;)V

    .line 29
    iput-object p3, p0, Lcom/android/systemui/doze/DozeLog;->mPickupPulseNotNearVibrationStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    .line 32
    new-instance p3, Lcom/android/systemui/doze/DozeLog$SummaryStats;

    .line 34
    invoke-direct {p3, p0}, Lcom/android/systemui/doze/DozeLog$SummaryStats;-><init>(Lcom/android/systemui/doze/DozeLog;)V

    .line 36
    iput-object p3, p0, Lcom/android/systemui/doze/DozeLog;->mNotificationPulseStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    .line 39
    new-instance p3, Lcom/android/systemui/doze/DozeLog$SummaryStats;

    .line 41
    invoke-direct {p3, p0}, Lcom/android/systemui/doze/DozeLog$SummaryStats;-><init>(Lcom/android/systemui/doze/DozeLog;)V

    .line 43
    iput-object p3, p0, Lcom/android/systemui/doze/DozeLog;->mScreenOnPulsingStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    .line 46
    new-instance p3, Lcom/android/systemui/doze/DozeLog$SummaryStats;

    .line 48
    invoke-direct {p3, p0}, Lcom/android/systemui/doze/DozeLog$SummaryStats;-><init>(Lcom/android/systemui/doze/DozeLog;)V

    .line 50
    iput-object p3, p0, Lcom/android/systemui/doze/DozeLog;->mScreenOnNotPulsingStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    .line 53
    new-instance p3, Lcom/android/systemui/doze/DozeLog$SummaryStats;

    .line 55
    invoke-direct {p3, p0}, Lcom/android/systemui/doze/DozeLog$SummaryStats;-><init>(Lcom/android/systemui/doze/DozeLog;)V

    .line 57
    iput-object p3, p0, Lcom/android/systemui/doze/DozeLog;->mEmergencyCallStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    .line 60
    const/16 p3, 0xc

    .line 62
    const/4 v0, 0x2

    .line 64
    filled-new-array {p3, v0}, [I

    .line 65
    move-result-object v0

    .line 68
    const-class v1, Lcom/android/systemui/doze/DozeLog$SummaryStats;

    .line 69
    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 71
    move-result-object v0

    .line 74
    check-cast v0, [[Lcom/android/systemui/doze/DozeLog$SummaryStats;

    .line 75
    iput-object v0, p0, Lcom/android/systemui/doze/DozeLog;->mProxStats:[[Lcom/android/systemui/doze/DozeLog$SummaryStats;

    .line 77
    const/4 v0, 0x0

    .line 79
    move v1, v0

    .line 80
    :goto_0
    if-ge v1, p3, :cond_0

    .line 81
    iget-object v2, p0, Lcom/android/systemui/doze/DozeLog;->mProxStats:[[Lcom/android/systemui/doze/DozeLog$SummaryStats;

    .line 83
    aget-object v3, v2, v1

    .line 85
    new-instance v4, Lcom/android/systemui/doze/DozeLog$SummaryStats;

    .line 87
    invoke-direct {v4, p0}, Lcom/android/systemui/doze/DozeLog$SummaryStats;-><init>(Lcom/android/systemui/doze/DozeLog;)V

    .line 89
    aput-object v4, v3, v0

    .line 92
    aget-object v2, v2, v1

    .line 94
    new-instance v3, Lcom/android/systemui/doze/DozeLog$SummaryStats;

    .line 96
    invoke-direct {v3, p0}, Lcom/android/systemui/doze/DozeLog$SummaryStats;-><init>(Lcom/android/systemui/doze/DozeLog;)V

    .line 98
    const/4 v4, 0x1

    .line 101
    aput-object v3, v2, v4

    .line 102
    add-int/lit8 v1, v1, 0x1

    .line 104
    goto :goto_0

    .line 106
    :cond_0
    if-eqz p1, :cond_1

    .line 107
    iget-object p3, p0, Lcom/android/systemui/doze/DozeLog;->mKeyguardCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 109
    invoke-virtual {p1, p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 111
    :cond_1
    const-string p1, "DumpStats"

    .line 114
    invoke-virtual {p2, p1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 116
    return-void
    .line 119
.end method

.method public static reasonToString(I)Ljava/lang/String;
    .locals 2

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 5
    const-string v1, "invalid reason: "

    .line 7
    invoke-static {v1, p0}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 9
    move-result-object p0

    .line 12
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 13
    throw v0

    .line 16
    :pswitch_0
    const-string p0, "quickPickup"

    .line 17
    return-object p0

    .line 19
    :pswitch_1
    const-string/jumbo p0, "udfps"

    .line 20
    return-object p0

    .line 23
    :pswitch_2
    const-string/jumbo p0, "tap"

    .line 24
    return-object p0

    .line 27
    :pswitch_3
    const-string p0, "reach-wakelockscreen"

    .line 28
    return-object p0

    .line 30
    :pswitch_4
    const-string p0, "presence-wakeup"

    .line 31
    return-object p0

    .line 33
    :pswitch_5
    const-string p0, "docking"

    .line 34
    return-object p0

    .line 36
    :pswitch_6
    const-string p0, "longpress"

    .line 37
    return-object p0

    .line 39
    :pswitch_7
    const-string p0, "doubletap"

    .line 40
    return-object p0

    .line 42
    :pswitch_8
    const-string p0, "pickup"

    .line 43
    return-object p0

    .line 45
    :pswitch_9
    const-string/jumbo p0, "sigmotion"

    .line 46
    return-object p0

    .line 49
    :pswitch_a
    const-string p0, "notification"

    .line 50
    return-object p0

    .line 52
    :pswitch_b
    const-string p0, "intent"

    .line 53
    return-object p0

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 56
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    .line 1
    const-class p2, Lcom/android/systemui/doze/DozeLog;

    .line 2
    monitor-enter p2

    .line 4
    :try_start_0
    const-string v0, "  Doze summary stats (for "

    .line 5
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    move-result-wide v0

    .line 13
    iget-wide v2, p0, Lcom/android/systemui/doze/DozeLog;->mSince:J

    .line 14
    sub-long/2addr v0, v2

    .line 16
    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 17
    const-string v0, "):"

    .line 20
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/android/systemui/doze/DozeLog;->mPickupPulseNearVibrationStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    .line 25
    const-string v1, "Pickup pulse (near vibration)"

    .line 27
    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/doze/DozeLog$SummaryStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/android/systemui/doze/DozeLog;->mPickupPulseNotNearVibrationStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    .line 32
    const-string v1, "Pickup pulse (not near vibration)"

    .line 34
    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/doze/DozeLog$SummaryStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/android/systemui/doze/DozeLog;->mNotificationPulseStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    .line 39
    const-string v1, "Notification pulse"

    .line 41
    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/doze/DozeLog$SummaryStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/android/systemui/doze/DozeLog;->mScreenOnPulsingStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    .line 46
    const-string v1, "Screen on (pulsing)"

    .line 48
    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/doze/DozeLog$SummaryStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/android/systemui/doze/DozeLog;->mScreenOnNotPulsingStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    .line 53
    const-string v1, "Screen on (not pulsing)"

    .line 55
    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/doze/DozeLog$SummaryStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/android/systemui/doze/DozeLog;->mEmergencyCallStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    .line 60
    const-string v1, "Emergency call"

    .line 62
    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/doze/DozeLog$SummaryStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 64
    const/4 v0, 0x0

    .line 67
    move v1, v0

    .line 68
    :goto_0
    const/16 v2, 0xc

    .line 69
    if-ge v1, v2, :cond_0

    .line 71
    invoke-static {v1}, Lcom/android/systemui/doze/DozeLog;->reasonToString(I)Ljava/lang/String;

    .line 73
    move-result-object v2

    .line 76
    iget-object v3, p0, Lcom/android/systemui/doze/DozeLog;->mProxStats:[[Lcom/android/systemui/doze/DozeLog$SummaryStats;

    .line 77
    aget-object v3, v3, v1

    .line 79
    aget-object v3, v3, v0

    .line 81
    new-instance v4, Ljava/lang/StringBuilder;

    .line 83
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    const-string v5, "Proximity near ("

    .line 88
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    const-string v5, ")"

    .line 96
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    move-result-object v4

    .line 104
    invoke-virtual {v3, p1, v4}, Lcom/android/systemui/doze/DozeLog$SummaryStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 105
    iget-object v3, p0, Lcom/android/systemui/doze/DozeLog;->mProxStats:[[Lcom/android/systemui/doze/DozeLog$SummaryStats;

    .line 108
    aget-object v3, v3, v1

    .line 110
    const/4 v4, 0x1

    .line 112
    aget-object v3, v3, v4

    .line 113
    new-instance v4, Ljava/lang/StringBuilder;

    .line 115
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    const-string v5, "Proximity far ("

    .line 120
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    const-string v2, ")"

    .line 128
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    move-result-object v2

    .line 136
    invoke-virtual {v3, p1, v2}, Lcom/android/systemui/doze/DozeLog$SummaryStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 137
    add-int/lit8 v1, v1, 0x1

    .line 140
    goto :goto_0

    .line 142
    :cond_0
    monitor-exit p2

    .line 143
    return-void

    .line 144
    :catchall_0
    move-exception p0

    .line 145
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    throw p0
    .line 147
.end method

.method public final traceAlwaysOnSuppressed(Lcom/android/systemui/doze/DozeMachine$State;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 7
    sget-object v1, Lcom/android/systemui/doze/DozeLogger$logAlwaysOnSuppressed$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logAlwaysOnSuppressed$2;

    .line 9
    const/4 v2, 0x0

    .line 11
    iget-object p0, p0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 12
    const-string v3, "DozeLog"

    .line 14
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 16
    move-result-object v0

    .line 19
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 23
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 24
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 30
    return-void
    .line 33
.end method

.method public final traceDisplayStateDelayedByUdfps(I)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 7
    sget-object v1, Lcom/android/systemui/doze/DozeLogger$logDisplayStateDelayedByUdfps$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logDisplayStateDelayedByUdfps$2;

    .line 9
    const-string v2, "DozeLog"

    .line 11
    iget-object p0, p0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 13
    const/4 v3, 0x0

    .line 15
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 16
    move-result-object v0

    .line 19
    invoke-static {p1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 23
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 27
    return-void
    .line 30
.end method

.method public final traceDozeScreenBrightness(I)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 7
    sget-object v1, Lcom/android/systemui/doze/DozeLogger$logDozeScreenBrightness$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logDozeScreenBrightness$2;

    .line 9
    const-string v2, "DozeLog"

    .line 11
    iget-object p0, p0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 13
    const/4 v3, 0x0

    .line 15
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 16
    move-result-object v0

    .line 19
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 20
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 23
    return-void
    .line 26
.end method

.method public final traceDozing(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    sget-object v1, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 7
    sget-object v2, Lcom/android/systemui/doze/DozeLogger$logDozing$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logDozing$2;

    .line 9
    const-string v3, "DozeLog"

    .line 11
    iget-object v0, v0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 13
    const/4 v4, 0x0

    .line 15
    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 16
    move-result-object v1

    .line 19
    invoke-interface {v1, p1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 20
    invoke-virtual {v0, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 23
    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeLog;->mPulsing:Z

    .line 27
    return-void
    .line 29
.end method

.method public final traceDozingChanged(Z)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 7
    sget-object v1, Lcom/android/systemui/doze/DozeLogger$logDozingChanged$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logDozingChanged$2;

    .line 9
    const-string v2, "DozeLog"

    .line 11
    iget-object p0, p0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 13
    const/4 v3, 0x0

    .line 15
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 16
    move-result-object v0

    .line 19
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 20
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 23
    return-void
    .line 26
.end method

.method public final traceFling(ZZZ)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 7
    sget-object v1, Lcom/android/systemui/doze/DozeLogger$logFling$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logFling$2;

    .line 9
    const-string v2, "DozeLog"

    .line 11
    iget-object p0, p0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 13
    const/4 v3, 0x0

    .line 15
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 16
    move-result-object v0

    .line 19
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 20
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setBool2(Z)V

    .line 23
    invoke-interface {v0, p3}, Lcom/android/systemui/log/LogMessage;->setBool4(Z)V

    .line 26
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 29
    return-void
    .line 32
.end method

.method public final tracePulseDropped(Lcom/android/systemui/doze/DozeMachine$State;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    sget-object v1, Lcom/android/systemui/doze/DozeLogger$logPulseDropped$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logPulseDropped$2;

    .line 3
    iget-object p0, p0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v2, "DozeLog"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    move-result-object v0

    .line 4
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    :cond_0
    invoke-interface {v0, v3}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    return-void
.end method

.method public final tracePulseDropped(Ljava/lang/String;)V
    .locals 4

    .line 7
    iget-object p0, p0, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    sget-object v1, Lcom/android/systemui/doze/DozeLogger$logPulseDropped$4;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logPulseDropped$4;

    const-string v2, "DozeLog"

    .line 9
    iget-object p0, p0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    move-result-object v0

    .line 10
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    return-void
.end method

.method public final tracePulseEvent(ZILjava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {p2}, Lcom/android/systemui/doze/DozeLog;->reasonToString(I)Ljava/lang/String;

    .line 2
    move-result-object p2

    .line 5
    iget-object p0, p0, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 11
    sget-object v1, Lcom/android/systemui/doze/DozeLogger$logPulseEvent$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logPulseEvent$2;

    .line 13
    const/4 v2, 0x0

    .line 15
    iget-object p0, p0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 16
    const-string v3, "DozeLog"

    .line 18
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 20
    move-result-object v0

    .line 23
    invoke-interface {v0, p3}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 24
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 27
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 33
    return-void
    .line 36
.end method

.method public final tracePulseFinish()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    sget-object v1, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 7
    sget-object v2, Lcom/android/systemui/doze/DozeLogger$logPulseFinish$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logPulseFinish$2;

    .line 9
    const-string v3, "DozeLog"

    .line 11
    iget-object v0, v0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 13
    const/4 v4, 0x0

    .line 15
    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 16
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 20
    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeLog;->mPulsing:Z

    .line 24
    return-void
    .line 26
.end method

.method public final tracePulseStart(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    sget-object v1, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 7
    sget-object v2, Lcom/android/systemui/doze/DozeLogger$logPulseStart$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logPulseStart$2;

    .line 9
    const-string v3, "DozeLog"

    .line 11
    iget-object v0, v0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 13
    const/4 v4, 0x0

    .line 15
    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 16
    move-result-object v1

    .line 19
    invoke-interface {v1, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 20
    invoke-virtual {v0, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 23
    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeLog;->mPulsing:Z

    .line 27
    return-void
    .line 29
.end method

.method public final tracePulseTouchDisabledByProx(Z)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 7
    sget-object v1, Lcom/android/systemui/doze/DozeLogger$logPulseTouchDisabledByProx$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logPulseTouchDisabledByProx$2;

    .line 9
    const-string v2, "DozeLog"

    .line 11
    iget-object p0, p0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 13
    const/4 v3, 0x0

    .line 15
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 16
    move-result-object v0

    .line 19
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 20
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 23
    return-void
    .line 26
.end method

.method public final traceSensorEventDropped(ILjava/lang/String;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 7
    sget-object v1, Lcom/android/systemui/doze/DozeLogger$logSensorEventDropped$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logSensorEventDropped$2;

    .line 9
    const/4 v2, 0x0

    .line 11
    iget-object p0, p0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 12
    const-string v3, "DozeLog"

    .line 14
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 16
    move-result-object v0

    .line 19
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 20
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 26
    return-void
    .line 29
.end method

.method public final traceSetAodDimmingScrim(F)V
    .locals 5

    .line 1
    float-to-long v0, p1

    .line 2
    iget-object p0, p0, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    sget-object p1, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 8
    sget-object v2, Lcom/android/systemui/doze/DozeLogger$logSetAodDimmingScrim$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logSetAodDimmingScrim$2;

    .line 10
    const-string v3, "DozeLog"

    .line 12
    iget-object p0, p0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 14
    const/4 v4, 0x0

    .line 16
    invoke-virtual {p0, v3, p1, v2, v4}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 17
    move-result-object p1

    .line 20
    invoke-interface {p1, v0, v1}, Lcom/android/systemui/log/LogMessage;->setLong1(J)V

    .line 21
    invoke-virtual {p0, p1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 24
    return-void
    .line 27
.end method
