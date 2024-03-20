.class public final synthetic Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/doze/DozeTriggers;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z

.field public final synthetic f$3:Z

.field public final synthetic f$4:F

.field public final synthetic f$5:F

.field public final synthetic f$6:Z

.field public final synthetic f$7:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/doze/DozeTriggers;IZZFFZZ[F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/doze/DozeTriggers;

    .line 5
    iput p2, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    iput-boolean p3, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda0;->f$2:Z

    .line 9
    iput-boolean p4, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda0;->f$3:Z

    .line 11
    iput p5, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda0;->f$4:F

    .line 13
    iput p6, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda0;->f$5:F

    .line 15
    iput-boolean p7, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda0;->f$6:Z

    .line 17
    iput-boolean p8, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda0;->f$7:Z

    .line 19
    return-void
    .line 21
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/doze/DozeTriggers;

    .line 4
    iget v2, v0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda0;->f$1:I

    .line 6
    iget-boolean v3, v0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda0;->f$2:Z

    .line 8
    iget-boolean v4, v0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda0;->f$3:Z

    .line 10
    iget v13, v0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda0;->f$4:F

    .line 12
    iget v14, v0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda0;->f$5:F

    .line 14
    iget-boolean v5, v0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda0;->f$6:Z

    .line 16
    iget-boolean v0, v0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda0;->f$7:Z

    .line 18
    move-object/from16 v6, p1

    .line 20
    check-cast v6, Ljava/lang/Boolean;

    .line 22
    iget-object v7, v1, Lcom/android/systemui/doze/DozeTriggers;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    .line 24
    if-eqz v6, :cond_0

    .line 26
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 28
    move-result v6

    .line 31
    if-eqz v6, :cond_0

    .line 32
    const-string v0, "prox reporting near"

    .line 34
    invoke-virtual {v7, v2, v0}, Lcom/android/systemui/doze/DozeLog;->traceSensorEventDropped(ILjava/lang/String;)V

    .line 36
    goto/16 :goto_3

    .line 39
    :cond_0
    iget-object v6, v1, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    .line 41
    const/4 v8, 0x1

    .line 43
    if-nez v3, :cond_6

    .line 44
    if-eqz v4, :cond_1

    .line 46
    goto :goto_1

    .line 48
    :cond_1
    if-eqz v5, :cond_3

    .line 49
    iget-object v0, v1, Lcom/android/systemui/doze/DozeTriggers;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 51
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 53
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    .line 55
    if-eqz v0, :cond_2

    .line 57
    const-string v0, "keyguard occluded"

    .line 59
    invoke-virtual {v7, v2, v0}, Lcom/android/systemui/doze/DozeLog;->traceSensorEventDropped(ILjava/lang/String;)V

    .line 61
    goto/16 :goto_3

    .line 64
    :cond_2
    invoke-virtual {v1, v2}, Lcom/android/systemui/doze/DozeTriggers;->gentleWakeUp(I)V

    .line 66
    goto/16 :goto_3

    .line 69
    :cond_3
    if-eqz v0, :cond_5

    .line 71
    iget-object v0, v1, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    .line 73
    invoke-virtual {v0}, Lcom/android/systemui/doze/DozeMachine;->getState()Lcom/android/systemui/doze/DozeMachine$State;

    .line 75
    move-result-object v0

    .line 78
    invoke-static {v0, v8}, Lcom/android/systemui/doze/DozeTriggers;->canPulse(Lcom/android/systemui/doze/DozeMachine$State;Z)Z

    .line 79
    move-result v0

    .line 82
    if-eqz v0, :cond_4

    .line 83
    const-string/jumbo v12, "updfsLongPress - setting aodInterruptRunnable to run when the display is on"

    .line 85
    iget-object v0, v7, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    .line 88
    iget-object v9, v0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 90
    const-string v10, "DozeLog"

    .line 92
    sget-object v11, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 94
    const/4 v13, 0x0

    .line 96
    const/16 v14, 0x8

    .line 97
    const/4 v15, 0x0

    .line 99
    invoke-static/range {v9 .. v15}, Lcom/android/systemui/log/LogBuffer;->log$default(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 100
    goto :goto_0

    .line 103
    :cond_4
    const-string/jumbo v19, "udfpsLongPress - Not sending aodInterrupt. Unsupported doze state."

    .line 104
    iget-object v0, v7, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    .line 107
    iget-object v0, v0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 109
    const-string v17, "DozeLog"

    .line 111
    sget-object v18, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 113
    const/16 v20, 0x0

    .line 115
    const/16 v21, 0x8

    .line 117
    const/16 v22, 0x0

    .line 119
    move-object/from16 v16, v0

    .line 121
    invoke-static/range {v16 .. v22}, Lcom/android/systemui/log/LogBuffer;->log$default(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 123
    :goto_0
    const/16 v0, 0xa

    .line 126
    const/4 v2, 0x0

    .line 128
    invoke-virtual {v1, v0, v8, v2}, Lcom/android/systemui/doze/DozeTriggers;->requestPulse(IZLcom/android/systemui/statusbar/phone/DozeServiceHost$$ExternalSyntheticLambda1;)V

    .line 129
    goto/16 :goto_3

    .line 132
    :cond_5
    check-cast v6, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 134
    invoke-virtual {v6, v2}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->extendPulse(I)V

    .line 136
    goto/16 :goto_3

    .line 139
    :cond_6
    :goto_1
    move-object v0, v6

    .line 141
    check-cast v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 142
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    const/4 v3, 0x0

    .line 147
    cmpg-float v4, v13, v3

    .line 148
    if-ltz v4, :cond_9

    .line 150
    cmpg-float v4, v14, v3

    .line 152
    if-gez v4, :cond_7

    .line 154
    goto/16 :goto_2

    .line 156
    :cond_7
    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mAmbientIndicationContainer:Landroid/view/View;

    .line 158
    if-eqz v4, :cond_8

    .line 160
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 162
    move-result v4

    .line 165
    if-nez v4, :cond_8

    .line 166
    const/4 v4, 0x2

    .line 168
    new-array v4, v4, [I

    .line 169
    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mAmbientIndicationContainer:Landroid/view/View;

    .line 171
    invoke-virtual {v5, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 173
    const/4 v5, 0x0

    .line 176
    aget v5, v4, v5

    .line 177
    int-to-float v5, v5

    .line 179
    sub-float v5, v13, v5

    .line 180
    aget v4, v4, v8

    .line 182
    int-to-float v4, v4

    .line 184
    sub-float v4, v14, v4

    .line 185
    cmpg-float v6, v3, v5

    .line 187
    if-gtz v6, :cond_8

    .line 189
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mAmbientIndicationContainer:Landroid/view/View;

    .line 191
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    .line 193
    move-result v6

    .line 196
    int-to-float v6, v6

    .line 197
    cmpg-float v5, v5, v6

    .line 198
    if-gtz v5, :cond_8

    .line 200
    cmpg-float v3, v3, v4

    .line 202
    if-gtz v3, :cond_8

    .line 204
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mAmbientIndicationContainer:Landroid/view/View;

    .line 206
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 208
    move-result v3

    .line 211
    int-to-float v3, v3

    .line 212
    cmpg-float v3, v4, v3

    .line 213
    if-gtz v3, :cond_8

    .line 215
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 217
    move-result-wide v3

    .line 220
    const/4 v9, 0x0

    .line 221
    const/4 v15, 0x0

    .line 222
    const/4 v12, 0x0

    .line 223
    move-wide v5, v3

    .line 224
    move-wide v7, v3

    .line 225
    move v10, v13

    .line 226
    move v11, v14

    .line 227
    invoke-static/range {v5 .. v12}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 228
    move-result-object v5

    .line 231
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mAmbientIndicationContainer:Landroid/view/View;

    .line 232
    invoke-virtual {v6, v5}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 234
    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    .line 237
    const/4 v9, 0x1

    .line 240
    move-wide v5, v3

    .line 241
    move v12, v15

    .line 242
    invoke-static/range {v5 .. v12}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 243
    move-result-object v3

    .line 246
    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mAmbientIndicationContainer:Landroid/view/View;

    .line 247
    invoke-virtual {v4, v3}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 249
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 252
    :cond_8
    new-instance v3, Landroid/graphics/Point;

    .line 255
    float-to-int v4, v13

    .line 257
    float-to-int v5, v14

    .line 258
    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 259
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mDozeInteractor:Lcom/android/systemui/keyguard/domain/interactor/DozeInteractor;

    .line 262
    iget-object v0, v0, Lcom/android/systemui/keyguard/domain/interactor/DozeInteractor;->keyguardRepository:Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;

    .line 264
    check-cast v0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;

    .line 266
    iget-object v0, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->_lastDozeTapToWakePosition:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 268
    invoke-virtual {v0, v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 270
    :cond_9
    :goto_2
    invoke-virtual {v1, v2}, Lcom/android/systemui/doze/DozeTriggers;->gentleWakeUp(I)V

    .line 273
    :goto_3
    return-void
    .line 276
.end method
