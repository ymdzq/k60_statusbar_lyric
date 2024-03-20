.class public interface abstract Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# virtual methods
.method public onDeviceProvisionedChanged()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onFrpActiveChanged()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onUserSetupChanged()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onUserSwitched()V
    .locals 0

    .line 1
    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;->onUserSetupChanged()V

    .line 2
    return-void
    .line 5
.end method
