.class public final synthetic Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$$ExternalSyntheticLambda0;->f$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget v1, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    const-string v2, "MiuiGxzwAnimView"

    .line 6
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    packed-switch v1, :pswitch_data_0

    .line 10
    goto/16 :goto_b

    .line 13
    :pswitch_0
    iget-object v0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$$ExternalSyntheticLambda0;->f$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView;

    .line 15
    iget-object v0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView;->mMiuiGxzwAnimView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;

    .line 17
    sget v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->$r8$clinit:I

    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    const-string/jumbo v1, "startFalseAnim"

    .line 24
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iget-boolean v1, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mDozing:Z

    .line 30
    if-nez v1, :cond_0

    .line 32
    iget-boolean v1, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mLightLockWallpaperGxzw:Z

    .line 34
    if-eqz v1, :cond_0

    .line 36
    move v1, v4

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move v1, v3

    .line 40
    :goto_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 41
    move-result-object v2

    .line 44
    const v5, 0x7f130437    # @string/fingerprint_try_again_text 'Try again'

    .line 45
    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 48
    move-result-object v2

    .line 51
    iget-object v5, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mMiuiGxzwAnimManager:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager;

    .line 52
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 54
    move-result-object v6

    .line 57
    invoke-virtual {v5, v6}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager;->getFalseTipTranslationY(Landroid/content/Context;)I

    .line 58
    move-result v5

    .line 61
    int-to-float v5, v5

    .line 62
    invoke-virtual {v0, v5, v2, v1}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->startTipAnim(FLjava/lang/String;Z)V

    .line 63
    iget-object v1, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mMiuiGxzwAnimManager:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager;

    .line 66
    iget v2, v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager;->mGxzwAnimType:I

    .line 68
    if-nez v2, :cond_1

    .line 70
    goto/16 :goto_8

    .line 72
    :cond_1
    iget-boolean v13, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mDozing:Z

    .line 74
    iget-object v5, v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager;->mAnimItemMap:Ljava/util/Map;

    .line 76
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    move-result-object v2

    .line 81
    check-cast v5, Ljava/util/HashMap;

    .line 82
    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    move-result-object v2

    .line 87
    check-cast v2, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimItem;

    .line 88
    if-nez v2, :cond_2

    .line 90
    const/16 v16, 0x0

    .line 92
    const/4 v15, 0x0

    .line 94
    const/16 v24, 0x0

    .line 95
    const/16 v18, 0x1e

    .line 97
    new-instance v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;

    .line 99
    move-object v14, v1

    .line 101
    move/from16 v17, v24

    .line 102
    move/from16 v19, v24

    .line 104
    move/from16 v20, v24

    .line 106
    move/from16 v21, v24

    .line 108
    move/from16 v22, v24

    .line 110
    move/from16 v23, v24

    .line 112
    invoke-direct/range {v14 .. v24}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;-><init>([IIZIIIZZII)V

    .line 114
    goto/16 :goto_7

    .line 117
    :cond_2
    iget-boolean v5, v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager;->mLightWallpaperGxzw:Z

    .line 119
    if-eqz v5, :cond_3

    .line 121
    iget-boolean v5, v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager;->mBouncer:Z

    .line 123
    if-nez v5, :cond_3

    .line 125
    move v5, v4

    .line 127
    goto :goto_1

    .line 128
    :cond_3
    move v5, v3

    .line 129
    :goto_1
    if-eqz v5, :cond_4

    .line 130
    iget-boolean v5, v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager;->mKeyguardAuthen:Z

    .line 132
    if-eqz v5, :cond_4

    .line 134
    move v5, v4

    .line 136
    goto :goto_2

    .line 137
    :cond_4
    move v5, v3

    .line 138
    :goto_2
    if-eqz v13, :cond_5

    .line 139
    iget-object v2, v2, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimItem;->mAodFalse:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimRes;

    .line 141
    goto :goto_3

    .line 143
    :cond_5
    if-eqz v5, :cond_6

    .line 144
    iget-object v2, v2, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimItem;->mLightFalse:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimRes;

    .line 146
    goto :goto_3

    .line 148
    :cond_6
    iget-object v2, v2, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimItem;->mNormalFalse:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimRes;

    .line 149
    :goto_3
    iget-boolean v5, v2, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimRes;->mRepeat:Z

    .line 151
    iget-object v5, v2, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimRes;->mRes:[I

    .line 153
    iget-object v6, v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager;->mMiuiGxzwFrameAnimation:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;

    .line 155
    iget-object v7, v6, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;->mDrawRunnable:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;

    .line 157
    if-eqz v7, :cond_7

    .line 159
    monitor-enter v7

    .line 161
    :try_start_0
    iget-boolean v8, v7, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mDrawing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    monitor-exit v7

    .line 164
    if-eqz v8, :cond_7

    .line 165
    move v7, v4

    .line 167
    goto :goto_4

    .line 168
    :catchall_0
    move-exception v0

    .line 169
    move-object v1, v0

    .line 170
    monitor-exit v7

    .line 171
    throw v1

    .line 172
    :cond_7
    move v7, v3

    .line 173
    :goto_4
    if-eqz v7, :cond_8

    .line 174
    iget-object v6, v6, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;->mDrawRunnable:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;

    .line 176
    iget v6, v6, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mCurrentPosition:I

    .line 178
    goto :goto_5

    .line 180
    :cond_8
    move v6, v3

    .line 181
    :goto_5
    add-int/2addr v6, v4

    .line 182
    array-length v4, v5

    .line 183
    rem-int/2addr v6, v4

    .line 184
    array-length v4, v5

    .line 185
    sub-int/2addr v4, v6

    .line 186
    add-int/lit8 v7, v4, 0x1

    .line 187
    new-array v7, v7, [I

    .line 189
    :goto_6
    if-ge v3, v4, :cond_9

    .line 191
    add-int v8, v6, v3

    .line 193
    array-length v9, v5

    .line 195
    rem-int/2addr v8, v9

    .line 196
    aget v8, v5, v8

    .line 197
    aput v8, v7, v3

    .line 199
    add-int/lit8 v3, v3, 0x1

    .line 201
    goto :goto_6

    .line 203
    :cond_9
    invoke-virtual {v1, v13}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager;->getFingerIconResource(Z)I

    .line 204
    move-result v1

    .line 207
    aput v1, v7, v4

    .line 208
    const/4 v8, 0x0

    .line 210
    const/4 v1, 0x0

    .line 211
    const/4 v12, 0x0

    .line 212
    iget v9, v2, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimRes;->mFrameInterval:I

    .line 213
    const/4 v14, 0x0

    .line 215
    const/4 v15, 0x0

    .line 216
    new-instance v2, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;

    .line 217
    move-object v5, v2

    .line 219
    move-object v6, v7

    .line 220
    move v7, v1

    .line 221
    move v10, v12

    .line 222
    move v11, v12

    .line 223
    invoke-direct/range {v5 .. v15}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;-><init>([IIZIIIZZII)V

    .line 224
    move-object v1, v2

    .line 227
    :goto_7
    invoke-virtual {v0, v1}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->startAnim(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;)V

    .line 228
    :goto_8
    return-void

    .line 231
    :pswitch_1
    iget-object v0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$$ExternalSyntheticLambda0;->f$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView;

    .line 232
    iget-object v0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView;->mMiuiGxzwAnimView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;

    .line 234
    sget v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->$r8$clinit:I

    .line 236
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 238
    sget-boolean v1, Lcom/miui/interfaces/IHapticFeedBack;->IS_SUPPORT_LINEAR_MOTOR_VIBRATE:Z

    .line 241
    if-eqz v1, :cond_c

    .line 243
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 245
    move-result-object v1

    .line 248
    const-string/jumbo v2, "vibrator"

    .line 249
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 252
    move-result-object v1

    .line 255
    check-cast v1, Landroid/os/Vibrator;

    .line 256
    iget-boolean v2, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mAnimFeedback:Z

    .line 258
    if-eqz v2, :cond_a

    .line 260
    if-eqz v1, :cond_a

    .line 262
    invoke-virtual {v1}, Landroid/os/Vibrator;->cancel()V

    .line 264
    :cond_a
    const-class v1, Lcom/miui/interfaces/IHapticFeedBack;

    .line 267
    invoke-static {v1}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 269
    move-result-object v2

    .line 272
    check-cast v2, Lcom/miui/interfaces/IHapticFeedBack;

    .line 273
    check-cast v2, Lcom/miui/systemui/functions/HapticFeedBackImpl;

    .line 275
    const/16 v4, 0xd2

    .line 277
    invoke-virtual {v2, v4}, Lcom/miui/systemui/functions/HapticFeedBackImpl;->isSupportV2HapticFeedback(I)Z

    .line 279
    move-result v2

    .line 282
    if-eqz v2, :cond_b

    .line 283
    invoke-static {v1}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 285
    move-result-object v1

    .line 288
    check-cast v1, Lcom/miui/interfaces/IHapticFeedBack;

    .line 289
    iget-object v2, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mSystemUIHandler:Landroid/os/Handler;

    .line 291
    check-cast v1, Lcom/miui/systemui/functions/HapticFeedBackImpl;

    .line 293
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 295
    new-instance v5, Lcom/miui/systemui/functions/HapticFeedBackImpl$$ExternalSyntheticLambda0;

    .line 298
    invoke-direct {v5, v1, v4}, Lcom/miui/systemui/functions/HapticFeedBackImpl$$ExternalSyntheticLambda0;-><init>(Lcom/miui/systemui/functions/HapticFeedBackImpl;I)V

    .line 300
    invoke-virtual {v1, v2, v5}, Lcom/miui/systemui/functions/HapticFeedBackImpl;->postToBgThreadIfNeed(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 303
    goto :goto_9

    .line 306
    :cond_b
    invoke-static {v1}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 307
    move-result-object v1

    .line 310
    check-cast v1, Lcom/miui/interfaces/IHapticFeedBack;

    .line 311
    const/4 v5, -0x1

    .line 313
    const/16 v6, 0xa6

    .line 314
    const-string v7, "mesh_normal"

    .line 316
    const/4 v8, 0x0

    .line 318
    iget-object v9, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mSystemUIHandler:Landroid/os/Handler;

    .line 319
    move-object v4, v1

    .line 321
    check-cast v4, Lcom/miui/systemui/functions/HapticFeedBackImpl;

    .line 322
    invoke-virtual/range {v4 .. v9}, Lcom/miui/systemui/functions/HapticFeedBackImpl;->extExtHapticFeedback(IILjava/lang/String;ILandroid/os/Handler;)V

    .line 324
    :goto_9
    iput-boolean v3, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mAnimFeedback:Z

    .line 327
    :cond_c
    return-void

    .line 329
    :pswitch_2
    iget-object v0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$$ExternalSyntheticLambda0;->f$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView;

    .line 330
    iget-object v0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView;->mMiuiGxzwAnimView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;

    .line 332
    sget v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->$r8$clinit:I

    .line 334
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 336
    const-string/jumbo v1, "startRecognizingAnim"

    .line 339
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object v1, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mMiuiGxzwAnimManager:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager;

    .line 345
    iget v1, v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager;->mGxzwAnimType:I

    .line 347
    if-nez v1, :cond_d

    .line 349
    goto :goto_a

    .line 351
    :cond_d
    sget-object v2, Lcom/miui/utils/BoostHelper;->sInjector:Lcom/miui/utils/BoostHelper;

    .line 352
    const-wide/16 v3, 0x3e8

    .line 354
    const-class v1, Lmiui/stub/MiuiStub$9;

    .line 356
    invoke-static {v1}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 358
    move-result-object v1

    .line 361
    check-cast v1, Lmiui/stub/MiuiStub$9;

    .line 362
    iget-object v1, v1, Lmiui/stub/MiuiStub$9;->this$0:Lmiui/stub/MiuiStub;

    .line 364
    iget-object v1, v1, Lmiui/stub/MiuiStub;->mSysUIProvider:Lmiui/stub/MiuiStub$SysUIProvider;

    .line 366
    iget-object v1, v1, Lmiui/stub/MiuiStub$SysUIProvider;->mCentralSurfaces:Ldagger/Lazy;

    .line 368
    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 370
    move-result-object v1

    .line 373
    check-cast v1, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 374
    check-cast v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 376
    iget-object v5, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationShadeWindowView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    .line 378
    const/4 v6, 0x1

    .line 380
    invoke-static {}, Landroid/os/Process;->myTid()I

    .line 381
    move-result v7

    .line 384
    invoke-virtual/range {v2 .. v7}, Lcom/miui/utils/BoostHelper;->boost(JLandroid/view/View;II)V

    .line 385
    iget-object v1, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mMiuiGxzwAnimManager:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager;

    .line 388
    iget-boolean v2, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mDozing:Z

    .line 390
    invoke-virtual {v1, v2}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager;->getRecognizingAnimArgs(Z)Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;

    .line 392
    move-result-object v1

    .line 395
    invoke-virtual {v0, v1}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->startAnim(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;)V

    .line 396
    iget-object v0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mMiuiGxzwTipView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwTipView;

    .line 399
    invoke-virtual {v0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwTipView;->stopTipAnim()V

    .line 401
    :goto_a
    return-void

    .line 404
    :pswitch_3
    iget-object v0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$$ExternalSyntheticLambda0;->f$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView;

    .line 405
    iget-object v0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView;->mMiuiGxzwAnimView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;

    .line 407
    sget v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->$r8$clinit:I

    .line 409
    iget-object v0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mMiuiGxzwFrameAnimation:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;

    .line 411
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 413
    const-string v1, "MiuiGxzwFrameAnimation"

    .line 416
    const-string v2, "clearRecognizingAnim"

    .line 418
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget-object v0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;->mGxzwAnimCacheBitmapHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 423
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 425
    return-void

    .line 428
    :pswitch_4
    iget-object v0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$$ExternalSyntheticLambda0;->f$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView;

    .line 429
    iget-object v0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView;->mMiuiGxzwAnimView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;

    .line 431
    sget v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->$r8$clinit:I

    .line 433
    iget-object v1, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mMiuiGxzwFrameAnimation:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;

    .line 435
    invoke-virtual {v1, v3}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;->stopAnimation(Z)V

    .line 437
    iget-object v0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mMiuiGxzwTipView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwTipView;

    .line 440
    invoke-virtual {v0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwTipView;->stopTipAnim()V

    .line 442
    return-void

    .line 445
    :pswitch_5
    iget-object v0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$$ExternalSyntheticLambda0;->f$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView;

    .line 446
    iget-object v0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView;->mMiuiGxzwAnimView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;

    .line 448
    iget-object v0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mMiuiGxzwTipView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwTipView;

    .line 450
    invoke-virtual {v0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwTipView;->stopTipAnim()V

    .line 452
    return-void

    .line 455
    :pswitch_6
    iget-object v0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$$ExternalSyntheticLambda0;->f$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView;

    .line 456
    iget-object v0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView;->mMiuiGxzwAnimView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;

    .line 458
    iput-boolean v3, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mDozeScreenOn:Z

    .line 460
    iput-boolean v3, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mDozingIconAnimDone:Z

    .line 462
    iput-boolean v3, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mDozing:Z

    .line 464
    iget-object v1, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mMiuiGxzwTipView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwTipView;

    .line 466
    invoke-virtual {v1}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwTipView;->stopTipAnim()V

    .line 468
    invoke-static {}, Lcom/miui/keyguard/biometrics/fod/MiuiFingerPrintFactory;->getFingerPrintManager()Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;

    .line 471
    move-result-object v1

    .line 474
    invoke-interface {v1}, Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;->isUnlockByGxzw()Z

    .line 475
    move-result v1

    .line 478
    if-nez v1, :cond_e

    .line 479
    iget-boolean v1, v0, Lcom/miui/keyguard/biometrics/fod/GxzwNoRotateFrameLayout;->mKeyguardAuthen:Z

    .line 481
    if-eqz v1, :cond_e

    .line 483
    invoke-virtual {v0, v3}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->drawFingerprintIcon(Z)V

    .line 485
    :cond_e
    return-void

    .line 488
    :pswitch_7
    iget-object v0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$$ExternalSyntheticLambda0;->f$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView;

    .line 489
    iget-object v0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView;->mMiuiGxzwAnimView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;

    .line 491
    iget-object v1, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mMiuiGxzwTipView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwTipView;

    .line 493
    invoke-virtual {v1}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwTipView;->stopTipAnim()V

    .line 495
    iget-boolean v1, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mDozing:Z

    .line 498
    invoke-virtual {v0, v1}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->drawFingerprintIcon(Z)V

    .line 500
    return-void

    .line 503
    :pswitch_8
    iget-object v0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$$ExternalSyntheticLambda0;->f$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView;

    .line 504
    iget-object v0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView;->mMiuiGxzwAnimView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;

    .line 506
    iput-boolean v4, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mDozing:Z

    .line 508
    iget-object v1, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mMiuiGxzwFrameAnimation:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;

    .line 510
    invoke-virtual {v1, v3}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;->stopAnimation(Z)V

    .line 512
    iget-object v1, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mMiuiGxzwTipView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwTipView;

    .line 515
    invoke-virtual {v1}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwTipView;->stopTipAnim()V

    .line 517
    const-class v1, Lmiui/stub/MiuiStub$15;

    .line 520
    invoke-static {v1}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 522
    move-result-object v2

    .line 525
    check-cast v2, Lmiui/stub/MiuiStub$15;

    .line 526
    iget-object v2, v2, Lmiui/stub/MiuiStub$15;->this$0:Lmiui/stub/MiuiStub;

    .line 528
    iget-object v2, v2, Lmiui/stub/MiuiStub;->mMiuiModuleProvider:Lmiui/stub/MiuiStub$MiuiModuleProvider;

    .line 530
    iget-object v2, v2, Lmiui/stub/MiuiStub$MiuiModuleProvider;->mKeyguardCommonSettingObserver:Ldagger/Lazy;

    .line 532
    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 534
    move-result-object v2

    .line 537
    check-cast v2, Lcom/android/keyguard/KeyguardCommonSettingObserver;

    .line 538
    iget-boolean v2, v2, Lcom/android/keyguard/KeyguardCommonSettingObserver;->aodUsingSuperWallpaperStyle:Z

    .line 540
    if-nez v2, :cond_f

    .line 542
    invoke-static {v1}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 544
    move-result-object v1

    .line 547
    check-cast v1, Lmiui/stub/MiuiStub$15;

    .line 548
    iget-object v1, v1, Lmiui/stub/MiuiStub$15;->this$0:Lmiui/stub/MiuiStub;

    .line 550
    iget-object v1, v1, Lmiui/stub/MiuiStub;->mMiuiModuleProvider:Lmiui/stub/MiuiStub$MiuiModuleProvider;

    .line 552
    iget-object v1, v1, Lmiui/stub/MiuiStub$MiuiModuleProvider;->mKeyguardCommonSettingObserver:Ldagger/Lazy;

    .line 554
    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 556
    move-result-object v1

    .line 559
    check-cast v1, Lcom/android/keyguard/KeyguardCommonSettingObserver;

    .line 560
    iget-boolean v1, v1, Lcom/android/keyguard/KeyguardCommonSettingObserver;->isLinkageState:Z

    .line 562
    if-eqz v1, :cond_10

    .line 564
    :cond_f
    iput-boolean v4, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mDozingIconAnimDone:Z

    .line 566
    :cond_10
    iget-boolean v1, v0, Lcom/miui/keyguard/biometrics/fod/GxzwNoRotateFrameLayout;->mKeyguardAuthen:Z

    .line 568
    if-eqz v1, :cond_11

    .line 570
    iget-boolean v1, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mDozing:Z

    .line 572
    invoke-virtual {v0, v1}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->drawFingerprintIcon(Z)V

    .line 574
    invoke-virtual {v0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->updateDozingIconAnim()V

    .line 577
    :cond_11
    return-void

    .line 580
    :goto_b
    iget-object v0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$$ExternalSyntheticLambda0;->f$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView;

    .line 581
    iget-object v0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView;->mMiuiGxzwAnimView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;

    .line 583
    iput-boolean v3, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mAnimFeedback:Z

    .line 585
    return-void

    .line 587
    :pswitch_data_0
    .packed-switch 0x0
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
    .line 588
.end method
