.class public final Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljavax/inject/Provider;


# instance fields
.field public final id:I

.field public final tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;


# direct methods
.method public constructor <init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 5
    iput p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->id:I

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->id:I

    .line 2
    div-int/lit8 v0, v0, 0x64

    .line 4
    if-eqz v0, :cond_1

    .line 6
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->get1()Ljava/lang/Object;

    .line 11
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    .line 16
    iget p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->id:I

    .line 18
    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(I)V

    .line 20
    throw v0

    .line 23
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->get0()Ljava/lang/Object;

    .line 24
    move-result-object p0

    .line 27
    return-object p0
    .line 28
.end method

.method public final get0()Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->id:I

    .line 2
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    new-instance v0, Ljava/lang/AssertionError;

    .line 8
    iget p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->id:I

    .line 10
    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(I)V

    .line 12
    throw v0

    .line 15
    :pswitch_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 16
    move-result-object p0

    .line 19
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 20
    return-object p0

    .line 23
    :pswitch_1
    const-string p0, "batterystats"

    .line 24
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 26
    move-result-object p0

    .line 29
    invoke-static {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    .line 30
    move-result-object p0

    .line 33
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 34
    return-object p0

    .line 37
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 38
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 40
    const-class v0, Landroid/telecom/TelecomManager;

    .line 42
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 44
    move-result-object p0

    .line 47
    check-cast p0, Landroid/telecom/TelecomManager;

    .line 48
    return-object p0

    .line 50
    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 51
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 53
    const-class v0, Landroid/view/accessibility/CaptioningManager;

    .line 55
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 57
    move-result-object p0

    .line 60
    check-cast p0, Landroid/view/accessibility/CaptioningManager;

    .line 61
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 63
    return-object p0

    .line 66
    :pswitch_4
    const-string p0, "audio"

    .line 67
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 69
    move-result-object p0

    .line 72
    invoke-static {p0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    .line 73
    move-result-object p0

    .line 76
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 77
    return-object p0

    .line 80
    :pswitch_5
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 81
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 83
    const-class v0, Landroid/app/role/RoleManager;

    .line 85
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 87
    move-result-object p0

    .line 90
    check-cast p0, Landroid/app/role/RoleManager;

    .line 91
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 93
    return-object p0

    .line 96
    :pswitch_6
    new-instance v0, Lcom/android/systemui/plugins/PluginDependencyProvider;

    .line 97
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 99
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->providesPluginManagerProvider:Ljavax/inject/Provider;

    .line 101
    invoke-static {p0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 103
    move-result-object p0

    .line 106
    invoke-direct {v0, p0}, Lcom/android/systemui/plugins/PluginDependencyProvider;-><init>(Ldagger/Lazy;)V

    .line 107
    return-object v0

    .line 110
    :pswitch_7
    new-instance p0, Lcom/android/systemui/controlcenter/phone/controls/MiPlayPluginManager;

    .line 111
    invoke-direct {p0}, Lcom/android/systemui/controlcenter/phone/controls/MiPlayPluginManager;-><init>()V

    .line 113
    return-object p0

    .line 116
    :pswitch_8
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 117
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 119
    const-class v0, Landroid/bluetooth/BluetoothManager;

    .line 121
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 123
    move-result-object p0

    .line 126
    check-cast p0, Landroid/bluetooth/BluetoothManager;

    .line 127
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 129
    return-object p0

    .line 132
    :pswitch_9
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 133
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideBluetoothManagerProvider:Ljavax/inject/Provider;

    .line 135
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 137
    move-result-object p0

    .line 140
    check-cast p0, Landroid/bluetooth/BluetoothManager;

    .line 141
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 143
    move-result-object p0

    .line 146
    return-object p0

    .line 147
    :pswitch_a
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 148
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 150
    const-class v0, Landroid/hardware/display/ColorDisplayManager;

    .line 152
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 154
    move-result-object p0

    .line 157
    check-cast p0, Landroid/hardware/display/ColorDisplayManager;

    .line 158
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 160
    return-object p0

    .line 163
    :pswitch_b
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 164
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 166
    const-class v0, Landroid/safetycenter/SafetyCenterManager;

    .line 168
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 170
    move-result-object p0

    .line 173
    check-cast p0, Landroid/safetycenter/SafetyCenterManager;

    .line 174
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 176
    return-object p0

    .line 179
    :pswitch_c
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 180
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 182
    const-class v0, Landroid/permission/PermissionManager;

    .line 184
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 186
    move-result-object p0

    .line 189
    check-cast p0, Landroid/permission/PermissionManager;

    .line 190
    if-eqz p0, :cond_0

    .line 192
    invoke-virtual {p0}, Landroid/permission/PermissionManager;->initializeUsageHelper()V

    .line 194
    :cond_0
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 197
    return-object p0

    .line 200
    :pswitch_d
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 201
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 203
    const-class v0, Landroid/app/AlarmManager;

    .line 205
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 207
    move-result-object p0

    .line 210
    check-cast p0, Landroid/app/AlarmManager;

    .line 211
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 213
    return-object p0

    .line 216
    :pswitch_e
    invoke-static {}, Landroid/view/CrossWindowBlurListeners;->getInstance()Landroid/view/CrossWindowBlurListeners;

    .line 217
    move-result-object p0

    .line 220
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 221
    return-object p0

    .line 224
    :pswitch_f
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 225
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 227
    const-class v0, Landroid/os/PowerExemptionManager;

    .line 229
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 231
    move-result-object p0

    .line 234
    check-cast p0, Landroid/os/PowerExemptionManager;

    .line 235
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 237
    return-object p0

    .line 240
    :pswitch_10
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 241
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 243
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideFaceManagerProvider:Ljavax/inject/Provider;

    .line 245
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 247
    move-result-object v0

    .line 250
    check-cast v0, Landroid/hardware/face/FaceManager;

    .line 251
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 253
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->providesFingerprintManagerProvider:Ljavax/inject/Provider;

    .line 255
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 257
    move-result-object p0

    .line 260
    check-cast p0, Landroid/hardware/fingerprint/FingerprintManager;

    .line 261
    const-class p0, Landroid/hardware/biometrics/BiometricManager;

    .line 263
    invoke-virtual {v1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 265
    move-result-object p0

    .line 268
    check-cast p0, Landroid/hardware/biometrics/BiometricManager;

    .line 269
    return-object p0

    .line 271
    :pswitch_11
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 272
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 274
    const-class v0, Landroid/net/NetworkScoreManager;

    .line 276
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 278
    move-result-object p0

    .line 281
    check-cast p0, Landroid/net/NetworkScoreManager;

    .line 282
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 284
    return-object p0

    .line 287
    :pswitch_12
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 288
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 290
    const-class v0, Landroid/net/wifi/WifiManager;

    .line 292
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 294
    move-result-object p0

    .line 297
    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 298
    return-object p0

    .line 300
    :pswitch_13
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 301
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 303
    const-class v0, Landroid/telephony/TelephonyManager;

    .line 305
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 307
    move-result-object p0

    .line 310
    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 311
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 313
    return-object p0

    .line 316
    :pswitch_14
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 317
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 319
    const-class v0, Landroid/net/ConnectivityManager;

    .line 321
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 323
    move-result-object p0

    .line 326
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 327
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 329
    return-object p0

    .line 332
    :pswitch_15
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 333
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 335
    const-class v0, Landroid/telephony/SubscriptionManager;

    .line 337
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 339
    move-result-object p0

    .line 342
    check-cast p0, Landroid/telephony/SubscriptionManager;

    .line 343
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 345
    return-object p0

    .line 348
    :pswitch_16
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 349
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 351
    const-class v0, Landroid/telephony/CarrierConfigManager;

    .line 353
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 355
    move-result-object p0

    .line 358
    check-cast p0, Landroid/telephony/CarrierConfigManager;

    .line 359
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 361
    return-object p0

    .line 364
    :pswitch_17
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 365
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 367
    const-class v0, Landroid/app/StatsManager;

    .line 369
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 371
    move-result-object p0

    .line 374
    check-cast p0, Landroid/app/StatsManager;

    .line 375
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 377
    return-object p0

    .line 380
    :pswitch_18
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 381
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 383
    const-class v0, Landroid/hardware/SensorPrivacyManager;

    .line 385
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 387
    move-result-object p0

    .line 390
    check-cast p0, Landroid/hardware/SensorPrivacyManager;

    .line 391
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 393
    return-object p0

    .line 396
    :pswitch_19
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 397
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 399
    const-class v0, Landroid/media/AudioManager;

    .line 401
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 403
    move-result-object p0

    .line 406
    check-cast p0, Landroid/media/AudioManager;

    .line 407
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 409
    return-object p0

    .line 412
    :pswitch_1a
    sget-object p0, Lcom/android/systemui/shared/system/PackageManagerWrapper;->sInstance:Lcom/android/systemui/shared/system/PackageManagerWrapper;

    .line 413
    return-object p0

    .line 415
    :pswitch_1b
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 416
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 418
    const-class v0, Landroid/app/KeyguardManager;

    .line 420
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 422
    move-result-object p0

    .line 425
    check-cast p0, Landroid/app/KeyguardManager;

    .line 426
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 428
    return-object p0

    .line 431
    :pswitch_1c
    new-instance p0, Lcom/android/systemui/unfold/progress/UnfoldTransitionProgressForwarder;

    .line 432
    invoke-direct {p0}, Lcom/android/systemui/unfold/progress/UnfoldTransitionProgressForwarder;-><init>()V

    .line 434
    return-object p0

    .line 437
    :pswitch_1d
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 438
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->unfoldSharedInternalModule:Lcom/android/systemui/unfold/UnfoldSharedInternalModule;

    .line 440
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->resourceUnfoldTransitionConfigProvider:Ljavax/inject/Provider;

    .line 442
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 444
    move-result-object v0

    .line 447
    check-cast v0, Lcom/android/systemui/unfold/config/ResourceUnfoldTransitionConfig;

    .line 448
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 450
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->unfoldTransitionProgressForwarderProvider:Ljavax/inject/Provider;

    .line 452
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 454
    iget-object v0, v0, Lcom/android/systemui/unfold/config/ResourceUnfoldTransitionConfig;->isEnabled$delegate:Lkotlin/Lazy;

    .line 457
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 459
    move-result-object v0

    .line 462
    check-cast v0, Ljava/lang/Boolean;

    .line 463
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 465
    move-result v0

    .line 468
    if-nez v0, :cond_1

    .line 469
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 471
    move-result-object p0

    .line 474
    goto :goto_0

    .line 475
    :cond_1
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 476
    move-result-object p0

    .line 479
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 480
    move-result-object p0

    .line 483
    :goto_0
    return-object p0

    .line 484
    :pswitch_1e
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 485
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 487
    const-class v0, Landroid/app/smartspace/SmartspaceManager;

    .line 489
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 491
    move-result-object p0

    .line 494
    check-cast p0, Landroid/app/smartspace/SmartspaceManager;

    .line 495
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 497
    return-object p0

    .line 500
    :pswitch_1f
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 501
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 503
    invoke-static {p0}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    .line 505
    move-result-object p0

    .line 508
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 509
    return-object p0

    .line 512
    :pswitch_20
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 513
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 515
    const-class v0, Landroid/os/Vibrator;

    .line 517
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 519
    move-result-object p0

    .line 522
    check-cast p0, Landroid/os/Vibrator;

    .line 523
    return-object p0

    .line 525
    :pswitch_21
    new-instance v0, Lcom/miui/systemui/CloudDataManager;

    .line 526
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 528
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 530
    invoke-direct {v0, p0}, Lcom/miui/systemui/CloudDataManager;-><init>(Landroid/content/Context;)V

    .line 532
    return-object v0

    .line 535
    :pswitch_22
    const-string p0, "dreams"

    .line 536
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 538
    move-result-object p0

    .line 541
    invoke-static {p0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    .line 542
    move-result-object p0

    .line 545
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 546
    return-object p0

    .line 549
    :pswitch_23
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 550
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 552
    const-class v0, Landroid/content/pm/ShortcutManager;

    .line 554
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 556
    move-result-object p0

    .line 559
    check-cast p0, Landroid/content/pm/ShortcutManager;

    .line 560
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 562
    return-object p0

    .line 565
    :pswitch_24
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 566
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 568
    const-class v0, Landroid/content/pm/LauncherApps;

    .line 570
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 572
    move-result-object p0

    .line 575
    check-cast p0, Landroid/content/pm/LauncherApps;

    .line 576
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 578
    return-object p0

    .line 581
    :pswitch_25
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 582
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->unfoldTransitionModule:Lcom/android/systemui/unfold/UnfoldTransitionModule;

    .line 584
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideNaturalRotationProgressProvider:Ljavax/inject/Provider;

    .line 586
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 588
    move-result-object p0

    .line 591
    check-cast p0, Ljava/util/Optional;

    .line 592
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 594
    sget-object v0, Lcom/android/systemui/unfold/UnfoldTransitionModule$providesFoldStateLogger$1;->INSTANCE$1:Lcom/android/systemui/unfold/UnfoldTransitionModule$providesFoldStateLogger$1;

    .line 597
    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    .line 599
    move-result-object p0

    .line 602
    return-object p0

    .line 603
    :pswitch_26
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 604
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->unfoldTransitionModule:Lcom/android/systemui/unfold/UnfoldTransitionModule;

    .line 606
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 608
    invoke-virtual {v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->rotationChangeProvider()Lcom/android/systemui/unfold/updates/RotationChangeProvider;

    .line 610
    move-result-object v0

    .line 613
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 614
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->unfoldTransitionProgressProvider:Ljavax/inject/Provider;

    .line 616
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 618
    move-result-object p0

    .line 621
    check-cast p0, Ljava/util/Optional;

    .line 622
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 624
    new-instance v1, Lcom/android/systemui/unfold/UnfoldTransitionModule$provideUnfoldOnlyProvider$1;

    .line 627
    const/4 v3, 0x1

    .line 629
    invoke-direct {v1, v3, v2, v0}, Lcom/android/systemui/unfold/UnfoldTransitionModule$provideUnfoldOnlyProvider$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 630
    invoke-virtual {p0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    .line 633
    move-result-object p0

    .line 636
    return-object p0

    .line 637
    :pswitch_27
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 638
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 640
    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    .line 642
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 644
    move-result-object p0

    .line 647
    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    .line 648
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 650
    return-object p0

    .line 653
    :pswitch_28
    new-instance p0, Lcom/android/systemui/util/wrapper/BuildInfo;

    .line 654
    invoke-direct {p0}, Lcom/android/systemui/util/wrapper/BuildInfo;-><init>()V

    .line 656
    return-object p0

    .line 659
    :pswitch_29
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 660
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 662
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    .line 664
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 666
    move-result-object p0

    .line 669
    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    .line 670
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 672
    return-object p0

    .line 675
    :pswitch_2a
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 676
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->frameworkServicesModule:Lcom/android/systemui/dagger/FrameworkServicesModule;

    .line 678
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 680
    const-string p0, "notification"

    .line 683
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 685
    move-result-object p0

    .line 688
    invoke-static {p0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    .line 689
    move-result-object p0

    .line 692
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 693
    return-object p0

    .line 696
    :pswitch_2b
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 697
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->frameworkServicesModule:Lcom/android/systemui/dagger/FrameworkServicesModule;

    .line 699
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 701
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 704
    move-result-object p0

    .line 707
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 708
    return-object p0

    .line 711
    :pswitch_2c
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 712
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 714
    const-class v0, Landroid/app/trust/TrustManager;

    .line 716
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 718
    move-result-object p0

    .line 721
    check-cast p0, Landroid/app/trust/TrustManager;

    .line 722
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 724
    return-object p0

    .line 727
    :pswitch_2d
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 728
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideMainLooperProvider:Ljavax/inject/Provider;

    .line 730
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 732
    move-result-object p0

    .line 735
    check-cast p0, Landroid/os/Looper;

    .line 736
    new-instance v0, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 738
    invoke-direct {v0, p0}, Lcom/android/systemui/util/concurrency/ExecutorImpl;-><init>(Landroid/os/Looper;)V

    .line 740
    return-object v0

    .line 743
    :pswitch_2e
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 744
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->frameworkServicesModule:Lcom/android/systemui/dagger/FrameworkServicesModule;

    .line 746
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 748
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 750
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 753
    move-result-object p0

    .line 756
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 757
    return-object p0

    .line 760
    :pswitch_2f
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 761
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 763
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 765
    move-result-object v0

    .line 768
    const-string v2, "android.hardware.biometrics.face"

    .line 769
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 771
    move-result v0

    .line 774
    if-eqz v0, :cond_2

    .line 775
    const-class v0, Landroid/hardware/face/FaceManager;

    .line 777
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 779
    move-result-object p0

    .line 782
    move-object v1, p0

    .line 783
    check-cast v1, Landroid/hardware/face/FaceManager;

    .line 784
    :cond_2
    return-object v1

    .line 786
    :pswitch_30
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 787
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 789
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 791
    move-result-object v0

    .line 794
    const-string v2, "android.hardware.fingerprint"

    .line 795
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 797
    move-result v0

    .line 800
    if-eqz v0, :cond_3

    .line 801
    const-class v0, Landroid/hardware/fingerprint/FingerprintManager;

    .line 803
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 805
    move-result-object p0

    .line 808
    move-object v1, p0

    .line 809
    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    .line 810
    :cond_3
    return-object v1

    .line 812
    :pswitch_31
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 813
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 815
    const-class v0, Landroid/view/WindowManager;

    .line 817
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 819
    move-result-object p0

    .line 822
    check-cast p0, Landroid/view/WindowManager;

    .line 823
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 825
    return-object p0

    .line 828
    :pswitch_32
    new-instance p0, Lcom/android/systemui/util/concurrency/ExecutionImpl;

    .line 829
    invoke-direct {p0}, Lcom/android/systemui/util/concurrency/ExecutionImpl;-><init>()V

    .line 831
    return-object p0

    .line 834
    :pswitch_33
    const-string/jumbo p0, "wallpaper"

    .line 835
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 838
    move-result-object p0

    .line 841
    invoke-static {p0}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    .line 842
    move-result-object p0

    .line 845
    return-object p0

    .line 846
    :pswitch_34
    const-string/jumbo p0, "statusbar"

    .line 847
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 850
    move-result-object p0

    .line 853
    invoke-static {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    .line 854
    move-result-object p0

    .line 857
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 858
    return-object p0

    .line 861
    :pswitch_35
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInUserTestHarness()Z

    .line 862
    move-result p0

    .line 865
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 866
    move-result-object p0

    .line 869
    return-object p0

    .line 870
    :pswitch_36
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 871
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->androidInternalsModule:Lcom/android/systemui/dagger/AndroidInternalsModule;

    .line 873
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 875
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 877
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    .line 880
    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 882
    return-object v0

    .line 885
    :pswitch_37
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    .line 886
    move-result-object p0

    .line 889
    const/16 v0, -0x100

    .line 890
    const-wide/high16 v1, 0x3fe8000000000000L    # 0.75

    .line 892
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/jank/InteractionJankMonitor;->configDebugOverlay(ID)V

    .line 894
    return-object p0

    .line 897
    :pswitch_38
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 898
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 900
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 902
    move-result-object p0

    .line 905
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 906
    return-object p0

    .line 909
    :pswitch_39
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 910
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->globalModule:Lcom/android/systemui/dagger/GlobalModule;

    .line 912
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 914
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 916
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 919
    move-result-object p0

    .line 922
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 923
    return-object p0

    .line 926
    :pswitch_3a
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 927
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->unfoldTransitionModule:Lcom/android/systemui/unfold/UnfoldTransitionModule;

    .line 929
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideDeviceStateManagerProvider:Ljavax/inject/Provider;

    .line 931
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 933
    move-result-object v0

    .line 936
    check-cast v0, Landroid/hardware/devicestate/DeviceStateManager;

    .line 937
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 939
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideApplicationContextProvider:Ljavax/inject/Provider;

    .line 941
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 943
    move-result-object v2

    .line 946
    check-cast v2, Landroid/content/Context;

    .line 947
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 949
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideMainExecutorProvider:Ljavax/inject/Provider;

    .line 951
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 953
    move-result-object p0

    .line 956
    check-cast p0, Ljava/util/concurrent/Executor;

    .line 957
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 959
    new-instance v1, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    .line 962
    invoke-direct {v1, v2}, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;-><init>(Landroid/content/Context;)V

    .line 964
    invoke-virtual {v0, p0, v1}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    .line 967
    return-object v1

    .line 970
    :pswitch_3b
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 971
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 973
    const-class v0, Landroid/os/PowerManager;

    .line 975
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 977
    move-result-object p0

    .line 980
    check-cast p0, Landroid/os/PowerManager;

    .line 981
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 983
    return-object p0

    .line 986
    :pswitch_3c
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 987
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->globalModule:Lcom/android/systemui/dagger/GlobalModule;

    .line 989
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 991
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 993
    new-instance v0, Landroid/util/DisplayMetrics;

    .line 996
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 998
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 1001
    move-result-object p0

    .line 1004
    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1005
    return-object v0

    .line 1008
    :pswitch_3d
    new-instance p0, Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager;

    .line 1009
    invoke-direct {p0}, Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager;-><init>()V

    .line 1011
    return-object p0

    .line 1014
    :pswitch_3e
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1015
    sget-object v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->ABSENT_JDK_OPTIONAL_PROVIDER:Ljavax/inject/Provider;

    .line 1017
    invoke-virtual {p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->namedListOfString()Ljava/util/List;

    .line 1019
    move-result-object p0

    .line 1022
    invoke-static {}, Lcom/android/systemui/plugins/PluginsModule_ProvidesPluginDebugFactory;->providesPluginDebug()Z

    .line 1023
    move-result v0

    .line 1026
    invoke-static {p0, v0}, Lcom/android/systemui/plugins/PluginsModule_ProvidesPluginInstanceFactoryFactory;->providesPluginInstanceFactory(Ljava/util/List;Z)Lcom/android/systemui/shared/plugins/PluginInstance$Factory;

    .line 1027
    move-result-object p0

    .line 1030
    return-object p0

    .line 1031
    :pswitch_3f
    new-instance v0, Lcom/android/systemui/plugins/PluginEnablerImpl;

    .line 1032
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1034
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 1036
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->providePackageManagerProvider:Ljavax/inject/Provider;

    .line 1038
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1040
    move-result-object p0

    .line 1043
    check-cast p0, Landroid/content/pm/PackageManager;

    .line 1044
    invoke-direct {v0, v1, p0}, Lcom/android/systemui/plugins/PluginEnablerImpl;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;)V

    .line 1046
    return-object v0

    .line 1049
    :pswitch_40
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1050
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 1052
    const-class v0, Landroid/app/NotificationManager;

    .line 1054
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1056
    move-result-object p0

    .line 1059
    check-cast p0, Landroid/app/NotificationManager;

    .line 1060
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 1062
    return-object p0

    .line 1065
    :pswitch_41
    new-instance p0, Lcom/android/systemui/util/concurrency/ThreadFactoryImpl;

    .line 1066
    invoke-direct {p0}, Lcom/android/systemui/util/concurrency/ThreadFactoryImpl;-><init>()V

    .line 1068
    invoke-static {p0}, Lcom/android/systemui/plugins/PluginsModule_ProvidesPluginExecutorFactory;->providesPluginExecutor(Lcom/android/systemui/util/concurrency/ThreadFactory;)Ljava/util/concurrent/Executor;

    .line 1071
    move-result-object p0

    .line 1074
    return-object p0

    .line 1075
    :pswitch_42
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1076
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 1078
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->providePackageManagerProvider:Ljavax/inject/Provider;

    .line 1080
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1082
    move-result-object v0

    .line 1085
    move-object v2, v0

    .line 1086
    check-cast v2, Landroid/content/pm/PackageManager;

    .line 1087
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1089
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideMainExecutorProvider:Ljavax/inject/Provider;

    .line 1091
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1093
    move-result-object v0

    .line 1096
    move-object v3, v0

    .line 1097
    check-cast v3, Ljava/util/concurrent/Executor;

    .line 1098
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1100
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->providesPluginExecutorProvider:Ljavax/inject/Provider;

    .line 1102
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1104
    move-result-object v0

    .line 1107
    move-object v4, v0

    .line 1108
    check-cast v4, Ljava/util/concurrent/Executor;

    .line 1109
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1111
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideNotificationManagerProvider:Ljavax/inject/Provider;

    .line 1113
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1115
    move-result-object v0

    .line 1118
    move-object v5, v0

    .line 1119
    check-cast v5, Landroid/app/NotificationManager;

    .line 1120
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1122
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->pluginEnablerImplProvider:Ljavax/inject/Provider;

    .line 1124
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1126
    move-result-object v0

    .line 1129
    move-object v6, v0

    .line 1130
    check-cast v6, Lcom/android/systemui/shared/plugins/PluginEnabler;

    .line 1131
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1133
    invoke-virtual {v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->namedListOfString()Ljava/util/List;

    .line 1135
    move-result-object v7

    .line 1138
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1139
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->providesPluginInstanceFactoryProvider:Ljavax/inject/Provider;

    .line 1141
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1143
    move-result-object p0

    .line 1146
    move-object v8, p0

    .line 1147
    check-cast v8, Lcom/android/systemui/shared/plugins/PluginInstance$Factory;

    .line 1148
    invoke-static/range {v1 .. v8}, Lcom/android/systemui/plugins/PluginsModule_ProvidePluginInstanceManagerFactoryFactory;->providePluginInstanceManagerFactory(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroid/app/NotificationManager;Lcom/android/systemui/shared/plugins/PluginEnabler;Ljava/util/List;Lcom/android/systemui/shared/plugins/PluginInstance$Factory;)Lcom/android/systemui/shared/plugins/PluginActionManager$Factory;

    .line 1150
    move-result-object p0

    .line 1153
    return-object p0

    .line 1154
    :pswitch_43
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1155
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 1157
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->providePluginInstanceManagerFactoryProvider:Ljavax/inject/Provider;

    .line 1159
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1161
    move-result-object v0

    .line 1164
    move-object v2, v0

    .line 1165
    check-cast v2, Lcom/android/systemui/shared/plugins/PluginActionManager$Factory;

    .line 1166
    invoke-static {}, Lcom/android/systemui/plugins/PluginsModule_ProvidesPluginDebugFactory;->providesPluginDebug()Z

    .line 1168
    move-result v3

    .line 1171
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1172
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->uncaughtExceptionPreHandlerManagerProvider:Ljavax/inject/Provider;

    .line 1174
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1176
    move-result-object v0

    .line 1179
    move-object v4, v0

    .line 1180
    check-cast v4, Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager;

    .line 1181
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1183
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->pluginEnablerImplProvider:Ljavax/inject/Provider;

    .line 1185
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1187
    move-result-object v0

    .line 1190
    move-object v5, v0

    .line 1191
    check-cast v5, Lcom/android/systemui/shared/plugins/PluginEnabler;

    .line 1192
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1194
    invoke-virtual {v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->pluginPrefs()Lcom/android/systemui/shared/plugins/PluginPrefs;

    .line 1196
    move-result-object v6

    .line 1199
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1200
    invoke-virtual {p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->namedListOfString()Ljava/util/List;

    .line 1202
    move-result-object v7

    .line 1205
    invoke-static/range {v1 .. v7}, Lcom/android/systemui/plugins/PluginsModule_ProvidesPluginManagerFactory;->providesPluginManager(Landroid/content/Context;Lcom/android/systemui/shared/plugins/PluginActionManager$Factory;ZLcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager;Lcom/android/systemui/shared/plugins/PluginEnabler;Lcom/android/systemui/shared/plugins/PluginPrefs;Ljava/util/List;)Lcom/android/systemui/plugins/PluginManager;

    .line 1206
    move-result-object p0

    .line 1209
    return-object p0

    .line 1210
    :pswitch_44
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1211
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->androidInternalsModule:Lcom/android/systemui/dagger/AndroidInternalsModule;

    .line 1213
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1215
    new-instance p0, Lcom/android/internal/logging/MetricsLogger;

    .line 1218
    invoke-direct {p0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    .line 1220
    return-object p0

    .line 1223
    :pswitch_45
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 1224
    move-result-object p0

    .line 1227
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 1228
    return-object p0

    .line 1231
    :pswitch_46
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1232
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 1234
    const-class v0, Landroid/os/UserManager;

    .line 1236
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1238
    move-result-object p0

    .line 1241
    check-cast p0, Landroid/os/UserManager;

    .line 1242
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 1244
    return-object p0

    .line 1247
    :pswitch_47
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1248
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 1250
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1252
    move-result-object p0

    .line 1255
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 1256
    return-object p0

    .line 1259
    :pswitch_48
    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    .line 1260
    move-result-object p0

    .line 1263
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 1264
    return-object p0

    .line 1267
    :pswitch_49
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1268
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->unfoldTransitionModule:Lcom/android/systemui/unfold/UnfoldTransitionModule;

    .line 1270
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->deviceStateManagerFoldProvider:Ljavax/inject/Provider;

    .line 1272
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1274
    move-result-object v0

    .line 1277
    check-cast v0, Lcom/android/systemui/unfold/updates/FoldProvider;

    .line 1278
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1280
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideMainExecutorProvider:Ljavax/inject/Provider;

    .line 1282
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1284
    move-result-object v2

    .line 1287
    check-cast v2, Ljava/util/concurrent/Executor;

    .line 1288
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1290
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->unfoldTransitionProgressProvider:Ljavax/inject/Provider;

    .line 1292
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1294
    move-result-object p0

    .line 1297
    check-cast p0, Ljava/util/Optional;

    .line 1298
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1300
    new-instance v1, Lcom/android/systemui/unfold/UnfoldTransitionModule$provideUnfoldOnlyProvider$1;

    .line 1303
    const/4 v3, 0x0

    .line 1305
    invoke-direct {v1, v3, v0, v2}, Lcom/android/systemui/unfold/UnfoldTransitionModule$provideUnfoldOnlyProvider$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1306
    invoke-virtual {p0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    .line 1309
    move-result-object p0

    .line 1312
    return-object p0

    .line 1313
    :pswitch_4a
    new-instance v0, Lcom/android/systemui/unfold/progress/FixedTimingTransitionProgressProvider;

    .line 1314
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1316
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideFoldStateProvider:Ljavax/inject/Provider;

    .line 1318
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1320
    move-result-object p0

    .line 1323
    check-cast p0, Lcom/android/systemui/unfold/updates/FoldStateProvider;

    .line 1324
    invoke-direct {v0, p0}, Lcom/android/systemui/unfold/progress/FixedTimingTransitionProgressProvider;-><init>(Lcom/android/systemui/unfold/updates/FoldStateProvider;)V

    .line 1326
    return-object v0

    .line 1329
    :pswitch_4b
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1330
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 1332
    invoke-virtual {p0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 1334
    move-result-object p0

    .line 1337
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 1338
    return-object p0

    .line 1341
    :pswitch_4c
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 1342
    move-result-object p0

    .line 1345
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 1346
    return-object p0

    .line 1349
    :pswitch_4d
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1350
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideMainLooperProvider:Ljavax/inject/Provider;

    .line 1352
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1354
    move-result-object p0

    .line 1357
    check-cast p0, Landroid/os/Looper;

    .line 1358
    new-instance v0, Landroid/os/Handler;

    .line 1360
    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1362
    return-object v0

    .line 1365
    :pswitch_4e
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1366
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 1368
    const-class v0, Landroid/hardware/display/DisplayManager;

    .line 1370
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1372
    move-result-object p0

    .line 1375
    check-cast p0, Landroid/hardware/display/DisplayManager;

    .line 1376
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 1378
    return-object p0

    .line 1381
    :pswitch_4f
    new-instance p0, Lcom/android/systemui/unfold/util/UnfoldKeyguardVisibilityManagerImpl;

    .line 1382
    invoke-direct {p0}, Lcom/android/systemui/unfold/util/UnfoldKeyguardVisibilityManagerImpl;-><init>()V

    .line 1384
    return-object p0

    .line 1387
    :pswitch_50
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1388
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->unfoldSharedModule:Lcom/android/systemui/unfold/UnfoldSharedModule;

    .line 1390
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->unfoldKeyguardVisibilityManagerImplProvider:Ljavax/inject/Provider;

    .line 1392
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1394
    move-result-object p0

    .line 1397
    check-cast p0, Lcom/android/systemui/unfold/util/UnfoldKeyguardVisibilityManagerImpl;

    .line 1398
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1400
    return-object p0

    .line 1403
    :pswitch_51
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1404
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 1406
    const-class v0, Landroid/app/ActivityManager;

    .line 1408
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1410
    move-result-object p0

    .line 1413
    check-cast p0, Landroid/app/ActivityManager;

    .line 1414
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 1416
    return-object p0

    .line 1419
    :pswitch_52
    new-instance v0, Lcom/android/systemui/unfold/system/ActivityManagerActivityTypeProvider;

    .line 1420
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1422
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideActivityManagerProvider:Ljavax/inject/Provider;

    .line 1424
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1426
    move-result-object p0

    .line 1429
    check-cast p0, Landroid/app/ActivityManager;

    .line 1430
    invoke-direct {v0, p0}, Lcom/android/systemui/unfold/system/ActivityManagerActivityTypeProvider;-><init>(Landroid/app/ActivityManager;)V

    .line 1432
    return-object v0

    .line 1435
    :pswitch_53
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1436
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 1438
    const-class v0, Landroid/hardware/devicestate/DeviceStateManager;

    .line 1440
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1442
    move-result-object p0

    .line 1445
    check-cast p0, Landroid/hardware/devicestate/DeviceStateManager;

    .line 1446
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 1448
    return-object p0

    .line 1451
    :pswitch_54
    new-instance v0, Lcom/android/systemui/unfold/system/DeviceStateManagerFoldProvider;

    .line 1452
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1454
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideDeviceStateManagerProvider:Ljavax/inject/Provider;

    .line 1456
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1458
    move-result-object v1

    .line 1461
    check-cast v1, Landroid/hardware/devicestate/DeviceStateManager;

    .line 1462
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1464
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 1466
    invoke-direct {v0, v1, p0}, Lcom/android/systemui/unfold/system/DeviceStateManagerFoldProvider;-><init>(Landroid/hardware/devicestate/DeviceStateManager;Landroid/content/Context;)V

    .line 1468
    return-object v0

    .line 1471
    :pswitch_55
    new-instance p0, Lcom/android/systemui/dump/DumpManager;

    .line 1472
    invoke-direct {p0}, Lcom/android/systemui/dump/DumpManager;-><init>()V

    .line 1474
    return-object p0

    .line 1477
    :pswitch_56
    new-instance v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 1478
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1480
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 1482
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1484
    move-result-object p0

    .line 1487
    check-cast p0, Lcom/android/systemui/dump/DumpManager;

    .line 1488
    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/ScreenLifecycle;-><init>(Lcom/android/systemui/dump/DumpManager;)V

    .line 1490
    return-object v0

    .line 1493
    :pswitch_57
    new-instance v0, Lcom/android/systemui/keyguard/LifecycleScreenStatusProvider;

    .line 1494
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1496
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->screenLifecycleProvider:Ljavax/inject/Provider;

    .line 1498
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1500
    move-result-object p0

    .line 1503
    check-cast p0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 1504
    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/LifecycleScreenStatusProvider;-><init>(Lcom/android/systemui/keyguard/ScreenLifecycle;)V

    .line 1506
    return-object v0

    .line 1509
    :pswitch_58
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 1510
    move-result-object p0

    .line 1513
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 1514
    return-object p0

    .line 1517
    :pswitch_59
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1518
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 1520
    const-class v0, Landroid/hardware/SensorManager;

    .line 1522
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1524
    move-result-object p0

    .line 1527
    check-cast p0, Landroid/hardware/SensorManager;

    .line 1528
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 1530
    return-object p0

    .line 1533
    :pswitch_5a
    new-instance v0, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;

    .line 1534
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1536
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->providesSensorManagerProvider:Ljavax/inject/Provider;

    .line 1538
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1540
    move-result-object v1

    .line 1543
    check-cast v1, Landroid/hardware/SensorManager;

    .line 1544
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1546
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideUiBackgroundExecutorProvider:Ljavax/inject/Provider;

    .line 1548
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1550
    move-result-object p0

    .line 1553
    check-cast p0, Ljava/util/concurrent/Executor;

    .line 1554
    invoke-direct {v0, v1, p0}, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;-><init>(Landroid/hardware/SensorManager;Ljava/util/concurrent/Executor;)V

    .line 1556
    return-object v0

    .line 1559
    :pswitch_5b
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1560
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->unfoldSharedModule:Lcom/android/systemui/unfold/UnfoldSharedModule;

    .line 1562
    invoke-virtual {p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->deviceFoldStateProvider()Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;

    .line 1564
    move-result-object p0

    .line 1567
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1568
    return-object p0

    .line 1571
    :pswitch_5c
    new-instance v0, Lcom/android/systemui/unfold/progress/PhysicsBasedUnfoldTransitionProgressProvider;

    .line 1572
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1574
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 1576
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideFoldStateProvider:Ljavax/inject/Provider;

    .line 1578
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1580
    move-result-object p0

    .line 1583
    check-cast p0, Lcom/android/systemui/unfold/updates/FoldStateProvider;

    .line 1584
    invoke-direct {v0, v1, p0}, Lcom/android/systemui/unfold/progress/PhysicsBasedUnfoldTransitionProgressProvider;-><init>(Landroid/content/Context;Lcom/android/systemui/unfold/updates/FoldStateProvider;)V

    .line 1586
    return-object v0

    .line 1589
    :pswitch_5d
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1590
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 1592
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1594
    move-result-object p0

    .line 1597
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 1598
    return-object p0

    .line 1601
    :pswitch_5e
    new-instance v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider$1;

    .line 1602
    invoke-direct {v0, p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider$1;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;)V

    .line 1604
    return-object v0

    .line 1607
    :pswitch_5f
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1608
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->unfoldSharedInternalModule:Lcom/android/systemui/unfold/UnfoldSharedInternalModule;

    .line 1610
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->resourceUnfoldTransitionConfigProvider:Ljavax/inject/Provider;

    .line 1612
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1614
    move-result-object v0

    .line 1617
    move-object v2, v0

    .line 1618
    check-cast v2, Lcom/android/systemui/unfold/config/ResourceUnfoldTransitionConfig;

    .line 1619
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1621
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->factoryProvider:Ljavax/inject/Provider;

    .line 1623
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1625
    move-result-object v0

    .line 1628
    move-object v3, v0

    .line 1629
    check-cast v3, Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider$Factory;

    .line 1630
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1632
    invoke-virtual {v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->aTraceLoggerTransitionProgressListener()Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener;

    .line 1634
    move-result-object v4

    .line 1637
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1638
    iget-object v5, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->physicsBasedUnfoldTransitionProgressProvider:Ljavax/inject/Provider;

    .line 1640
    iget-object v6, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->fixedTimingTransitionProgressProvider:Ljavax/inject/Provider;

    .line 1642
    invoke-static/range {v1 .. v6}, Lcom/android/systemui/unfold/UnfoldSharedInternalModule_UnfoldTransitionProgressProviderFactory;->unfoldTransitionProgressProvider(Lcom/android/systemui/unfold/UnfoldSharedInternalModule;Lcom/android/systemui/unfold/config/ResourceUnfoldTransitionConfig;Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider$Factory;Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljava/util/Optional;

    .line 1644
    move-result-object p0

    .line 1647
    return-object p0

    .line 1648
    :pswitch_60
    new-instance p0, Lcom/android/systemui/unfold/config/ResourceUnfoldTransitionConfig;

    .line 1649
    invoke-direct {p0}, Lcom/android/systemui/unfold/config/ResourceUnfoldTransitionConfig;-><init>()V

    .line 1651
    return-object p0

    .line 1654
    :pswitch_61
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1655
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->unfoldTransitionModule:Lcom/android/systemui/unfold/UnfoldTransitionModule;

    .line 1657
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->resourceUnfoldTransitionConfigProvider:Ljavax/inject/Provider;

    .line 1659
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1661
    move-result-object v0

    .line 1664
    check-cast v0, Lcom/android/systemui/unfold/config/ResourceUnfoldTransitionConfig;

    .line 1665
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1667
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->unfoldTransitionProgressProvider:Ljavax/inject/Provider;

    .line 1669
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideUnfoldOnlyProvider:Ljavax/inject/Provider;

    .line 1671
    invoke-static {v1, v0, v2, p0}, Lcom/android/systemui/unfold/UnfoldTransitionModule_ProvideShellProgressProviderFactory;->provideShellProgressProvider(Lcom/android/systemui/unfold/UnfoldTransitionModule;Lcom/android/systemui/unfold/config/ResourceUnfoldTransitionConfig;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;

    .line 1673
    move-result-object p0

    .line 1676
    return-object p0

    .line 1677
    :pswitch_62
    new-instance p0, Lcom/android/internal/logging/UiEventLoggerImpl;

    .line 1678
    invoke-direct {p0}, Lcom/android/internal/logging/UiEventLoggerImpl;-><init>()V

    .line 1680
    return-object p0

    .line 1683
    :pswitch_63
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    .line 1684
    move-result-object p0

    .line 1687
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 1688
    return-object p0

    .line 1691
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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
    .line 1692
.end method

.method public final get1()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->id:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    new-instance v0, Ljava/lang/AssertionError;

    .line 7
    iget p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->id:I

    .line 9
    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(I)V

    .line 11
    throw v0

    .line 14
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 15
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->frameworkServicesModule:Lcom/android/systemui/dagger/FrameworkServicesModule;

    .line 17
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    new-instance v0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    .line 24
    invoke-direct {v0, p0}, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;-><init>(Landroid/content/Context;)V

    .line 26
    return-object v0

    .line 29
    :pswitch_1
    new-instance p0, Lcom/android/dream/lowlight/LowLightTransitionCoordinator;

    .line 30
    invoke-direct {p0}, Lcom/android/dream/lowlight/LowLightTransitionCoordinator;-><init>()V

    .line 32
    return-object p0

    .line 35
    :pswitch_2
    new-instance p0, Lcom/android/systemui/qs/QSExpansionPathInterpolator;

    .line 36
    invoke-direct {p0}, Lcom/android/systemui/qs/QSExpansionPathInterpolator;-><init>()V

    .line 38
    return-object p0

    .line 41
    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 42
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 44
    const-class v0, Landroid/os/Vibrator;

    .line 46
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 48
    move-result-object p0

    .line 51
    check-cast p0, Landroid/os/Vibrator;

    .line 52
    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 54
    move-result-object p0

    .line 57
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 58
    return-object p0

    .line 61
    :pswitch_4
    new-instance p0, Lcom/android/systemui/multishade/data/remoteproxy/MultiShadeInputProxy;

    .line 62
    invoke-direct {p0}, Lcom/android/systemui/multishade/data/remoteproxy/MultiShadeInputProxy;-><init>()V

    .line 64
    return-object p0

    .line 67
    :pswitch_5
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 68
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 70
    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    .line 72
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 74
    move-result-object p0

    .line 77
    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    .line 78
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 80
    return-object p0

    .line 83
    :pswitch_6
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 84
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 86
    const-class v0, Landroid/telecom/TelecomManager;

    .line 88
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 90
    move-result-object p0

    .line 93
    check-cast p0, Landroid/telecom/TelecomManager;

    .line 94
    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 96
    move-result-object p0

    .line 99
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 100
    return-object p0

    .line 103
    :pswitch_7
    const-string p0, "package"

    .line 104
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 106
    move-result-object p0

    .line 109
    invoke-static {p0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    .line 110
    move-result-object p0

    .line 113
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 114
    return-object p0

    .line 117
    :pswitch_8
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 118
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->unfoldSharedModule:Lcom/android/systemui/unfold/UnfoldSharedModule;

    .line 120
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->unfoldKeyguardVisibilityManagerImplProvider:Ljavax/inject/Provider;

    .line 122
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 124
    move-result-object p0

    .line 127
    check-cast p0, Lcom/android/systemui/unfold/util/UnfoldKeyguardVisibilityManagerImpl;

    .line 128
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    return-object p0

    .line 133
    :pswitch_9
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 134
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 136
    const-class v0, Landroid/content/om/OverlayManager;

    .line 138
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 140
    move-result-object p0

    .line 143
    check-cast p0, Landroid/content/om/OverlayManager;

    .line 144
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 146
    return-object p0

    .line 149
    :pswitch_a
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 150
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 152
    const-class v0, Landroid/os/storage/StorageManager;

    .line 154
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 156
    move-result-object p0

    .line 159
    check-cast p0, Landroid/os/storage/StorageManager;

    .line 160
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 162
    return-object p0

    .line 165
    :pswitch_b
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 166
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 168
    const-class v0, Landroid/app/job/JobScheduler;

    .line 170
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 172
    move-result-object p0

    .line 175
    check-cast p0, Landroid/app/job/JobScheduler;

    .line 176
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 178
    return-object p0

    .line 181
    :pswitch_c
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 182
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->unfoldTransitionModule:Lcom/android/systemui/unfold/UnfoldTransitionModule;

    .line 184
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->providesFoldStateLoggingProvider:Ljavax/inject/Provider;

    .line 186
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 188
    move-result-object p0

    .line 191
    check-cast p0, Ljava/util/Optional;

    .line 192
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 194
    sget-object v0, Lcom/android/systemui/unfold/UnfoldTransitionModule$providesFoldStateLogger$1;->INSTANCE:Lcom/android/systemui/unfold/UnfoldTransitionModule$providesFoldStateLogger$1;

    .line 197
    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    .line 199
    move-result-object p0

    .line 202
    return-object p0

    .line 203
    :pswitch_d
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 204
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->unfoldTransitionModule:Lcom/android/systemui/unfold/UnfoldTransitionModule;

    .line 206
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->resourceUnfoldTransitionConfigProvider:Ljavax/inject/Provider;

    .line 208
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 210
    move-result-object v0

    .line 213
    check-cast v0, Lcom/android/systemui/unfold/config/ResourceUnfoldTransitionConfig;

    .line 214
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 216
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideFoldStateProvider:Ljavax/inject/Provider;

    .line 218
    invoke-static {p0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 220
    move-result-object p0

    .line 223
    invoke-static {v1, v0, p0}, Lcom/android/systemui/unfold/UnfoldTransitionModule_ProvidesFoldStateLoggingProviderFactory;->providesFoldStateLoggingProvider(Lcom/android/systemui/unfold/UnfoldTransitionModule;Lcom/android/systemui/unfold/config/ResourceUnfoldTransitionConfig;Ldagger/Lazy;)Ljava/util/Optional;

    .line 224
    move-result-object p0

    .line 227
    return-object p0

    .line 228
    :pswitch_e
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 229
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 231
    const-class v0, Landroid/app/AppOpsManager;

    .line 233
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 235
    move-result-object p0

    .line 238
    check-cast p0, Landroid/app/AppOpsManager;

    .line 239
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 241
    return-object p0

    .line 244
    :pswitch_f
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 245
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 247
    const-class v0, Landroid/app/UiModeManager;

    .line 249
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 251
    move-result-object p0

    .line 254
    check-cast p0, Landroid/app/UiModeManager;

    .line 255
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 257
    return-object p0

    .line 260
    :pswitch_10
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 261
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 263
    const-class v0, Landroid/hardware/input/InputManager;

    .line 265
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 267
    move-result-object p0

    .line 270
    check-cast p0, Landroid/hardware/input/InputManager;

    .line 271
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 273
    return-object p0

    .line 276
    nop

    .line 277
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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
    .line 278
.end method
