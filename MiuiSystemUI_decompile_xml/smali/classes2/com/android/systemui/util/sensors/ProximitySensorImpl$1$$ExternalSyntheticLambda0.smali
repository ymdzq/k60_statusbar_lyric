.class public final synthetic Lcom/android/systemui/util/sensors/ProximitySensorImpl$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/util/sensors/ProximitySensorImpl$1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/util/sensors/ProximitySensorImpl$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/util/sensors/ProximitySensorImpl$1;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/util/sensors/ProximitySensorImpl$1;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl$1;->this$0:Lcom/android/systemui/util/sensors/ProximitySensorImpl;

    .line 4
    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mPrimaryThresholdSensor:Lcom/android/systemui/util/sensors/ThresholdSensor;

    .line 6
    invoke-interface {v0}, Lcom/android/systemui/util/sensors/ThresholdSensor;->pause()V

    .line 8
    iget-object p0, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mSecondaryThresholdSensor:Lcom/android/systemui/util/sensors/ThresholdSensor;

    .line 11
    invoke-interface {p0}, Lcom/android/systemui/util/sensors/ThresholdSensor;->resume()V

    .line 13
    return-void
    .line 16
.end method
