.class public final Lcom/miui/systemui/events/SettingsStatusEvent;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# annotations
.annotation runtime Lcom/miui/systemui/events/EventID;
    id = "status_bar_settings_status"
.end annotation

.annotation runtime Lcom/miui/systemui/events/EventModule;
    value = .enum Lcom/miui/systemui/events/EventModuleTarget;->SYSTEMUI:Lcom/miui/systemui/events/EventModuleTarget;
.end annotation


# instance fields
.field private final batteryIndicator:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "battery_indicator"
    .end annotation
.end field

.field private final bucket:I
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "bucket"
    .end annotation
.end field

.field private final customCarrier:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "custom_carrier"
    .end annotation
.end field

.field private final expandSelectedInfo:I
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "expand_selected_info"
    .end annotation
.end field

.field private final expandableUnderKeyguard:I
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "expandable_under_keyguard"
    .end annotation
.end field

.field private final expandableUnderLockScreen:I
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "expandable_under_lock_screen"
    .end annotation
.end field

.field private final notificationAggregate:I
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "notification_aggregate"
    .end annotation
.end field

.field private final notificationFold:I
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "notification_fold"
    .end annotation
.end field

.field private final notificationShortcut:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "notification_shortcut"
    .end annotation
.end field

.field private final notificationStyle:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "notification_style"
    .end annotation
.end field

.field private final notificationsBannedCount:I
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "notifications_banned_count"
    .end annotation
.end field

.field private final notificationsEnabledCount:I
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "notifications_enabled_count"
    .end annotation
.end field

.field private final showCarrierUnderKeyguard:I
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "show_carrier_under_keyguard"
    .end annotation
.end field

.field private final showNetworkSpeed:I
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "show_network_speed"
    .end annotation
.end field

.field private final showNotificationIcon:I
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "show_notification_icon"
    .end annotation
.end field

.field private final toggleCollapseAfterClicked:I
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "toggle_collapse_after_clicked"
    .end annotation
.end field

.field private final useControlPanel:I
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "use_control_panel"
    .end annotation
.end field

.field private final wordlessModeSwitchStatus:I
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "wordlessmode_switch_status"
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIIIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIIIIII)V
    .locals 2

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    move v1, p1

    .line 6
    iput v1, v0, Lcom/miui/systemui/events/SettingsStatusEvent;->notificationsEnabledCount:I

    .line 7
    move v1, p2

    .line 9
    iput v1, v0, Lcom/miui/systemui/events/SettingsStatusEvent;->notificationsBannedCount:I

    .line 10
    move v1, p3

    .line 12
    iput v1, v0, Lcom/miui/systemui/events/SettingsStatusEvent;->showNotificationIcon:I

    .line 13
    move v1, p4

    .line 15
    iput v1, v0, Lcom/miui/systemui/events/SettingsStatusEvent;->showNetworkSpeed:I

    .line 16
    move v1, p5

    .line 18
    iput v1, v0, Lcom/miui/systemui/events/SettingsStatusEvent;->showCarrierUnderKeyguard:I

    .line 19
    move-object v1, p6

    .line 21
    iput-object v1, v0, Lcom/miui/systemui/events/SettingsStatusEvent;->customCarrier:Ljava/lang/String;

    .line 22
    move-object v1, p7

    .line 24
    iput-object v1, v0, Lcom/miui/systemui/events/SettingsStatusEvent;->batteryIndicator:Ljava/lang/String;

    .line 25
    move v1, p8

    .line 27
    iput v1, v0, Lcom/miui/systemui/events/SettingsStatusEvent;->toggleCollapseAfterClicked:I

    .line 28
    move v1, p9

    .line 30
    iput v1, v0, Lcom/miui/systemui/events/SettingsStatusEvent;->expandableUnderKeyguard:I

    .line 31
    move-object v1, p10

    .line 33
    iput-object v1, v0, Lcom/miui/systemui/events/SettingsStatusEvent;->notificationShortcut:Ljava/lang/String;

    .line 34
    move-object v1, p11

    .line 36
    iput-object v1, v0, Lcom/miui/systemui/events/SettingsStatusEvent;->notificationStyle:Ljava/lang/String;

    .line 37
    move v1, p12

    .line 39
    iput v1, v0, Lcom/miui/systemui/events/SettingsStatusEvent;->bucket:I

    .line 40
    move v1, p13

    .line 42
    iput v1, v0, Lcom/miui/systemui/events/SettingsStatusEvent;->notificationFold:I

    .line 43
    move/from16 v1, p14

    .line 45
    iput v1, v0, Lcom/miui/systemui/events/SettingsStatusEvent;->notificationAggregate:I

    .line 47
    move/from16 v1, p15

    .line 49
    iput v1, v0, Lcom/miui/systemui/events/SettingsStatusEvent;->useControlPanel:I

    .line 51
    move/from16 v1, p16

    .line 53
    iput v1, v0, Lcom/miui/systemui/events/SettingsStatusEvent;->expandableUnderLockScreen:I

    .line 55
    move/from16 v1, p17

    .line 57
    iput v1, v0, Lcom/miui/systemui/events/SettingsStatusEvent;->expandSelectedInfo:I

    .line 59
    move/from16 v1, p18

    .line 61
    iput v1, v0, Lcom/miui/systemui/events/SettingsStatusEvent;->wordlessModeSwitchStatus:I

    .line 63
    return-void
    .line 65
.end method

.method public static synthetic copy$default(Lcom/miui/systemui/events/SettingsStatusEvent;IIIIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIIIIIIILjava/lang/Object;)Lcom/miui/systemui/events/SettingsStatusEvent;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    move/from16 v1, p19

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/miui/systemui/events/SettingsStatusEvent;->notificationsEnabledCount:I

    goto :goto_0

    :cond_0
    move/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget v3, v0, Lcom/miui/systemui/events/SettingsStatusEvent;->notificationsBannedCount:I

    goto :goto_1

    :cond_1
    move/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget v4, v0, Lcom/miui/systemui/events/SettingsStatusEvent;->showNotificationIcon:I

    goto :goto_2

    :cond_2
    move/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget v5, v0, Lcom/miui/systemui/events/SettingsStatusEvent;->showNetworkSpeed:I

    goto :goto_3

    :cond_3
    move/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget v6, v0, Lcom/miui/systemui/events/SettingsStatusEvent;->showCarrierUnderKeyguard:I

    goto :goto_4

    :cond_4
    move/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/miui/systemui/events/SettingsStatusEvent;->customCarrier:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/miui/systemui/events/SettingsStatusEvent;->batteryIndicator:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget v9, v0, Lcom/miui/systemui/events/SettingsStatusEvent;->toggleCollapseAfterClicked:I

    goto :goto_7

    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget v10, v0, Lcom/miui/systemui/events/SettingsStatusEvent;->expandableUnderKeyguard:I

    goto :goto_8

    :cond_8
    move/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/miui/systemui/events/SettingsStatusEvent;->notificationShortcut:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lcom/miui/systemui/events/SettingsStatusEvent;->notificationStyle:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget v13, v0, Lcom/miui/systemui/events/SettingsStatusEvent;->bucket:I

    goto :goto_b

    :cond_b
    move/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget v14, v0, Lcom/miui/systemui/events/SettingsStatusEvent;->notificationFold:I

    goto :goto_c

    :cond_c
    move/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget v15, v0, Lcom/miui/systemui/events/SettingsStatusEvent;->notificationAggregate:I

    goto :goto_d

    :cond_d
    move/from16 v15, p14

    :goto_d
    move/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget v15, v0, Lcom/miui/systemui/events/SettingsStatusEvent;->useControlPanel:I

    goto :goto_e

    :cond_e
    move/from16 v15, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move/from16 p15, v15

    if-eqz v16, :cond_f

    iget v15, v0, Lcom/miui/systemui/events/SettingsStatusEvent;->expandableUnderLockScreen:I

    goto :goto_f

    :cond_f
    move/from16 v15, p16

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move/from16 p16, v15

    if-eqz v16, :cond_10

    iget v15, v0, Lcom/miui/systemui/events/SettingsStatusEvent;->expandSelectedInfo:I

    goto :goto_10

    :cond_10
    move/from16 v15, p17

    :goto_10
    const/high16 v16, 0x20000

    and-int v1, v1, v16

    if-eqz v1, :cond_11

    iget v1, v0, Lcom/miui/systemui/events/SettingsStatusEvent;->wordlessModeSwitchStatus:I

    goto :goto_11

    :cond_11
    move/from16 v1, p18

    :goto_11
    move/from16 p1, v2

    move/from16 p2, v3

    move/from16 p3, v4

    move/from16 p4, v5

    move/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move/from16 p8, v9

    move/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move/from16 p12, v13

    move/from16 p13, v14

    move/from16 p17, v15

    move/from16 p18, v1

    invoke-virtual/range {p0 .. p18}, Lcom/miui/systemui/events/SettingsStatusEvent;->copy(IIIIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIIIIII)Lcom/miui/systemui/events/SettingsStatusEvent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/SettingsStatusEvent;->notificationsEnabledCount:I

    .line 2
    return p0
    .line 4
.end method

.method public final component10()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/SettingsStatusEvent;->notificationShortcut:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component11()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/SettingsStatusEvent;->notificationStyle:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component12()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/SettingsStatusEvent;->bucket:I

    .line 2
    return p0
    .line 4
.end method

.method public final component13()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/SettingsStatusEvent;->notificationFold:I

    .line 2
    return p0
    .line 4
.end method

.method public final component14()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/SettingsStatusEvent;->notificationAggregate:I

    .line 2
    return p0
    .line 4
.end method

.method public final component15()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/SettingsStatusEvent;->useControlPanel:I

    .line 2
    return p0
    .line 4
.end method

.method public final component16()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/SettingsStatusEvent;->expandableUnderLockScreen:I

    .line 2
    return p0
    .line 4
.end method

.method public final component17()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/SettingsStatusEvent;->expandSelectedInfo:I

    .line 2
    return p0
    .line 4
.end method

.method public final component18()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/SettingsStatusEvent;->wordlessModeSwitchStatus:I

    .line 2
    return p0
    .line 4
.end method

.method public final component2()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/SettingsStatusEvent;->notificationsBannedCount:I

    .line 2
    return p0
    .line 4
.end method

.method public final component3()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/SettingsStatusEvent;->showNotificationIcon:I

    .line 2
    return p0
    .line 4
.end method

.method public final component4()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/SettingsStatusEvent;->showNetworkSpeed:I

    .line 2
    return p0
    .line 4
.end method

.method public final component5()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/SettingsStatusEvent;->showCarrierUnderKeyguard:I

    .line 2
    return p0
    .line 4
.end method

.method public final component6()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/SettingsStatusEvent;->customCarrier:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component7()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/SettingsStatusEvent;->batteryIndicator:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component8()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/SettingsStatusEvent;->toggleCollapseAfterClicked:I

    .line 2
    return p0
    .line 4
.end method

.method public final component9()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/SettingsStatusEvent;->expandableUnderKeyguard:I

    .line 2
    return p0
    .line 4
.end method

.method public final copy(IIIIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIIIIII)Lcom/miui/systemui/events/SettingsStatusEvent;
    .locals 20

    .line 1
    move/from16 v1, p1

    .line 2
    move/from16 v2, p2

    .line 4
    move/from16 v3, p3

    .line 6
    move/from16 v4, p4

    .line 8
    move/from16 v5, p5

    .line 10
    move-object/from16 v6, p6

    .line 12
    move-object/from16 v7, p7

    .line 14
    move/from16 v8, p8

    .line 16
    move/from16 v9, p9

    .line 18
    move-object/from16 v10, p10

    .line 20
    move-object/from16 v11, p11

    .line 22
    move/from16 v12, p12

    .line 24
    move/from16 v13, p13

    .line 26
    move/from16 v14, p14

    .line 28
    move/from16 v15, p15

    .line 30
    move/from16 v16, p16

    .line 32
    move/from16 v17, p17

    .line 34
    move/from16 v18, p18

    .line 36
    new-instance v19, Lcom/miui/systemui/events/SettingsStatusEvent;

    .line 38
    move-object/from16 v0, v19

    .line 40
    invoke-direct/range {v0 .. v18}, Lcom/miui/systemui/events/SettingsStatusEvent;-><init>(IIIIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIIIIII)V

    .line 42
    return-object v19
    .line 45
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
    instance-of v1, p1, Lcom/miui/systemui/events/SettingsStatusEvent;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/miui/systemui/events/SettingsStatusEvent;

    .line 12
    iget v1, p0, Lcom/miui/systemui/events/SettingsStatusEvent;->notificationsEnabledCount:I

    .line 14
    iget v3, p1, Lcom/miui/systemui/events/SettingsStatusEvent;->notificationsEnabledCount:I

    .line 16
    if-eq v1, v3, :cond_2

    .line 18
    return v2

    .line 20
    :cond_2
    iget v1, p0, Lcom/miui/systemui/events/SettingsStatusEvent;->notificationsBannedCount:I

    .line 21
    iget v3, p1, Lcom/miui/systemui/events/SettingsStatusEvent;->notificationsBannedCount:I

    .line 23
    if-eq v1, v3, :cond_3

    .line 25
    return v2

    .line 27
    :cond_3
    iget v1, p0, Lcom/miui/systemui/events/SettingsStatusEvent;->showNotificationIcon:I

    .line 28
    iget v3, p1, Lcom/miui/systemui/events/SettingsStatusEvent;->showNotificationIcon:I

    .line 30
    if-eq v1, v3, :cond_4

    .line 32
    return v2

    .line 34
    :cond_4
    iget v1, p0, Lcom/miui/systemui/events/SettingsStatusEvent;->showNetworkSpeed:I

    .line 35
    iget v3, p1, Lcom/miui/systemui/events/SettingsStatusEvent;->showNetworkSpeed:I

    .line 37
    if-eq v1, v3, :cond_5

    .line 39
    return v2

    .line 41
    :cond_5
    iget v1, p0, Lcom/miui/systemui/events/SettingsStatusEvent;->showCarrierUnderKeyguard:I

    .line 42
    iget v3, p1, Lcom/miui/systemui/events/SettingsStatusEvent;->showCarrierUnderKeyguard:I

    .line 44
    if-eq v1, v3, :cond_6

    .line 46
    return v2

    .line 48
    :cond_6
    iget-object v1, p0, Lcom/miui/systemui/events/SettingsStatusEvent;->customCarrier:Ljava/lang/String;

    .line 49
    iget-object v3, p1, Lcom/miui/systemui/events/SettingsStatusEvent;->customCarrier:Ljava/lang/String;

    .line 51
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    move-result v1

    .line 56
    if-nez v1, :cond_7

    .line 57
    return v2

    .line 59
    :cond_7
    iget-object v1, p0, Lcom/miui/systemui/events/SettingsStatusEvent;->batteryIndicator:Ljava/lang/String;

    .line 60
    iget-object v3, p1, Lcom/miui/systemui/events/SettingsStatusEvent;->batteryIndicator:Ljava/lang/String;

    .line 62
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    move-result v1

    .line 67
    if-nez v1, :cond_8

    .line 68
    return v2

    .line 70
    :cond_8
    iget v1, p0, Lcom/miui/systemui/events/SettingsStatusEvent;->toggleCollapseAfterClicked:I

    .line 71
    iget v3, p1, Lcom/miui/systemui/events/SettingsStatusEvent;->toggleCollapseAfterClicked:I

    .line 73
    if-eq v1, v3, :cond_9

    .line 75
    return v2

    .line 77
    :cond_9
    iget v1, p0, Lcom/miui/systemui/events/SettingsStatusEvent;->expandableUnderKeyguard:I

    .line 78
    iget v3, p1, Lcom/miui/systemui/events/SettingsStatusEvent;->expandableUnderKeyguard:I

    .line 80
    if-eq v1, v3, :cond_a

    .line 82
    return v2

    .line 84
    :cond_a
    iget-object v1, p0, Lcom/miui/systemui/events/SettingsStatusEvent;->notificationShortcut:Ljava/lang/String;

    .line 85
    iget-object v3, p1, Lcom/miui/systemui/events/SettingsStatusEvent;->notificationShortcut:Ljava/lang/String;

    .line 87
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 89
    move-result v1

    .line 92
    if-nez v1, :cond_b

    .line 93
    return v2

    .line 95
    :cond_b
    iget-object v1, p0, Lcom/miui/systemui/events/SettingsStatusEvent;->notificationStyle:Ljava/lang/String;

    .line 96
    iget-object v3, p1, Lcom/miui/systemui/events/SettingsStatusEvent;->notificationStyle:Ljava/lang/String;

    .line 98
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 100
    move-result v1

    .line 103
    if-nez v1, :cond_c

    .line 104
    return v2

    .line 106
    :cond_c
    iget v1, p0, Lcom/miui/systemui/events/SettingsStatusEvent;->bucket:I

    .line 107
    iget v3, p1, Lcom/miui/systemui/events/SettingsStatusEvent;->bucket:I

    .line 109
    if-eq v1, v3, :cond_d

    .line 111
    return v2

    .line 113
    :cond_d
    iget v1, p0, Lcom/miui/systemui/events/SettingsStatusEvent;->notificationFold:I

    .line 114
    iget v3, p1, Lcom/miui/systemui/events/SettingsStatusEvent;->notificationFold:I

    .line 116
    if-eq v1, v3, :cond_e

    .line 118
    return v2

    .line 120
    :cond_e
    iget v1, p0, Lcom/miui/systemui/events/SettingsStatusEvent;->notificationAggregate:I

    .line 121
    iget v3, p1, Lcom/miui/systemui/events/SettingsStatusEvent;->notificationAggregate:I

    .line 123
    if-eq v1, v3, :cond_f

    .line 125
    return v2

    .line 127
    :cond_f
    iget v1, p0, Lcom/miui/systemui/events/SettingsStatusEvent;->useControlPanel:I

    .line 128
    iget v3, p1, Lcom/miui/systemui/events/SettingsStatusEvent;->useControlPanel:I

    .line 130
    if-eq v1, v3, :cond_10

    .line 132
    return v2

    .line 134
    :cond_10
    iget v1, p0, Lcom/miui/systemui/events/SettingsStatusEvent;->expandableUnderLockScreen:I

    .line 135
    iget v3, p1, Lcom/miui/systemui/events/SettingsStatusEvent;->expandableUnderLockScreen:I

    .line 137
    if-eq v1, v3, :cond_11

    .line 139
    return v2

    .line 141
    :cond_11
    iget v1, p0, Lcom/miui/systemui/events/SettingsStatusEvent;->expandSelectedInfo:I

    .line 142
    iget v3, p1, Lcom/miui/systemui/events/SettingsStatusEvent;->expandSelectedInfo:I

    .line 144
    if-eq v1, v3, :cond_12

    .line 146
    return v2

    .line 148
    :cond_12
    iget p0, p0, Lcom/miui/systemui/events/SettingsStatusEvent;->wordlessModeSwitchStatus:I

    .line 149
    iget p1, p1, Lcom/miui/systemui/events/SettingsStatusEvent;->wordlessModeSwitchStatus:I

    .line 151
    if-eq p0, p1, :cond_13

    .line 153
    return v2

    .line 155
    :cond_13
    return v0
    .line 156
.end method

.method public final getBatteryIndicator()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/SettingsStatusEvent;->batteryIndicator:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getBucket()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/SettingsStatusEvent;->bucket:I

    .line 2
    return p0
    .line 4
.end method

.method public final getCustomCarrier()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/SettingsStatusEvent;->customCarrier:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getExpandSelectedInfo()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/SettingsStatusEvent;->expandSelectedInfo:I

    .line 2
    return p0
    .line 4
.end method

.method public final getExpandableUnderKeyguard()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/SettingsStatusEvent;->expandableUnderKeyguard:I

    .line 2
    return p0
    .line 4
.end method

.method public final getExpandableUnderLockScreen()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/SettingsStatusEvent;->expandableUnderLockScreen:I

    .line 2
    return p0
    .line 4
.end method

.method public final getNotificationAggregate()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/SettingsStatusEvent;->notificationAggregate:I

    .line 2
    return p0
    .line 4
.end method

.method public final getNotificationFold()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/SettingsStatusEvent;->notificationFold:I

    .line 2
    return p0
    .line 4
.end method

.method public final getNotificationShortcut()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/SettingsStatusEvent;->notificationShortcut:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getNotificationStyle()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/SettingsStatusEvent;->notificationStyle:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getNotificationsBannedCount()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/SettingsStatusEvent;->notificationsBannedCount:I

    .line 2
    return p0
    .line 4
.end method

.method public final getNotificationsEnabledCount()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/SettingsStatusEvent;->notificationsEnabledCount:I

    .line 2
    return p0
    .line 4
.end method

.method public final getShowCarrierUnderKeyguard()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/SettingsStatusEvent;->showCarrierUnderKeyguard:I

    .line 2
    return p0
    .line 4
.end method

.method public final getShowNetworkSpeed()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/SettingsStatusEvent;->showNetworkSpeed:I

    .line 2
    return p0
    .line 4
.end method

.method public final getShowNotificationIcon()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/SettingsStatusEvent;->showNotificationIcon:I

    .line 2
    return p0
    .line 4
.end method

.method public final getToggleCollapseAfterClicked()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/SettingsStatusEvent;->toggleCollapseAfterClicked:I

    .line 2
    return p0
    .line 4
.end method

.method public final getUseControlPanel()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/SettingsStatusEvent;->useControlPanel:I

    .line 2
    return p0
    .line 4
.end method

.method public final getWordlessModeSwitchStatus()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/SettingsStatusEvent;->wordlessModeSwitchStatus:I

    .line 2
    return p0
    .line 4
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/miui/systemui/events/SettingsStatusEvent;->notificationsEnabledCount:I

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    .line 4
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget v1, p0, Lcom/miui/systemui/events/SettingsStatusEvent;->notificationsBannedCount:I

    .line 10
    const/16 v2, 0x1f

    .line 12
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 14
    move-result v0

    .line 17
    iget v1, p0, Lcom/miui/systemui/events/SettingsStatusEvent;->showNotificationIcon:I

    .line 18
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 20
    move-result v0

    .line 23
    iget v1, p0, Lcom/miui/systemui/events/SettingsStatusEvent;->showNetworkSpeed:I

    .line 24
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 26
    move-result v0

    .line 29
    iget v1, p0, Lcom/miui/systemui/events/SettingsStatusEvent;->showCarrierUnderKeyguard:I

    .line 30
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 32
    move-result v0

    .line 35
    iget-object v1, p0, Lcom/miui/systemui/events/SettingsStatusEvent;->customCarrier:Ljava/lang/String;

    .line 36
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 38
    move-result v0

    .line 41
    iget-object v1, p0, Lcom/miui/systemui/events/SettingsStatusEvent;->batteryIndicator:Ljava/lang/String;

    .line 42
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 44
    move-result v0

    .line 47
    iget v1, p0, Lcom/miui/systemui/events/SettingsStatusEvent;->toggleCollapseAfterClicked:I

    .line 48
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 50
    move-result v0

    .line 53
    iget v1, p0, Lcom/miui/systemui/events/SettingsStatusEvent;->expandableUnderKeyguard:I

    .line 54
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 56
    move-result v0

    .line 59
    iget-object v1, p0, Lcom/miui/systemui/events/SettingsStatusEvent;->notificationShortcut:Ljava/lang/String;

    .line 60
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 62
    move-result v0

    .line 65
    iget-object v1, p0, Lcom/miui/systemui/events/SettingsStatusEvent;->notificationStyle:Ljava/lang/String;

    .line 66
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 68
    move-result v0

    .line 71
    iget v1, p0, Lcom/miui/systemui/events/SettingsStatusEvent;->bucket:I

    .line 72
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 74
    move-result v0

    .line 77
    iget v1, p0, Lcom/miui/systemui/events/SettingsStatusEvent;->notificationFold:I

    .line 78
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 80
    move-result v0

    .line 83
    iget v1, p0, Lcom/miui/systemui/events/SettingsStatusEvent;->notificationAggregate:I

    .line 84
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 86
    move-result v0

    .line 89
    iget v1, p0, Lcom/miui/systemui/events/SettingsStatusEvent;->useControlPanel:I

    .line 90
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 92
    move-result v0

    .line 95
    iget v1, p0, Lcom/miui/systemui/events/SettingsStatusEvent;->expandableUnderLockScreen:I

    .line 96
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 98
    move-result v0

    .line 101
    iget v1, p0, Lcom/miui/systemui/events/SettingsStatusEvent;->expandSelectedInfo:I

    .line 102
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 104
    move-result v0

    .line 107
    iget p0, p0, Lcom/miui/systemui/events/SettingsStatusEvent;->wordlessModeSwitchStatus:I

    .line 108
    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    .line 110
    move-result p0

    .line 113
    add-int/2addr p0, v0

    .line 114
    return p0
    .line 115
.end method

.method public toString()Ljava/lang/String;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget v1, v0, Lcom/miui/systemui/events/SettingsStatusEvent;->notificationsEnabledCount:I

    .line 4
    iget v2, v0, Lcom/miui/systemui/events/SettingsStatusEvent;->notificationsBannedCount:I

    .line 6
    iget v3, v0, Lcom/miui/systemui/events/SettingsStatusEvent;->showNotificationIcon:I

    .line 8
    iget v4, v0, Lcom/miui/systemui/events/SettingsStatusEvent;->showNetworkSpeed:I

    .line 10
    iget v5, v0, Lcom/miui/systemui/events/SettingsStatusEvent;->showCarrierUnderKeyguard:I

    .line 12
    iget-object v6, v0, Lcom/miui/systemui/events/SettingsStatusEvent;->customCarrier:Ljava/lang/String;

    .line 14
    iget-object v7, v0, Lcom/miui/systemui/events/SettingsStatusEvent;->batteryIndicator:Ljava/lang/String;

    .line 16
    iget v8, v0, Lcom/miui/systemui/events/SettingsStatusEvent;->toggleCollapseAfterClicked:I

    .line 18
    iget v9, v0, Lcom/miui/systemui/events/SettingsStatusEvent;->expandableUnderKeyguard:I

    .line 20
    iget-object v10, v0, Lcom/miui/systemui/events/SettingsStatusEvent;->notificationShortcut:Ljava/lang/String;

    .line 22
    iget-object v11, v0, Lcom/miui/systemui/events/SettingsStatusEvent;->notificationStyle:Ljava/lang/String;

    .line 24
    iget v12, v0, Lcom/miui/systemui/events/SettingsStatusEvent;->bucket:I

    .line 26
    iget v13, v0, Lcom/miui/systemui/events/SettingsStatusEvent;->notificationFold:I

    .line 28
    iget v14, v0, Lcom/miui/systemui/events/SettingsStatusEvent;->notificationAggregate:I

    .line 30
    iget v15, v0, Lcom/miui/systemui/events/SettingsStatusEvent;->useControlPanel:I

    .line 32
    move/from16 v16, v15

    .line 34
    iget v15, v0, Lcom/miui/systemui/events/SettingsStatusEvent;->expandableUnderLockScreen:I

    .line 36
    move/from16 v17, v15

    .line 38
    iget v15, v0, Lcom/miui/systemui/events/SettingsStatusEvent;->expandSelectedInfo:I

    .line 40
    iget v0, v0, Lcom/miui/systemui/events/SettingsStatusEvent;->wordlessModeSwitchStatus:I

    .line 42
    move/from16 p0, v0

    .line 44
    const-string v0, "SettingsStatusEvent(notificationsEnabledCount="

    .line 46
    move/from16 v18, v15

    .line 48
    const-string v15, ", notificationsBannedCount="

    .line 50
    move/from16 v19, v13

    .line 52
    const-string v13, ", showNotificationIcon="

    .line 54
    invoke-static {v0, v1, v15, v2, v13}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    move-result-object v0

    .line 59
    const-string v1, ", showNetworkSpeed="

    .line 60
    const-string v2, ", showCarrierUnderKeyguard="

    .line 62
    invoke-static {v0, v3, v1, v4, v2}, Landroidx/viewpager/widget/OriginalViewPager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 64
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    const-string v1, ", customCarrier="

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const-string v1, ", batteryIndicator="

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    const-string v1, ", toggleCollapseAfterClicked="

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    const-string v1, ", expandableUnderKeyguard="

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    const-string v1, ", notificationShortcut="

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    const-string v1, ", notificationStyle="

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    const-string v1, ", bucket="

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    const-string v1, ", notificationFold="

    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    const-string v1, ", notificationAggregate="

    .line 131
    const-string v2, ", useControlPanel="

    .line 133
    move/from16 v3, v19

    .line 135
    invoke-static {v0, v3, v1, v14, v2}, Landroidx/viewpager/widget/OriginalViewPager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 137
    const-string v1, ", expandableUnderLockScreen="

    .line 140
    const-string v2, ", expandSelectedInfo="

    .line 142
    move/from16 v3, v16

    .line 144
    move/from16 v4, v17

    .line 146
    invoke-static {v0, v3, v1, v4, v2}, Landroidx/viewpager/widget/OriginalViewPager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 148
    move/from16 v1, v18

    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    const-string v1, ", wordlessModeSwitchStatus="

    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    move/from16 v1, p0

    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    const-string v1, ")"

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    move-result-object v0

    .line 174
    return-object v0
    .line 175
.end method
