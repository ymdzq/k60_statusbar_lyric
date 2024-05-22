.class public abstract Lcom/miui/keyguardeditor/IMiuiKeyguardEditorCallback$Stub;
.super Landroid/os/Binder;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/os/IInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    const-string v0, "com.miui.keyguardeditor.IMiuiKeyguardEditorCallback"

    .line 5
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    return-void
    .line 10
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    return-object p0
    .line 2
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4

    .line 1
    const-string v0, "com.miui.keyguardeditor.IMiuiKeyguardEditorCallback"

    .line 2
    const/4 v1, 0x1

    .line 4
    if-lt p1, v1, :cond_0

    .line 5
    const v2, 0xffffff

    .line 7
    if-gt p1, v2, :cond_0

    .line 10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 12
    :cond_0
    const v2, 0x5f4e5446

    .line 15
    if-eq p1, v2, :cond_14

    .line 18
    if-eq p1, v1, :cond_1

    .line 20
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 22
    move-result p0

    .line 25
    return p0

    .line 26
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 30
    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 31
    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 33
    move-result-object p3

    .line 36
    check-cast p3, Landroid/os/Bundle;

    .line 37
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 39
    check-cast p0, Lcom/android/keyguard/KeyguardEditorHelper$KeyguardEditorCallback;

    .line 42
    sget-object p2, Lcom/android/keyguard/KeyguardEditorHelper;->TAG:Ljava/lang/String;

    .line 44
    const-string/jumbo p4, "systemui getCommand "

    .line 46
    const-string v0, "; mState="

    .line 49
    invoke-static {p4, p1, v0}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    move-result-object p4

    .line 54
    iget-object v0, p0, Lcom/android/keyguard/KeyguardEditorHelper$KeyguardEditorCallback;->this$0:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 55
    iget-object v0, v0, Lcom/android/keyguard/KeyguardEditorHelper;->mState:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 57
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object p4

    .line 65
    invoke-static {p2, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 72
    move-result p4

    .line 75
    const/4 v0, 0x3

    .line 76
    const/4 v2, 0x2

    .line 77
    const/4 v3, 0x0

    .line 78
    sparse-switch p4, :sswitch_data_0

    .line 79
    goto :goto_0

    .line 82
    :sswitch_0
    const-string p4, "action_editor_ready"

    .line 83
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    move-result p1

    .line 88
    if-nez p1, :cond_2

    .line 89
    goto :goto_0

    .line 91
    :cond_2
    move p1, v0

    .line 92
    goto :goto_1

    .line 93
    :sswitch_1
    const-string p4, "action_request_exit_editor"

    .line 94
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    move-result p1

    .line 99
    if-nez p1, :cond_3

    .line 100
    goto :goto_0

    .line 102
    :cond_3
    move p1, v2

    .line 103
    goto :goto_1

    .line 104
    :sswitch_2
    const-string p4, "action_config_change_when_enter_anim_wait_unlock"

    .line 105
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    move-result p1

    .line 110
    if-nez p1, :cond_4

    .line 111
    goto :goto_0

    .line 113
    :cond_4
    move p1, v1

    .line 114
    goto :goto_1

    .line 115
    :sswitch_3
    const-string p4, "action_send_template_data"

    .line 116
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    move-result p1

    .line 121
    if-nez p1, :cond_5

    .line 122
    goto :goto_0

    .line 124
    :cond_5
    move p1, v3

    .line 125
    goto :goto_1

    .line 126
    :goto_0
    const/4 p1, -0x1

    .line 127
    :goto_1
    sget-object p4, Lcom/android/keyguard/KeyguardEditorHelper$EditorState;->START:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 128
    if-eqz p1, :cond_11

    .line 130
    if-eq p1, v1, :cond_b

    .line 132
    if-eq p1, v2, :cond_9

    .line 134
    if-eq p1, v0, :cond_6

    .line 136
    goto/16 :goto_5

    .line 138
    :cond_6
    iget-object p1, p0, Lcom/android/keyguard/KeyguardEditorHelper$KeyguardEditorCallback;->this$0:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 140
    iget-object p1, p1, Lcom/android/keyguard/KeyguardEditorHelper;->mHandler:Lcom/android/keyguard/KeyguardEditorHelper$1;

    .line 142
    const/16 p2, 0x16

    .line 144
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 146
    iget-object p1, p0, Lcom/android/keyguard/KeyguardEditorHelper$KeyguardEditorCallback;->this$0:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 149
    iget-object p2, p1, Lcom/android/keyguard/KeyguardEditorHelper;->mState:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 151
    if-ne p2, p4, :cond_8

    .line 153
    invoke-static {p1, p3}, Lcom/android/keyguard/KeyguardEditorHelper;->-$$Nest$minitAnimationParams(Lcom/android/keyguard/KeyguardEditorHelper;Landroid/os/Bundle;)V

    .line 155
    iget-object p0, p0, Lcom/android/keyguard/KeyguardEditorHelper$KeyguardEditorCallback;->this$0:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 158
    iget-object p1, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mHandler:Lcom/android/keyguard/KeyguardEditorHelper$1;

    .line 160
    iget-object p2, p0, Lcom/android/keyguard/KeyguardEditorHelper;->editorReady:Lcom/android/keyguard/KeyguardEditorHelper$9;

    .line 162
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 164
    iget-object p1, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mEditLeash:Landroid/view/SurfaceControl;

    .line 167
    if-eqz p1, :cond_7

    .line 169
    iput-boolean v3, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mEditorReadyWaitingLeach:Z

    .line 171
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardEditorHelper;->handlerEditorReady()V

    .line 173
    goto :goto_2

    .line 176
    :cond_7
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mEditorReadyWaitingLeach:Z

    .line 177
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 179
    move-result-wide p1

    .line 182
    iput-wide p1, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mEditorReadyStartWaitingTime:J

    .line 183
    :goto_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 185
    goto/16 :goto_5

    .line 188
    :cond_8
    sget-object p0, Lcom/android/keyguard/KeyguardEditorHelper$EditorState;->IDEL:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 190
    if-ne p2, p0, :cond_13

    .line 192
    sget-object p0, Lcom/android/keyguard/KeyguardEditorHelper$ResetReason;->EDITOR_READY_IN_IDEL:Lcom/android/keyguard/KeyguardEditorHelper$ResetReason;

    .line 194
    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardEditorHelper;->reset(Lcom/android/keyguard/KeyguardEditorHelper$ResetReason;)V

    .line 196
    goto/16 :goto_5

    .line 199
    :cond_9
    iget-object p1, p0, Lcom/android/keyguard/KeyguardEditorHelper$KeyguardEditorCallback;->this$0:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 201
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardEditorHelper;->isInEnterAndExitEditorMode()Z

    .line 203
    move-result p1

    .line 206
    if-nez p1, :cond_a

    .line 207
    iget-object p1, p0, Lcom/android/keyguard/KeyguardEditorHelper$KeyguardEditorCallback;->this$0:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 209
    invoke-static {p1, p3}, Lcom/android/keyguard/KeyguardEditorHelper;->-$$Nest$minitSurfaceControl(Lcom/android/keyguard/KeyguardEditorHelper;Landroid/os/Bundle;)V

    .line 211
    iget-object p1, p0, Lcom/android/keyguard/KeyguardEditorHelper$KeyguardEditorCallback;->this$0:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 214
    invoke-static {p1, p3}, Lcom/android/keyguard/KeyguardEditorHelper;->-$$Nest$minitAnimationParams(Lcom/android/keyguard/KeyguardEditorHelper;Landroid/os/Bundle;)V

    .line 216
    const-string p1, "isRealClockTime"

    .line 219
    invoke-virtual {p3, p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 221
    move-result p1

    .line 224
    iget-object p0, p0, Lcom/android/keyguard/KeyguardEditorHelper$KeyguardEditorCallback;->this$0:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 225
    iget-object p2, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mHandler:Lcom/android/keyguard/KeyguardEditorHelper$1;

    .line 227
    new-instance p3, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticLambda2;

    .line 229
    invoke-direct {p3, p0, p1}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/KeyguardEditorHelper;Z)V

    .line 231
    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 234
    goto/16 :goto_5

    .line 237
    :cond_a
    iget-object p0, p0, Lcom/android/keyguard/KeyguardEditorHelper$KeyguardEditorCallback;->this$0:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 239
    iget-object p1, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mState:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 241
    if-ne p1, p4, :cond_13

    .line 243
    sget-object p1, Lcom/android/keyguard/KeyguardEditorHelper$ResetReason;->REQUEST_EXIT_IN_START:Lcom/android/keyguard/KeyguardEditorHelper$ResetReason;

    .line 245
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardEditorHelper;->reset(Lcom/android/keyguard/KeyguardEditorHelper$ResetReason;)V

    .line 247
    goto/16 :goto_5

    .line 250
    :cond_b
    iget-object p1, p0, Lcom/android/keyguard/KeyguardEditorHelper$KeyguardEditorCallback;->this$0:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 252
    iget-object p2, p1, Lcom/android/keyguard/KeyguardEditorHelper;->mState:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 254
    sget-object p4, Lcom/android/keyguard/KeyguardEditorHelper$EditorState;->SHOWINGBOUNCER:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 256
    if-ne p2, p4, :cond_13

    .line 258
    iget-object p1, p1, Lcom/android/keyguard/KeyguardEditorHelper;->mEditLeash:Landroid/view/SurfaceControl;

    .line 260
    if-eqz p1, :cond_c

    .line 262
    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    .line 264
    move-result p1

    .line 267
    if-eqz p1, :cond_c

    .line 268
    move v3, v1

    .line 270
    :cond_c
    if-eqz v3, :cond_d

    .line 271
    iget-object p1, p0, Lcom/android/keyguard/KeyguardEditorHelper$KeyguardEditorCallback;->this$0:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 273
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardEditorHelper;->releaseEnterSurfaceControl()V

    .line 275
    :cond_d
    iget-object p1, p0, Lcom/android/keyguard/KeyguardEditorHelper$KeyguardEditorCallback;->this$0:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 278
    iget-object p1, p1, Lcom/android/keyguard/KeyguardEditorHelper;->mEditAnimationSurfaceControl:Landroid/view/SurfaceControl;

    .line 280
    if-eqz p1, :cond_e

    .line 282
    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    .line 284
    move-result p1

    .line 287
    if-nez p1, :cond_f

    .line 288
    :cond_e
    iget-object p1, p0, Lcom/android/keyguard/KeyguardEditorHelper$KeyguardEditorCallback;->this$0:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 290
    invoke-static {p1, p3}, Lcom/android/keyguard/KeyguardEditorHelper;->-$$Nest$minitSurfaceControl(Lcom/android/keyguard/KeyguardEditorHelper;Landroid/os/Bundle;)V

    .line 292
    :cond_f
    iget-object p1, p0, Lcom/android/keyguard/KeyguardEditorHelper$KeyguardEditorCallback;->this$0:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 295
    iget-object p1, p1, Lcom/android/keyguard/KeyguardEditorHelper;->mContext:Landroid/content/Context;

    .line 297
    invoke-static {p1}, Lcom/miui/utils/configs/MiuiConfigs;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    .line 299
    move-result-object p1

    .line 302
    if-eqz v3, :cond_10

    .line 303
    :try_start_0
    iget-object p2, p0, Lcom/android/keyguard/KeyguardEditorHelper$KeyguardEditorCallback;->this$0:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 305
    iget-object p2, p2, Lcom/android/keyguard/KeyguardEditorHelper;->mEditAnimationSurfaceControl:Landroid/view/SurfaceControl;

    .line 307
    iget p4, p1, Landroid/graphics/Point;->x:I

    .line 309
    iget v0, p1, Landroid/graphics/Point;->y:I

    .line 311
    invoke-virtual {p2, p4, v0}, Landroid/view/SurfaceControl;->resize(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    goto :goto_3

    .line 316
    :catch_0
    move-exception p2

    .line 317
    sget-object p4, Lcom/android/keyguard/KeyguardEditorHelper;->TAG:Ljava/lang/String;

    .line 318
    const-string v0, "resize fail"

    .line 320
    invoke-static {p4, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 322
    :cond_10
    :goto_3
    iget-object p2, p0, Lcom/android/keyguard/KeyguardEditorHelper$KeyguardEditorCallback;->this$0:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 325
    invoke-static {p2, p3}, Lcom/android/keyguard/KeyguardEditorHelper;->-$$Nest$minitAnimationParams(Lcom/android/keyguard/KeyguardEditorHelper;Landroid/os/Bundle;)V

    .line 327
    iget-object p2, p0, Lcom/android/keyguard/KeyguardEditorHelper$KeyguardEditorCallback;->this$0:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 330
    iget-object p3, p2, Lcom/android/keyguard/KeyguardEditorHelper;->mMiuiNotificationPanelViewController:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 332
    iget-object p3, p3, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 334
    iget-object p2, p2, Lcom/android/keyguard/KeyguardEditorHelper;->mFinalScaleXWithShowBouncer:Ljava/lang/Float;

    .line 336
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 338
    move-result p2

    .line 341
    iget p4, p1, Landroid/graphics/Point;->x:I

    .line 342
    int-to-float p4, p4

    .line 344
    mul-float/2addr p4, p2

    .line 345
    const/high16 v0, 0x3f800000    # 1.0f

    .line 346
    sub-float/2addr v0, p2

    .line 348
    const/high16 v2, 0x40000000    # 2.0f

    .line 349
    div-float/2addr v0, v2

    .line 351
    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 352
    int-to-float p1, p1

    .line 354
    mul-float/2addr v0, p1

    .line 355
    iget-object p1, p0, Lcom/android/keyguard/KeyguardEditorHelper$KeyguardEditorCallback;->this$0:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 356
    iget-object p1, p1, Lcom/android/keyguard/KeyguardEditorHelper;->mFinalTranslationYWithShowBouncer:Ljava/lang/Float;

    .line 358
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 360
    move-result p1

    .line 363
    add-float/2addr p1, v0

    .line 364
    iget-object v0, p0, Lcom/android/keyguard/KeyguardEditorHelper$KeyguardEditorCallback;->this$0:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 365
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardEditorHelper;->getEditorSurfaceControl()Landroid/view/SurfaceControl;

    .line 367
    move-result-object v0

    .line 370
    invoke-static {p3, p4, p1, v0}, Lcom/android/systemui/statusbar/phone/CustomValueAnim;->animKeyguardEditor(Lcom/android/systemui/shade/NotificationPanelView;FFLandroid/view/SurfaceControl;)V

    .line 371
    invoke-virtual {p3, p2}, Landroid/view/View;->setScaleX(F)V

    .line 374
    invoke-virtual {p3, p2}, Landroid/view/View;->setScaleY(F)V

    .line 377
    iget-object p0, p0, Lcom/android/keyguard/KeyguardEditorHelper$KeyguardEditorCallback;->this$0:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 380
    iget-object p0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mFinalTranslationYWithShowBouncer:Ljava/lang/Float;

    .line 382
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    .line 384
    move-result p0

    .line 387
    invoke-virtual {p3, p0}, Landroid/view/View;->setTranslationY(F)V

    .line 388
    goto :goto_5

    .line 391
    :cond_11
    const-string/jumbo p0, "templateData"

    .line 392
    invoke-virtual {p3, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 395
    move-result-object p0

    .line 398
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 399
    move-result p1

    .line 402
    if-nez p1, :cond_12

    .line 403
    :try_start_1
    new-instance p1, Lcom/google/gson/Gson;

    .line 405
    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    .line 407
    new-instance p2, Lorg/json/JSONObject;

    .line 410
    invoke-direct {p2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 412
    const-string p3, "clockInfo"

    .line 415
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 417
    move-result-object p2

    .line 420
    const-class p3, Lcom/miui/clock/module/ClockBean;

    .line 421
    invoke-virtual {p1, p3, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    .line 423
    move-result-object p1

    .line 426
    check-cast p1, Lcom/miui/clock/module/ClockBean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 427
    goto :goto_4

    .line 429
    :catch_1
    move-exception p1

    .line 430
    sget-object p2, Lcom/android/keyguard/KeyguardEditorHelper;->TAG:Ljava/lang/String;

    .line 431
    const-string p3, "getClockBean fail, msg = "

    .line 433
    invoke-static {p3, p1, p2}, Lcom/android/bluetooth/ble/app/ShareNetwork$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 435
    const/4 p1, 0x0

    .line 438
    :goto_4
    const-class p2, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 439
    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 441
    move-result-object p2

    .line 444
    check-cast p2, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 445
    invoke-virtual {p2, p0, p1}, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->onLockScreenInfoChange(Ljava/lang/String;Lcom/miui/clock/module/ClockBean;)V

    .line 447
    goto :goto_5

    .line 450
    :cond_12
    const-string/jumbo p0, "templateData is empty"

    .line 451
    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_13
    :goto_5
    return v1

    .line 457
    :cond_14
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 458
    return v1

    .line 461
    :sswitch_data_0
    .sparse-switch
        -0x6c33537f -> :sswitch_3
        -0x36fde36f -> :sswitch_2
        0x48a54e75 -> :sswitch_1
        0x5f1e0bba -> :sswitch_0
    .end sparse-switch
    .line 462
.end method
