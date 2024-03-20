.class public final synthetic Lcom/miui/keyguard/biometrics/fod/MiuiGxzwSensor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwSensor;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwSensor;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwSensor$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwSensor$$ExternalSyntheticLambda0;->f$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwSensor;

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
    iget v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwSensor$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwSensor$$ExternalSyntheticLambda0;->f$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwSensor;

    .line 8
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwSensor;->mPutUpSensorListener:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwSensor$1;

    .line 10
    iget-object v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwSensor;->mSensorManager:Landroid/hardware/SensorManager;

    .line 12
    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 14
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwSensor;->mNonUIListener:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwSensor$1;

    .line 17
    invoke-virtual {v1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 19
    return-void

    .line 22
    :goto_0
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwSensor$$ExternalSyntheticLambda0;->f$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwSensor;

    .line 23
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwSensor;->mSensorManager:Landroid/hardware/SensorManager;

    .line 25
    const v1, 0x1fa2656

    .line 27
    const/4 v2, 0x1

    .line 30
    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    .line 31
    move-result-object v1

    .line 34
    iget-object v3, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwSensor;->mHandler:Landroid/os/Handler;

    .line 35
    const/4 v4, 0x3

    .line 37
    const-string v5, "MiuiGxzwSensor"

    .line 38
    if-eqz v1, :cond_0

    .line 40
    iget-object v6, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwSensor;->mPutUpSensorListener:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwSensor$1;

    .line 42
    invoke-virtual {v0, v6, v1, v4, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 44
    goto :goto_1

    .line 47
    :cond_0
    const-string v1, "no put up sensor"

    .line 48
    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :goto_1
    iget-boolean v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwSensor;->mSupportNonuiSensor:Z

    .line 53
    if-eqz v1, :cond_2

    .line 55
    const v1, 0x1fa2653

    .line 57
    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    .line 60
    move-result-object v1

    .line 63
    if-eqz v1, :cond_1

    .line 64
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwSensor;->mNonUIListener:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwSensor$1;

    .line 66
    invoke-virtual {v0, p0, v1, v4, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 68
    goto :goto_2

    .line 71
    :cond_1
    const-string p0, "no nonui sensor"

    .line 72
    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_2
    :goto_2
    return-void

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 78
.end method
