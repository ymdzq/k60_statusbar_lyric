.class public final Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final foldedStates:[I

.field public final halfFoldedStates:[I

.field public final logBuffer:Lcom/android/systemui/log/LogBuffer;

.field public final rearDisplayStates:[I

.field public final unfoldedStates:[I


# direct methods
.method public constructor <init>(Lcom/android/systemui/log/LogBuffer;Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 5
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 7
    move-result-object p1

    .line 10
    const v0, 0x107006d    # @android:array/config_forceQueryablePackages

    .line 11
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 14
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger;->foldedStates:[I

    .line 18
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 20
    move-result-object p1

    .line 23
    const v0, 0x1070073    # @android:array/config_healthConnectRestoreKnownSigners

    .line 24
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 27
    move-result-object p1

    .line 30
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger;->halfFoldedStates:[I

    .line 31
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 33
    move-result-object p1

    .line 36
    const v0, 0x107009a    # @android:array/config_protectedNetworks

    .line 37
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 40
    move-result-object p1

    .line 43
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger;->unfoldedStates:[I

    .line 44
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 46
    move-result-object p1

    .line 49
    const p2, 0x10700a0    # @android:array/config_roundedCornerBottomRadiusAdjustmentArray

    .line 50
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 53
    move-result-object p1

    .line 56
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger;->rearDisplayStates:[I

    .line 57
    return-void
    .line 59
.end method

.method public static final access$toDevicePostureString(Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger;I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger;->foldedStates:[I

    .line 2
    invoke-static {p1, v0}, Lkotlin/collections/ArraysKt___ArraysKt;->contains(I[I)Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    const-string p0, "Folded"

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger;->unfoldedStates:[I

    .line 13
    invoke-static {p1, v0}, Lkotlin/collections/ArraysKt___ArraysKt;->contains(I[I)Z

    .line 15
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    const-string p0, "Unfolded"

    .line 21
    goto :goto_0

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger;->halfFoldedStates:[I

    .line 24
    invoke-static {p1, v0}, Lkotlin/collections/ArraysKt___ArraysKt;->contains(I[I)Z

    .line 26
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    const-string p0, "Half-Folded"

    .line 32
    goto :goto_0

    .line 34
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger;->rearDisplayStates:[I

    .line 35
    invoke-static {p1, p0}, Lkotlin/collections/ArraysKt___ArraysKt;->contains(I[I)Z

    .line 37
    move-result p0

    .line 40
    if-eqz p0, :cond_3

    .line 41
    const-string p0, "Rear display"

    .line 43
    goto :goto_0

    .line 45
    :cond_3
    const/4 p0, -0x1

    .line 46
    if-ne p1, p0, :cond_4

    .line 47
    const-string p0, "Uninitialized"

    .line 49
    goto :goto_0

    .line 51
    :cond_4
    const-string p0, "Unknown"

    .line 52
    :goto_0
    return-object p0
    .line 54
.end method
