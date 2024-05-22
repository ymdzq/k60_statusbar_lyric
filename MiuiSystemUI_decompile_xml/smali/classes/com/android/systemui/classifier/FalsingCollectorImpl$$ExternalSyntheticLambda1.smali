.class public final synthetic Lcom/android/systemui/classifier/FalsingCollectorImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/classifier/FalsingCollectorImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/classifier/FalsingCollectorImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/classifier/FalsingCollectorImpl;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onThresholdCrossed(Lcom/android/systemui/util/sensors/ThresholdSensorEvent;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/classifier/FalsingCollectorImpl;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance v0, Lcom/android/systemui/classifier/FalsingCollectorImpl$ProximityEventImpl;

    .line 7
    invoke-direct {v0, p1}, Lcom/android/systemui/classifier/FalsingCollectorImpl$ProximityEventImpl;-><init>(Lcom/android/systemui/util/sensors/ThresholdSensorEvent;)V

    .line 9
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 12
    invoke-interface {p0, v0}, Lcom/android/systemui/plugins/FalsingManager;->onProximityEvent(Lcom/android/systemui/plugins/FalsingManager$ProximityEvent;)V

    .line 14
    return-void
    .line 17
.end method
