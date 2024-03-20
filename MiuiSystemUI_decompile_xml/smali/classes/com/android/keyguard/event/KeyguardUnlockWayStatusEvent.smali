.class public final Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# annotations
.annotation runtime Lcom/miui/systemui/events/EventID;
    id = "keyguard_unlock_way_status"
.end annotation

.annotation runtime Lcom/miui/systemui/events/EventModule;
    value = .enum Lcom/miui/systemui/events/EventModuleTarget;->SYSTEMUI:Lcom/miui/systemui/events/EventModuleTarget;
.end annotation


# instance fields
.field private final faceNum:I
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "face_num"
    .end annotation
.end field

.field private final fingerprintNum:I
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "fingerprint_num"
    .end annotation
.end field

.field private final gxzwAnim:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "gxzw_anim"
    .end annotation
.end field

.field private final ifDarkFingerprintUnlock:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "if_dark_fingerprint_unlock"
    .end annotation
.end field

.field private final ifDisplayPattern:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "if_display_pattern"
    .end annotation
.end field

.field private final ifFaceUnlockNotification:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "if_face_unlock_notification"
    .end annotation
.end field

.field private final ifFingerprintPrivacyPassword:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "if_fingerprint_privacy_password"
    .end annotation
.end field

.field private final ifFodQuickOpen:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "if_fod_quick_open"
    .end annotation
.end field

.field private final ifHideNotificationContentBeforeFaceUnlock:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "if_hide_notification_content_before_face_unlock"
    .end annotation
.end field

.field private final ifOpenBlueUnlock:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "if_open_blue_unlock"
    .end annotation
.end field

.field private final ifOpenFaceUnlock:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "if_open_face_unlock"
    .end annotation
.end field

.field private final ifOpenFingerprintUnlock:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "if_open_fingerprint_unlock"
    .end annotation
.end field

.field private final ifOpenFingerprintUnlockApp:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "if_open_fingerprint_unlock_app"
    .end annotation
.end field

.field private final ifOpenVibrationSwitch:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "if_open_vibration_switch"
    .end annotation
.end field

.field private final ifShowFingerprintAfterSleep:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "if_show_fingerprint_after_sleep"
    .end annotation
.end field

.field private final ifStayKeyguardAfterFaceUnlock:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "if_stay_keyguard_after_face_unlock"
    .end annotation
.end field

.field private final keyguardDataVersion:Ljava/lang/Number;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "keyguard_data_version"
    .end annotation
.end field

.field private final secureType:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "secure_type"
    .end annotation
.end field

.field private final sideFingerprintUnlockWay:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "side_fingerprint_unlock_way"
    .end annotation
.end field

.field private final tip:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "tip"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V
    .locals 2

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->secureType:Ljava/lang/String;

    move-object v1, p2

    .line 3
    iput-object v1, v0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifDisplayPattern:Ljava/lang/String;

    move-object v1, p3

    .line 4
    iput-object v1, v0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifDarkFingerprintUnlock:Ljava/lang/String;

    move-object v1, p4

    .line 5
    iput-object v1, v0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->sideFingerprintUnlockWay:Ljava/lang/String;

    move-object v1, p5

    .line 6
    iput-object v1, v0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifOpenFingerprintUnlock:Ljava/lang/String;

    move-object v1, p6

    .line 7
    iput-object v1, v0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifFingerprintPrivacyPassword:Ljava/lang/String;

    move-object v1, p7

    .line 8
    iput-object v1, v0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifOpenFingerprintUnlockApp:Ljava/lang/String;

    move v1, p8

    .line 9
    iput v1, v0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->fingerprintNum:I

    move-object v1, p9

    .line 10
    iput-object v1, v0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->gxzwAnim:Ljava/lang/String;

    move-object v1, p10

    .line 11
    iput-object v1, v0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifOpenVibrationSwitch:Ljava/lang/String;

    move-object v1, p11

    .line 12
    iput-object v1, v0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifShowFingerprintAfterSleep:Ljava/lang/String;

    move-object v1, p12

    .line 13
    iput-object v1, v0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifFodQuickOpen:Ljava/lang/String;

    move-object v1, p13

    .line 14
    iput-object v1, v0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifOpenFaceUnlock:Ljava/lang/String;

    move/from16 v1, p14

    .line 15
    iput v1, v0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->faceNum:I

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifStayKeyguardAfterFaceUnlock:Ljava/lang/String;

    move-object/from16 v1, p16

    .line 17
    iput-object v1, v0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifFaceUnlockNotification:Ljava/lang/String;

    move-object/from16 v1, p17

    .line 18
    iput-object v1, v0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifHideNotificationContentBeforeFaceUnlock:Ljava/lang/String;

    move-object/from16 v1, p18

    .line 19
    iput-object v1, v0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifOpenBlueUnlock:Ljava/lang/String;

    move-object/from16 v1, p19

    .line 20
    iput-object v1, v0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->tip:Ljava/lang/String;

    move-object/from16 v1, p20

    .line 21
    iput-object v1, v0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->keyguardDataVersion:Ljava/lang/Number;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 22

    const/high16 v0, 0x40000

    and-int v0, p21, v0

    if-eqz v0, :cond_0

    const-string v0, "178.2.2.1.20935"

    move-object/from16 v20, v0

    goto :goto_0

    :cond_0
    move-object/from16 v20, p19

    :goto_0
    const/high16 v0, 0x80000

    and-int v0, p21, v0

    if-eqz v0, :cond_1

    const v0, 0x1511750

    .line 22
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v21, v0

    goto :goto_1

    :cond_1
    move-object/from16 v21, p20

    :goto_1
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    .line 23
    invoke-direct/range {v1 .. v21}, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;ILjava/lang/Object;)Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    move/from16 v1, p21

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->secureType:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifDisplayPattern:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifDarkFingerprintUnlock:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->sideFingerprintUnlockWay:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifOpenFingerprintUnlock:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifFingerprintPrivacyPassword:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifOpenFingerprintUnlockApp:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget v9, v0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->fingerprintNum:I

    goto :goto_7

    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->gxzwAnim:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifOpenVibrationSwitch:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifShowFingerprintAfterSleep:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-object v13, v0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifFodQuickOpen:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-object v14, v0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifOpenFaceUnlock:Ljava/lang/String;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget v15, v0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->faceNum:I

    goto :goto_d

    :cond_d
    move/from16 v15, p14

    :goto_d
    move/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-object v15, v0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifStayKeyguardAfterFaceUnlock:Ljava/lang/String;

    goto :goto_e

    :cond_e
    move-object/from16 v15, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move-object/from16 p15, v15

    if-eqz v16, :cond_f

    iget-object v15, v0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifFaceUnlockNotification:Ljava/lang/String;

    goto :goto_f

    :cond_f
    move-object/from16 v15, p16

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move-object/from16 p16, v15

    if-eqz v16, :cond_10

    iget-object v15, v0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifHideNotificationContentBeforeFaceUnlock:Ljava/lang/String;

    goto :goto_10

    :cond_10
    move-object/from16 v15, p17

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    move-object/from16 p17, v15

    if-eqz v16, :cond_11

    iget-object v15, v0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifOpenBlueUnlock:Ljava/lang/String;

    goto :goto_11

    :cond_11
    move-object/from16 v15, p18

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    move-object/from16 p18, v15

    if-eqz v16, :cond_12

    iget-object v15, v0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->tip:Ljava/lang/String;

    goto :goto_12

    :cond_12
    move-object/from16 v15, p19

    :goto_12
    const/high16 v16, 0x80000

    and-int v1, v1, v16

    if-eqz v1, :cond_13

    iget-object v1, v0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->keyguardDataVersion:Ljava/lang/Number;

    goto :goto_13

    :cond_13
    move-object/from16 v1, p20

    :goto_13
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p19, v15

    move-object/from16 p20, v1

    invoke-virtual/range {p0 .. p20}, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->secureType:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component10()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifOpenVibrationSwitch:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component11()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifShowFingerprintAfterSleep:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component12()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifFodQuickOpen:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component13()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifOpenFaceUnlock:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component14()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->faceNum:I

    .line 2
    return p0
    .line 4
.end method

.method public final component15()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifStayKeyguardAfterFaceUnlock:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component16()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifFaceUnlockNotification:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component17()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifHideNotificationContentBeforeFaceUnlock:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component18()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifOpenBlueUnlock:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component19()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->tip:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifDisplayPattern:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component20()Ljava/lang/Number;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->keyguardDataVersion:Ljava/lang/Number;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifDarkFingerprintUnlock:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component4()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->sideFingerprintUnlockWay:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component5()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifOpenFingerprintUnlock:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component6()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifFingerprintPrivacyPassword:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component7()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifOpenFingerprintUnlockApp:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component8()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->fingerprintNum:I

    .line 2
    return p0
    .line 4
.end method

.method public final component9()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->gxzwAnim:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;
    .locals 22

    .line 1
    move-object/from16 v1, p1

    .line 2
    move-object/from16 v2, p2

    .line 4
    move-object/from16 v3, p3

    .line 6
    move-object/from16 v4, p4

    .line 8
    move-object/from16 v5, p5

    .line 10
    move-object/from16 v6, p6

    .line 12
    move-object/from16 v7, p7

    .line 14
    move/from16 v8, p8

    .line 16
    move-object/from16 v9, p9

    .line 18
    move-object/from16 v10, p10

    .line 20
    move-object/from16 v11, p11

    .line 22
    move-object/from16 v12, p12

    .line 24
    move-object/from16 v13, p13

    .line 26
    move/from16 v14, p14

    .line 28
    move-object/from16 v15, p15

    .line 30
    move-object/from16 v16, p16

    .line 32
    move-object/from16 v17, p17

    .line 34
    move-object/from16 v18, p18

    .line 36
    move-object/from16 v19, p19

    .line 38
    move-object/from16 v20, p20

    .line 40
    new-instance v21, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;

    .line 42
    move-object/from16 v0, v21

    .line 44
    invoke-direct/range {v0 .. v20}, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 46
    return-object v21
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
    instance-of v1, p1, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;

    .line 12
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->secureType:Ljava/lang/String;

    .line 14
    iget-object v3, p1, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->secureType:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifDisplayPattern:Ljava/lang/String;

    .line 25
    iget-object v3, p1, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifDisplayPattern:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifDarkFingerprintUnlock:Ljava/lang/String;

    .line 36
    iget-object v3, p1, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifDarkFingerprintUnlock:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->sideFingerprintUnlockWay:Ljava/lang/String;

    .line 47
    iget-object v3, p1, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->sideFingerprintUnlockWay:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifOpenFingerprintUnlock:Ljava/lang/String;

    .line 58
    iget-object v3, p1, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifOpenFingerprintUnlock:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifFingerprintPrivacyPassword:Ljava/lang/String;

    .line 69
    iget-object v3, p1, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifFingerprintPrivacyPassword:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifOpenFingerprintUnlockApp:Ljava/lang/String;

    .line 80
    iget-object v3, p1, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifOpenFingerprintUnlockApp:Ljava/lang/String;

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
    iget v1, p0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->fingerprintNum:I

    .line 91
    iget v3, p1, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->fingerprintNum:I

    .line 93
    if-eq v1, v3, :cond_9

    .line 95
    return v2

    .line 97
    :cond_9
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->gxzwAnim:Ljava/lang/String;

    .line 98
    iget-object v3, p1, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->gxzwAnim:Ljava/lang/String;

    .line 100
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 102
    move-result v1

    .line 105
    if-nez v1, :cond_a

    .line 106
    return v2

    .line 108
    :cond_a
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifOpenVibrationSwitch:Ljava/lang/String;

    .line 109
    iget-object v3, p1, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifOpenVibrationSwitch:Ljava/lang/String;

    .line 111
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 113
    move-result v1

    .line 116
    if-nez v1, :cond_b

    .line 117
    return v2

    .line 119
    :cond_b
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifShowFingerprintAfterSleep:Ljava/lang/String;

    .line 120
    iget-object v3, p1, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifShowFingerprintAfterSleep:Ljava/lang/String;

    .line 122
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 124
    move-result v1

    .line 127
    if-nez v1, :cond_c

    .line 128
    return v2

    .line 130
    :cond_c
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifFodQuickOpen:Ljava/lang/String;

    .line 131
    iget-object v3, p1, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifFodQuickOpen:Ljava/lang/String;

    .line 133
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 135
    move-result v1

    .line 138
    if-nez v1, :cond_d

    .line 139
    return v2

    .line 141
    :cond_d
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifOpenFaceUnlock:Ljava/lang/String;

    .line 142
    iget-object v3, p1, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifOpenFaceUnlock:Ljava/lang/String;

    .line 144
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 146
    move-result v1

    .line 149
    if-nez v1, :cond_e

    .line 150
    return v2

    .line 152
    :cond_e
    iget v1, p0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->faceNum:I

    .line 153
    iget v3, p1, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->faceNum:I

    .line 155
    if-eq v1, v3, :cond_f

    .line 157
    return v2

    .line 159
    :cond_f
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifStayKeyguardAfterFaceUnlock:Ljava/lang/String;

    .line 160
    iget-object v3, p1, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifStayKeyguardAfterFaceUnlock:Ljava/lang/String;

    .line 162
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 164
    move-result v1

    .line 167
    if-nez v1, :cond_10

    .line 168
    return v2

    .line 170
    :cond_10
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifFaceUnlockNotification:Ljava/lang/String;

    .line 171
    iget-object v3, p1, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifFaceUnlockNotification:Ljava/lang/String;

    .line 173
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 175
    move-result v1

    .line 178
    if-nez v1, :cond_11

    .line 179
    return v2

    .line 181
    :cond_11
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifHideNotificationContentBeforeFaceUnlock:Ljava/lang/String;

    .line 182
    iget-object v3, p1, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifHideNotificationContentBeforeFaceUnlock:Ljava/lang/String;

    .line 184
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 186
    move-result v1

    .line 189
    if-nez v1, :cond_12

    .line 190
    return v2

    .line 192
    :cond_12
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifOpenBlueUnlock:Ljava/lang/String;

    .line 193
    iget-object v3, p1, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifOpenBlueUnlock:Ljava/lang/String;

    .line 195
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 197
    move-result v1

    .line 200
    if-nez v1, :cond_13

    .line 201
    return v2

    .line 203
    :cond_13
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->tip:Ljava/lang/String;

    .line 204
    iget-object v3, p1, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->tip:Ljava/lang/String;

    .line 206
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 208
    move-result v1

    .line 211
    if-nez v1, :cond_14

    .line 212
    return v2

    .line 214
    :cond_14
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->keyguardDataVersion:Ljava/lang/Number;

    .line 215
    iget-object p1, p1, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->keyguardDataVersion:Ljava/lang/Number;

    .line 217
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 219
    move-result p0

    .line 222
    if-nez p0, :cond_15

    .line 223
    return v2

    .line 225
    :cond_15
    return v0
    .line 226
.end method

.method public final getFaceNum()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->faceNum:I

    .line 2
    return p0
    .line 4
.end method

.method public final getFingerprintNum()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->fingerprintNum:I

    .line 2
    return p0
    .line 4
.end method

.method public final getGxzwAnim()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->gxzwAnim:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getIfDarkFingerprintUnlock()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifDarkFingerprintUnlock:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getIfDisplayPattern()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifDisplayPattern:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getIfFaceUnlockNotification()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifFaceUnlockNotification:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getIfFingerprintPrivacyPassword()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifFingerprintPrivacyPassword:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getIfFodQuickOpen()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifFodQuickOpen:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getIfHideNotificationContentBeforeFaceUnlock()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifHideNotificationContentBeforeFaceUnlock:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getIfOpenBlueUnlock()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifOpenBlueUnlock:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getIfOpenFaceUnlock()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifOpenFaceUnlock:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getIfOpenFingerprintUnlock()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifOpenFingerprintUnlock:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getIfOpenFingerprintUnlockApp()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifOpenFingerprintUnlockApp:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getIfOpenVibrationSwitch()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifOpenVibrationSwitch:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getIfShowFingerprintAfterSleep()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifShowFingerprintAfterSleep:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getIfStayKeyguardAfterFaceUnlock()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifStayKeyguardAfterFaceUnlock:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getKeyguardDataVersion()Ljava/lang/Number;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->keyguardDataVersion:Ljava/lang/Number;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getSecureType()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->secureType:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getSideFingerprintUnlockWay()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->sideFingerprintUnlockWay:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getTip()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->tip:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->secureType:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifDisplayPattern:Ljava/lang/String;

    .line 10
    const/16 v2, 0x1f

    .line 12
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 14
    move-result v0

    .line 17
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifDarkFingerprintUnlock:Ljava/lang/String;

    .line 18
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 20
    move-result v0

    .line 23
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->sideFingerprintUnlockWay:Ljava/lang/String;

    .line 24
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 26
    move-result v0

    .line 29
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifOpenFingerprintUnlock:Ljava/lang/String;

    .line 30
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 32
    move-result v0

    .line 35
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifFingerprintPrivacyPassword:Ljava/lang/String;

    .line 36
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 38
    move-result v0

    .line 41
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifOpenFingerprintUnlockApp:Ljava/lang/String;

    .line 42
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 44
    move-result v0

    .line 47
    iget v1, p0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->fingerprintNum:I

    .line 48
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 50
    move-result v0

    .line 53
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->gxzwAnim:Ljava/lang/String;

    .line 54
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 56
    move-result v0

    .line 59
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifOpenVibrationSwitch:Ljava/lang/String;

    .line 60
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 62
    move-result v0

    .line 65
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifShowFingerprintAfterSleep:Ljava/lang/String;

    .line 66
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 68
    move-result v0

    .line 71
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifFodQuickOpen:Ljava/lang/String;

    .line 72
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 74
    move-result v0

    .line 77
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifOpenFaceUnlock:Ljava/lang/String;

    .line 78
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 80
    move-result v0

    .line 83
    iget v1, p0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->faceNum:I

    .line 84
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 86
    move-result v0

    .line 89
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifStayKeyguardAfterFaceUnlock:Ljava/lang/String;

    .line 90
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 92
    move-result v0

    .line 95
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifFaceUnlockNotification:Ljava/lang/String;

    .line 96
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 98
    move-result v0

    .line 101
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifHideNotificationContentBeforeFaceUnlock:Ljava/lang/String;

    .line 102
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 104
    move-result v0

    .line 107
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifOpenBlueUnlock:Ljava/lang/String;

    .line 108
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 110
    move-result v0

    .line 113
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->tip:Ljava/lang/String;

    .line 114
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 116
    move-result v0

    .line 119
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->keyguardDataVersion:Ljava/lang/Number;

    .line 120
    invoke-virtual {p0}, Ljava/lang/Number;->hashCode()I

    .line 122
    move-result p0

    .line 125
    add-int/2addr p0, v0

    .line 126
    return p0
    .line 127
.end method

.method public toString()Ljava/lang/String;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->secureType:Ljava/lang/String;

    .line 4
    iget-object v2, v0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifDisplayPattern:Ljava/lang/String;

    .line 6
    iget-object v3, v0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifDarkFingerprintUnlock:Ljava/lang/String;

    .line 8
    iget-object v4, v0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->sideFingerprintUnlockWay:Ljava/lang/String;

    .line 10
    iget-object v5, v0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifOpenFingerprintUnlock:Ljava/lang/String;

    .line 12
    iget-object v6, v0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifFingerprintPrivacyPassword:Ljava/lang/String;

    .line 14
    iget-object v7, v0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifOpenFingerprintUnlockApp:Ljava/lang/String;

    .line 16
    iget v8, v0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->fingerprintNum:I

    .line 18
    iget-object v9, v0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->gxzwAnim:Ljava/lang/String;

    .line 20
    iget-object v10, v0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifOpenVibrationSwitch:Ljava/lang/String;

    .line 22
    iget-object v11, v0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifShowFingerprintAfterSleep:Ljava/lang/String;

    .line 24
    iget-object v12, v0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifFodQuickOpen:Ljava/lang/String;

    .line 26
    iget-object v13, v0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifOpenFaceUnlock:Ljava/lang/String;

    .line 28
    iget v14, v0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->faceNum:I

    .line 30
    iget-object v15, v0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifStayKeyguardAfterFaceUnlock:Ljava/lang/String;

    .line 32
    move-object/from16 v16, v15

    .line 34
    iget-object v15, v0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifFaceUnlockNotification:Ljava/lang/String;

    .line 36
    move-object/from16 v17, v15

    .line 38
    iget-object v15, v0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifHideNotificationContentBeforeFaceUnlock:Ljava/lang/String;

    .line 40
    move-object/from16 v18, v15

    .line 42
    iget-object v15, v0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->ifOpenBlueUnlock:Ljava/lang/String;

    .line 44
    move-object/from16 v19, v15

    .line 46
    iget-object v15, v0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->tip:Ljava/lang/String;

    .line 48
    iget-object v0, v0, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;->keyguardDataVersion:Ljava/lang/Number;

    .line 50
    move-object/from16 p0, v0

    .line 52
    const-string v0, "KeyguardUnlockWayStatusEvent(secureType="

    .line 54
    move-object/from16 v20, v15

    .line 56
    const-string v15, ", ifDisplayPattern="

    .line 58
    move/from16 v21, v14

    .line 60
    const-string v14, ", ifDarkFingerprintUnlock="

    .line 62
    invoke-static {v0, v1, v15, v2, v14}, Lcom/android/keyguard/event/FodQuickOpenActionEvent$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    move-result-object v0

    .line 67
    const-string v1, ", sideFingerprintUnlockWay="

    .line 68
    const-string v2, ", ifOpenFingerprintUnlock="

    .line 70
    invoke-static {v0, v3, v1, v4, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v1, ", ifFingerprintPrivacyPassword="

    .line 75
    const-string v2, ", ifOpenFingerprintUnlockApp="

    .line 77
    invoke-static {v0, v5, v1, v6, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    const-string v1, ", fingerprintNum="

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    const-string v1, ", gxzwAnim="

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    const-string v1, ", ifOpenVibrationSwitch="

    .line 98
    const-string v2, ", ifShowFingerprintAfterSleep="

    .line 100
    invoke-static {v0, v9, v1, v10, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v1, ", ifFodQuickOpen="

    .line 105
    const-string v2, ", ifOpenFaceUnlock="

    .line 107
    invoke-static {v0, v11, v1, v12, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const-string v1, ", faceNum="

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    move/from16 v1, v21

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    const-string v1, ", ifStayKeyguardAfterFaceUnlock="

    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    const-string v1, ", ifFaceUnlockNotification="

    .line 130
    const-string v2, ", ifHideNotificationContentBeforeFaceUnlock="

    .line 132
    move-object/from16 v3, v16

    .line 134
    move-object/from16 v4, v17

    .line 136
    invoke-static {v0, v3, v1, v4, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v1, ", ifOpenBlueUnlock="

    .line 141
    const-string v2, ", tip="

    .line 143
    move-object/from16 v3, v18

    .line 145
    move-object/from16 v4, v19

    .line 147
    invoke-static {v0, v3, v1, v4, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    move-object/from16 v1, v20

    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    const-string v1, ", keyguardDataVersion="

    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    move-object/from16 v1, p0

    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 164
    const-string v1, ")"

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    move-result-object v0

    .line 175
    return-object v0
    .line 176
.end method
