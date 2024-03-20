.class public final Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$1;
.super Landroid/os/Handler;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$1;->this$0:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    .line 2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 11

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    const-string/jumbo v1, "wakefulness"

    .line 4
    const-string/jumbo v2, "screenState"

    .line 7
    const-wide/16 v3, 0x1000

    .line 10
    const/4 v5, 0x4

    .line 12
    const/4 v6, 0x0

    .line 13
    const/4 v7, 0x2

    .line 14
    const/4 v8, 0x3

    .line 15
    const/4 v9, 0x0

    .line 16
    const/4 v10, 0x1

    .line 17
    packed-switch v0, :pswitch_data_0

    .line 18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    const-string v1, "Unknown message: "

    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 36
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 37
    throw p0

    .line 40
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$1;->this$0:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    .line 41
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 43
    iget p1, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    .line 45
    if-nez p1, :cond_0

    .line 47
    goto/16 :goto_4

    .line 49
    :cond_0
    iput v9, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    .line 51
    invoke-static {v3, v4, v1, v9}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 53
    new-instance p1, Lcom/android/systemui/keyguard/WakefulnessLifecycle$$ExternalSyntheticLambda0;

    .line 56
    invoke-direct {p1, v10}, Lcom/android/systemui/keyguard/WakefulnessLifecycle$$ExternalSyntheticLambda0;-><init>(I)V

    .line 58
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/Lifecycle;->dispatch(Ljava/util/function/Consumer;)V

    .line 61
    goto/16 :goto_4

    .line 64
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$1;->this$0:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    .line 66
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 68
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 70
    iget v0, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    .line 72
    if-ne v0, v8, :cond_1

    .line 74
    goto/16 :goto_4

    .line 76
    :cond_1
    iput v8, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    .line 78
    invoke-static {v3, v4, v1, v8}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 80
    iput p1, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastSleepReason:I

    .line 83
    iput-object v6, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastSleepOriginLocation:Landroid/graphics/Point;

    .line 85
    if-eq p1, v5, :cond_2

    .line 87
    new-instance p1, Landroid/graphics/Point;

    .line 89
    iget-object v0, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 91
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 93
    div-int/2addr v1, v7

    .line 95
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 96
    invoke-direct {p1, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    .line 98
    iput-object p1, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastSleepOriginLocation:Landroid/graphics/Point;

    .line 101
    goto :goto_0

    .line 103
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->getPowerButtonOrigin()Landroid/graphics/Point;

    .line 104
    move-result-object p1

    .line 107
    iput-object p1, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastSleepOriginLocation:Landroid/graphics/Point;

    .line 108
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWallpaperManagerService:Landroid/app/IWallpaperManager;

    .line 110
    if-eqz p1, :cond_3

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastSleepOriginLocation:Landroid/graphics/Point;

    .line 114
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 116
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 118
    new-instance v2, Landroid/os/Bundle;

    .line 120
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 122
    invoke-interface {p1, v1, v0, v2}, Landroid/app/IWallpaperManager;->notifyGoingToSleep(IILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    goto :goto_1

    .line 128
    :catch_0
    move-exception p1

    .line 129
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 130
    :cond_3
    :goto_1
    new-instance p1, Lcom/android/systemui/keyguard/WakefulnessLifecycle$$ExternalSyntheticLambda0;

    .line 133
    invoke-direct {p1, v9}, Lcom/android/systemui/keyguard/WakefulnessLifecycle$$ExternalSyntheticLambda0;-><init>(I)V

    .line 135
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/Lifecycle;->dispatch(Ljava/util/function/Consumer;)V

    .line 138
    goto/16 :goto_4

    .line 141
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$1;->this$0:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    .line 143
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 145
    iget p1, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    .line 147
    if-ne p1, v7, :cond_4

    .line 149
    goto/16 :goto_4

    .line 151
    :cond_4
    iput v7, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    .line 153
    invoke-static {v3, v4, v1, v7}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 155
    new-instance p1, Lcom/android/systemui/keyguard/WakefulnessLifecycle$$ExternalSyntheticLambda0;

    .line 158
    invoke-direct {p1, v7}, Lcom/android/systemui/keyguard/WakefulnessLifecycle$$ExternalSyntheticLambda0;-><init>(I)V

    .line 160
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/Lifecycle;->dispatch(Ljava/util/function/Consumer;)V

    .line 163
    new-instance p1, Lcom/android/systemui/keyguard/WakefulnessLifecycle$$ExternalSyntheticLambda0;

    .line 166
    invoke-direct {p1, v8}, Lcom/android/systemui/keyguard/WakefulnessLifecycle$$ExternalSyntheticLambda0;-><init>(I)V

    .line 168
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/Lifecycle;->dispatch(Ljava/util/function/Consumer;)V

    .line 171
    goto/16 :goto_4

    .line 174
    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$1;->this$0:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    .line 176
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 178
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 180
    iget v0, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    .line 182
    if-ne v0, v10, :cond_5

    .line 184
    goto/16 :goto_4

    .line 186
    :cond_5
    iput v10, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    .line 188
    invoke-static {v3, v4, v1, v10}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 190
    iput p1, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastWakeReason:I

    .line 193
    iget-object p1, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 195
    check-cast p1, Lcom/android/systemui/util/time/SystemClockImpl;

    .line 197
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 202
    move-result-wide v0

    .line 205
    iput-wide v0, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastWakeTime:J

    .line 206
    iput-object v6, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastWakeOriginLocation:Landroid/graphics/Point;

    .line 208
    iget p1, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastWakeReason:I

    .line 210
    if-eq p1, v10, :cond_6

    .line 212
    new-instance p1, Landroid/graphics/Point;

    .line 214
    iget-object v0, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 216
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 218
    div-int/2addr v1, v7

    .line 220
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 221
    invoke-direct {p1, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    .line 223
    iput-object p1, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastWakeOriginLocation:Landroid/graphics/Point;

    .line 226
    goto :goto_2

    .line 228
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->getPowerButtonOrigin()Landroid/graphics/Point;

    .line 229
    move-result-object p1

    .line 232
    iput-object p1, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastWakeOriginLocation:Landroid/graphics/Point;

    .line 233
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWallpaperManagerService:Landroid/app/IWallpaperManager;

    .line 235
    if-eqz p1, :cond_7

    .line 237
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastWakeOriginLocation:Landroid/graphics/Point;

    .line 239
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 241
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 243
    new-instance v2, Landroid/os/Bundle;

    .line 245
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 247
    invoke-interface {p1, v1, v0, v2}, Landroid/app/IWallpaperManager;->notifyWakingUp(IILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 250
    goto :goto_3

    .line 253
    :catch_1
    move-exception p1

    .line 254
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 255
    :cond_7
    :goto_3
    new-instance p1, Lcom/android/systemui/keyguard/WakefulnessLifecycle$$ExternalSyntheticLambda0;

    .line 258
    invoke-direct {p1, v5}, Lcom/android/systemui/keyguard/WakefulnessLifecycle$$ExternalSyntheticLambda0;-><init>(I)V

    .line 260
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/Lifecycle;->dispatch(Ljava/util/function/Consumer;)V

    .line 263
    goto :goto_4

    .line 266
    :pswitch_4
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$1;->this$0:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    .line 267
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 269
    iput v9, p0, Lcom/android/systemui/keyguard/ScreenLifecycle;->mScreenState:I

    .line 271
    invoke-static {v3, v4, v2, v9}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 273
    new-instance p1, Lcom/android/systemui/keyguard/ScreenLifecycle$$ExternalSyntheticLambda0;

    .line 276
    invoke-direct {p1, v8}, Lcom/android/systemui/keyguard/ScreenLifecycle$$ExternalSyntheticLambda0;-><init>(I)V

    .line 278
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/Lifecycle;->dispatch(Ljava/util/function/Consumer;)V

    .line 281
    goto :goto_4

    .line 284
    :pswitch_5
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$1;->this$0:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    .line 285
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 287
    iput v8, p0, Lcom/android/systemui/keyguard/ScreenLifecycle;->mScreenState:I

    .line 289
    invoke-static {v3, v4, v2, v8}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 291
    new-instance p1, Lcom/android/systemui/keyguard/ScreenLifecycle$$ExternalSyntheticLambda0;

    .line 294
    invoke-direct {p1, v7}, Lcom/android/systemui/keyguard/ScreenLifecycle$$ExternalSyntheticLambda0;-><init>(I)V

    .line 296
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/Lifecycle;->dispatch(Ljava/util/function/Consumer;)V

    .line 299
    goto :goto_4

    .line 302
    :pswitch_6
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$1;->this$0:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    .line 303
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 305
    iput v7, p0, Lcom/android/systemui/keyguard/ScreenLifecycle;->mScreenState:I

    .line 307
    invoke-static {v3, v4, v2, v7}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 309
    new-instance p1, Lcom/android/systemui/keyguard/ScreenLifecycle$$ExternalSyntheticLambda0;

    .line 312
    invoke-direct {p1, v10}, Lcom/android/systemui/keyguard/ScreenLifecycle$$ExternalSyntheticLambda0;-><init>(I)V

    .line 314
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/Lifecycle;->dispatch(Ljava/util/function/Consumer;)V

    .line 317
    goto :goto_4

    .line 320
    :pswitch_7
    const-string p1, "KeyguardLifecyclesDispatcher#SCREEN_TURNING_ON"

    .line 321
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 323
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$1;->this$0:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    .line 326
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 328
    iput v10, p0, Lcom/android/systemui/keyguard/ScreenLifecycle;->mScreenState:I

    .line 330
    invoke-static {v3, v4, v2, v10}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 332
    new-instance p1, Lcom/android/systemui/keyguard/ScreenLifecycle$$ExternalSyntheticLambda0;

    .line 335
    invoke-direct {p1, v9}, Lcom/android/systemui/keyguard/ScreenLifecycle$$ExternalSyntheticLambda0;-><init>(I)V

    .line 337
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/Lifecycle;->dispatch(Ljava/util/function/Consumer;)V

    .line 340
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 343
    :goto_4
    return-void

    .line 346
    nop

    .line 347
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 348
.end method
