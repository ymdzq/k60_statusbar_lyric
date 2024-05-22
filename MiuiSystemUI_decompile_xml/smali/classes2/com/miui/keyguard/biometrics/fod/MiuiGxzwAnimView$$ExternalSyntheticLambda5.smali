.class public final synthetic Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    const-class v1, Lmiui/stub/MiuiStub$16;

    .line 4
    const-class v2, Lmiui/stub/MiuiStub$13;

    .line 6
    const-class v3, Lmiui/stub/MiuiStub$3;

    .line 8
    packed-switch v0, :pswitch_data_0

    .line 10
    goto/16 :goto_1

    .line 13
    :pswitch_0
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    .line 15
    check-cast p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;

    .line 17
    sget v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->$r8$clinit:I

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    invoke-static {v1}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 27
    check-cast v0, Lmiui/stub/MiuiStub$16;

    .line 28
    iget-object v0, v0, Lmiui/stub/MiuiStub$16;->this$0:Lmiui/stub/MiuiStub;

    .line 30
    iget-object v0, v0, Lmiui/stub/MiuiStub;->mMiuiModuleProvider:Lmiui/stub/MiuiStub$MiuiModuleProvider;

    .line 32
    iget-object v0, v0, Lmiui/stub/MiuiStub$MiuiModuleProvider;->mMiuiKeyguardWallPaperManager:Ldagger/Lazy;

    .line 34
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 39
    check-cast v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 40
    iget-boolean v0, v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mFingerPrintIsDeep:Z

    .line 42
    xor-int/lit8 v0, v0, 0x1

    .line 44
    invoke-virtual {p0, v0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->onWallpaperChange(Z)V

    .line 46
    return-void

    .line 49
    :pswitch_1
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    .line 50
    check-cast p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;

    .line 52
    sget v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->$r8$clinit:I

    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    invoke-static {v3}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 59
    move-result-object v0

    .line 62
    check-cast v0, Lmiui/stub/MiuiStub$3;

    .line 63
    iget-object v3, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mKeyguardUpdateMonitorCallback:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal$1;

    .line 65
    invoke-virtual {v0, v3}, Lmiui/stub/MiuiStub$3;->registerCallback(Lcom/miui/sysuiinterfaces/assist/IKeyguardUpdateMonitorCallback;)V

    .line 67
    invoke-virtual {v0}, Lmiui/stub/MiuiStub$3;->isPrimaryBouncerIsOrWillBeShowing()Z

    .line 70
    move-result v0

    .line 73
    iget-object v3, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mKeyguardUpdateMonitorCallback:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal$1;

    .line 74
    invoke-virtual {v3, v0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal$1;->onKeyguardBouncerStateChanged(Z)V

    .line 76
    invoke-static {v2}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 79
    move-result-object v0

    .line 82
    check-cast v0, Lmiui/stub/MiuiStub$13;

    .line 83
    iget-object v2, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mMiuiKeyguardUpdateMonitorCallback:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal$2;

    .line 85
    invoke-virtual {v0, v2}, Lmiui/stub/MiuiStub$13;->registerCallback(Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;)V

    .line 87
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mMiuiKeyguardUpdateMonitorCallback:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal$2;

    .line 90
    invoke-static {v1}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 92
    move-result-object v1

    .line 95
    check-cast v1, Lmiui/stub/MiuiStub$16;

    .line 96
    iget-object v1, v1, Lmiui/stub/MiuiStub$16;->this$0:Lmiui/stub/MiuiStub;

    .line 98
    iget-object v1, v1, Lmiui/stub/MiuiStub;->mMiuiModuleProvider:Lmiui/stub/MiuiStub$MiuiModuleProvider;

    .line 100
    iget-object v1, v1, Lmiui/stub/MiuiStub$MiuiModuleProvider;->mMiuiKeyguardWallPaperManager:Ldagger/Lazy;

    .line 102
    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 104
    move-result-object v1

    .line 107
    check-cast v1, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 108
    iget-boolean v1, v1, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mIsLightLockWallpaper:Z

    .line 110
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mMainHandler:Landroid/os/Handler;

    .line 115
    new-instance v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$$ExternalSyntheticLambda5;

    .line 117
    const/4 v2, 0x5

    .line 119
    invoke-direct {v1, v2, p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;)V

    .line 120
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 123
    return-void

    .line 126
    :pswitch_2
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    .line 127
    check-cast p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;

    .line 129
    sget v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->$r8$clinit:I

    .line 131
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    invoke-static {v3}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 136
    move-result-object v0

    .line 139
    check-cast v0, Lmiui/stub/MiuiStub$3;

    .line 140
    iget-object v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mKeyguardUpdateMonitorCallback:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal$1;

    .line 142
    invoke-virtual {v0, v1}, Lmiui/stub/MiuiStub$3;->removeCallback(Lcom/miui/sysuiinterfaces/assist/IKeyguardUpdateMonitorCallback;)V

    .line 144
    invoke-static {v2}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 147
    move-result-object v0

    .line 150
    check-cast v0, Lmiui/stub/MiuiStub$13;

    .line 151
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mMiuiKeyguardUpdateMonitorCallback:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal$2;

    .line 153
    iget-object v0, v0, Lmiui/stub/MiuiStub$13;->this$0:Lmiui/stub/MiuiStub;

    .line 155
    iget-object v0, v0, Lmiui/stub/MiuiStub;->mMiuiModuleProvider:Lmiui/stub/MiuiStub$MiuiModuleProvider;

    .line 157
    iget-object v0, v0, Lmiui/stub/MiuiStub$MiuiModuleProvider;->mKeyguardUpdateMonitorInjector:Ldagger/Lazy;

    .line 159
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 161
    move-result-object v0

    .line 164
    check-cast v0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 165
    invoke-virtual {v0, p0}, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->removeCallback(Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;)V

    .line 167
    return-void

    .line 170
    :pswitch_3
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    .line 171
    check-cast p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;

    .line 173
    sget v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->$r8$clinit:I

    .line 175
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mMiuiGxzwFrameAnimation:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;

    .line 177
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 179
    const-string v0, "MiuiGxzwFrameAnimation"

    .line 182
    const-string v1, "clearRecognizingAnim"

    .line 184
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;->mGxzwAnimCacheBitmapHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 189
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 191
    return-void

    .line 194
    :pswitch_4
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    .line 195
    check-cast p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;

    .line 197
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/GxzwWindowFrameLayout;->removeViewFromWindow()V

    .line 199
    return-void

    .line 202
    :pswitch_5
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    .line 203
    check-cast p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;

    .line 205
    sget v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->$r8$clinit:I

    .line 207
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 209
    const-class v0, Lcom/miui/interfaces/IHapticFeedBack;

    .line 212
    invoke-static {v0}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 214
    move-result-object v1

    .line 217
    check-cast v1, Lcom/miui/interfaces/IHapticFeedBack;

    .line 218
    const/16 v2, 0xa5

    .line 220
    check-cast v1, Lcom/miui/systemui/functions/HapticFeedBackImpl;

    .line 222
    invoke-virtual {v1, v2}, Lcom/miui/systemui/functions/HapticFeedBackImpl;->isSupportExtHapticFeedback(I)Z

    .line 224
    move-result v1

    .line 227
    const-string/jumbo v2, "vibrator"

    .line 228
    if-eqz v1, :cond_1

    .line 231
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 233
    move-result-object v1

    .line 236
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 237
    move-result-object v1

    .line 240
    check-cast v1, Landroid/os/Vibrator;

    .line 241
    iget-boolean v2, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mAnimFeedback:Z

    .line 243
    if-eqz v2, :cond_0

    .line 245
    if-eqz v1, :cond_0

    .line 247
    invoke-virtual {v1}, Landroid/os/Vibrator;->cancel()V

    .line 249
    :cond_0
    invoke-static {v0}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 252
    move-result-object v0

    .line 255
    check-cast v0, Lcom/miui/interfaces/IHapticFeedBack;

    .line 256
    const/16 v2, 0xcf

    .line 258
    const/16 v3, 0xa5

    .line 260
    const/4 v4, 0x0

    .line 262
    const/4 v5, 0x0

    .line 263
    iget-object v6, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mSystemUIHandler:Landroid/os/Handler;

    .line 264
    move-object v1, v0

    .line 266
    check-cast v1, Lcom/miui/systemui/functions/HapticFeedBackImpl;

    .line 267
    invoke-virtual/range {v1 .. v6}, Lcom/miui/systemui/functions/HapticFeedBackImpl;->extExtHapticFeedback(IILjava/lang/String;ILandroid/os/Handler;)V

    .line 269
    const/4 v0, 0x0

    .line 272
    iput-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mAnimFeedback:Z

    .line 273
    goto :goto_0

    .line 275
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 276
    move-result-object p0

    .line 279
    sget v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ICON_X:I

    .line 280
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 282
    move-result-object p0

    .line 285
    check-cast p0, Landroid/os/Vibrator;

    .line 286
    if-eqz p0, :cond_2

    .line 288
    const-wide/16 v0, 0x18

    .line 290
    invoke-virtual {p0, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    .line 292
    :cond_2
    :goto_0
    return-void

    .line 295
    :goto_1
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    .line 296
    check-cast p0, Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;

    .line 298
    invoke-interface {p0}, Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;->releaseDrawWackLock()V

    .line 300
    return-void

    .line 303
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 304
.end method
