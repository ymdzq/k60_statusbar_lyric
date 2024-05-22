.class public interface abstract Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


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
