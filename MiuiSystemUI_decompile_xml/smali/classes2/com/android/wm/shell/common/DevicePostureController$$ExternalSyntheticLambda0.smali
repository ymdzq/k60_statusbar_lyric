.class public final synthetic Lcom/android/wm/shell/common/DevicePostureController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/common/DevicePostureController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/common/DevicePostureController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/common/DevicePostureController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/common/DevicePostureController;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/common/DevicePostureController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/common/DevicePostureController;

    .line 2
    check-cast p1, Lcom/android/wm/shell/common/DevicePostureController$OnDevicePostureChangedListener;

    .line 4
    iget p0, p0, Lcom/android/wm/shell/common/DevicePostureController;->mDevicePosture:I

    .line 6
    check-cast p1, Lcom/android/wm/shell/common/TabletopModeController;

    .line 8
    iget v0, p1, Lcom/android/wm/shell/common/TabletopModeController;->mDevicePosture:I

    .line 10
    if-eq v0, p0, :cond_0

    .line 12
    iget v0, p1, Lcom/android/wm/shell/common/TabletopModeController;->mDisplayRotation:I

    .line 14
    invoke-virtual {p1, p0, v0}, Lcom/android/wm/shell/common/TabletopModeController;->onDevicePostureOrDisplayRotationChanged(II)V

    .line 16
    :cond_0
    return-void
    .line 19
.end method
