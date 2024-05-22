.class public final synthetic Lcom/android/systemui/biometrics/AuthController$6$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/os/Binder;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Binder;Ljava/util/List;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/biometrics/AuthController$6$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthController$6$$ExternalSyntheticLambda0;->f$0:Landroid/os/Binder;

    .line 4
    iput-object p2, p0, Lcom/android/systemui/biometrics/AuthController$6$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/systemui/biometrics/AuthController$6$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    const/4 v1, 0x1

    .line 4
    const-string v2, "AuthController"

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 7
    goto/16 :goto_4

    .line 10
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController$6$$ExternalSyntheticLambda0;->f$0:Landroid/os/Binder;

    .line 12
    check-cast v0, Lcom/android/systemui/biometrics/AuthController$6;

    .line 14
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController$6$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    .line 16
    iget-object v0, v0, Lcom/android/systemui/biometrics/AuthController$6;->this$0:Lcom/android/systemui/biometrics/AuthController;

    .line 18
    iget-object v3, v0, Lcom/android/systemui/biometrics/AuthController;->mExecution:Lcom/android/systemui/util/concurrency/ExecutionImpl;

    .line 20
    invoke-virtual {v3}, Lcom/android/systemui/util/concurrency/ExecutionImpl;->assertIsMainThread()V

    .line 22
    new-instance v4, Ljava/lang/StringBuilder;

    .line 25
    const-string v5, "handleAllFingerprintAuthenticatorsRegistered | sensors: "

    .line 27
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    .line 32
    move-result-object v5

    .line 35
    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    move-result-object v5

    .line 39
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v4

    .line 46
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iput-boolean v1, v0, Lcom/android/systemui/biometrics/AuthController;->mAllFingerprintAuthenticatorsRegistered:Z

    .line 50
    iput-object p0, v0, Lcom/android/systemui/biometrics/AuthController;->mFpProps:Ljava/util/List;

    .line 52
    new-instance p0, Ljava/util/ArrayList;

    .line 54
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    new-instance v2, Ljava/util/ArrayList;

    .line 59
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 61
    iget-object v4, v0, Lcom/android/systemui/biometrics/AuthController;->mFpProps:Ljava/util/List;

    .line 64
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 66
    move-result-object v4

    .line 69
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    move-result v5

    .line 73
    if-eqz v5, :cond_2

    .line 74
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    move-result-object v5

    .line 79
    check-cast v5, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 80
    invoke-virtual {v5}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isAnyUdfpsType()Z

    .line 82
    move-result v6

    .line 85
    if-eqz v6, :cond_1

    .line 86
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_1
    invoke-virtual {v5}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isAnySidefpsType()Z

    .line 91
    move-result v6

    .line 94
    if-eqz v6, :cond_0

    .line 95
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    goto :goto_0

    .line 100
    :cond_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 101
    move-result v4

    .line 104
    const/4 v5, 0x0

    .line 105
    if-nez v4, :cond_3

    .line 106
    goto :goto_1

    .line 108
    :cond_3
    move-object p0, v5

    .line 109
    :goto_1
    iput-object p0, v0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsProps:Ljava/util/List;

    .line 110
    const/4 v4, 0x0

    .line 112
    if-eqz p0, :cond_4

    .line 113
    iget-object p0, v0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsControllerFactory:Ljavax/inject/Provider;

    .line 115
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 117
    move-result-object p0

    .line 120
    check-cast p0, Lcom/android/systemui/biometrics/UdfpsController;

    .line 121
    iput-object p0, v0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsController:Lcom/android/systemui/biometrics/UdfpsController;

    .line 123
    new-instance v6, Lcom/android/systemui/biometrics/AuthController$3;

    .line 125
    invoke-direct {v6, v0}, Lcom/android/systemui/biometrics/AuthController$3;-><init>(Lcom/android/systemui/biometrics/AuthController;)V

    .line 127
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mCallbacks:Ljava/util/Set;

    .line 130
    check-cast p0, Ljava/util/HashSet;

    .line 132
    invoke-virtual {p0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object p0, v0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsController:Lcom/android/systemui/biometrics/UdfpsController;

    .line 137
    new-instance v6, Lcom/android/systemui/biometrics/AuthController$$ExternalSyntheticLambda1;

    .line 139
    invoke-direct {v6, v0, v1}, Lcom/android/systemui/biometrics/AuthController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/biometrics/AuthController;I)V

    .line 141
    iput-object v6, p0, Lcom/android/systemui/biometrics/UdfpsController;->mAuthControllerUpdateUdfpsLocation:Ljava/lang/Runnable;

    .line 144
    new-instance v1, Lcom/android/systemui/biometrics/UdfpsDisplayMode;

    .line 146
    iget-object v6, v0, Lcom/android/systemui/biometrics/AuthController;->mContext:Landroid/content/Context;

    .line 148
    iget-object v7, v0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsLogger:Lcom/android/systemui/biometrics/UdfpsLogger;

    .line 150
    invoke-direct {v1, v6, v3, v0, v7}, Lcom/android/systemui/biometrics/UdfpsDisplayMode;-><init>(Landroid/content/Context;Lcom/android/systemui/util/concurrency/ExecutionImpl;Lcom/android/systemui/biometrics/AuthController;Lcom/android/systemui/biometrics/UdfpsLogger;)V

    .line 152
    iput-object v1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mUdfpsDisplayMode:Lcom/android/systemui/biometrics/UdfpsDisplayModeProvider;

    .line 155
    iget-object p0, v0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsProps:Ljava/util/List;

    .line 157
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 159
    move-result-object p0

    .line 162
    check-cast p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 163
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->getLocation()Landroid/hardware/biometrics/SensorLocationInternal;

    .line 165
    move-result-object p0

    .line 168
    invoke-virtual {p0}, Landroid/hardware/biometrics/SensorLocationInternal;->getRect()Landroid/graphics/Rect;

    .line 169
    move-result-object p0

    .line 172
    iput-object p0, v0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsBounds:Landroid/graphics/Rect;

    .line 173
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 175
    move-result p0

    .line 178
    if-nez p0, :cond_5

    .line 179
    goto :goto_2

    .line 181
    :cond_5
    move-object v2, v5

    .line 182
    :goto_2
    iput-object v2, v0, Lcom/android/systemui/biometrics/AuthController;->mSidefpsProps:Ljava/util/List;

    .line 183
    if-eqz v2, :cond_6

    .line 185
    iget-object p0, v0, Lcom/android/systemui/biometrics/AuthController;->mSidefpsControllerFactory:Ljavax/inject/Provider;

    .line 187
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 189
    move-result-object p0

    .line 192
    check-cast p0, Lcom/android/systemui/biometrics/SideFpsController;

    .line 193
    iput-object p0, v0, Lcom/android/systemui/biometrics/AuthController;->mSideFpsController:Lcom/android/systemui/biometrics/SideFpsController;

    .line 195
    :cond_6
    new-instance p0, Lcom/android/systemui/biometrics/AuthController$4;

    .line 197
    invoke-direct {p0, v0, v4}, Lcom/android/systemui/biometrics/AuthController$4;-><init>(Lcom/android/systemui/biometrics/AuthController;I)V

    .line 199
    iget-object v1, v0, Lcom/android/systemui/biometrics/AuthController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 202
    invoke-virtual {v1, p0}, Landroid/hardware/fingerprint/FingerprintManager;->registerBiometricStateListener(Landroid/hardware/biometrics/BiometricStateListener;)V

    .line 204
    invoke-virtual {v0}, Lcom/android/systemui/biometrics/AuthController;->updateSensorLocations()V

    .line 207
    iget-object p0, v0, Lcom/android/systemui/biometrics/AuthController;->mCallbacks:Ljava/util/Set;

    .line 210
    check-cast p0, Ljava/util/HashSet;

    .line 212
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 214
    move-result-object p0

    .line 217
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 218
    move-result v0

    .line 221
    if-eqz v0, :cond_7

    .line 222
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 224
    move-result-object v0

    .line 227
    check-cast v0, Lcom/android/systemui/biometrics/AuthController$Callback;

    .line 228
    const/4 v1, 0x2

    .line 230
    invoke-interface {v0, v1}, Lcom/android/systemui/biometrics/AuthController$Callback;->onAllAuthenticatorsRegistered(I)V

    .line 231
    goto :goto_3

    .line 234
    :cond_7
    return-void

    .line 235
    :goto_4
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController$6$$ExternalSyntheticLambda0;->f$0:Landroid/os/Binder;

    .line 236
    check-cast v0, Lcom/android/systemui/biometrics/AuthController$7;

    .line 238
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController$6$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    .line 240
    iget-object v0, v0, Lcom/android/systemui/biometrics/AuthController$7;->this$0:Lcom/android/systemui/biometrics/AuthController;

    .line 242
    iget-object v3, v0, Lcom/android/systemui/biometrics/AuthController;->mExecution:Lcom/android/systemui/util/concurrency/ExecutionImpl;

    .line 244
    invoke-virtual {v3}, Lcom/android/systemui/util/concurrency/ExecutionImpl;->assertIsMainThread()V

    .line 246
    new-instance v3, Ljava/lang/StringBuilder;

    .line 249
    const-string v4, "handleAllFaceAuthenticatorsRegistered | sensors: "

    .line 251
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 253
    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    .line 256
    move-result-object p0

    .line 259
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 260
    move-result-object p0

    .line 263
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    move-result-object p0

    .line 270
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    new-instance p0, Lcom/android/systemui/biometrics/AuthController$4;

    .line 274
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/biometrics/AuthController$4;-><init>(Lcom/android/systemui/biometrics/AuthController;I)V

    .line 276
    iget-object v1, v0, Lcom/android/systemui/biometrics/AuthController;->mFaceManager:Landroid/hardware/face/FaceManager;

    .line 279
    invoke-virtual {v1, p0}, Landroid/hardware/face/FaceManager;->registerBiometricStateListener(Landroid/hardware/biometrics/BiometricStateListener;)V

    .line 281
    iget-object p0, v0, Lcom/android/systemui/biometrics/AuthController;->mCallbacks:Ljava/util/Set;

    .line 284
    check-cast p0, Ljava/util/HashSet;

    .line 286
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 288
    move-result-object p0

    .line 291
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 292
    move-result v0

    .line 295
    if-eqz v0, :cond_8

    .line 296
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 298
    move-result-object v0

    .line 301
    check-cast v0, Lcom/android/systemui/biometrics/AuthController$Callback;

    .line 302
    const/16 v1, 0x8

    .line 304
    invoke-interface {v0, v1}, Lcom/android/systemui/biometrics/AuthController$Callback;->onAllAuthenticatorsRegistered(I)V

    .line 306
    goto :goto_5

    .line 309
    :cond_8
    return-void

    .line 310
    nop

    .line 311
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 312
.end method
