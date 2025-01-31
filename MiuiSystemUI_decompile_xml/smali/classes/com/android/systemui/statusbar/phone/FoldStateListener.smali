.class public final Lcom/android/systemui/statusbar/phone/FoldStateListener;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;


# instance fields
.field public final foldedDeviceStates:[I

.field public final goToSleepDeviceStates:[I

.field public final listener:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda1;

.field public wasFolded:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/FoldStateListener;->listener:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda1;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 7
    move-result-object p2

    .line 10
    const v0, 0x107006d    # @android:array/config_forceQueryablePackages

    .line 11
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 14
    move-result-object p2

    .line 17
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/FoldStateListener;->foldedDeviceStates:[I

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 20
    move-result-object p1

    .line 23
    const p2, 0x107003f    # @android:array/config_deviceStatesToReverseDefaultDisplayRotationAroundZAxis

    .line 24
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 27
    move-result-object p1

    .line 30
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/FoldStateListener;->goToSleepDeviceStates:[I

    .line 31
    return-void
    .line 33
.end method


# virtual methods
.method public final onStateChanged(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FoldStateListener;->foldedDeviceStates:[I

    .line 2
    invoke-static {p1, v0}, Lkotlin/collections/ArraysKt___ArraysKt;->contains(I[I)Z

    .line 4
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FoldStateListener;->wasFolded:Ljava/lang/Boolean;

    .line 8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 10
    move-result-object v2

    .line 13
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    return-void

    .line 20
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 21
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/FoldStateListener;->wasFolded:Ljava/lang/Boolean;

    .line 25
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FoldStateListener;->goToSleepDeviceStates:[I

    .line 27
    invoke-static {p1, v0}, Lkotlin/collections/ArraysKt___ArraysKt;->contains(I[I)Z

    .line 29
    move-result p1

    .line 32
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/FoldStateListener;->listener:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda1;

    .line 33
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 35
    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    const-string v0, "CentralSurfaces#onFoldedStateChanged"

    .line 42
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    .line 47
    check-cast v0, Lcom/android/systemui/shade/ShadeControllerImpl;

    .line 49
    iget-object v1, v0, Lcom/android/systemui/shade/ShadeControllerImpl;->mNotificationPanelViewController:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 51
    invoke-virtual {v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->isShadeFullyExpanded()Z

    .line 53
    move-result v1

    .line 56
    iget-object v0, v0, Lcom/android/systemui/shade/ShadeControllerImpl;->mNotificationPanelViewController:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 57
    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isExpandingOrCollapsing()Z

    .line 59
    move-result v0

    .line 62
    const/4 v2, 0x1

    .line 63
    if-eqz v1, :cond_1

    .line 64
    if-nez p1, :cond_1

    .line 66
    iget p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mState:I

    .line 68
    if-nez p1, :cond_1

    .line 70
    move p1, v2

    .line 72
    goto :goto_0

    .line 73
    :cond_1
    const/4 p1, 0x0

    .line 74
    :goto_0
    if-eqz p1, :cond_2

    .line 75
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 77
    check-cast p1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 79
    iput-boolean v2, p1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mLeaveOpenOnKeyguardHide:Z

    .line 81
    :cond_2
    iget p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mState:I

    .line 83
    if-eqz p1, :cond_4

    .line 85
    if-nez v1, :cond_3

    .line 87
    if-eqz v0, :cond_4

    .line 89
    :cond_3
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCloseQsBeforeScreenOff:Z

    .line 91
    :cond_4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 93
    return-void
    .line 96
.end method
