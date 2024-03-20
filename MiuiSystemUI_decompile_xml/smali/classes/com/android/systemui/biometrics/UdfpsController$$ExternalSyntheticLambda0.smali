.class public final synthetic Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    const/4 v1, 0x1

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    goto/16 :goto_3

    .line 8
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 10
    check-cast v0, Lcom/android/systemui/biometrics/UdfpsController;

    .line 12
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 14
    check-cast p0, Landroid/graphics/Point;

    .line 16
    iget-object v0, v0, Lcom/android/systemui/biometrics/UdfpsController;->mOverlay:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    .line 18
    if-nez v0, :cond_0

    .line 20
    const-string p0, "UdfpsController"

    .line 22
    const-string/jumbo v0, "touch outside sensor area receivedbut serverRequest is null"

    .line 24
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    goto/16 :goto_2

    .line 30
    :cond_0
    iget-boolean v2, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->touchExplorationEnabled:Z

    .line 32
    iget v3, p0, Landroid/graphics/Point;->x:I

    .line 34
    iget p0, p0, Landroid/graphics/Point;->y:I

    .line 36
    iget-object v4, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->overlayParams:Lcom/android/settingslib/udfps/UdfpsOverlayParams;

    .line 38
    iget-object v5, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->udfpsUtils:Lcom/android/settingslib/udfps/UdfpsUtils;

    .line 40
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    if-nez v2, :cond_1

    .line 45
    goto :goto_0

    .line 47
    :cond_1
    iget-object v2, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->context:Landroid/content/Context;

    .line 48
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 50
    move-result-object v2

    .line 53
    const v5, 0x7f0300de    # @array/udfps_accessibility_touch_hints

    .line 54
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 57
    move-result-object v2

    .line 60
    array-length v5, v2

    .line 61
    const/4 v6, 0x4

    .line 62
    if-eq v5, v6, :cond_2

    .line 63
    new-instance p0, Ljava/lang/StringBuilder;

    .line 65
    const-string v1, "expected exactly 4 touch hints, got "

    .line 67
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    array-length v1, v2

    .line 72
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    const-string v1, "?"

    .line 76
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object p0

    .line 84
    const-string v1, "UdfpsUtils"

    .line 85
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :goto_0
    const/4 p0, 0x0

    .line 90
    goto :goto_1

    .line 91
    :cond_2
    iget v5, v4, Lcom/android/settingslib/udfps/UdfpsOverlayParams;->scaleFactor:F

    .line 92
    iget-object v6, v4, Lcom/android/settingslib/udfps/UdfpsOverlayParams;->sensorBounds:Landroid/graphics/Rect;

    .line 94
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    .line 96
    move-result v7

    .line 99
    int-to-float v7, v7

    .line 100
    div-float/2addr v7, v5

    .line 101
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    .line 102
    move-result v6

    .line 105
    int-to-float v6, v6

    .line 106
    div-float/2addr v6, v5

    .line 107
    int-to-float v3, v3

    .line 108
    int-to-float p0, p0

    .line 109
    sub-float/2addr v3, v7

    .line 110
    sub-float/2addr v6, p0

    .line 111
    float-to-double v5, v6

    .line 112
    float-to-double v7, v3

    .line 113
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    .line 114
    move-result-wide v5

    .line 117
    const-wide/16 v7, 0x0

    .line 118
    cmpg-double p0, v5, v7

    .line 120
    if-gez p0, :cond_3

    .line 122
    const-wide v7, 0x401921fb54442d18L    # 6.283185307179586

    .line 124
    add-double/2addr v5, v7

    .line 129
    :cond_3
    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    .line 130
    move-result-wide v5

    .line 133
    array-length p0, v2

    .line 134
    int-to-double v7, p0

    .line 135
    const-wide v9, 0x4076800000000000L    # 360.0

    .line 136
    div-double v7, v9, v7

    .line 141
    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    .line 143
    div-double v11, v7, v11

    .line 145
    add-double/2addr v11, v5

    .line 147
    rem-double/2addr v11, v9

    .line 148
    div-double/2addr v11, v7

    .line 149
    double-to-int p0, v11

    .line 150
    array-length v3, v2

    .line 151
    rem-int/2addr p0, v3

    .line 152
    iget v3, v4, Lcom/android/settingslib/udfps/UdfpsOverlayParams;->rotation:I

    .line 153
    if-ne v3, v1, :cond_4

    .line 155
    add-int/lit8 p0, p0, 0x1

    .line 157
    array-length v1, v2

    .line 159
    rem-int/2addr p0, v1

    .line 160
    :cond_4
    const/4 v1, 0x3

    .line 161
    if-ne v3, v1, :cond_5

    .line 162
    add-int/lit8 p0, p0, 0x3

    .line 164
    array-length v1, v2

    .line 166
    rem-int/2addr p0, v1

    .line 167
    :cond_5
    aget-object p0, v2, p0

    .line 168
    :goto_1
    if-eqz p0, :cond_6

    .line 170
    iget-object p0, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->overlayView:Lcom/android/systemui/biometrics/UdfpsView;

    .line 172
    if-eqz p0, :cond_6

    .line 174
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsView;->getAnimationViewController()Lcom/android/systemui/biometrics/UdfpsAnimationViewController;

    .line 176
    :cond_6
    :goto_2
    return-void

    .line 179
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 180
    check-cast v0, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;

    .line 182
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 184
    check-cast p0, Ljava/lang/String;

    .line 186
    iget-object v0, v0, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;->this$0:Lcom/android/systemui/biometrics/UdfpsController;

    .line 188
    iget-object v0, v0, Lcom/android/systemui/biometrics/UdfpsController;->mOverlay:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    .line 190
    if-eqz v0, :cond_9

    .line 192
    iget-object v0, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->overlayView:Lcom/android/systemui/biometrics/UdfpsView;

    .line 194
    if-nez v0, :cond_7

    .line 196
    goto :goto_4

    .line 198
    :cond_7
    const/4 v1, 0x0

    .line 199
    :goto_4
    if-eqz v1, :cond_8

    .line 200
    goto :goto_5

    .line 202
    :cond_8
    invoke-virtual {v0, p0}, Lcom/android/systemui/biometrics/UdfpsView;->setDebugMessage(Ljava/lang/String;)V

    .line 203
    :cond_9
    :goto_5
    return-void

    .line 206
    nop

    .line 207
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 208
.end method
