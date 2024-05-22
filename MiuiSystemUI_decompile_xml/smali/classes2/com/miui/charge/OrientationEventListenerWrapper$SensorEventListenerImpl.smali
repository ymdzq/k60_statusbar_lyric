.class public final Lcom/miui/charge/OrientationEventListenerWrapper$SensorEventListenerImpl;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field public final synthetic this$0:Lcom/miui/charge/container/MiuiChargeAnimationView$1;


# direct methods
.method public constructor <init>(Lcom/miui/charge/container/MiuiChargeAnimationView$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/charge/OrientationEventListenerWrapper$SensorEventListenerImpl;->this$0:Lcom/miui/charge/container/MiuiChargeAnimationView$1;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5

    .line 1
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 2
    const/4 v0, 0x0

    .line 4
    aget v0, p1, v0

    .line 5
    neg-float v0, v0

    .line 7
    const/4 v1, 0x1

    .line 8
    aget v1, p1, v1

    .line 9
    neg-float v1, v1

    .line 11
    const/4 v2, 0x2

    .line 12
    aget p1, p1, v2

    .line 13
    neg-float p1, p1

    .line 15
    mul-float v2, v0, v0

    .line 16
    mul-float v3, v1, v1

    .line 18
    add-float/2addr v3, v2

    .line 20
    const/high16 v2, 0x40800000    # 4.0f

    .line 21
    mul-float/2addr v3, v2

    .line 23
    mul-float/2addr p1, p1

    .line 24
    cmpl-float p1, v3, p1

    .line 25
    if-ltz p1, :cond_1

    .line 27
    neg-float p1, v1

    .line 29
    float-to-double v1, p1

    .line 30
    float-to-double v3, v0

    .line 31
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    .line 32
    move-result-wide v0

    .line 35
    double-to-float p1, v0

    .line 36
    const v0, 0x42652ee1

    .line 37
    mul-float/2addr p1, v0

    .line 40
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 41
    move-result p1

    .line 44
    rsub-int/lit8 p1, p1, 0x5a

    .line 45
    :goto_0
    const/16 v0, 0x168

    .line 47
    if-lt p1, v0, :cond_0

    .line 49
    add-int/lit16 p1, p1, -0x168

    .line 51
    goto :goto_0

    .line 53
    :cond_0
    :goto_1
    if-gez p1, :cond_2

    .line 54
    add-int/lit16 p1, p1, 0x168

    .line 56
    goto :goto_1

    .line 58
    :cond_1
    const/4 p1, -0x1

    .line 59
    :cond_2
    iget-object v0, p0, Lcom/miui/charge/OrientationEventListenerWrapper$SensorEventListenerImpl;->this$0:Lcom/miui/charge/container/MiuiChargeAnimationView$1;

    .line 60
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    iget-object p0, p0, Lcom/miui/charge/OrientationEventListenerWrapper$SensorEventListenerImpl;->this$0:Lcom/miui/charge/container/MiuiChargeAnimationView$1;

    .line 65
    iget v0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView$1;->mOrientation:I

    .line 67
    if-eq p1, v0, :cond_6

    .line 69
    iput p1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView$1;->mOrientation:I

    .line 71
    iget-object p0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView$1;->this$0:Lcom/miui/charge/container/MiuiChargeAnimationView;

    .line 73
    iget v0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mWireState:I

    .line 75
    const/16 v1, 0xb

    .line 77
    if-eq v0, v1, :cond_6

    .line 79
    iget-boolean v0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mSupportWaveChargeAnimation:Z

    .line 81
    if-eqz v0, :cond_3

    .line 83
    goto :goto_2

    .line 85
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 86
    const-string v1, "onOrientationChanged: "

    .line 88
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    move-result-object v0

    .line 99
    const-string v1, "MiuiChargeAnimationView"

    .line 100
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const/16 v0, 0x2d

    .line 105
    if-le p1, v0, :cond_4

    .line 107
    const/16 v0, 0x87

    .line 109
    if-ge p1, v0, :cond_4

    .line 111
    iget-object p1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->itemContainer:Landroid/view/ViewGroup;

    .line 113
    const/high16 v0, 0x43870000    # 270.0f

    .line 115
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setRotation(F)V

    .line 117
    iget-object p0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mChargeContainerView:Lcom/miui/charge/container/MiuiChargeContainerView;

    .line 120
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setRotation(F)V

    .line 122
    goto :goto_2

    .line 125
    :cond_4
    const/16 v0, 0xe1

    .line 126
    if-le p1, v0, :cond_5

    .line 128
    const/16 v0, 0x13b

    .line 130
    if-ge p1, v0, :cond_5

    .line 132
    iget-object p1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->itemContainer:Landroid/view/ViewGroup;

    .line 134
    const/high16 v0, 0x42b40000    # 90.0f

    .line 136
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setRotation(F)V

    .line 138
    iget-object p0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mChargeContainerView:Lcom/miui/charge/container/MiuiChargeContainerView;

    .line 141
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setRotation(F)V

    .line 143
    goto :goto_2

    .line 146
    :cond_5
    iget-object p1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->itemContainer:Landroid/view/ViewGroup;

    .line 147
    const/4 v0, 0x0

    .line 149
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setRotation(F)V

    .line 150
    iget-object p0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mChargeContainerView:Lcom/miui/charge/container/MiuiChargeContainerView;

    .line 153
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setRotation(F)V

    .line 155
    :cond_6
    :goto_2
    return-void
    .line 158
.end method
