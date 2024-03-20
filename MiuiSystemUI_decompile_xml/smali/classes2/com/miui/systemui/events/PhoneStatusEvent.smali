.class public final Lcom/miui/systemui/events/PhoneStatusEvent;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# annotations
.annotation runtime Lcom/miui/systemui/events/EventID;
    id = "status_bar_phone_status"
.end annotation

.annotation runtime Lcom/miui/systemui/events/EventModule;
    value = .enum Lcom/miui/systemui/events/EventModuleTarget;->SYSTEMUI:Lcom/miui/systemui/events/EventModuleTarget;
.end annotation


# instance fields
.field private final alarmSet:I
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "alarm_set"
    .end annotation
.end field

.field private final autoBrightnessTurnedOn:I
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "auto_brightness_turned_on"
    .end annotation
.end field

.field private final bluetoothTurnedOn:I
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "bluetooth_turned_on"
    .end annotation
.end field

.field private final gpsTurnedOn:I
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "gps_turned_on"
    .end annotation
.end field

.field private final isDualCard:I
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "is_dual_card"
    .end annotation
.end field

.field private final isFullScreen:I
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "is_full_screen"
    .end annotation
.end field

.field private final isNotchScreen:I
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "is_notch_screen"
    .end annotation
.end field

.field private final muteTurnedOn:I
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "mute_turned_on"
    .end annotation
.end field

.field private final rotationLockTurnedOn:I
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "rotation_lock_turned_on"
    .end annotation
.end field

.field private final wifiTurnedOn:I
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "wifi_turned_on"
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIIIIIIIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/miui/systemui/events/PhoneStatusEvent;->isDualCard:I

    .line 5
    iput p2, p0, Lcom/miui/systemui/events/PhoneStatusEvent;->alarmSet:I

    .line 7
    iput p3, p0, Lcom/miui/systemui/events/PhoneStatusEvent;->muteTurnedOn:I

    .line 9
    iput p4, p0, Lcom/miui/systemui/events/PhoneStatusEvent;->wifiTurnedOn:I

    .line 11
    iput p5, p0, Lcom/miui/systemui/events/PhoneStatusEvent;->bluetoothTurnedOn:I

    .line 13
    iput p6, p0, Lcom/miui/systemui/events/PhoneStatusEvent;->autoBrightnessTurnedOn:I

    .line 15
    iput p7, p0, Lcom/miui/systemui/events/PhoneStatusEvent;->gpsTurnedOn:I

    .line 17
    iput p8, p0, Lcom/miui/systemui/events/PhoneStatusEvent;->rotationLockTurnedOn:I

    .line 19
    iput p9, p0, Lcom/miui/systemui/events/PhoneStatusEvent;->isFullScreen:I

    .line 21
    iput p10, p0, Lcom/miui/systemui/events/PhoneStatusEvent;->isNotchScreen:I

    .line 23
    return-void
    .line 25
.end method

.method public static synthetic copy$default(Lcom/miui/systemui/events/PhoneStatusEvent;IIIIIIIIIIILjava/lang/Object;)Lcom/miui/systemui/events/PhoneStatusEvent;
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p11

    .line 3
    and-int/lit8 v2, v1, 0x1

    .line 5
    if-eqz v2, :cond_0

    .line 7
    iget v2, v0, Lcom/miui/systemui/events/PhoneStatusEvent;->isDualCard:I

    .line 9
    goto :goto_0

    .line 11
    :cond_0
    move v2, p1

    .line 12
    :goto_0
    and-int/lit8 v3, v1, 0x2

    .line 13
    if-eqz v3, :cond_1

    .line 15
    iget v3, v0, Lcom/miui/systemui/events/PhoneStatusEvent;->alarmSet:I

    .line 17
    goto :goto_1

    .line 19
    :cond_1
    move v3, p2

    .line 20
    :goto_1
    and-int/lit8 v4, v1, 0x4

    .line 21
    if-eqz v4, :cond_2

    .line 23
    iget v4, v0, Lcom/miui/systemui/events/PhoneStatusEvent;->muteTurnedOn:I

    .line 25
    goto :goto_2

    .line 27
    :cond_2
    move v4, p3

    .line 28
    :goto_2
    and-int/lit8 v5, v1, 0x8

    .line 29
    if-eqz v5, :cond_3

    .line 31
    iget v5, v0, Lcom/miui/systemui/events/PhoneStatusEvent;->wifiTurnedOn:I

    .line 33
    goto :goto_3

    .line 35
    :cond_3
    move v5, p4

    .line 36
    :goto_3
    and-int/lit8 v6, v1, 0x10

    .line 37
    if-eqz v6, :cond_4

    .line 39
    iget v6, v0, Lcom/miui/systemui/events/PhoneStatusEvent;->bluetoothTurnedOn:I

    .line 41
    goto :goto_4

    .line 43
    :cond_4
    move/from16 v6, p5

    .line 44
    :goto_4
    and-int/lit8 v7, v1, 0x20

    .line 46
    if-eqz v7, :cond_5

    .line 48
    iget v7, v0, Lcom/miui/systemui/events/PhoneStatusEvent;->autoBrightnessTurnedOn:I

    .line 50
    goto :goto_5

    .line 52
    :cond_5
    move/from16 v7, p6

    .line 53
    :goto_5
    and-int/lit8 v8, v1, 0x40

    .line 55
    if-eqz v8, :cond_6

    .line 57
    iget v8, v0, Lcom/miui/systemui/events/PhoneStatusEvent;->gpsTurnedOn:I

    .line 59
    goto :goto_6

    .line 61
    :cond_6
    move/from16 v8, p7

    .line 62
    :goto_6
    and-int/lit16 v9, v1, 0x80

    .line 64
    if-eqz v9, :cond_7

    .line 66
    iget v9, v0, Lcom/miui/systemui/events/PhoneStatusEvent;->rotationLockTurnedOn:I

    .line 68
    goto :goto_7

    .line 70
    :cond_7
    move/from16 v9, p8

    .line 71
    :goto_7
    and-int/lit16 v10, v1, 0x100

    .line 73
    if-eqz v10, :cond_8

    .line 75
    iget v10, v0, Lcom/miui/systemui/events/PhoneStatusEvent;->isFullScreen:I

    .line 77
    goto :goto_8

    .line 79
    :cond_8
    move/from16 v10, p9

    .line 80
    :goto_8
    and-int/lit16 v1, v1, 0x200

    .line 82
    if-eqz v1, :cond_9

    .line 84
    iget v1, v0, Lcom/miui/systemui/events/PhoneStatusEvent;->isNotchScreen:I

    .line 86
    goto :goto_9

    .line 88
    :cond_9
    move/from16 v1, p10

    .line 89
    :goto_9
    move p1, v2

    .line 91
    move p2, v3

    .line 92
    move p3, v4

    .line 93
    move p4, v5

    .line 94
    move/from16 p5, v6

    .line 95
    move/from16 p6, v7

    .line 97
    move/from16 p7, v8

    .line 99
    move/from16 p8, v9

    .line 101
    move/from16 p9, v10

    .line 103
    move/from16 p10, v1

    .line 105
    invoke-virtual/range {p0 .. p10}, Lcom/miui/systemui/events/PhoneStatusEvent;->copy(IIIIIIIIII)Lcom/miui/systemui/events/PhoneStatusEvent;

    .line 107
    move-result-object v0

    .line 110
    return-object v0
    .line 111
.end method


# virtual methods
.method public final component1()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/PhoneStatusEvent;->isDualCard:I

    .line 2
    return p0
    .line 4
.end method

.method public final component10()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/PhoneStatusEvent;->isNotchScreen:I

    .line 2
    return p0
    .line 4
.end method

.method public final component2()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/PhoneStatusEvent;->alarmSet:I

    .line 2
    return p0
    .line 4
.end method

.method public final component3()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/PhoneStatusEvent;->muteTurnedOn:I

    .line 2
    return p0
    .line 4
.end method

.method public final component4()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/PhoneStatusEvent;->wifiTurnedOn:I

    .line 2
    return p0
    .line 4
.end method

.method public final component5()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/PhoneStatusEvent;->bluetoothTurnedOn:I

    .line 2
    return p0
    .line 4
.end method

.method public final component6()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/PhoneStatusEvent;->autoBrightnessTurnedOn:I

    .line 2
    return p0
    .line 4
.end method

.method public final component7()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/PhoneStatusEvent;->gpsTurnedOn:I

    .line 2
    return p0
    .line 4
.end method

.method public final component8()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/PhoneStatusEvent;->rotationLockTurnedOn:I

    .line 2
    return p0
    .line 4
.end method

.method public final component9()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/PhoneStatusEvent;->isFullScreen:I

    .line 2
    return p0
    .line 4
.end method

.method public final copy(IIIIIIIIII)Lcom/miui/systemui/events/PhoneStatusEvent;
    .locals 12

    .line 1
    new-instance v11, Lcom/miui/systemui/events/PhoneStatusEvent;

    .line 2
    move-object v0, v11

    .line 4
    move v1, p1

    .line 5
    move v2, p2

    .line 6
    move v3, p3

    .line 7
    move/from16 v4, p4

    .line 8
    move/from16 v5, p5

    .line 10
    move/from16 v6, p6

    .line 12
    move/from16 v7, p7

    .line 14
    move/from16 v8, p8

    .line 16
    move/from16 v9, p9

    .line 18
    move/from16 v10, p10

    .line 20
    invoke-direct/range {v0 .. v10}, Lcom/miui/systemui/events/PhoneStatusEvent;-><init>(IIIIIIIIII)V

    .line 22
    return-object v11
    .line 25
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/miui/systemui/events/PhoneStatusEvent;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/miui/systemui/events/PhoneStatusEvent;

    .line 12
    iget v1, p0, Lcom/miui/systemui/events/PhoneStatusEvent;->isDualCard:I

    .line 14
    iget v3, p1, Lcom/miui/systemui/events/PhoneStatusEvent;->isDualCard:I

    .line 16
    if-eq v1, v3, :cond_2

    .line 18
    return v2

    .line 20
    :cond_2
    iget v1, p0, Lcom/miui/systemui/events/PhoneStatusEvent;->alarmSet:I

    .line 21
    iget v3, p1, Lcom/miui/systemui/events/PhoneStatusEvent;->alarmSet:I

    .line 23
    if-eq v1, v3, :cond_3

    .line 25
    return v2

    .line 27
    :cond_3
    iget v1, p0, Lcom/miui/systemui/events/PhoneStatusEvent;->muteTurnedOn:I

    .line 28
    iget v3, p1, Lcom/miui/systemui/events/PhoneStatusEvent;->muteTurnedOn:I

    .line 30
    if-eq v1, v3, :cond_4

    .line 32
    return v2

    .line 34
    :cond_4
    iget v1, p0, Lcom/miui/systemui/events/PhoneStatusEvent;->wifiTurnedOn:I

    .line 35
    iget v3, p1, Lcom/miui/systemui/events/PhoneStatusEvent;->wifiTurnedOn:I

    .line 37
    if-eq v1, v3, :cond_5

    .line 39
    return v2

    .line 41
    :cond_5
    iget v1, p0, Lcom/miui/systemui/events/PhoneStatusEvent;->bluetoothTurnedOn:I

    .line 42
    iget v3, p1, Lcom/miui/systemui/events/PhoneStatusEvent;->bluetoothTurnedOn:I

    .line 44
    if-eq v1, v3, :cond_6

    .line 46
    return v2

    .line 48
    :cond_6
    iget v1, p0, Lcom/miui/systemui/events/PhoneStatusEvent;->autoBrightnessTurnedOn:I

    .line 49
    iget v3, p1, Lcom/miui/systemui/events/PhoneStatusEvent;->autoBrightnessTurnedOn:I

    .line 51
    if-eq v1, v3, :cond_7

    .line 53
    return v2

    .line 55
    :cond_7
    iget v1, p0, Lcom/miui/systemui/events/PhoneStatusEvent;->gpsTurnedOn:I

    .line 56
    iget v3, p1, Lcom/miui/systemui/events/PhoneStatusEvent;->gpsTurnedOn:I

    .line 58
    if-eq v1, v3, :cond_8

    .line 60
    return v2

    .line 62
    :cond_8
    iget v1, p0, Lcom/miui/systemui/events/PhoneStatusEvent;->rotationLockTurnedOn:I

    .line 63
    iget v3, p1, Lcom/miui/systemui/events/PhoneStatusEvent;->rotationLockTurnedOn:I

    .line 65
    if-eq v1, v3, :cond_9

    .line 67
    return v2

    .line 69
    :cond_9
    iget v1, p0, Lcom/miui/systemui/events/PhoneStatusEvent;->isFullScreen:I

    .line 70
    iget v3, p1, Lcom/miui/systemui/events/PhoneStatusEvent;->isFullScreen:I

    .line 72
    if-eq v1, v3, :cond_a

    .line 74
    return v2

    .line 76
    :cond_a
    iget p0, p0, Lcom/miui/systemui/events/PhoneStatusEvent;->isNotchScreen:I

    .line 77
    iget p1, p1, Lcom/miui/systemui/events/PhoneStatusEvent;->isNotchScreen:I

    .line 79
    if-eq p0, p1, :cond_b

    .line 81
    return v2

    .line 83
    :cond_b
    return v0
    .line 84
.end method

.method public final getAlarmSet()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/PhoneStatusEvent;->alarmSet:I

    .line 2
    return p0
    .line 4
.end method

.method public final getAutoBrightnessTurnedOn()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/PhoneStatusEvent;->autoBrightnessTurnedOn:I

    .line 2
    return p0
    .line 4
.end method

.method public final getBluetoothTurnedOn()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/PhoneStatusEvent;->bluetoothTurnedOn:I

    .line 2
    return p0
    .line 4
.end method

.method public final getGpsTurnedOn()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/PhoneStatusEvent;->gpsTurnedOn:I

    .line 2
    return p0
    .line 4
.end method

.method public final getMuteTurnedOn()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/PhoneStatusEvent;->muteTurnedOn:I

    .line 2
    return p0
    .line 4
.end method

.method public final getRotationLockTurnedOn()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/PhoneStatusEvent;->rotationLockTurnedOn:I

    .line 2
    return p0
    .line 4
.end method

.method public final getWifiTurnedOn()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/PhoneStatusEvent;->wifiTurnedOn:I

    .line 2
    return p0
    .line 4
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/miui/systemui/events/PhoneStatusEvent;->isDualCard:I

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    .line 4
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget v1, p0, Lcom/miui/systemui/events/PhoneStatusEvent;->alarmSet:I

    .line 10
    const/16 v2, 0x1f

    .line 12
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 14
    move-result v0

    .line 17
    iget v1, p0, Lcom/miui/systemui/events/PhoneStatusEvent;->muteTurnedOn:I

    .line 18
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 20
    move-result v0

    .line 23
    iget v1, p0, Lcom/miui/systemui/events/PhoneStatusEvent;->wifiTurnedOn:I

    .line 24
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 26
    move-result v0

    .line 29
    iget v1, p0, Lcom/miui/systemui/events/PhoneStatusEvent;->bluetoothTurnedOn:I

    .line 30
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 32
    move-result v0

    .line 35
    iget v1, p0, Lcom/miui/systemui/events/PhoneStatusEvent;->autoBrightnessTurnedOn:I

    .line 36
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 38
    move-result v0

    .line 41
    iget v1, p0, Lcom/miui/systemui/events/PhoneStatusEvent;->gpsTurnedOn:I

    .line 42
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 44
    move-result v0

    .line 47
    iget v1, p0, Lcom/miui/systemui/events/PhoneStatusEvent;->rotationLockTurnedOn:I

    .line 48
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 50
    move-result v0

    .line 53
    iget v1, p0, Lcom/miui/systemui/events/PhoneStatusEvent;->isFullScreen:I

    .line 54
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 56
    move-result v0

    .line 59
    iget p0, p0, Lcom/miui/systemui/events/PhoneStatusEvent;->isNotchScreen:I

    .line 60
    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    .line 62
    move-result p0

    .line 65
    add-int/2addr p0, v0

    .line 66
    return p0
    .line 67
.end method

.method public final isDualCard()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/PhoneStatusEvent;->isDualCard:I

    .line 2
    return p0
    .line 4
.end method

.method public final isFullScreen()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/PhoneStatusEvent;->isFullScreen:I

    .line 2
    return p0
    .line 4
.end method

.method public final isNotchScreen()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/PhoneStatusEvent;->isNotchScreen:I

    .line 2
    return p0
    .line 4
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 1
    iget v0, p0, Lcom/miui/systemui/events/PhoneStatusEvent;->isDualCard:I

    .line 2
    iget v1, p0, Lcom/miui/systemui/events/PhoneStatusEvent;->alarmSet:I

    .line 4
    iget v2, p0, Lcom/miui/systemui/events/PhoneStatusEvent;->muteTurnedOn:I

    .line 6
    iget v3, p0, Lcom/miui/systemui/events/PhoneStatusEvent;->wifiTurnedOn:I

    .line 8
    iget v4, p0, Lcom/miui/systemui/events/PhoneStatusEvent;->bluetoothTurnedOn:I

    .line 10
    iget v5, p0, Lcom/miui/systemui/events/PhoneStatusEvent;->autoBrightnessTurnedOn:I

    .line 12
    iget v6, p0, Lcom/miui/systemui/events/PhoneStatusEvent;->gpsTurnedOn:I

    .line 14
    iget v7, p0, Lcom/miui/systemui/events/PhoneStatusEvent;->rotationLockTurnedOn:I

    .line 16
    iget v8, p0, Lcom/miui/systemui/events/PhoneStatusEvent;->isFullScreen:I

    .line 18
    iget p0, p0, Lcom/miui/systemui/events/PhoneStatusEvent;->isNotchScreen:I

    .line 20
    const-string v9, "PhoneStatusEvent(isDualCard="

    .line 22
    const-string v10, ", alarmSet="

    .line 24
    const-string v11, ", muteTurnedOn="

    .line 26
    invoke-static {v9, v0, v10, v1, v11}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    move-result-object v0

    .line 31
    const-string v1, ", wifiTurnedOn="

    .line 32
    const-string v9, ", bluetoothTurnedOn="

    .line 34
    invoke-static {v0, v2, v1, v3, v9}, Landroidx/viewpager/widget/OriginalViewPager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 36
    const-string v1, ", autoBrightnessTurnedOn="

    .line 39
    const-string v2, ", gpsTurnedOn="

    .line 41
    invoke-static {v0, v4, v1, v5, v2}, Landroidx/viewpager/widget/OriginalViewPager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 43
    const-string v1, ", rotationLockTurnedOn="

    .line 46
    const-string v2, ", isFullScreen="

    .line 48
    invoke-static {v0, v6, v1, v7, v2}, Landroidx/viewpager/widget/OriginalViewPager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 50
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    const-string v1, ", isNotchScreen="

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    const-string p0, ")"

    .line 64
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object p0

    .line 72
    return-object p0
    .line 73
.end method
