.class public Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final TYPE_SKIP_STATUS:I = 0x4

.field public static final TYPE_SWIPE:I = 0x3

.field public static final TYPE_WAKE_DISPLAY:I = 0x2

.field public static final TYPE_WAKE_LOCK_SCREEN:I = 0x1


# instance fields
.field private mType:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;->mType:I

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public getType()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;->mType:I

    .line 2
    return p0
    .line 4
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string/jumbo v1, "{PluginSensor type=\""

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    iget p0, p0, Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;->mType:I

    .line 10
    const-string v1, "\"}"

    .line 12
    invoke-static {v0, p0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 17
    return-object p0
    .line 18
.end method
