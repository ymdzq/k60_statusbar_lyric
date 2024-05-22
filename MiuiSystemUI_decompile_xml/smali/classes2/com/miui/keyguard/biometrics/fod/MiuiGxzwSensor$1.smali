.class public final Lcom/miui/keyguard/biometrics/fod/MiuiGxzwSensor$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwSensor;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwSensor;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwSensor$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwSensor$1;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwSensor;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwSensor$1;->$r8$classId:I

    .line 2
    const-string v1, "MiuiGxzwSensor"

    .line 4
    const-string v2, "event.values[0] = "

    .line 6
    const/high16 v3, 0x40000000    # 2.0f

    .line 8
    const-string v4, "MiuiGxzwViewIcon"

    .line 10
    const/high16 v5, 0x3f800000    # 1.0f

    .line 12
    const/4 v6, 0x0

    .line 14
    packed-switch v0, :pswitch_data_0

    .line 15
    goto/16 :goto_1

    .line 18
    :pswitch_0
    if-eqz p1, :cond_6

    .line 20
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwSensor$1;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwSensor;

    .line 22
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwSensor;->mMiuiGxzwSensorListener:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwSensor$MiuiGxzwSensorListener;

    .line 24
    if-nez p0, :cond_0

    .line 26
    goto :goto_0

    .line 28
    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 29
    aget v0, v0, v6

    .line 31
    cmpl-float v5, v0, v5

    .line 33
    if-nez v5, :cond_2

    .line 35
    check-cast p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;

    .line 37
    const-string p1, "detect device move"

    .line 39
    invoke-static {v4, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mCurrentNonUIMode:I

    .line 44
    if-nez p1, :cond_1

    .line 46
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->showFingerprintIcon()V

    .line 48
    :cond_1
    const/4 p1, 0x1

    .line 51
    iput-boolean p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mDeviceMoving:Z

    .line 52
    goto :goto_0

    .line 54
    :cond_2
    cmpl-float v3, v0, v3

    .line 55
    if-nez v3, :cond_4

    .line 57
    check-cast p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;

    .line 59
    const-string p1, "detect device stable"

    .line 61
    invoke-static {v4, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iput-boolean v6, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mDeviceMoving:Z

    .line 66
    iget-boolean p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mDozeShowIconTimeout:Z

    .line 68
    if-eqz p1, :cond_6

    .line 70
    iget-boolean p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mDozing:Z

    .line 72
    if-eqz p1, :cond_6

    .line 74
    iget-boolean p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mTouchDown:Z

    .line 76
    if-eqz p1, :cond_3

    .line 78
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->scheduleSetIconTransparen()V

    .line 80
    goto :goto_0

    .line 83
    :cond_3
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->dismissFingerpirntIcon()V

    .line 84
    goto :goto_0

    .line 87
    :cond_4
    const/high16 v3, 0x40400000    # 3.0f

    .line 88
    cmpl-float v0, v0, v3

    .line 90
    if-nez v0, :cond_5

    .line 92
    check-cast p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;

    .line 94
    const-string p1, "detect device put up"

    .line 96
    invoke-static {v4, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mCurrentNonUIMode:I

    .line 101
    if-nez p1, :cond_6

    .line 103
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->showFingerprintIcon()V

    .line 105
    goto :goto_0

    .line 108
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    .line 109
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 114
    aget p1, p1, v6

    .line 116
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    move-result-object p0

    .line 124
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_6
    :goto_0
    return-void

    .line 128
    :goto_1
    if-eqz p1, :cond_b

    .line 129
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwSensor$1;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwSensor;

    .line 131
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwSensor;->mMiuiGxzwSensorListener:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwSensor$MiuiGxzwSensorListener;

    .line 133
    if-nez p0, :cond_7

    .line 135
    goto :goto_3

    .line 137
    :cond_7
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 138
    aget v0, v0, v6

    .line 140
    const/4 v7, 0x0

    .line 142
    cmpl-float v7, v0, v7

    .line 143
    if-nez v7, :cond_8

    .line 145
    float-to-int p1, v0

    .line 147
    check-cast p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;

    .line 148
    iget v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mCurrentNonUIMode:I

    .line 150
    if-eq v0, p1, :cond_b

    .line 152
    const-string v0, "exit nonui mode"

    .line 154
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-virtual {p0, p1}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->setNonUIMode(I)V

    .line 159
    iget-boolean p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mDeviceMoving:Z

    .line 162
    if-eqz p1, :cond_b

    .line 164
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->showFingerprintIcon()V

    .line 166
    goto :goto_3

    .line 169
    :cond_8
    cmpl-float v5, v0, v5

    .line 170
    if-eqz v5, :cond_a

    .line 172
    cmpl-float v3, v0, v3

    .line 174
    if-nez v3, :cond_9

    .line 176
    goto :goto_2

    .line 178
    :cond_9
    new-instance p0, Ljava/lang/StringBuilder;

    .line 179
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 181
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 184
    aget p1, p1, v6

    .line 186
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    move-result-object p0

    .line 194
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    goto :goto_3

    .line 198
    :cond_a
    :goto_2
    float-to-int p1, v0

    .line 199
    check-cast p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;

    .line 200
    iget v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mCurrentNonUIMode:I

    .line 202
    if-eq v0, p1, :cond_b

    .line 204
    const-string v0, "enter nonui mode"

    .line 206
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-virtual {p0, p1}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->setNonUIMode(I)V

    .line 211
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->dismissFingerpirntIcon()V

    .line 214
    :cond_b
    :goto_3
    return-void

    .line 217
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 218
.end method
