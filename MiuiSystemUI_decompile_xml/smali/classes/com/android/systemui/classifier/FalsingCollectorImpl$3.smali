.class public final Lcom/android/systemui/classifier/FalsingCollectorImpl$3;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/classifier/FalsingCollectorImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/classifier/FalsingCollectorImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl$3;->this$0:Lcom/android/systemui/classifier/FalsingCollectorImpl;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onBatteryLevelChanged(IZZ)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onWirelessChargingChanged(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl$3;->this$0:Lcom/android/systemui/classifier/FalsingCollectorImpl;

    .line 2
    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mDockManager:Lcom/android/systemui/dock/DockManager;

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mProximitySensor:Lcom/android/systemui/util/sensors/ProximitySensor;

    .line 11
    check-cast p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;

    .line 13
    invoke-virtual {p0}, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->resume()V

    .line 15
    goto :goto_0

    .line 18
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mProximitySensor:Lcom/android/systemui/util/sensors/ProximitySensor;

    .line 19
    check-cast p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;

    .line 21
    invoke-virtual {p0}, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->pause()V

    .line 23
    :goto_0
    return-void
    .line 26
.end method
