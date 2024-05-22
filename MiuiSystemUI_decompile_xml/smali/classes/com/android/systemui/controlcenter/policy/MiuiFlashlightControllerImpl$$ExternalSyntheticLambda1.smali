.class public final synthetic Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget v0, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    goto/16 :goto_5

    .line 10
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;

    .line 12
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->mContext:Landroid/content/Context;

    .line 14
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    move-result-object v0

    .line 19
    const v3, 0x7f0b0064    # @integer/flash_on_value '100'

    .line 20
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 23
    move-result v3

    .line 26
    iput v3, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->mValueOn:I

    .line 27
    const v3, 0x7f130438    # @string/flash_device '/sys/class/leds/flashlight/brightness'

    .line 29
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->mFlashDevice:Ljava/lang/String;

    .line 36
    :goto_0
    new-instance v0, Ljava/io/File;

    .line 38
    iget-object v3, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->mFlashDevice:Ljava/lang/String;

    .line 40
    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 45
    move-result v0

    .line 48
    if-nez v0, :cond_1

    .line 49
    sget-object v0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->FLASH_DEVICES:[Ljava/lang/String;

    .line 51
    array-length v3, v0

    .line 53
    if-ne v2, v3, :cond_0

    .line 54
    iput-object v1, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->mFlashDevice:Ljava/lang/String;

    .line 56
    goto :goto_1

    .line 58
    :cond_0
    add-int/lit8 v3, v2, 0x1

    .line 59
    aget-object v0, v0, v2

    .line 61
    iput-object v0, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->mFlashDevice:Ljava/lang/String;

    .line 63
    move v2, v3

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    :goto_1
    return-void

    .line 67
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;

    .line 68
    const-string v0, "FlashlightController"

    .line 70
    iget-object v4, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 72
    :try_start_0
    invoke-virtual {v4}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    .line 74
    move-result-object v5

    .line 77
    array-length v6, v5

    .line 78
    :goto_2
    if-ge v2, v6, :cond_3

    .line 79
    aget-object v7, v5, v2

    .line 81
    invoke-virtual {v4, v7}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    .line 83
    move-result-object v8

    .line 86
    sget-object v9, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 87
    invoke-virtual {v8, v9}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 89
    move-result-object v9

    .line 92
    check-cast v9, Ljava/lang/Boolean;

    .line 93
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 95
    invoke-virtual {v8, v10}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 97
    move-result-object v8

    .line 100
    check-cast v8, Ljava/lang/Integer;

    .line 101
    if-eqz v9, :cond_2

    .line 103
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    .line 105
    move-result v9

    .line 108
    if-eqz v9, :cond_2

    .line 109
    if-eqz v8, :cond_2

    .line 111
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 113
    move-result v8

    .line 116
    if-ne v8, v3, :cond_2

    .line 117
    move-object v1, v7

    .line 119
    goto :goto_3

    .line 120
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 121
    goto :goto_2

    .line 123
    :cond_3
    :goto_3
    iput-object v1, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->mCameraId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    if-eqz v1, :cond_4

    .line 126
    const-string v1, "initCameraFlash: register torch callback"

    .line 128
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->mBgHandler:Landroid/os/Handler;

    .line 133
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->mTorchCallback:Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl$5;

    .line 135
    invoke-virtual {v4, p0, v0}, Landroid/hardware/camera2/CameraManager;->registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V

    .line 137
    goto :goto_4

    .line 140
    :catchall_0
    move-exception p0

    .line 141
    const-string v1, "Couldn\'t initialize."

    .line 142
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    :cond_4
    :goto_4
    return-void

    .line 147
    :goto_5
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;

    .line 148
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->mContext:Landroid/content/Context;

    .line 150
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 152
    move-result-object v0

    .line 155
    const v1, 0x7f130bae    # @string/torch_high_temperature_warning 'Your device is overheated. Can't use flashlight now.'

    .line 156
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 159
    move-result-object v0

    .line 162
    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 163
    move-result-object p0

    .line 166
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 167
    return-void

    .line 170
    nop

    .line 171
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 172
.end method
