.class public final synthetic Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/doze/DozeTriggers;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/doze/DozeTriggers;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/doze/DozeTriggers;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget v1, v0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 4
    const/4 v2, 0x1

    .line 6
    packed-switch v1, :pswitch_data_0

    .line 7
    goto/16 :goto_4

    .line 10
    :pswitch_0
    iget-object v0, v0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/doze/DozeTriggers;

    .line 12
    move-object/from16 v1, p1

    .line 14
    check-cast v1, Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;

    .line 16
    iget-object v3, v0, Lcom/android/systemui/doze/DozeTriggers;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 18
    iget-object v0, v0, Lcom/android/systemui/doze/DozeTriggers;->mSessionTracker:Lcom/android/systemui/log/SessionTracker;

    .line 20
    invoke-virtual {v0, v2}, Lcom/android/systemui/log/SessionTracker;->getSessionId(I)Lcom/android/internal/logging/InstanceId;

    .line 22
    move-result-object v0

    .line 25
    invoke-interface {v3, v1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/internal/logging/InstanceId;)V

    .line 26
    return-void

    .line 29
    :pswitch_1
    iget-object v0, v0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/doze/DozeTriggers;

    .line 30
    move-object/from16 v1, p1

    .line 32
    check-cast v1, Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;

    .line 34
    iget-object v3, v0, Lcom/android/systemui/doze/DozeTriggers;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 36
    iget-object v0, v0, Lcom/android/systemui/doze/DozeTriggers;->mSessionTracker:Lcom/android/systemui/log/SessionTracker;

    .line 38
    invoke-virtual {v0, v2}, Lcom/android/systemui/log/SessionTracker;->getSessionId(I)Lcom/android/internal/logging/InstanceId;

    .line 40
    move-result-object v0

    .line 43
    invoke-interface {v3, v1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/internal/logging/InstanceId;)V

    .line 44
    return-void

    .line 47
    :pswitch_2
    iget-object v0, v0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/doze/DozeTriggers;

    .line 48
    move-object/from16 v1, p1

    .line 50
    check-cast v1, Ljava/lang/Boolean;

    .line 52
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 54
    move-result v1

    .line 57
    iget-object v3, v0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    .line 58
    invoke-virtual {v3}, Lcom/android/systemui/doze/DozeMachine;->isExecutingTransition()Z

    .line 60
    move-result v3

    .line 63
    iget-object v4, v0, Lcom/android/systemui/doze/DozeTriggers;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    .line 64
    if-eqz v3, :cond_0

    .line 66
    const-string v8, "onProximityFar called during transition. Ignoring sensor response."

    .line 68
    iget-object v0, v4, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    .line 70
    iget-object v5, v0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 72
    const-string v6, "DozeLog"

    .line 74
    sget-object v7, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 76
    const/4 v9, 0x0

    .line 78
    const/16 v10, 0x8

    .line 79
    const/4 v11, 0x0

    .line 81
    invoke-static/range {v5 .. v11}, Lcom/android/systemui/log/LogBuffer;->log$default(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 82
    goto/16 :goto_3

    .line 85
    :cond_0
    xor-int/lit8 v3, v1, 0x1

    .line 87
    iget-object v5, v0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    .line 89
    invoke-virtual {v5}, Lcom/android/systemui/doze/DozeMachine;->getState()Lcom/android/systemui/doze/DozeMachine$State;

    .line 91
    move-result-object v5

    .line 94
    sget-object v6, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSED:Lcom/android/systemui/doze/DozeMachine$State;

    .line 95
    const/4 v7, 0x0

    .line 97
    if-ne v5, v6, :cond_1

    .line 98
    move v6, v2

    .line 100
    goto :goto_0

    .line 101
    :cond_1
    move v6, v7

    .line 102
    :goto_0
    sget-object v8, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSING:Lcom/android/systemui/doze/DozeMachine$State;

    .line 103
    if-ne v5, v8, :cond_2

    .line 105
    move v9, v2

    .line 107
    goto :goto_1

    .line 108
    :cond_2
    move v9, v7

    .line 109
    :goto_1
    sget-object v10, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    .line 110
    if-ne v5, v10, :cond_3

    .line 112
    goto :goto_2

    .line 114
    :cond_3
    move v2, v7

    .line 115
    :goto_2
    sget-object v7, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSING:Lcom/android/systemui/doze/DozeMachine$State;

    .line 116
    if-eq v5, v7, :cond_4

    .line 118
    sget-object v7, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSING_BRIGHT:Lcom/android/systemui/doze/DozeMachine$State;

    .line 120
    if-ne v5, v7, :cond_6

    .line 122
    :cond_4
    iget-object v5, v4, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    .line 124
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    sget-object v7, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 129
    sget-object v11, Lcom/android/systemui/doze/DozeLogger$logSetIgnoreTouchWhilePulsing$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logSetIgnoreTouchWhilePulsing$2;

    .line 131
    const/4 v12, 0x0

    .line 133
    iget-object v5, v5, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 134
    const-string v13, "DozeLog"

    .line 136
    invoke-virtual {v5, v13, v7, v11, v12}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 138
    move-result-object v7

    .line 141
    invoke-interface {v7, v3}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 142
    invoke-virtual {v5, v7}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 145
    iget-object v5, v0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    .line 148
    check-cast v5, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 150
    iget-boolean v7, v5, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mIgnoreTouchWhilePulsing:Z

    .line 152
    if-eq v3, v7, :cond_5

    .line 154
    iget-object v7, v5, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    .line 156
    invoke-virtual {v7, v3}, Lcom/android/systemui/doze/DozeLog;->tracePulseTouchDisabledByProx(Z)V

    .line 158
    :cond_5
    iput-boolean v3, v5, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mIgnoreTouchWhilePulsing:Z

    .line 161
    iget-object v7, v5, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 163
    check-cast v7, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 165
    iget-boolean v7, v7, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsDozing:Z

    .line 167
    if-eqz v7, :cond_6

    .line 169
    if-eqz v3, :cond_6

    .line 171
    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mNotificationShadeWindowViewController:Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    .line 173
    invoke-virtual {v5}, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->cancelCurrentTouch()V

    .line 175
    :cond_6
    if-eqz v1, :cond_8

    .line 178
    if-nez v6, :cond_7

    .line 180
    if-eqz v9, :cond_8

    .line 182
    :cond_7
    const-string v14, "Prox FAR, unpausing AOD"

    .line 184
    iget-object v1, v4, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    .line 186
    iget-object v11, v1, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 188
    const-string v12, "DozeLog"

    .line 190
    sget-object v13, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 192
    const/4 v15, 0x0

    .line 194
    const/16 v16, 0x8

    .line 195
    const/16 v17, 0x0

    .line 197
    invoke-static/range {v11 .. v17}, Lcom/android/systemui/log/LogBuffer;->log$default(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 199
    iget-object v0, v0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    .line 202
    invoke-virtual {v0, v10}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    .line 204
    goto :goto_3

    .line 207
    :cond_8
    if-eqz v3, :cond_9

    .line 208
    if-eqz v2, :cond_9

    .line 210
    const-string v5, "Prox NEAR, starting pausing AOD countdown"

    .line 212
    iget-object v1, v4, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    .line 214
    iget-object v1, v1, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 216
    const-string v2, "DozeLog"

    .line 218
    sget-object v3, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 220
    const/4 v6, 0x0

    .line 222
    const/16 v7, 0x8

    .line 223
    const/4 v9, 0x0

    .line 225
    move-object v4, v5

    .line 226
    move-object v5, v6

    .line 227
    move v6, v7

    .line 228
    move-object v7, v9

    .line 229
    invoke-static/range {v1 .. v7}, Lcom/android/systemui/log/LogBuffer;->log$default(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 230
    iget-object v0, v0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    .line 233
    invoke-virtual {v0, v8}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    .line 235
    :cond_9
    :goto_3
    return-void

    .line 238
    :goto_4
    iget-object v0, v0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/doze/DozeTriggers;

    .line 239
    move-object/from16 v1, p1

    .line 241
    check-cast v1, Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;

    .line 243
    iget-object v3, v0, Lcom/android/systemui/doze/DozeTriggers;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 245
    iget-object v0, v0, Lcom/android/systemui/doze/DozeTriggers;->mSessionTracker:Lcom/android/systemui/log/SessionTracker;

    .line 247
    invoke-virtual {v0, v2}, Lcom/android/systemui/log/SessionTracker;->getSessionId(I)Lcom/android/internal/logging/InstanceId;

    .line 249
    move-result-object v0

    .line 252
    invoke-interface {v3, v1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/internal/logging/InstanceId;)V

    .line 253
    return-void

    .line 256
    nop

    .line 257
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 258
.end method
