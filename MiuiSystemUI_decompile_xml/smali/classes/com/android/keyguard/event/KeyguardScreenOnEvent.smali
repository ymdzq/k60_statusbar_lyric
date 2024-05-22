.class public final Lcom/android/keyguard/event/KeyguardScreenOnEvent;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# annotations
.annotation runtime Lcom/miui/systemui/events/EventID;
    id = "keyguard_screen_on"
.end annotation

.annotation runtime Lcom/miui/systemui/events/EventModule;
    value = .enum Lcom/miui/systemui/events/EventModuleTarget;->SYSTEMUI:Lcom/miui/systemui/events/EventModuleTarget;
.end annotation


# instance fields
.field private final ifFaceLocked:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "if_face_locked"
    .end annotation
.end field

.field private final ifFingerprintLocked:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "if_fingerprint_locked"
    .end annotation
.end field

.field private final ifPasswordLocked:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "if_password_locked"
    .end annotation
.end field

.field private final ifScreenOnDelayed:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "if_screen_on_delayed"
    .end annotation
.end field

.field private final ifUnlockedByFingerprint:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "if_unlocked_by_fingerprint"
    .end annotation
.end field

.field private final keyguardDataVersion:Ljava/lang/Number;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "keyguard_data_version"
    .end annotation
.end field

.field private final screenOnWay:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "screen_on_way"
    .end annotation
.end field

.field private final tip:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "tip"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/event/KeyguardScreenOnEvent;->screenOnWay:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/android/keyguard/event/KeyguardScreenOnEvent;->ifFingerprintLocked:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/android/keyguard/event/KeyguardScreenOnEvent;->ifPasswordLocked:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/android/keyguard/event/KeyguardScreenOnEvent;->ifFaceLocked:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/android/keyguard/event/KeyguardScreenOnEvent;->ifScreenOnDelayed:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lcom/android/keyguard/event/KeyguardScreenOnEvent;->ifUnlockedByFingerprint:Ljava/lang/String;

    .line 8
    iput-object p7, p0, Lcom/android/keyguard/event/KeyguardScreenOnEvent;->tip:Ljava/lang/String;

    .line 9
    iput-object p8, p0, Lcom/android/keyguard/event/KeyguardScreenOnEvent;->keyguardDataVersion:Ljava/lang/Number;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 11

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_0

    const-string v1, "178.2.0.1.20916"

    move-object v9, v1

    goto :goto_0

    :cond_0
    move-object/from16 v9, p7

    :goto_0
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1

    const v0, 0x1511750

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v10, v0

    goto :goto_1

    :cond_1
    move-object/from16 v10, p8

    :goto_1
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    .line 11
    invoke-direct/range {v2 .. v10}, Lcom/android/keyguard/event/KeyguardScreenOnEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/keyguard/event/KeyguardScreenOnEvent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;ILjava/lang/Object;)Lcom/android/keyguard/event/KeyguardScreenOnEvent;
    .locals 9

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p9

    .line 3
    and-int/lit8 v2, v1, 0x1

    .line 5
    if-eqz v2, :cond_0

    .line 7
    iget-object v2, v0, Lcom/android/keyguard/event/KeyguardScreenOnEvent;->screenOnWay:Ljava/lang/String;

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
    iget-object v3, v0, Lcom/android/keyguard/event/KeyguardScreenOnEvent;->ifFingerprintLocked:Ljava/lang/String;

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
    iget-object v4, v0, Lcom/android/keyguard/event/KeyguardScreenOnEvent;->ifPasswordLocked:Ljava/lang/String;

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
    iget-object v5, v0, Lcom/android/keyguard/event/KeyguardScreenOnEvent;->ifFaceLocked:Ljava/lang/String;

    .line 33
    goto :goto_3

    .line 35
    :cond_3
    move-object v5, p4

    .line 36
    :goto_3
    and-int/lit8 v6, v1, 0x10

    .line 37
    if-eqz v6, :cond_4

    .line 39
    iget-object v6, v0, Lcom/android/keyguard/event/KeyguardScreenOnEvent;->ifScreenOnDelayed:Ljava/lang/String;

    .line 41
    goto :goto_4

    .line 43
    :cond_4
    move-object v6, p5

    .line 44
    :goto_4
    and-int/lit8 v7, v1, 0x20

    .line 45
    if-eqz v7, :cond_5

    .line 47
    iget-object v7, v0, Lcom/android/keyguard/event/KeyguardScreenOnEvent;->ifUnlockedByFingerprint:Ljava/lang/String;

    .line 49
    goto :goto_5

    .line 51
    :cond_5
    move-object v7, p6

    .line 52
    :goto_5
    and-int/lit8 v8, v1, 0x40

    .line 53
    if-eqz v8, :cond_6

    .line 55
    iget-object v8, v0, Lcom/android/keyguard/event/KeyguardScreenOnEvent;->tip:Ljava/lang/String;

    .line 57
    goto :goto_6

    .line 59
    :cond_6
    move-object/from16 v8, p7

    .line 60
    :goto_6
    and-int/lit16 v1, v1, 0x80

    .line 62
    if-eqz v1, :cond_7

    .line 64
    iget-object v1, v0, Lcom/android/keyguard/event/KeyguardScreenOnEvent;->keyguardDataVersion:Ljava/lang/Number;

    .line 66
    goto :goto_7

    .line 68
    :cond_7
    move-object/from16 v1, p8

    .line 69
    :goto_7
    move-object p1, v2

    .line 71
    move-object p2, v3

    .line 72
    move-object p3, v4

    .line 73
    move-object p4, v5

    .line 74
    move-object p5, v6

    .line 75
    move-object p6, v7

    .line 76
    move-object/from16 p7, v8

    .line 77
    move-object/from16 p8, v1

    .line 79
    invoke-virtual/range {p0 .. p8}, Lcom/android/keyguard/event/KeyguardScreenOnEvent;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)Lcom/android/keyguard/event/KeyguardScreenOnEvent;

    .line 81
    move-result-object v0

    .line 84
    return-object v0
    .line 85
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardScreenOnEvent;->screenOnWay:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardScreenOnEvent;->ifFingerprintLocked:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardScreenOnEvent;->ifPasswordLocked:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component4()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardScreenOnEvent;->ifFaceLocked:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component5()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardScreenOnEvent;->ifScreenOnDelayed:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component6()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardScreenOnEvent;->ifUnlockedByFingerprint:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component7()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardScreenOnEvent;->tip:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component8()Ljava/lang/Number;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardScreenOnEvent;->keyguardDataVersion:Ljava/lang/Number;

    .line 2
    return-object p0
    .line 4
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)Lcom/android/keyguard/event/KeyguardScreenOnEvent;
    .locals 10

    .line 1
    new-instance v9, Lcom/android/keyguard/event/KeyguardScreenOnEvent;

    .line 2
    move-object v0, v9

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object v3, p3

    .line 7
    move-object v4, p4

    .line 8
    move-object v5, p5

    .line 9
    move-object/from16 v6, p6

    .line 10
    move-object/from16 v7, p7

    .line 12
    move-object/from16 v8, p8

    .line 14
    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/event/KeyguardScreenOnEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 16
    return-object v9
    .line 19
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
    instance-of v1, p1, Lcom/android/keyguard/event/KeyguardScreenOnEvent;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/keyguard/event/KeyguardScreenOnEvent;

    .line 12
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardScreenOnEvent;->screenOnWay:Ljava/lang/String;

    .line 14
    iget-object v3, p1, Lcom/android/keyguard/event/KeyguardScreenOnEvent;->screenOnWay:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardScreenOnEvent;->ifFingerprintLocked:Ljava/lang/String;

    .line 25
    iget-object v3, p1, Lcom/android/keyguard/event/KeyguardScreenOnEvent;->ifFingerprintLocked:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardScreenOnEvent;->ifPasswordLocked:Ljava/lang/String;

    .line 36
    iget-object v3, p1, Lcom/android/keyguard/event/KeyguardScreenOnEvent;->ifPasswordLocked:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardScreenOnEvent;->ifFaceLocked:Ljava/lang/String;

    .line 47
    iget-object v3, p1, Lcom/android/keyguard/event/KeyguardScreenOnEvent;->ifFaceLocked:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardScreenOnEvent;->ifScreenOnDelayed:Ljava/lang/String;

    .line 58
    iget-object v3, p1, Lcom/android/keyguard/event/KeyguardScreenOnEvent;->ifScreenOnDelayed:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardScreenOnEvent;->ifUnlockedByFingerprint:Ljava/lang/String;

    .line 69
    iget-object v3, p1, Lcom/android/keyguard/event/KeyguardScreenOnEvent;->ifUnlockedByFingerprint:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardScreenOnEvent;->tip:Ljava/lang/String;

    .line 80
    iget-object v3, p1, Lcom/android/keyguard/event/KeyguardScreenOnEvent;->tip:Ljava/lang/String;

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
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardScreenOnEvent;->keyguardDataVersion:Ljava/lang/Number;

    .line 91
    iget-object p1, p1, Lcom/android/keyguard/event/KeyguardScreenOnEvent;->keyguardDataVersion:Ljava/lang/Number;

    .line 93
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    move-result p0

    .line 98
    if-nez p0, :cond_9

    .line 99
    return v2

    .line 101
    :cond_9
    return v0
    .line 102
.end method

.method public final getIfFaceLocked()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardScreenOnEvent;->ifFaceLocked:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getIfFingerprintLocked()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardScreenOnEvent;->ifFingerprintLocked:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getIfPasswordLocked()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardScreenOnEvent;->ifPasswordLocked:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getIfScreenOnDelayed()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardScreenOnEvent;->ifScreenOnDelayed:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getIfUnlockedByFingerprint()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardScreenOnEvent;->ifUnlockedByFingerprint:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getKeyguardDataVersion()Ljava/lang/Number;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardScreenOnEvent;->keyguardDataVersion:Ljava/lang/Number;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getScreenOnWay()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardScreenOnEvent;->screenOnWay:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getTip()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardScreenOnEvent;->tip:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/event/KeyguardScreenOnEvent;->screenOnWay:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardScreenOnEvent;->ifFingerprintLocked:Ljava/lang/String;

    .line 10
    const/16 v2, 0x1f

    .line 12
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 14
    move-result v0

    .line 17
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardScreenOnEvent;->ifPasswordLocked:Ljava/lang/String;

    .line 18
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 20
    move-result v0

    .line 23
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardScreenOnEvent;->ifFaceLocked:Ljava/lang/String;

    .line 24
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 26
    move-result v0

    .line 29
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardScreenOnEvent;->ifScreenOnDelayed:Ljava/lang/String;

    .line 30
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 32
    move-result v0

    .line 35
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardScreenOnEvent;->ifUnlockedByFingerprint:Ljava/lang/String;

    .line 36
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 38
    move-result v0

    .line 41
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardScreenOnEvent;->tip:Ljava/lang/String;

    .line 42
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 44
    move-result v0

    .line 47
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardScreenOnEvent;->keyguardDataVersion:Ljava/lang/Number;

    .line 48
    invoke-virtual {p0}, Ljava/lang/Number;->hashCode()I

    .line 50
    move-result p0

    .line 53
    add-int/2addr p0, v0

    .line 54
    return p0
    .line 55
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/event/KeyguardScreenOnEvent;->screenOnWay:Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardScreenOnEvent;->ifFingerprintLocked:Ljava/lang/String;

    .line 4
    iget-object v2, p0, Lcom/android/keyguard/event/KeyguardScreenOnEvent;->ifPasswordLocked:Ljava/lang/String;

    .line 6
    iget-object v3, p0, Lcom/android/keyguard/event/KeyguardScreenOnEvent;->ifFaceLocked:Ljava/lang/String;

    .line 8
    iget-object v4, p0, Lcom/android/keyguard/event/KeyguardScreenOnEvent;->ifScreenOnDelayed:Ljava/lang/String;

    .line 10
    iget-object v5, p0, Lcom/android/keyguard/event/KeyguardScreenOnEvent;->ifUnlockedByFingerprint:Ljava/lang/String;

    .line 12
    iget-object v6, p0, Lcom/android/keyguard/event/KeyguardScreenOnEvent;->tip:Ljava/lang/String;

    .line 14
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardScreenOnEvent;->keyguardDataVersion:Ljava/lang/Number;

    .line 16
    const-string v7, "KeyguardScreenOnEvent(screenOnWay="

    .line 18
    const-string v8, ", ifFingerprintLocked="

    .line 20
    const-string v9, ", ifPasswordLocked="

    .line 22
    invoke-static {v7, v0, v8, v1, v9}, Lcom/android/keyguard/event/FodQuickOpenActionEvent$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    move-result-object v0

    .line 27
    const-string v1, ", ifFaceLocked="

    .line 28
    const-string v7, ", ifScreenOnDelayed="

    .line 30
    invoke-static {v0, v2, v1, v3, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string v1, ", ifUnlockedByFingerprint="

    .line 35
    const-string v2, ", tip="

    .line 37
    invoke-static {v0, v4, v1, v5, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    const-string v1, ", keyguardDataVersion="

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    const-string p0, ")"

    .line 53
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object p0

    .line 61
    return-object p0
    .line 62
.end method
