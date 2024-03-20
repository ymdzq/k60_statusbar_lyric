.class public interface abstract Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterController;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/ProvidesInterface;
    version = 0x1
.end annotation


# static fields
.field public static final VERSION:I = 0x1


# virtual methods
.method public abstract addCallback(Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterController$UseControlCenterChangeListener;)V
.end method

.method public abstract boostSystemUI(Landroid/view/View;Z)V
.end method

.method public abstract expandNotificationPanelWithAnimation()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public getControlCenterClockView(Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public getControlCenterDateView(Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public getControlCenterStatusBarView(Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public abstract getCurrentUserId()I
.end method

.method public abstract getFakeStatusBarViewController()Lcom/android/systemui/plugins/miui/controlcenter/FakeStatusBarViewController;
.end method

.method public abstract isExpandable()Z
.end method

.method public abstract isGrayBlurDim()Z
.end method

.method public abstract isNCAccept()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract isNCSwitching()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract isPanelEnabled()Z
.end method

.method public abstract isSuperPowerMode()Z
.end method

.method public abstract isUseControlCenter()Z
.end method

.method public abstract notifySwitchToNotification()V
.end method

.method public abstract provideBrightnessController()Lcom/android/systemui/plugins/miui/controlcenter/BrightnessControllerBase;
.end method

.method public abstract removeCallback(Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterController$UseControlCenterChangeListener;)V
.end method

.method public abstract requestNCSwitching(Z)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setBlurRatio(F)V
.end method

.method public abstract showDeviceMonitoringDialog()V
.end method

.method public abstract switchBlur(Z)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract trimMemory()V
.end method
