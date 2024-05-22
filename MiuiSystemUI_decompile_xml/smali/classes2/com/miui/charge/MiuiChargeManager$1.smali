.class public final Lcom/miui/charge/MiuiChargeManager$1;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/miui/charge/MiuiChargeManager;


# direct methods
.method public constructor <init>(Lcom/miui/charge/MiuiChargeManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/charge/MiuiChargeManager$1;->this$0:Lcom/miui/charge/MiuiChargeManager;

    .line 2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    move-result-object p1

    .line 5
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result p1

    .line 11
    const/4 v0, -0x1

    .line 12
    if-eqz p1, :cond_10

    .line 13
    const-string/jumbo p1, "status"

    .line 15
    const/4 v1, 0x1

    .line 18
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 19
    move-result p1

    .line 22
    const-string v2, "plugged"

    .line 23
    const/4 v3, 0x0

    .line 25
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 26
    move-result v2

    .line 29
    const-string v4, "level"

    .line 30
    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 32
    move-result v4

    .line 35
    const-string v5, "android.os.extra.CHARGING_STATUS"

    .line 36
    invoke-virtual {p2, v5, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 38
    move-result p2

    .line 41
    iget-object v5, p0, Lcom/miui/charge/MiuiChargeManager$1;->this$0:Lcom/miui/charge/MiuiChargeManager;

    .line 42
    iput v4, v5, Lcom/miui/charge/MiuiChargeManager;->mRealLevel:I

    .line 44
    const/4 v5, 0x3

    .line 46
    if-ne p1, v5, :cond_0

    .line 47
    const-class v5, Lcom/miui/charge/MiuiChargeController;

    .line 49
    invoke-static {v5}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 51
    move-result-object v5

    .line 54
    check-cast v5, Lcom/miui/charge/MiuiChargeController;

    .line 55
    iput-boolean v1, v5, Lcom/miui/charge/MiuiChargeController;->mStateInitialized:Z

    .line 57
    :cond_0
    invoke-static {v2, p1}, Lcom/miui/charge/MiuiBatteryStatus;->checkWireState(II)I

    .line 59
    move-result v5

    .line 62
    iget-object v6, p0, Lcom/miui/charge/MiuiChargeManager$1;->this$0:Lcom/miui/charge/MiuiChargeManager;

    .line 63
    iget-object v7, v6, Lcom/miui/charge/MiuiChargeManager;->mBatteryStatus:Lcom/miui/charge/MiuiBatteryStatus;

    .line 65
    iget v8, v7, Lcom/miui/charge/MiuiBatteryStatus;->plugged:I

    .line 67
    const/4 v9, 0x4

    .line 69
    const/4 v10, 0x2

    .line 70
    if-eq v8, v1, :cond_2

    .line 71
    if-eq v8, v10, :cond_2

    .line 73
    if-ne v8, v9, :cond_1

    .line 75
    goto :goto_0

    .line 77
    :cond_1
    move v11, v3

    .line 78
    goto :goto_1

    .line 79
    :cond_2
    :goto_0
    move v11, v1

    .line 80
    :goto_1
    if-nez v11, :cond_5

    .line 81
    if-eq v2, v1, :cond_4

    .line 83
    if-eq v2, v10, :cond_4

    .line 85
    if-ne v2, v9, :cond_3

    .line 87
    goto :goto_2

    .line 89
    :cond_3
    move v11, v3

    .line 90
    goto :goto_3

    .line 91
    :cond_4
    :goto_2
    move v11, v1

    .line 92
    :goto_3
    if-eqz v11, :cond_5

    .line 93
    iput-boolean v3, v6, Lcom/miui/charge/MiuiChargeManager;->mIsChargeLevelAnimationRunning:Z

    .line 95
    iput-boolean v3, v6, Lcom/miui/charge/MiuiChargeManager;->mNotUpdateLevelWhenBatteryChange:Z

    .line 97
    :cond_5
    iget v11, v7, Lcom/miui/charge/MiuiBatteryStatus;->level:I

    .line 99
    if-eq v4, v11, :cond_8

    .line 101
    iget-boolean v11, v6, Lcom/miui/charge/MiuiChargeManager;->mIsChargeLevelAnimationRunning:Z

    .line 103
    if-nez v11, :cond_6

    .line 105
    iget-boolean v11, v6, Lcom/miui/charge/MiuiChargeManager;->mNotUpdateLevelWhenBatteryChange:Z

    .line 107
    if-eqz v11, :cond_7

    .line 109
    :cond_6
    const/16 v11, 0x64

    .line 111
    if-ne v4, v11, :cond_8

    .line 113
    :cond_7
    iput v4, v7, Lcom/miui/charge/MiuiBatteryStatus;->level:I

    .line 115
    goto :goto_4

    .line 117
    :cond_8
    if-ne v2, v8, :cond_a

    .line 118
    iget v4, v7, Lcom/miui/charge/MiuiBatteryStatus;->status:I

    .line 120
    if-eq p1, v4, :cond_9

    .line 122
    goto :goto_4

    .line 124
    :cond_9
    move v4, v3

    .line 125
    goto :goto_5

    .line 126
    :cond_a
    :goto_4
    move v4, v1

    .line 127
    :goto_5
    iput v2, v7, Lcom/miui/charge/MiuiBatteryStatus;->plugged:I

    .line 128
    iput v5, v7, Lcom/miui/charge/MiuiBatteryStatus;->wireState:I

    .line 130
    iput p1, v7, Lcom/miui/charge/MiuiBatteryStatus;->status:I

    .line 132
    iput p2, v7, Lcom/miui/charge/MiuiBatteryStatus;->chargingStatus:I

    .line 134
    if-eq v2, v1, :cond_c

    .line 136
    if-eq v2, v10, :cond_c

    .line 138
    if-ne v2, v9, :cond_b

    .line 140
    goto :goto_6

    .line 142
    :cond_b
    move v1, v3

    .line 143
    :cond_c
    :goto_6
    if-nez v1, :cond_d

    .line 144
    iput v3, v7, Lcom/miui/charge/MiuiBatteryStatus;->carChargeMode:I

    .line 146
    iput v3, v6, Lcom/miui/charge/MiuiChargeManager;->mChargeType:I

    .line 148
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 150
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 152
    move-result-object p1

    .line 155
    iput-object p1, v7, Lcom/miui/charge/MiuiBatteryStatus;->incompatibleCharger:Ljava/util/Optional;

    .line 156
    :cond_d
    if-eqz v4, :cond_11

    .line 158
    iget-object p1, p0, Lcom/miui/charge/MiuiChargeManager$1;->this$0:Lcom/miui/charge/MiuiChargeManager;

    .line 160
    iget-object p2, p1, Lcom/miui/charge/MiuiChargeManager;->mBatteryStatus:Lcom/miui/charge/MiuiBatteryStatus;

    .line 162
    iget v1, p2, Lcom/miui/charge/MiuiBatteryStatus;->wireState:I

    .line 164
    const/16 v2, 0xa

    .line 166
    if-eq v1, v2, :cond_e

    .line 168
    const/16 v2, 0xb

    .line 170
    if-ne v1, v2, :cond_f

    .line 172
    :cond_e
    iget v0, p1, Lcom/miui/charge/MiuiChargeManager;->mChargeType:I

    .line 174
    :cond_f
    iput v0, p2, Lcom/miui/charge/MiuiBatteryStatus;->chargeDeviceType:I

    .line 176
    invoke-static {v1, v0}, Lcom/miui/charge/ChargeUtils;->getChargeSpeed(II)I

    .line 178
    move-result p1

    .line 181
    iput p1, p2, Lcom/miui/charge/MiuiBatteryStatus;->chargeSpeed:I

    .line 182
    iget-object p0, p0, Lcom/miui/charge/MiuiChargeManager$1;->this$0:Lcom/miui/charge/MiuiChargeManager;

    .line 184
    invoke-virtual {p0}, Lcom/miui/charge/MiuiChargeManager;->notifyBatteryStatusChanged()V

    .line 186
    goto :goto_7

    .line 189
    :cond_10
    const-string p1, "miui.intent.action.ACTION_QUICK_CHARGE_TYPE"

    .line 190
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 192
    move-result-object v1

    .line 195
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 196
    move-result p1

    .line 199
    if-eqz p1, :cond_11

    .line 200
    iget-object p1, p0, Lcom/miui/charge/MiuiChargeManager$1;->this$0:Lcom/miui/charge/MiuiChargeManager;

    .line 202
    const-string v1, "miui.intent.extra.quick_charge_type"

    .line 204
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 206
    move-result v1

    .line 209
    iput v1, p1, Lcom/miui/charge/MiuiChargeManager;->mChargeType:I

    .line 210
    iget-object p1, p0, Lcom/miui/charge/MiuiChargeManager$1;->this$0:Lcom/miui/charge/MiuiChargeManager;

    .line 212
    iget-object p1, p1, Lcom/miui/charge/MiuiChargeManager;->mBatteryStatus:Lcom/miui/charge/MiuiBatteryStatus;

    .line 214
    const-string v1, "miui.intent.extra.POWER_MAX"

    .line 216
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 218
    move-result v1

    .line 221
    iput v1, p1, Lcom/miui/charge/MiuiBatteryStatus;->maxChargingWattage:I

    .line 222
    iget-object p1, p0, Lcom/miui/charge/MiuiChargeManager$1;->this$0:Lcom/miui/charge/MiuiChargeManager;

    .line 224
    iget-object p1, p1, Lcom/miui/charge/MiuiChargeManager;->mBatteryStatus:Lcom/miui/charge/MiuiBatteryStatus;

    .line 226
    const-string v1, "miui.intent.extra.CAR_CHARGE"

    .line 228
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 230
    move-result p2

    .line 233
    iput p2, p1, Lcom/miui/charge/MiuiBatteryStatus;->carChargeMode:I

    .line 234
    iget-object p0, p0, Lcom/miui/charge/MiuiChargeManager$1;->this$0:Lcom/miui/charge/MiuiChargeManager;

    .line 236
    iget p1, p0, Lcom/miui/charge/MiuiChargeManager;->mChargeType:I

    .line 238
    invoke-static {p0, p1}, Lcom/miui/charge/MiuiChargeManager;->-$$Nest$monChargeDeviceTypeChanged(Lcom/miui/charge/MiuiChargeManager;I)V

    .line 240
    :cond_11
    :goto_7
    return-void
    .line 243
.end method
