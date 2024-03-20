.class public abstract Lcom/miui/charge/ChargeUtils;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final SUPPORT_DOUBLE_CHARGE:Z

.field public static final SUPPORT_WIRELESS_CHARGE:Z

.field public static mIsSupportLiteChargeList:Ljava/util/List; = null

.field public static sBatteryStatus:Lcom/miui/charge/MiuiBatteryStatus; = null

.field public static sChargeAnimationDisabled:Z = false

.field public static sNeedRepositionDevice:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "persist.vendor.accelerate.charge"

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 5
    move-result v0

    .line 8
    sput-boolean v0, Lcom/miui/charge/ChargeUtils;->SUPPORT_DOUBLE_CHARGE:Z

    .line 9
    new-instance v0, Ljava/io/File;

    .line 11
    const-string v2, "/sys/class/power_supply/wireless/signal_strength"

    .line 13
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 18
    move-result v0

    .line 21
    sput-boolean v0, Lcom/miui/charge/ChargeUtils;->SUPPORT_WIRELESS_CHARGE:Z

    .line 22
    sput-boolean v1, Lcom/miui/charge/ChargeUtils;->sNeedRepositionDevice:Z

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    .line 26
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    .line 31
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    sput-object v0, Lcom/miui/charge/ChargeUtils;->mIsSupportLiteChargeList:Ljava/util/List;

    .line 36
    return-void
    .line 38
.end method

.method public static getChargeAnimationType()I
    .locals 2

    .line 1
    const-class v0, Lmiui/stub/MiuiStub$2;

    .line 2
    invoke-static {v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lmiui/stub/MiuiStub$2;

    .line 8
    iget-object v0, v0, Lmiui/stub/MiuiStub$2;->this$0:Lmiui/stub/MiuiStub;

    .line 10
    iget-object v0, v0, Lmiui/stub/MiuiStub;->mSysUIProvider:Lmiui/stub/MiuiStub$SysUIProvider;

    .line 12
    iget-object v0, v0, Lmiui/stub/MiuiStub$SysUIProvider;->mUserTracker:Ldagger/Lazy;

    .line 14
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 19
    check-cast v0, Lcom/android/systemui/settings/UserTracker;

    .line 20
    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 22
    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserContext()Landroid/content/Context;

    .line 24
    move-result-object v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 30
    move-result-object v0

    .line 33
    const v1, 0x7f0b006e    # @integer/keyguard_charge_animation_type '1'

    .line 34
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 37
    move-result v0

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 v0, 0x1

    .line 42
    :goto_0
    invoke-static {}, Lcom/miui/charge/ChargeUtils;->isLiteChargeAnimation()Z

    .line 43
    move-result v1

    .line 46
    if-eqz v1, :cond_1

    .line 47
    const/4 v0, 0x0

    .line 49
    :cond_1
    return v0
    .line 50
.end method

.method public static getChargeSpeed(II)I
    .locals 3

    .line 1
    const/16 v0, 0xa

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eq p0, v0, :cond_0

    .line 5
    const/16 v0, 0xb

    .line 7
    if-ne p0, v0, :cond_7

    .line 9
    :cond_0
    const/4 p0, 0x4

    .line 11
    const/4 v0, 0x1

    .line 12
    if-ne p1, p0, :cond_1

    .line 13
    move p0, v0

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    move p0, v1

    .line 17
    :goto_0
    const/4 v2, 0x3

    .line 18
    if-eqz p0, :cond_2

    .line 19
    move v1, v2

    .line 21
    goto :goto_4

    .line 22
    :cond_2
    const/4 p0, 0x2

    .line 23
    if-eq p1, p0, :cond_4

    .line 24
    if-ne p1, v2, :cond_3

    .line 26
    goto :goto_1

    .line 28
    :cond_3
    move v2, v1

    .line 29
    goto :goto_2

    .line 30
    :cond_4
    :goto_1
    move v2, v0

    .line 31
    :goto_2
    if-eqz v2, :cond_5

    .line 32
    move v1, p0

    .line 34
    goto :goto_4

    .line 35
    :cond_5
    if-ne p1, v0, :cond_6

    .line 36
    move p0, v0

    .line 38
    goto :goto_3

    .line 39
    :cond_6
    move p0, v1

    .line 40
    :goto_3
    if-eqz p0, :cond_7

    .line 41
    move v1, v0

    .line 43
    :cond_7
    :goto_4
    return v1
    .line 44
.end method

.method public static getChargingHintText(IZLandroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    sget-boolean p1, Lcom/miui/charge/ChargeUtils;->SUPPORT_WIRELESS_CHARGE:Z

    .line 6
    if-eqz p1, :cond_1

    .line 8
    sget-boolean p1, Lcom/miui/charge/ChargeUtils;->sNeedRepositionDevice:Z

    .line 10
    if-eqz p1, :cond_1

    .line 12
    const p0, 0x7f130d1e    # @string/wireless_charge_reset_device 'Charging is slow. Adjust your device.'

    .line 14
    invoke-virtual {p2, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :cond_1
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 22
    move-result-object p1

    .line 25
    const/16 p2, 0x64

    .line 26
    if-ne p0, p2, :cond_2

    .line 28
    const p0, 0x7f1305b9    # @string/keyguard_charged 'Charged'

    .line 30
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 36
    goto/16 :goto_3

    .line 37
    :cond_2
    const-class p2, Lcom/miui/charge/MiuiChargeManager;

    .line 39
    invoke-static {p2}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 41
    move-result-object p2

    .line 44
    check-cast p2, Lcom/miui/charge/MiuiChargeManager;

    .line 45
    iget-object p2, p2, Lcom/miui/charge/MiuiChargeManager;->mBatteryStatus:Lcom/miui/charge/MiuiBatteryStatus;

    .line 47
    const/4 v0, 0x1

    .line 49
    const/4 v1, 0x0

    .line 50
    if-eqz p2, :cond_3

    .line 51
    iget p2, p2, Lcom/miui/charge/MiuiBatteryStatus;->chargeSpeed:I

    .line 53
    const/4 v2, 0x3

    .line 55
    if-ne p2, v2, :cond_3

    .line 56
    move p2, v0

    .line 58
    goto :goto_0

    .line 59
    :cond_3
    move p2, v1

    .line 60
    :goto_0
    const v2, 0x7f1305c2    # @string/keyguard_charging_super_quick_and_level_tip 'Charging rapidly %d%%'

    .line 61
    if-eqz p2, :cond_5

    .line 64
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    move-result-object p2

    .line 69
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 70
    move-result-object p2

    .line 73
    invoke-virtual {p1, v2, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 74
    move-result-object p2

    .line 77
    const-class v0, Lcom/miui/charge/MiuiChargeController;

    .line 78
    invoke-static {v0}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 80
    move-result-object v0

    .line 83
    check-cast v0, Lcom/miui/charge/MiuiChargeController;

    .line 84
    iget-boolean v0, v0, Lcom/miui/charge/MiuiChargeController;->mIsFastCharge:Z

    .line 86
    if-eqz v0, :cond_4

    .line 88
    const p2, 0x7f1305bc    # @string/keyguard_charging_double_fast_and_level_tip 'Boosting charging speed %s'

    .line 90
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 93
    move-result-object p1

    .line 96
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    .line 97
    move-result-object p2

    .line 100
    int-to-float p0, p0

    .line 101
    const/high16 v0, 0x42c80000    # 100.0f

    .line 102
    div-float/2addr p0, v0

    .line 104
    float-to-double v0, p0

    .line 105
    invoke-virtual {p2, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 106
    move-result-object p0

    .line 109
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 110
    move-result-object p0

    .line 113
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 114
    move-result-object p0

    .line 117
    goto :goto_3

    .line 118
    :cond_4
    move-object p0, p2

    .line 119
    goto :goto_3

    .line 120
    :cond_5
    const-class p2, Lcom/miui/charge/MiuiChargeManager;

    .line 121
    invoke-static {p2}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 123
    move-result-object p2

    .line 126
    check-cast p2, Lcom/miui/charge/MiuiChargeManager;

    .line 127
    iget-object p2, p2, Lcom/miui/charge/MiuiChargeManager;->mBatteryStatus:Lcom/miui/charge/MiuiBatteryStatus;

    .line 129
    if-eqz p2, :cond_6

    .line 131
    iget p2, p2, Lcom/miui/charge/MiuiBatteryStatus;->chargeSpeed:I

    .line 133
    const/4 v3, 0x2

    .line 135
    if-ne p2, v3, :cond_6

    .line 136
    move p2, v0

    .line 138
    goto :goto_1

    .line 139
    :cond_6
    move p2, v1

    .line 140
    :goto_1
    if-eqz p2, :cond_7

    .line 141
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 143
    move-result-object p0

    .line 146
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 147
    move-result-object p0

    .line 150
    invoke-virtual {p1, v2, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 151
    move-result-object p0

    .line 154
    goto :goto_3

    .line 155
    :cond_7
    const-class p2, Lcom/miui/charge/MiuiChargeManager;

    .line 156
    invoke-static {p2}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 158
    move-result-object p2

    .line 161
    check-cast p2, Lcom/miui/charge/MiuiChargeManager;

    .line 162
    iget-object p2, p2, Lcom/miui/charge/MiuiChargeManager;->mBatteryStatus:Lcom/miui/charge/MiuiBatteryStatus;

    .line 164
    if-eqz p2, :cond_8

    .line 166
    iget p2, p2, Lcom/miui/charge/MiuiBatteryStatus;->chargeSpeed:I

    .line 168
    if-ne p2, v0, :cond_8

    .line 170
    goto :goto_2

    .line 172
    :cond_8
    move v0, v1

    .line 173
    :goto_2
    if-eqz v0, :cond_9

    .line 174
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 176
    move-result-object p0

    .line 179
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 180
    move-result-object p0

    .line 183
    const p2, 0x7f1305c1    # @string/keyguard_charging_quick_and_level_tip 'Fast charging %d%%'

    .line 184
    invoke-virtual {p1, p2, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 187
    move-result-object p0

    .line 190
    goto :goto_3

    .line 191
    :cond_9
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 192
    move-result-object p0

    .line 195
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 196
    move-result-object p0

    .line 199
    const p2, 0x7f1305c0    # @string/keyguard_charging_normal_and_level_tip 'Charging %d%%'

    .line 200
    invoke-virtual {p1, p2, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 203
    move-result-object p0

    .line 206
    :goto_3
    return-object p0
    .line 207
.end method

.method public static isLiteChargeAnimation()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/miui/utils/configs/MiuiConfigs;->isLowEndDevice()Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    const-class v0, Lmiui/stub/MiuiStub$2;

    .line 8
    invoke-static {v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 13
    check-cast v0, Lmiui/stub/MiuiStub$2;

    .line 14
    iget-object v0, v0, Lmiui/stub/MiuiStub$2;->this$0:Lmiui/stub/MiuiStub;

    .line 16
    iget-object v0, v0, Lmiui/stub/MiuiStub;->mSysUIProvider:Lmiui/stub/MiuiStub$SysUIProvider;

    .line 18
    iget-object v0, v0, Lmiui/stub/MiuiStub$SysUIProvider;->mUserTracker:Ldagger/Lazy;

    .line 20
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 25
    check-cast v0, Lcom/android/systemui/settings/UserTracker;

    .line 26
    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 28
    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserContext()Landroid/content/Context;

    .line 30
    move-result-object v0

    .line 33
    sget-object v1, Lcom/miui/charge/ChargeUtils;->mIsSupportLiteChargeList:Ljava/util/List;

    .line 34
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 36
    move-result v1

    .line 39
    if-eqz v1, :cond_0

    .line 40
    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 44
    move-result-object v0

    .line 47
    const v1, 0x7f03004b    # @array/config_charge_support_lite

    .line 48
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 54
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 55
    move-result-object v0

    .line 58
    sput-object v0, Lcom/miui/charge/ChargeUtils;->mIsSupportLiteChargeList:Ljava/util/List;

    .line 59
    :cond_0
    sget-object v0, Lcom/miui/charge/ChargeUtils;->mIsSupportLiteChargeList:Ljava/util/List;

    .line 61
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 63
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 65
    move-result v0

    .line 68
    if-eqz v0, :cond_1

    .line 69
    goto :goto_0

    .line 71
    :cond_1
    const/4 v0, 0x0

    .line 72
    goto :goto_1

    .line 73
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 74
    :goto_1
    return v0
    .line 75
.end method

.method public static isLiteChargeAnimationPad()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/miui/charge/ChargeUtils;->isLiteChargeAnimation()Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
    .line 15
.end method

.method public static supportParticleChargeAnimation()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/miui/charge/ChargeUtils;->getChargeAnimationType()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x3

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
    .line 12
.end method

.method public static supportWaveChargeAnimation()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/miui/charge/ChargeUtils;->getChargeAnimationType()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
    .line 12
.end method
