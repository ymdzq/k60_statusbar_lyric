.class public final synthetic Lcom/android/systemui/util/sensors/ProximityCheck$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/util/sensors/ProximityCheck;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/util/sensors/ProximityCheck;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/util/sensors/ProximityCheck$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/util/sensors/ProximityCheck;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onThresholdCrossed(Lcom/android/systemui/util/sensors/ThresholdSensorEvent;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/util/sensors/ProximityCheck$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/util/sensors/ProximityCheck;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/systemui/util/sensors/ProximityCheck;->onProximityEvent(Lcom/android/systemui/util/sensors/ThresholdSensorEvent;)V

    .line 4
    return-void
    .line 7
.end method
