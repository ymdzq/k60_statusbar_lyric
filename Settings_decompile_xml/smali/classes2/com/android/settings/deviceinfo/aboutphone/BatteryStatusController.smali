.class public Lcom/android/settings/deviceinfo/aboutphone/BatteryStatusController;
.super Lcom/android/settings/deviceinfo/aboutphone/BaseBatteryController;
.source "BatteryStatusController.java"


# static fields
.field public static final EXTRA_QUICK_CHARGE_TYPE:Ljava/lang/String; = "miui.intent.extra.quick_charge_type"

.field public static final NONE:I = -0x1

.field public static final NORMAL:I = 0x0

.field public static final QUICK:I = 0x1

.field public static final STRONG_SUPER_QUICK:I = 0x3

.field public static final SUPER_QUICK:I = 0x2

.field public static final UNKNOWN:I = -0x1

.field public static final WIRED:I = 0xb

.field public static final WIRELESS:I = 0xa


# instance fields
.field private final MSG_BATTERY_WHAT:I

.field private Tag:Ljava/lang/String;

.field private chargeDeviceType:I

.field private current:Landroid/os/Message;

.field private mBatteryStatus:Lsrc/com/android/settings/deviceinfo/aboutphone/MiuiBatteryStatus;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic -$$Nest$mnotifyBatteryStatusChanged(Lcom/android/settings/deviceinfo/aboutphone/BatteryStatusController;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/aboutphone/BatteryStatusController;->notifyBatteryStatusChanged(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 9

    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/deviceinfo/aboutphone/BaseBatteryController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    const-string p2, "BatteryStatusController"

    .line 59
    iput-object p2, p0, Lcom/android/settings/deviceinfo/aboutphone/BatteryStatusController;->Tag:Ljava/lang/String;

    const/4 p2, -0x1

    .line 64
    iput p2, p0, Lcom/android/settings/deviceinfo/aboutphone/BatteryStatusController;->chargeDeviceType:I

    const/16 p2, 0x322

    .line 66
    iput p2, p0, Lcom/android/settings/deviceinfo/aboutphone/BatteryStatusController;->MSG_BATTERY_WHAT:I

    .line 70
    iput-object p1, p0, Lcom/android/settings/deviceinfo/aboutphone/BatteryStatusController;->mContext:Landroid/content/Context;

    .line 71
    new-instance p1, Lsrc/com/android/settings/deviceinfo/aboutphone/MiuiBatteryStatus;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x1

    const/4 v8, -0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Lsrc/com/android/settings/deviceinfo/aboutphone/MiuiBatteryStatus;-><init>(IIIIIIII)V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/aboutphone/BatteryStatusController;->mBatteryStatus:Lsrc/com/android/settings/deviceinfo/aboutphone/MiuiBatteryStatus;

    .line 72
    new-instance p1, Lcom/android/settings/deviceinfo/aboutphone/BatteryStatusController$1;

    invoke-direct {p1, p0}, Lcom/android/settings/deviceinfo/aboutphone/BatteryStatusController$1;-><init>(Lcom/android/settings/deviceinfo/aboutphone/BatteryStatusController;)V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/aboutphone/BatteryStatusController;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private checkWireState(II)I
    .locals 4

    .line 0
    const/4 p0, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, p0

    :goto_0
    const/4 v3, 0x2

    if-eq p1, v0, :cond_1

    if-ne p1, v3, :cond_2

    :cond_1
    move p0, v0

    :cond_2
    if-eq p2, v3, :cond_3

    const/4 p1, 0x5

    if-eq p2, p1, :cond_3

    if-ne p2, v1, :cond_5

    :cond_3
    if-eqz v2, :cond_4

    const/16 p0, 0xa

    return p0

    :cond_4
    if-eqz p0, :cond_5

    const/16 p0, 0xb

    return p0

    :cond_5
    const/4 p0, -0x1

    return p0
.end method

.method private dualAuth(I)V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/android/settings/deviceinfo/aboutphone/BatteryStatusController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x322

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 128
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/aboutphone/BatteryStatusController;->current:Landroid/os/Message;

    .line 129
    iput v1, v0, Landroid/os/Message;->what:I

    .line 130
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 131
    iget-object p1, p0, Lcom/android/settings/deviceinfo/aboutphone/BatteryStatusController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/aboutphone/BatteryStatusController;->current:Landroid/os/Message;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private getCurrentChargeDeviceType(I)I
    .locals 1

    const/16 v0, 0xb

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    return p0

    .line 163
    :cond_1
    :goto_0
    iget p0, p0, Lcom/android/settings/deviceinfo/aboutphone/BatteryStatusController;->chargeDeviceType:I

    return p0
.end method

.method private isBatteryStatusChanged(III)Z
    .locals 2

    .line 151
    iget-object p0, p0, Lcom/android/settings/deviceinfo/aboutphone/BatteryStatusController;->mBatteryStatus:Lsrc/com/android/settings/deviceinfo/aboutphone/MiuiBatteryStatus;

    iget v0, p0, Lsrc/com/android/settings/deviceinfo/aboutphone/MiuiBatteryStatus;->level:I

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    .line 152
    iput p1, p0, Lsrc/com/android/settings/deviceinfo/aboutphone/MiuiBatteryStatus;->level:I

    return v1

    .line 155
    :cond_0
    iget p1, p0, Lsrc/com/android/settings/deviceinfo/aboutphone/MiuiBatteryStatus;->plugged:I

    if-ne p2, p1, :cond_2

    iget p0, p0, Lsrc/com/android/settings/deviceinfo/aboutphone/MiuiBatteryStatus;->status:I

    if-eq p3, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method private notifyBatteryStatusChanged(I)V
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/android/settings/deviceinfo/aboutphone/BatteryStatusController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/aboutphone/BatteryStatusController;->mBatteryStatus:Lsrc/com/android/settings/deviceinfo/aboutphone/MiuiBatteryStatus;

    iget v1, v1, Lsrc/com/android/settings/deviceinfo/aboutphone/MiuiBatteryStatus;->level:I

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/settings/deviceinfo/aboutphone/BatteryStatusController;->getChargingHintText(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p1

    .line 190
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget-object p0, p0, Lcom/android/settings/deviceinfo/aboutphone/BaseBatteryController;->mPreference:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public getChargingHintText(Landroid/content/Context;II)Ljava/lang/String;
    .locals 2

    .line 170
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 171
    iget-object p0, p0, Lcom/android/settings/deviceinfo/aboutphone/BatteryStatusController;->mBatteryStatus:Lsrc/com/android/settings/deviceinfo/aboutphone/MiuiBatteryStatus;

    iget v0, p0, Lsrc/com/android/settings/deviceinfo/aboutphone/MiuiBatteryStatus;->wireState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 172
    sget p0, Lcom/android/settings/R$string;->settings_charging_not_charging:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v0, 0x64

    if-ne p2, v0, :cond_1

    .line 175
    sget p0, Lcom/android/settings/R$string;->settings_charging_fully_charged:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_3

    const/4 v0, 0x3

    if-eq p3, v0, :cond_2

    const/4 v0, 0x2

    if-ne p3, v0, :cond_3

    .line 178
    :cond_2
    sget p0, Lcom/android/settings/R$string;->settings_charging_at_top_speed:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-ne p3, v0, :cond_4

    .line 180
    sget p0, Lcom/android/settings/R$string;->settings_charging_at_fast_speed:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_4
    if-eqz p0, :cond_5

    if-nez p3, :cond_5

    .line 182
    sget p0, Lcom/android/settings/R$string;->settings_charging_at_normal_speed:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_5
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public onBatteryChange(Landroid/content/Intent;)V
    .locals 6

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 86
    iget-object v2, p0, Lcom/android/settings/deviceinfo/aboutphone/BatteryStatusController;->Tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "in onBatteryChange, currentTime is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-super {p0, p1}, Lcom/android/settings/deviceinfo/aboutphone/BaseBatteryController;->onBatteryChange(Landroid/content/Intent;)V

    const-string/jumbo v0, "status"

    const/4 v1, 0x1

    .line 88
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v2, "plugged"

    const/4 v3, 0x0

    .line 89
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v4, "level"

    .line 90
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "health"

    .line 91
    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 92
    invoke-static {p1}, Lsrc/com/android/settings/deviceinfo/aboutphone/MiuiBatteryStatus;->getMaxChargingWattage(Landroid/content/Intent;)I

    move-result p1

    .line 95
    invoke-direct {p0, v2, v0}, Lcom/android/settings/deviceinfo/aboutphone/BatteryStatusController;->checkWireState(II)I

    move-result v4

    .line 97
    invoke-direct {p0, v3, v2, v0}, Lcom/android/settings/deviceinfo/aboutphone/BatteryStatusController;->isBatteryStatusChanged(III)Z

    move-result v3

    .line 98
    iget-object v5, p0, Lcom/android/settings/deviceinfo/aboutphone/BatteryStatusController;->mBatteryStatus:Lsrc/com/android/settings/deviceinfo/aboutphone/MiuiBatteryStatus;

    iput v2, v5, Lsrc/com/android/settings/deviceinfo/aboutphone/MiuiBatteryStatus;->plugged:I

    .line 99
    iput v4, v5, Lsrc/com/android/settings/deviceinfo/aboutphone/MiuiBatteryStatus;->wireState:I

    .line 100
    iput v0, v5, Lsrc/com/android/settings/deviceinfo/aboutphone/MiuiBatteryStatus;->status:I

    .line 101
    iput v1, v5, Lsrc/com/android/settings/deviceinfo/aboutphone/MiuiBatteryStatus;->health:I

    .line 102
    iput p1, v5, Lsrc/com/android/settings/deviceinfo/aboutphone/MiuiBatteryStatus;->maxChargingWattage:I

    if-eqz v3, :cond_0

    .line 105
    invoke-direct {p0, v4}, Lcom/android/settings/deviceinfo/aboutphone/BatteryStatusController;->getCurrentChargeDeviceType(I)I

    move-result p1

    iput p1, v5, Lsrc/com/android/settings/deviceinfo/aboutphone/MiuiBatteryStatus;->chargeDeviceType:I

    .line 106
    iget-object p1, p0, Lcom/android/settings/deviceinfo/aboutphone/BatteryStatusController;->mBatteryStatus:Lsrc/com/android/settings/deviceinfo/aboutphone/MiuiBatteryStatus;

    iget v0, p1, Lsrc/com/android/settings/deviceinfo/aboutphone/MiuiBatteryStatus;->wireState:I

    iget v1, p1, Lsrc/com/android/settings/deviceinfo/aboutphone/MiuiBatteryStatus;->chargeDeviceType:I

    invoke-static {v0, v1}, Lcom/android/settings/MiuiUtils;->getChargeSpeed(II)I

    move-result v0

    iput v0, p1, Lsrc/com/android/settings/deviceinfo/aboutphone/MiuiBatteryStatus;->chargeSpeed:I

    .line 107
    iget-object p1, p0, Lcom/android/settings/deviceinfo/aboutphone/BatteryStatusController;->mBatteryStatus:Lsrc/com/android/settings/deviceinfo/aboutphone/MiuiBatteryStatus;

    iget p1, p1, Lsrc/com/android/settings/deviceinfo/aboutphone/MiuiBatteryStatus;->chargeSpeed:I

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/aboutphone/BatteryStatusController;->dualAuth(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method

.method public wireQuickCharge(Landroid/content/Intent;)V
    .locals 5

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 114
    iget-object v2, p0, Lcom/android/settings/deviceinfo/aboutphone/BatteryStatusController;->Tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "in wireQuickCharge, currentTime is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "miui.intent.extra.quick_charge_type"

    const/4 v1, -0x1

    .line 115
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/deviceinfo/aboutphone/BatteryStatusController;->chargeDeviceType:I

    .line 116
    iget-object v0, p0, Lcom/android/settings/deviceinfo/aboutphone/BatteryStatusController;->mBatteryStatus:Lsrc/com/android/settings/deviceinfo/aboutphone/MiuiBatteryStatus;

    iget v1, v0, Lsrc/com/android/settings/deviceinfo/aboutphone/MiuiBatteryStatus;->wireState:I

    const/16 v2, 0xb

    if-eq v1, v2, :cond_0

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    :cond_0
    if-eqz v0, :cond_2

    if-gez p1, :cond_1

    goto :goto_0

    .line 120
    :cond_1
    iput p1, v0, Lsrc/com/android/settings/deviceinfo/aboutphone/MiuiBatteryStatus;->chargeDeviceType:I

    .line 121
    invoke-static {v1, p1}, Lcom/android/settings/MiuiUtils;->getChargeSpeed(II)I

    move-result p1

    iput p1, v0, Lsrc/com/android/settings/deviceinfo/aboutphone/MiuiBatteryStatus;->chargeSpeed:I

    .line 122
    iget-object p1, p0, Lcom/android/settings/deviceinfo/aboutphone/BatteryStatusController;->mBatteryStatus:Lsrc/com/android/settings/deviceinfo/aboutphone/MiuiBatteryStatus;

    iget p1, p1, Lsrc/com/android/settings/deviceinfo/aboutphone/MiuiBatteryStatus;->chargeSpeed:I

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/aboutphone/BatteryStatusController;->dualAuth(I)V

    :cond_2
    :goto_0
    return-void
.end method
