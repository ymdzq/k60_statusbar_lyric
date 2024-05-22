.class public final synthetic Lcom/android/systemui/util/sensors/PostureDependentProximitySensor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DevicePostureController$Callback;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/util/sensors/PostureDependentProximitySensor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/util/sensors/PostureDependentProximitySensor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/util/sensors/PostureDependentProximitySensor$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/util/sensors/PostureDependentProximitySensor;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onPostureChanged(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/util/sensors/PostureDependentProximitySensor$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/util/sensors/PostureDependentProximitySensor;

    .line 2
    iget v0, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mDevicePosture:I

    .line 4
    if-ne v0, p1, :cond_0

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    iput p1, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mDevicePosture:I

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/util/sensors/PostureDependentProximitySensor;->chooseSensors()V

    .line 11
    :goto_0
    return-void
    .line 14
.end method
