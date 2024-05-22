.class public final Lcom/miui/charge/container/MiuiChargeAnimationView$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mEnabled:Z

.field public mOrientation:I

.field public final mRate:I

.field public final mSensor:Landroid/hardware/Sensor;

.field public final mSensorEventListener:Lcom/miui/charge/OrientationEventListenerWrapper$SensorEventListenerImpl;

.field public final mSensorManager:Landroid/hardware/SensorManager;

.field public final synthetic this$0:Lcom/miui/charge/container/MiuiChargeAnimationView;


# direct methods
.method public constructor <init>(Lcom/miui/charge/container/MiuiChargeAnimationView;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView$1;->this$0:Lcom/miui/charge/container/MiuiChargeAnimationView;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView$1;->mOrientation:I

    .line 8
    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView$1;->mEnabled:Z

    .line 11
    const-string/jumbo p1, "sensor"

    .line 13
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 19
    check-cast p1, Landroid/hardware/SensorManager;

    .line 20
    iput-object p1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView$1;->mSensorManager:Landroid/hardware/SensorManager;

    .line 22
    const/4 p2, 0x3

    .line 24
    iput p2, p0, Lcom/miui/charge/container/MiuiChargeAnimationView$1;->mRate:I

    .line 25
    const/4 p2, 0x1

    .line 27
    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 28
    move-result-object p1

    .line 31
    iput-object p1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView$1;->mSensor:Landroid/hardware/Sensor;

    .line 32
    if-eqz p1, :cond_0

    .line 34
    new-instance p1, Lcom/miui/charge/OrientationEventListenerWrapper$SensorEventListenerImpl;

    .line 36
    invoke-direct {p1, p0}, Lcom/miui/charge/OrientationEventListenerWrapper$SensorEventListenerImpl;-><init>(Lcom/miui/charge/container/MiuiChargeAnimationView$1;)V

    .line 38
    iput-object p1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView$1;->mSensorEventListener:Lcom/miui/charge/OrientationEventListenerWrapper$SensorEventListenerImpl;

    .line 41
    :cond_0
    return-void
    .line 43
.end method
