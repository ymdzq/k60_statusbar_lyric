.class public final Lcom/android/systemui/doze/DozeUi;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/doze/DozeMachine$Part;


# instance fields
.field public final mCanAnimateTransition:Z

.field public final mContext:Landroid/content/Context;

.field public final mDozeLog:Lcom/android/systemui/doze/DozeLog;

.field public final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field public final mHandler:Landroid/os/Handler;

.field public final mHost:Lcom/android/systemui/doze/DozeHost;

.field public mLastTimeTickElapsed:J

.field public mMachine:Lcom/android/systemui/doze/DozeMachine;

.field public final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final mTimeTicker:Lcom/android/systemui/util/AlarmTimeout;

.field public final mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/AlarmManager;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/doze/DozeHost;Landroid/os/Handler;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/doze/DozeLog;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcom/android/systemui/doze/DozeUi;->mLastTimeTickElapsed:J

    .line 7
    iput-object p1, p0, Lcom/android/systemui/doze/DozeUi;->mContext:Landroid/content/Context;

    .line 9
    iput-object p3, p0, Lcom/android/systemui/doze/DozeUi;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    .line 11
    iput-object p4, p0, Lcom/android/systemui/doze/DozeUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    .line 13
    iput-object p5, p0, Lcom/android/systemui/doze/DozeUi;->mHandler:Landroid/os/Handler;

    .line 15
    invoke-virtual {p6}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayNeedsBlanking()Z

    .line 17
    move-result p1

    .line 20
    xor-int/lit8 p1, p1, 0x1

    .line 21
    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeUi;->mCanAnimateTransition:Z

    .line 23
    iput-object p6, p0, Lcom/android/systemui/doze/DozeUi;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 25
    new-instance p1, Lcom/android/systemui/util/AlarmTimeout;

    .line 27
    new-instance p3, Lcom/android/systemui/doze/DozeUi$$ExternalSyntheticLambda0;

    .line 29
    invoke-direct {p3, p0}, Lcom/android/systemui/doze/DozeUi$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/doze/DozeUi;)V

    .line 31
    const-string p4, "doze_time_tick"

    .line 34
    invoke-direct {p1, p2, p3, p4, p5}, Lcom/android/systemui/util/AlarmTimeout;-><init>(Landroid/app/AlarmManager;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;)V

    .line 36
    iput-object p1, p0, Lcom/android/systemui/doze/DozeUi;->mTimeTicker:Lcom/android/systemui/util/AlarmTimeout;

    .line 39
    iput-object p8, p0, Lcom/android/systemui/doze/DozeUi;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    .line 41
    iput-object p7, p0, Lcom/android/systemui/doze/DozeUi;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 43
    return-void
    .line 45
.end method


# virtual methods
.method public final scheduleTimeTick()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/doze/DozeUi;->mTimeTicker:Lcom/android/systemui/util/AlarmTimeout;

    .line 2
    iget-boolean v1, v0, Lcom/android/systemui/util/AlarmTimeout;->mScheduled:Z

    .line 4
    if-eqz v1, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 9
    move-result-wide v1

    .line 12
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 13
    move-result-object v3

    .line 16
    invoke-virtual {v3, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 17
    const/16 v4, 0xe

    .line 20
    const/4 v5, 0x0

    .line 22
    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 23
    const/16 v4, 0xd

    .line 26
    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 28
    const/16 v4, 0xc

    .line 31
    const/4 v5, 0x1

    .line 33
    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 34
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 37
    move-result-wide v3

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 41
    move-result-wide v6

    .line 44
    sub-long/2addr v3, v6

    .line 45
    invoke-virtual {v0, v5, v3, v4}, Lcom/android/systemui/util/AlarmTimeout;->schedule(IJ)Z

    .line 46
    move-result v0

    .line 49
    if-eqz v0, :cond_1

    .line 50
    add-long/2addr v3, v1

    .line 52
    iget-object v0, p0, Lcom/android/systemui/doze/DozeUi;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    .line 53
    iget-object v0, v0, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    .line 55
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    sget-object v5, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 60
    sget-object v6, Lcom/android/systemui/doze/DozeLogger$logTimeTickScheduled$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logTimeTickScheduled$2;

    .line 62
    const/4 v7, 0x0

    .line 64
    iget-object v0, v0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 65
    const-string v8, "DozeLog"

    .line 67
    invoke-virtual {v0, v8, v5, v6, v7}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 69
    move-result-object v5

    .line 72
    invoke-interface {v5, v1, v2}, Lcom/android/systemui/log/LogMessage;->setLong1(J)V

    .line 73
    invoke-interface {v5, v3, v4}, Lcom/android/systemui/log/LogMessage;->setLong2(J)V

    .line 76
    invoke-virtual {v0, v5}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 79
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 82
    move-result-wide v0

    .line 85
    iput-wide v0, p0, Lcom/android/systemui/doze/DozeUi;->mLastTimeTickElapsed:J

    .line 86
    return-void
    .line 88
.end method

.method public final setDozeMachine(Lcom/android/systemui/doze/DozeMachine;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/doze/DozeUi;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    .line 2
    return-void
    .line 4
.end method

.method public final transitionTo(Lcom/android/systemui/doze/DozeMachine$State;Lcom/android/systemui/doze/DozeMachine$State;)V
    .locals 6

    .line 1
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 2
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/systemui/doze/DozeUi;->mTimeTicker:Lcom/android/systemui/util/AlarmTimeout;

    .line 6
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    iget-object v4, p0, Lcom/android/systemui/doze/DozeUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    .line 10
    packed-switch v0, :pswitch_data_0

    .line 12
    :pswitch_0
    goto/16 :goto_2

    .line 15
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeUi;->scheduleTimeTick()V

    .line 17
    goto/16 :goto_2

    .line 20
    :pswitch_2
    move-object p1, v4

    .line 22
    check-cast p1, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 23
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->stopDozing()V

    .line 25
    iget-boolean p1, v1, Lcom/android/systemui/util/AlarmTimeout;->mScheduled:Z

    .line 28
    if-nez p1, :cond_0

    .line 30
    goto/16 :goto_2

    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeUi;->verifyLastTimeTick()V

    .line 34
    invoke-virtual {v1}, Lcom/android/systemui/util/AlarmTimeout;->cancel()V

    .line 37
    goto/16 :goto_2

    .line 40
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeUi;->scheduleTimeTick()V

    .line 42
    iget-object p1, p0, Lcom/android/systemui/doze/DozeUi;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 50
    iget-object v0, p1, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    .line 53
    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_REQUEST_PULSE:Lcom/android/systemui/doze/DozeMachine$State;

    .line 55
    if-eq v0, v1, :cond_2

    .line 57
    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSING:Lcom/android/systemui/doze/DozeMachine$State;

    .line 59
    if-eq v0, v1, :cond_2

    .line 61
    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSING_BRIGHT:Lcom/android/systemui/doze/DozeMachine$State;

    .line 63
    if-eq v0, v1, :cond_2

    .line 65
    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSE_DONE:Lcom/android/systemui/doze/DozeMachine$State;

    .line 67
    if-ne v0, v1, :cond_1

    .line 69
    goto :goto_0

    .line 71
    :cond_1
    move v0, v2

    .line 72
    goto :goto_1

    .line 73
    :cond_2
    :goto_0
    move v0, v3

    .line 74
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 75
    const-string v5, "must be in pulsing state, but is "

    .line 77
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    iget-object v5, p1, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    .line 82
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object v1

    .line 90
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 91
    iget p1, p1, Lcom/android/systemui/doze/DozeMachine;->mPulseReason:I

    .line 94
    new-instance v0, Lcom/android/systemui/doze/DozeUi$1;

    .line 96
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/doze/DozeUi$1;-><init>(Lcom/android/systemui/doze/DozeUi;I)V

    .line 98
    move-object v1, v4

    .line 101
    check-cast v1, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 102
    invoke-virtual {v1, v0, p1}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->pulseWhileDozing(Lcom/android/systemui/doze/DozeUi$1;I)V

    .line 104
    goto :goto_2

    .line 107
    :pswitch_4
    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSED:Lcom/android/systemui/doze/DozeMachine$State;

    .line 108
    if-eq p1, v0, :cond_3

    .line 110
    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    .line 112
    if-ne p1, v0, :cond_4

    .line 114
    :cond_3
    move-object p1, v4

    .line 116
    check-cast p1, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 117
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->dozeTimeTick()V

    .line 119
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    new-instance p1, Lcom/android/systemui/doze/DozeUi$$ExternalSyntheticLambda1;

    .line 125
    invoke-direct {p1, v4}, Lcom/android/systemui/doze/DozeUi$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/doze/DozeHost;)V

    .line 127
    iget-object v0, p0, Lcom/android/systemui/doze/DozeUi;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    .line 130
    invoke-interface {v0, p1}, Lcom/android/systemui/util/wakelock/WakeLock;->wrap(Ljava/lang/Runnable;)Lcom/android/systemui/util/wakelock/WakeLock$$ExternalSyntheticLambda0;

    .line 132
    move-result-object p1

    .line 135
    const-wide/16 v0, 0x1f4

    .line 136
    iget-object v5, p0, Lcom/android/systemui/doze/DozeUi;->mHandler:Landroid/os/Handler;

    .line 138
    invoke-virtual {v5, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 140
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeUi;->scheduleTimeTick()V

    .line 143
    goto :goto_2

    .line 146
    :pswitch_5
    iget-boolean p1, v1, Lcom/android/systemui/util/AlarmTimeout;->mScheduled:Z

    .line 147
    if-nez p1, :cond_5

    .line 149
    goto :goto_2

    .line 151
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeUi;->verifyLastTimeTick()V

    .line 152
    invoke-virtual {v1}, Lcom/android/systemui/util/AlarmTimeout;->cancel()V

    .line 155
    goto :goto_2

    .line 158
    :pswitch_6
    move-object p1, v4

    .line 159
    check-cast p1, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 160
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mDozingRequested:Z

    .line 162
    if-nez v0, :cond_6

    .line 164
    iput-boolean v3, p1, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mDozingRequested:Z

    .line 166
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->updateDozing()V

    .line 168
    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 171
    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 173
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsDozing:Z

    .line 175
    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    .line 177
    invoke-virtual {v1, v0}, Lcom/android/systemui/doze/DozeLog;->traceDozing(Z)V

    .line 179
    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 182
    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 184
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateIsKeyguard()Z

    .line 186
    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mAodView:Landroid/view/ViewGroup;

    .line 189
    if-eqz p1, :cond_6

    .line 191
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 193
    :cond_6
    :goto_2
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 196
    move-result p1

    .line 199
    const/4 p2, 0x2

    .line 200
    packed-switch p1, :pswitch_data_1

    .line 201
    iget-boolean p1, p0, Lcom/android/systemui/doze/DozeUi;->mCanAnimateTransition:Z

    .line 204
    if-eqz p1, :cond_8

    .line 206
    iget-object p0, p0, Lcom/android/systemui/doze/DozeUi;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 208
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    .line 210
    move-result p0

    .line 213
    if-eqz p0, :cond_8

    .line 214
    move v2, v3

    .line 216
    goto :goto_3

    .line 217
    :pswitch_7
    check-cast v4, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 218
    iget-object p0, v4, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 220
    iget p0, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    .line 222
    if-eq p0, p2, :cond_a

    .line 224
    if-ne p0, v3, :cond_7

    .line 226
    goto :goto_4

    .line 228
    :cond_7
    iput-boolean v3, v4, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mAnimateWakeup:Z

    .line 229
    goto :goto_4

    .line 231
    :cond_8
    :goto_3
    check-cast v4, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 232
    iget-object p0, v4, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 234
    iget p0, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    .line 236
    if-eq p0, p2, :cond_a

    .line 238
    if-ne p0, v3, :cond_9

    .line 240
    goto :goto_4

    .line 242
    :cond_9
    iput-boolean v2, v4, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mAnimateWakeup:Z

    .line 243
    :cond_a
    :goto_4
    :pswitch_8
    return-void

    .line 245
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_4
    .end packed-switch

    .line 246
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_8
    .end packed-switch
    .line 274
.end method

.method public final verifyLastTimeTick()V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/android/systemui/doze/DozeUi;->mLastTimeTickElapsed:J

    .line 6
    sub-long/2addr v0, v2

    .line 8
    const-wide/32 v2, 0x15f90

    .line 9
    cmp-long v2, v0, v2

    .line 12
    if-lez v2, :cond_0

    .line 14
    iget-object v2, p0, Lcom/android/systemui/doze/DozeUi;->mContext:Landroid/content/Context;

    .line 16
    invoke-static {v2, v0, v1}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 21
    iget-object p0, p0, Lcom/android/systemui/doze/DozeUi;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    .line 22
    iget-object p0, p0, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    sget-object v1, Lcom/android/systemui/log/LogLevel;->ERROR:Lcom/android/systemui/log/LogLevel;

    .line 29
    sget-object v2, Lcom/android/systemui/doze/DozeLogger$logMissedTick$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logMissedTick$2;

    .line 31
    const/4 v3, 0x0

    .line 33
    iget-object p0, p0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 34
    const-string v4, "DozeLog"

    .line 36
    invoke-virtual {p0, v4, v1, v2, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 38
    move-result-object v1

    .line 41
    invoke-interface {v1, v0}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 45
    new-instance p0, Ljava/lang/StringBuilder;

    .line 48
    const-string v1, "Missed AOD time tick by "

    .line 50
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    const-string v1, "DozeMachine"

    .line 55
    invoke-static {p0, v0, v1}, Landroidx/constraintlayout/helper/widget/CircularFlow$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_0
    return-void
    .line 60
.end method
