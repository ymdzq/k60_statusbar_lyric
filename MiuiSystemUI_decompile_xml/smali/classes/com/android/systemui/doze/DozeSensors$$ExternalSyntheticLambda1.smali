.class public final synthetic Lcom/android/systemui/doze/DozeSensors$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/doze/DozeSensors;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/doze/DozeSensors;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/doze/DozeSensors$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/doze/DozeSensors;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onThresholdCrossed(Lcom/android/systemui/util/sensors/ThresholdSensorEvent;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/doze/DozeSensors;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    if-eqz p1, :cond_0

    .line 7
    iget-boolean p1, p1, Lcom/android/systemui/util/sensors/ThresholdSensorEvent;->mBelow:Z

    .line 9
    xor-int/lit8 p1, p1, 0x1

    .line 11
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 13
    move-result-object p1

    .line 16
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mProxCallback:Ljava/util/function/Consumer;

    .line 17
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 19
    :cond_0
    return-void
    .line 22
.end method
