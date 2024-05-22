.class public final Lcom/android/systemui/stylus/StylusUsiPowerStartable;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/CoreStartable;
.implements Lcom/android/systemui/stylus/StylusManager$StylusCallback;


# instance fields
.field public final featureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public final inputManager:Landroid/hardware/input/InputManager;

.field public final stylusManager:Lcom/android/systemui/stylus/StylusManager;

.field public final stylusUsiPowerUi:Lcom/android/systemui/stylus/StylusUsiPowerUI;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/stylus/StylusUsiPowerStartable;

    .line 2
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    .line 8
    return-void
    .line 11
.end method

.method public constructor <init>(Lcom/android/systemui/stylus/StylusManager;Landroid/hardware/input/InputManager;Lcom/android/systemui/stylus/StylusUsiPowerUI;Lcom/android/systemui/flags/FeatureFlags;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/stylus/StylusUsiPowerStartable;->stylusManager:Lcom/android/systemui/stylus/StylusManager;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/stylus/StylusUsiPowerStartable;->inputManager:Landroid/hardware/input/InputManager;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/stylus/StylusUsiPowerStartable;->stylusUsiPowerUi:Lcom/android/systemui/stylus/StylusUsiPowerUI;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/stylus/StylusUsiPowerStartable;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final onStylusAdded(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/stylus/StylusUsiPowerStartable;->inputManager:Landroid/hardware/input/InputManager;

    .line 2
    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    .line 4
    move-result-object p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/view/InputDevice;->isExternal()Z

    .line 11
    move-result p1

    .line 14
    if-nez p1, :cond_1

    .line 15
    iget-object p0, p0, Lcom/android/systemui/stylus/StylusUsiPowerStartable;->stylusUsiPowerUi:Lcom/android/systemui/stylus/StylusUsiPowerUI;

    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    new-instance p1, Lcom/android/systemui/stylus/StylusUsiPowerUI$updateSuppression$1;

    .line 22
    const/4 v0, 0x0

    .line 24
    invoke-direct {p1, p0, v0}, Lcom/android/systemui/stylus/StylusUsiPowerUI$updateSuppression$1;-><init>(Lcom/android/systemui/stylus/StylusUsiPowerUI;Z)V

    .line 25
    iget-object p0, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI;->handler:Landroid/os/Handler;

    .line 28
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    :cond_1
    return-void
    .line 33
.end method

.method public final onStylusBluetoothChargingStateChanged()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onStylusBluetoothConnected()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onStylusBluetoothDisconnected()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onStylusFirstUsed()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onStylusRemoved()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onStylusUsiBatteryStateChanged(ILandroid/hardware/BatteryState;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/hardware/BatteryState;->isPresent()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p2}, Landroid/hardware/BatteryState;->getCapacity()F

    .line 8
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    cmpl-float v0, v0, v1

    .line 13
    if-lez v0, :cond_0

    .line 15
    iget-object p0, p0, Lcom/android/systemui/stylus/StylusUsiPowerStartable;->stylusUsiPowerUi:Lcom/android/systemui/stylus/StylusUsiPowerUI;

    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    new-instance v0, Lcom/android/systemui/stylus/StylusUsiPowerUI$updateBatteryState$1;

    .line 22
    invoke-direct {v0, p2, p0, p1}, Lcom/android/systemui/stylus/StylusUsiPowerUI$updateBatteryState$1;-><init>(Landroid/hardware/BatteryState;Lcom/android/systemui/stylus/StylusUsiPowerUI;I)V

    .line 24
    iget-object p0, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI;->handler:Landroid/os/Handler;

    .line 27
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29
    :cond_0
    return-void
    .line 32
.end method

.method public final start()V
    .locals 8

    .line 1
    sget-object v0, Lcom/android/systemui/flags/Flags;->ENABLE_USI_BATTERY_NOTIFICATIONS:Lcom/android/systemui/flags/ReleasedFlag;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/stylus/StylusUsiPowerStartable;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 4
    check-cast v1, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 6
    invoke-virtual {v1, v0}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 8
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stylus/StylusUsiPowerStartable;->inputManager:Landroid/hardware/input/InputManager;

    .line 15
    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    .line 17
    move-result-object v0

    .line 20
    array-length v1, v0

    .line 21
    const/4 v2, 0x0

    .line 22
    const/4 v3, 0x1

    .line 23
    if-nez v1, :cond_1

    .line 24
    move v1, v3

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move v1, v2

    .line 28
    :goto_0
    if-eqz v1, :cond_2

    .line 29
    sget-object v0, Lkotlin/sequences/EmptySequence;->INSTANCE:Lkotlin/sequences/EmptySequence;

    .line 31
    goto :goto_1

    .line 33
    :cond_2
    new-instance v1, Lkotlin/collections/ArraysKt___ArraysKt$asSequence$$inlined$Sequence$1;

    .line 34
    invoke-direct {v1, v3, v0}, Lkotlin/collections/ArraysKt___ArraysKt$asSequence$$inlined$Sequence$1;-><init>(ILjava/lang/Object;)V

    .line 36
    move-object v0, v1

    .line 39
    :goto_1
    new-instance v1, Lcom/android/systemui/stylus/StylusUsiPowerStartable$hostDeviceSupportsStylusInput$1;

    .line 40
    invoke-direct {v1, p0}, Lcom/android/systemui/stylus/StylusUsiPowerStartable$hostDeviceSupportsStylusInput$1;-><init>(Lcom/android/systemui/stylus/StylusUsiPowerStartable;)V

    .line 42
    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->mapNotNull(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    .line 45
    move-result-object v0

    .line 48
    new-instance v1, Lkotlin/sequences/FilteringSequence$iterator$1;

    .line 49
    invoke-direct {v1, v0}, Lkotlin/sequences/FilteringSequence$iterator$1;-><init>(Lkotlin/sequences/FilteringSequence;)V

    .line 51
    :cond_3
    invoke-virtual {v1}, Lkotlin/sequences/FilteringSequence$iterator$1;->hasNext()Z

    .line 54
    move-result v0

    .line 57
    if-eqz v0, :cond_5

    .line 58
    invoke-virtual {v1}, Lkotlin/sequences/FilteringSequence$iterator$1;->next()Ljava/lang/Object;

    .line 60
    move-result-object v0

    .line 63
    check-cast v0, Landroid/view/InputDevice;

    .line 64
    const/16 v4, 0x4002

    .line 66
    invoke-virtual {v0, v4}, Landroid/view/InputDevice;->supportsSource(I)Z

    .line 68
    move-result v4

    .line 71
    if-eqz v4, :cond_4

    .line 72
    invoke-virtual {v0}, Landroid/view/InputDevice;->isExternal()Z

    .line 74
    move-result v0

    .line 77
    if-nez v0, :cond_4

    .line 78
    move v0, v3

    .line 80
    goto :goto_2

    .line 81
    :cond_4
    move v0, v2

    .line 82
    :goto_2
    if-eqz v0, :cond_3

    .line 83
    move v2, v3

    .line 85
    :cond_5
    if-nez v2, :cond_6

    .line 86
    return-void

    .line 88
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/stylus/StylusUsiPowerStartable;->stylusUsiPowerUi:Lcom/android/systemui/stylus/StylusUsiPowerUI;

    .line 89
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    new-instance v4, Landroid/content/IntentFilter;

    .line 94
    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 96
    const-string v1, "StylusUsiPowerUI.dismiss"

    .line 99
    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    const-string v1, "StylusUsiPowerUI.click"

    .line 104
    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    iget-object v1, v0, Lcom/android/systemui/stylus/StylusUsiPowerUI;->context:Landroid/content/Context;

    .line 109
    iget-object v2, v0, Lcom/android/systemui/stylus/StylusUsiPowerUI;->receiver:Lcom/android/systemui/stylus/StylusUsiPowerUI$receiver$1;

    .line 111
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 113
    const-string v5, "android.permission.DEVICE_POWER"

    .line 115
    iget-object v6, v0, Lcom/android/systemui/stylus/StylusUsiPowerUI;->handler:Landroid/os/Handler;

    .line 117
    const/4 v7, 0x4

    .line 119
    invoke-virtual/range {v1 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 120
    iget-object v0, p0, Lcom/android/systemui/stylus/StylusUsiPowerStartable;->stylusManager:Lcom/android/systemui/stylus/StylusManager;

    .line 123
    iget-object v1, v0, Lcom/android/systemui/stylus/StylusManager;->stylusCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 125
    invoke-virtual {v1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object p0, v0, Lcom/android/systemui/stylus/StylusManager;->handler:Landroid/os/Handler;

    .line 130
    new-instance v1, Lcom/android/systemui/stylus/StylusManager$startListener$1;

    .line 132
    invoke-direct {v1, v0}, Lcom/android/systemui/stylus/StylusManager$startListener$1;-><init>(Lcom/android/systemui/stylus/StylusManager;)V

    .line 134
    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 137
    return-void
    .line 140
.end method
