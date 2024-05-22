.class public final Lcom/android/keyguard/event/KeyguardStatusEvent;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# annotations
.annotation runtime Lcom/miui/systemui/events/EventID;
    id = "keyguard_status"
.end annotation

.annotation runtime Lcom/miui/systemui/events/EventModule;
    value = .enum Lcom/miui/systemui/events/EventModuleTarget;->SYSTEMUI:Lcom/miui/systemui/events/EventModuleTarget;
.end annotation


# instance fields
.field private final ifActionDoubleClick:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "if_action_double_click"
    .end annotation
.end field

.field private final ifLockscreenWallpaperOpen:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "if_lockscreen_wallpaper_open"
    .end annotation
.end field

.field private final ifLunarCalendar:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "if_lunar_calendar"
    .end annotation
.end field

.field private final ifOwnerInfo:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "if_owner_info"
    .end annotation
.end field

.field private final ifPickupWakeup:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "if_pickup_wakeup"
    .end annotation
.end field

.field private final ifQuickCamera:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "if_quick_camera"
    .end annotation
.end field

.field private final ifSmartCoverUnlock:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "if_smart_cover_unlock"
    .end annotation
.end field

.field private final keyguardDataVersion:Ljava/lang/Number;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "keyguard_data_version"
    .end annotation
.end field

.field private final lockscreenClockStyle:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "lockscreen_clock_style"
    .end annotation
.end field

.field private final screenOffTime:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "screen_off_time"
    .end annotation
.end field

.field private final tip:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "tip"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/event/KeyguardStatusEvent;->screenOffTime:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/android/keyguard/event/KeyguardStatusEvent;->ifPickupWakeup:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/android/keyguard/event/KeyguardStatusEvent;->ifActionDoubleClick:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/android/keyguard/event/KeyguardStatusEvent;->ifSmartCoverUnlock:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/android/keyguard/event/KeyguardStatusEvent;->ifQuickCamera:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lcom/android/keyguard/event/KeyguardStatusEvent;->ifLockscreenWallpaperOpen:Ljava/lang/String;

    .line 8
    iput-object p7, p0, Lcom/android/keyguard/event/KeyguardStatusEvent;->lockscreenClockStyle:Ljava/lang/String;

    .line 9
    iput-object p8, p0, Lcom/android/keyguard/event/KeyguardStatusEvent;->ifLunarCalendar:Ljava/lang/String;

    .line 10
    iput-object p9, p0, Lcom/android/keyguard/event/KeyguardStatusEvent;->ifOwnerInfo:Ljava/lang/String;

    .line 11
    iput-object p10, p0, Lcom/android/keyguard/event/KeyguardStatusEvent;->tip:Ljava/lang/String;

    .line 12
    iput-object p11, p0, Lcom/android/keyguard/event/KeyguardStatusEvent;->keyguardDataVersion:Ljava/lang/Number;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 14

    move/from16 v0, p12

    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_0

    const-string v1, "178.2.1.1.20923"

    move-object v12, v1

    goto :goto_0

    :cond_0
    move-object/from16 v12, p10

    :goto_0
    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_1

    const v0, 0x1511750

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v13, v0

    goto :goto_1

    :cond_1
    move-object/from16 v13, p11

    :goto_1
    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    .line 14
    invoke-direct/range {v2 .. v13}, Lcom/android/keyguard/event/KeyguardStatusEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/keyguard/event/KeyguardStatusEvent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;ILjava/lang/Object;)Lcom/android/keyguard/event/KeyguardStatusEvent;
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p12

    .line 3
    and-int/lit8 v2, v1, 0x1

    .line 5
    if-eqz v2, :cond_0

    .line 7
    iget-object v2, v0, Lcom/android/keyguard/event/KeyguardStatusEvent;->screenOffTime:Ljava/lang/String;

    .line 9
    goto :goto_0

    .line 11
    :cond_0
    move-object v2, p1

    .line 12
    :goto_0
    and-int/lit8 v3, v1, 0x2

    .line 13
    if-eqz v3, :cond_1

    .line 15
    iget-object v3, v0, Lcom/android/keyguard/event/KeyguardStatusEvent;->ifPickupWakeup:Ljava/lang/String;

    .line 17
    goto :goto_1

    .line 19
    :cond_1
    move-object v3, p2

    .line 20
    :goto_1
    and-int/lit8 v4, v1, 0x4

    .line 21
    if-eqz v4, :cond_2

    .line 23
    iget-object v4, v0, Lcom/android/keyguard/event/KeyguardStatusEvent;->ifActionDoubleClick:Ljava/lang/String;

    .line 25
    goto :goto_2

    .line 27
    :cond_2
    move-object v4, p3

    .line 28
    :goto_2
    and-int/lit8 v5, v1, 0x8

    .line 29
    if-eqz v5, :cond_3

    .line 31
    iget-object v5, v0, Lcom/android/keyguard/event/KeyguardStatusEvent;->ifSmartCoverUnlock:Ljava/lang/String;

    .line 33
    goto :goto_3

    .line 35
    :cond_3
    move-object/from16 v5, p4

    .line 36
    :goto_3
    and-int/lit8 v6, v1, 0x10

    .line 38
    if-eqz v6, :cond_4

    .line 40
    iget-object v6, v0, Lcom/android/keyguard/event/KeyguardStatusEvent;->ifQuickCamera:Ljava/lang/String;

    .line 42
    goto :goto_4

    .line 44
    :cond_4
    move-object/from16 v6, p5

    .line 45
    :goto_4
    and-int/lit8 v7, v1, 0x20

    .line 47
    if-eqz v7, :cond_5

    .line 49
    iget-object v7, v0, Lcom/android/keyguard/event/KeyguardStatusEvent;->ifLockscreenWallpaperOpen:Ljava/lang/String;

    .line 51
    goto :goto_5

    .line 53
    :cond_5
    move-object/from16 v7, p6

    .line 54
    :goto_5
    and-int/lit8 v8, v1, 0x40

    .line 56
    if-eqz v8, :cond_6

    .line 58
    iget-object v8, v0, Lcom/android/keyguard/event/KeyguardStatusEvent;->lockscreenClockStyle:Ljava/lang/String;

    .line 60
    goto :goto_6

    .line 62
    :cond_6
    move-object/from16 v8, p7

    .line 63
    :goto_6
    and-int/lit16 v9, v1, 0x80

    .line 65
    if-eqz v9, :cond_7

    .line 67
    iget-object v9, v0, Lcom/android/keyguard/event/KeyguardStatusEvent;->ifLunarCalendar:Ljava/lang/String;

    .line 69
    goto :goto_7

    .line 71
    :cond_7
    move-object/from16 v9, p8

    .line 72
    :goto_7
    and-int/lit16 v10, v1, 0x100

    .line 74
    if-eqz v10, :cond_8

    .line 76
    iget-object v10, v0, Lcom/android/keyguard/event/KeyguardStatusEvent;->ifOwnerInfo:Ljava/lang/String;

    .line 78
    goto :goto_8

    .line 80
    :cond_8
    move-object/from16 v10, p9

    .line 81
    :goto_8
    and-int/lit16 v11, v1, 0x200

    .line 83
    if-eqz v11, :cond_9

    .line 85
    iget-object v11, v0, Lcom/android/keyguard/event/KeyguardStatusEvent;->tip:Ljava/lang/String;

    .line 87
    goto :goto_9

    .line 89
    :cond_9
    move-object/from16 v11, p10

    .line 90
    :goto_9
    and-int/lit16 v1, v1, 0x400

    .line 92
    if-eqz v1, :cond_a

    .line 94
    iget-object v1, v0, Lcom/android/keyguard/event/KeyguardStatusEvent;->keyguardDataVersion:Ljava/lang/Number;

    .line 96
    goto :goto_a

    .line 98
    :cond_a
    move-object/from16 v1, p11

    .line 99
    :goto_a
    move-object p1, v2

    .line 101
    move-object p2, v3

    .line 102
    move-object p3, v4

    .line 103
    move-object/from16 p4, v5

    .line 104
    move-object/from16 p5, v6

    .line 106
    move-object/from16 p6, v7

    .line 108
    move-object/from16 p7, v8

    .line 110
    move-object/from16 p8, v9

    .line 112
    move-object/from16 p9, v10

    .line 114
    move-object/from16 p10, v11

    .line 116
    move-object/from16 p11, v1

    .line 118
    invoke-virtual/range {p0 .. p11}, Lcom/android/keyguard/event/KeyguardStatusEvent;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)Lcom/android/keyguard/event/KeyguardStatusEvent;

    .line 120
    move-result-object v0

    .line 123
    return-object v0
    .line 124
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardStatusEvent;->screenOffTime:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component10()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardStatusEvent;->tip:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component11()Ljava/lang/Number;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardStatusEvent;->keyguardDataVersion:Ljava/lang/Number;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardStatusEvent;->ifPickupWakeup:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardStatusEvent;->ifActionDoubleClick:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component4()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardStatusEvent;->ifSmartCoverUnlock:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component5()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardStatusEvent;->ifQuickCamera:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component6()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardStatusEvent;->ifLockscreenWallpaperOpen:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component7()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardStatusEvent;->lockscreenClockStyle:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component8()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardStatusEvent;->ifLunarCalendar:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component9()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardStatusEvent;->ifOwnerInfo:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)Lcom/android/keyguard/event/KeyguardStatusEvent;
    .locals 13

    .line 1
    new-instance v12, Lcom/android/keyguard/event/KeyguardStatusEvent;

    .line 2
    move-object v0, v12

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object/from16 v3, p3

    .line 7
    move-object/from16 v4, p4

    .line 9
    move-object/from16 v5, p5

    .line 11
    move-object/from16 v6, p6

    .line 13
    move-object/from16 v7, p7

    .line 15
    move-object/from16 v8, p8

    .line 17
    move-object/from16 v9, p9

    .line 19
    move-object/from16 v10, p10

    .line 21
    move-object/from16 v11, p11

    .line 23
    invoke-direct/range {v0 .. v11}, Lcom/android/keyguard/event/KeyguardStatusEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 25
    return-object v12
    .line 28
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
    instance-of v1, p1, Lcom/android/keyguard/event/KeyguardStatusEvent;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/keyguard/event/KeyguardStatusEvent;

    .line 12
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardStatusEvent;->screenOffTime:Ljava/lang/String;

    .line 14
    iget-object v3, p1, Lcom/android/keyguard/event/KeyguardStatusEvent;->screenOffTime:Ljava/lang/String;

    .line 16
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardStatusEvent;->ifPickupWakeup:Ljava/lang/String;

    .line 25
    iget-object v3, p1, Lcom/android/keyguard/event/KeyguardStatusEvent;->ifPickupWakeup:Ljava/lang/String;

    .line 27
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    return v2

    .line 35
    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardStatusEvent;->ifActionDoubleClick:Ljava/lang/String;

    .line 36
    iget-object v3, p1, Lcom/android/keyguard/event/KeyguardStatusEvent;->ifActionDoubleClick:Ljava/lang/String;

    .line 38
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    move-result v1

    .line 43
    if-nez v1, :cond_4

    .line 44
    return v2

    .line 46
    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardStatusEvent;->ifSmartCoverUnlock:Ljava/lang/String;

    .line 47
    iget-object v3, p1, Lcom/android/keyguard/event/KeyguardStatusEvent;->ifSmartCoverUnlock:Ljava/lang/String;

    .line 49
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    move-result v1

    .line 54
    if-nez v1, :cond_5

    .line 55
    return v2

    .line 57
    :cond_5
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardStatusEvent;->ifQuickCamera:Ljava/lang/String;

    .line 58
    iget-object v3, p1, Lcom/android/keyguard/event/KeyguardStatusEvent;->ifQuickCamera:Ljava/lang/String;

    .line 60
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    move-result v1

    .line 65
    if-nez v1, :cond_6

    .line 66
    return v2

    .line 68
    :cond_6
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardStatusEvent;->ifLockscreenWallpaperOpen:Ljava/lang/String;

    .line 69
    iget-object v3, p1, Lcom/android/keyguard/event/KeyguardStatusEvent;->ifLockscreenWallpaperOpen:Ljava/lang/String;

    .line 71
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    move-result v1

    .line 76
    if-nez v1, :cond_7

    .line 77
    return v2

    .line 79
    :cond_7
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardStatusEvent;->lockscreenClockStyle:Ljava/lang/String;

    .line 80
    iget-object v3, p1, Lcom/android/keyguard/event/KeyguardStatusEvent;->lockscreenClockStyle:Ljava/lang/String;

    .line 82
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    move-result v1

    .line 87
    if-nez v1, :cond_8

    .line 88
    return v2

    .line 90
    :cond_8
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardStatusEvent;->ifLunarCalendar:Ljava/lang/String;

    .line 91
    iget-object v3, p1, Lcom/android/keyguard/event/KeyguardStatusEvent;->ifLunarCalendar:Ljava/lang/String;

    .line 93
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    move-result v1

    .line 98
    if-nez v1, :cond_9

    .line 99
    return v2

    .line 101
    :cond_9
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardStatusEvent;->ifOwnerInfo:Ljava/lang/String;

    .line 102
    iget-object v3, p1, Lcom/android/keyguard/event/KeyguardStatusEvent;->ifOwnerInfo:Ljava/lang/String;

    .line 104
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 106
    move-result v1

    .line 109
    if-nez v1, :cond_a

    .line 110
    return v2

    .line 112
    :cond_a
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardStatusEvent;->tip:Ljava/lang/String;

    .line 113
    iget-object v3, p1, Lcom/android/keyguard/event/KeyguardStatusEvent;->tip:Ljava/lang/String;

    .line 115
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 117
    move-result v1

    .line 120
    if-nez v1, :cond_b

    .line 121
    return v2

    .line 123
    :cond_b
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardStatusEvent;->keyguardDataVersion:Ljava/lang/Number;

    .line 124
    iget-object p1, p1, Lcom/android/keyguard/event/KeyguardStatusEvent;->keyguardDataVersion:Ljava/lang/Number;

    .line 126
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 128
    move-result p0

    .line 131
    if-nez p0, :cond_c

    .line 132
    return v2

    .line 134
    :cond_c
    return v0
    .line 135
.end method

.method public final getIfActionDoubleClick()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardStatusEvent;->ifActionDoubleClick:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getIfLockscreenWallpaperOpen()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardStatusEvent;->ifLockscreenWallpaperOpen:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getIfLunarCalendar()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardStatusEvent;->ifLunarCalendar:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getIfOwnerInfo()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardStatusEvent;->ifOwnerInfo:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getIfPickupWakeup()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardStatusEvent;->ifPickupWakeup:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getIfQuickCamera()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardStatusEvent;->ifQuickCamera:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getIfSmartCoverUnlock()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardStatusEvent;->ifSmartCoverUnlock:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getKeyguardDataVersion()Ljava/lang/Number;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardStatusEvent;->keyguardDataVersion:Ljava/lang/Number;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getLockscreenClockStyle()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardStatusEvent;->lockscreenClockStyle:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getScreenOffTime()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardStatusEvent;->screenOffTime:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getTip()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardStatusEvent;->tip:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/event/KeyguardStatusEvent;->screenOffTime:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardStatusEvent;->ifPickupWakeup:Ljava/lang/String;

    .line 10
    const/16 v2, 0x1f

    .line 12
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 14
    move-result v0

    .line 17
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardStatusEvent;->ifActionDoubleClick:Ljava/lang/String;

    .line 18
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 20
    move-result v0

    .line 23
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardStatusEvent;->ifSmartCoverUnlock:Ljava/lang/String;

    .line 24
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 26
    move-result v0

    .line 29
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardStatusEvent;->ifQuickCamera:Ljava/lang/String;

    .line 30
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 32
    move-result v0

    .line 35
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardStatusEvent;->ifLockscreenWallpaperOpen:Ljava/lang/String;

    .line 36
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 38
    move-result v0

    .line 41
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardStatusEvent;->lockscreenClockStyle:Ljava/lang/String;

    .line 42
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 44
    move-result v0

    .line 47
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardStatusEvent;->ifLunarCalendar:Ljava/lang/String;

    .line 48
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 50
    move-result v0

    .line 53
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardStatusEvent;->ifOwnerInfo:Ljava/lang/String;

    .line 54
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 56
    move-result v0

    .line 59
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardStatusEvent;->tip:Ljava/lang/String;

    .line 60
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 62
    move-result v0

    .line 65
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardStatusEvent;->keyguardDataVersion:Ljava/lang/Number;

    .line 66
    invoke-virtual {p0}, Ljava/lang/Number;->hashCode()I

    .line 68
    move-result p0

    .line 71
    add-int/2addr p0, v0

    .line 72
    return p0
    .line 73
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/event/KeyguardStatusEvent;->screenOffTime:Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardStatusEvent;->ifPickupWakeup:Ljava/lang/String;

    .line 4
    iget-object v2, p0, Lcom/android/keyguard/event/KeyguardStatusEvent;->ifActionDoubleClick:Ljava/lang/String;

    .line 6
    iget-object v3, p0, Lcom/android/keyguard/event/KeyguardStatusEvent;->ifSmartCoverUnlock:Ljava/lang/String;

    .line 8
    iget-object v4, p0, Lcom/android/keyguard/event/KeyguardStatusEvent;->ifQuickCamera:Ljava/lang/String;

    .line 10
    iget-object v5, p0, Lcom/android/keyguard/event/KeyguardStatusEvent;->ifLockscreenWallpaperOpen:Ljava/lang/String;

    .line 12
    iget-object v6, p0, Lcom/android/keyguard/event/KeyguardStatusEvent;->lockscreenClockStyle:Ljava/lang/String;

    .line 14
    iget-object v7, p0, Lcom/android/keyguard/event/KeyguardStatusEvent;->ifLunarCalendar:Ljava/lang/String;

    .line 16
    iget-object v8, p0, Lcom/android/keyguard/event/KeyguardStatusEvent;->ifOwnerInfo:Ljava/lang/String;

    .line 18
    iget-object v9, p0, Lcom/android/keyguard/event/KeyguardStatusEvent;->tip:Ljava/lang/String;

    .line 20
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardStatusEvent;->keyguardDataVersion:Ljava/lang/Number;

    .line 22
    const-string v10, "KeyguardStatusEvent(screenOffTime="

    .line 24
    const-string v11, ", ifPickupWakeup="

    .line 26
    const-string v12, ", ifActionDoubleClick="

    .line 28
    invoke-static {v10, v0, v11, v1, v12}, Lcom/android/keyguard/event/FodQuickOpenActionEvent$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    move-result-object v0

    .line 33
    const-string v1, ", ifSmartCoverUnlock="

    .line 34
    const-string v10, ", ifQuickCamera="

    .line 36
    invoke-static {v0, v2, v1, v3, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string v1, ", ifLockscreenWallpaperOpen="

    .line 41
    const-string v2, ", lockscreenClockStyle="

    .line 43
    invoke-static {v0, v4, v1, v5, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v1, ", ifLunarCalendar="

    .line 48
    const-string v2, ", ifOwnerInfo="

    .line 50
    invoke-static {v0, v6, v1, v7, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v1, ", tip="

    .line 55
    const-string v2, ", keyguardDataVersion="

    .line 57
    invoke-static {v0, v8, v1, v9, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    const-string p0, ")"

    .line 65
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object p0

    .line 73
    return-object p0
    .line 74
.end method
