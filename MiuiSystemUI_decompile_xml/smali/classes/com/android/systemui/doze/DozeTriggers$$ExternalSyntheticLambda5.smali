.class public final synthetic Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/doze/DozeTriggers;

.field public final synthetic f$1:J

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/doze/DozeTriggers;JILjava/util/function/Consumer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/doze/DozeTriggers;

    .line 5
    iput-wide p2, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda5;->f$1:J

    .line 7
    iput p4, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda5;->f$2:I

    .line 9
    iput-object p5, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda5;->f$3:Ljava/util/function/Consumer;

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/doze/DozeTriggers;

    .line 2
    iget-wide v1, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda5;->f$1:J

    .line 4
    iget v3, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda5;->f$2:I

    .line 6
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda5;->f$3:Ljava/util/function/Consumer;

    .line 8
    check-cast p1, Ljava/lang/Boolean;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 15
    move-result-wide v4

    .line 18
    const/4 v6, 0x1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22
    move-result v7

    .line 25
    if-eqz v7, :cond_0

    .line 26
    move v7, v6

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v7, 0x0

    .line 30
    :goto_0
    sub-long/2addr v4, v1

    .line 31
    iget-object v1, v0, Lcom/android/systemui/doze/DozeTriggers;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    .line 32
    iget-object v2, v1, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    .line 34
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    sget-object v8, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 39
    sget-object v9, Lcom/android/systemui/doze/DozeLogger$logProximityResult$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logProximityResult$2;

    .line 41
    const-string v10, "DozeLog"

    .line 43
    iget-object v2, v2, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 45
    const/4 v11, 0x0

    .line 47
    invoke-virtual {v2, v10, v8, v9, v11}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 48
    move-result-object v8

    .line 51
    invoke-interface {v8, v7}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 52
    invoke-interface {v8, v4, v5}, Lcom/android/systemui/log/LogMessage;->setLong1(J)V

    .line 55
    invoke-interface {v8, v3}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 58
    invoke-virtual {v2, v8}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 61
    iget-object v1, v1, Lcom/android/systemui/doze/DozeLog;->mProxStats:[[Lcom/android/systemui/doze/DozeLog$SummaryStats;

    .line 64
    aget-object v1, v1, v3

    .line 66
    xor-int/lit8 v2, v7, 0x1

    .line 68
    aget-object v1, v1, v2

    .line 70
    iget v2, v1, Lcom/android/systemui/doze/DozeLog$SummaryStats;->mCount:I

    .line 72
    add-int/2addr v2, v6

    .line 74
    iput v2, v1, Lcom/android/systemui/doze/DozeLog$SummaryStats;->mCount:I

    .line 75
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 77
    iget-object p0, v0, Lcom/android/systemui/doze/DozeTriggers;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    .line 80
    const-string p1, "DozeTriggers"

    .line 82
    invoke-interface {p0, p1}, Lcom/android/systemui/util/wakelock/WakeLock;->release(Ljava/lang/String;)V

    .line 84
    return-void
    .line 87
.end method
