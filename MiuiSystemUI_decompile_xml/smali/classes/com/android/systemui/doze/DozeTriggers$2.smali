.class public final Lcom/android/systemui/doze/DozeTriggers$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/doze/DozeHost$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/doze/DozeTriggers;


# direct methods
.method public constructor <init>(Lcom/android/systemui/doze/DozeTriggers;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/doze/DozeTriggers$2;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onNotificationAlerted(Lcom/android/systemui/statusbar/phone/DozeServiceHost$$ExternalSyntheticLambda1;)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers$2;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    sget-boolean v0, Lcom/android/systemui/doze/DozeMachine;->DEBUG:Z

    .line 7
    const-string v1, "DozeTriggers"

    .line 9
    if-eqz v0, :cond_0

    .line 11
    const-string/jumbo v0, "requestNotificationPulse"

    .line 13
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :cond_0
    sget-boolean v0, Lcom/android/systemui/doze/DozeTriggers;->sWakeDisplaySensorState:Z

    .line 19
    iget-object v2, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    .line 21
    if-nez v0, :cond_1

    .line 23
    const-string p0, "Wake display false. Pulse denied."

    .line 25
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-static {p1}, Lcom/android/systemui/doze/DozeTriggers;->runIfNotNull(Ljava/lang/Runnable;)V

    .line 30
    const-string/jumbo p0, "wakeDisplaySensor"

    .line 33
    invoke-virtual {v2, p0}, Lcom/android/systemui/doze/DozeLog;->tracePulseDropped(Ljava/lang/String;)V

    .line 36
    goto :goto_0

    .line 39
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 40
    move-result-wide v0

    .line 43
    iput-wide v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mNotificationPulseTime:J

    .line 44
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 46
    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 48
    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 50
    move-result v0

    .line 53
    iget-object v1, p0, Lcom/android/systemui/doze/DozeTriggers;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 54
    invoke-virtual {v1, v0}, Landroid/hardware/display/AmbientDisplayConfiguration;->pulseOnNotificationEnabled(I)Z

    .line 56
    move-result v0

    .line 59
    if-nez v0, :cond_2

    .line 60
    invoke-static {p1}, Lcom/android/systemui/doze/DozeTriggers;->runIfNotNull(Ljava/lang/Runnable;)V

    .line 62
    const-string p0, "pulseOnNotificationsDisabled"

    .line 65
    invoke-virtual {v2, p0}, Lcom/android/systemui/doze/DozeLog;->tracePulseDropped(Ljava/lang/String;)V

    .line 67
    goto :goto_0

    .line 70
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    .line 71
    check-cast v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 73
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mAlwaysOnSuppressed:Z

    .line 75
    if-eqz v0, :cond_3

    .line 77
    invoke-static {p1}, Lcom/android/systemui/doze/DozeTriggers;->runIfNotNull(Ljava/lang/Runnable;)V

    .line 79
    const-string p0, "dozeSuppressed"

    .line 82
    invoke-virtual {v2, p0}, Lcom/android/systemui/doze/DozeLog;->tracePulseDropped(Ljava/lang/String;)V

    .line 84
    goto :goto_0

    .line 87
    :cond_3
    const/4 v0, 0x0

    .line 88
    const/4 v1, 0x1

    .line 89
    invoke-virtual {p0, v1, v0, p1}, Lcom/android/systemui/doze/DozeTriggers;->requestPulse(IZLcom/android/systemui/statusbar/phone/DozeServiceHost$$ExternalSyntheticLambda1;)V

    .line 90
    iget-object p0, v2, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    .line 93
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    sget-object p1, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 98
    sget-object v0, Lcom/android/systemui/doze/DozeLogger$logNotificationPulse$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logNotificationPulse$2;

    .line 100
    const-string v3, "DozeLog"

    .line 102
    iget-object p0, p0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 104
    const/4 v4, 0x0

    .line 106
    invoke-virtual {p0, v3, p1, v0, v4}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 107
    move-result-object p1

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 111
    iget-object p0, v2, Lcom/android/systemui/doze/DozeLog;->mNotificationPulseStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    .line 114
    iget p1, p0, Lcom/android/systemui/doze/DozeLog$SummaryStats;->mCount:I

    .line 116
    add-int/2addr p1, v1

    .line 118
    iput p1, p0, Lcom/android/systemui/doze/DozeLog$SummaryStats;->mCount:I

    .line 119
    :goto_0
    return-void
    .line 121
.end method
