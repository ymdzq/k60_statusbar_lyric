.class public final Lcom/android/systemui/classifier/FalsingCollectorImpl$ProximityEventImpl;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/plugins/FalsingManager$ProximityEvent;


# instance fields
.field public final mThresholdSensorEvent:Lcom/android/systemui/util/sensors/ThresholdSensorEvent;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/sensors/ThresholdSensorEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl$ProximityEventImpl;->mThresholdSensorEvent:Lcom/android/systemui/util/sensors/ThresholdSensorEvent;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final getCovered()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl$ProximityEventImpl;->mThresholdSensorEvent:Lcom/android/systemui/util/sensors/ThresholdSensorEvent;

    .line 2
    iget-boolean p0, p0, Lcom/android/systemui/util/sensors/ThresholdSensorEvent;->mBelow:Z

    .line 4
    return p0
    .line 6
.end method

.method public final getTimestampNs()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl$ProximityEventImpl;->mThresholdSensorEvent:Lcom/android/systemui/util/sensors/ThresholdSensorEvent;

    .line 2
    iget-wide v0, p0, Lcom/android/systemui/util/sensors/ThresholdSensorEvent;->mTimestampNs:J

    .line 4
    return-wide v0
    .line 6
.end method
