.class public final Lcom/miui/systemui/events/CollapseEvent;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# annotations
.annotation runtime Lcom/miui/systemui/events/EventID;
    id = "collapse_notification_bar"
.end annotation

.annotation runtime Lcom/miui/systemui/events/EventModule;
    value = .enum Lcom/miui/systemui/events/EventModuleTarget;->NEWNOTIF:Lcom/miui/systemui/events/EventModuleTarget;
.end annotation


# instance fields
.field private final collapseMode:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "collapse_mode"
    .end annotation
.end field

.field private final importantCount:I
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "important_notification_count"
    .end annotation
.end field

.field private final isDeleteNotification:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "is_delete_notification"
    .end annotation
.end field

.field private final notificationVisibleCount:I
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "notification_count"
    .end annotation
.end field

.field private final orientation:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "screen_orientation"
    .end annotation
.end field

.field private final residenceTime:J
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "residence_time"
    .end annotation
.end field

.field private final sessionId:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "panel_session_id"
    .end annotation
.end field

.field private final slidingTimes:I
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "sliding_times"
    .end annotation
.end field

.field private final tip:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "tip"
    .end annotation
.end field

.field private final unfoldCount:I
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "un_folded_notification_count"
    .end annotation
.end field

.field private final version:I
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "notification_data_version"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;JIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/miui/systemui/events/CollapseEvent;->collapseMode:Ljava/lang/String;

    .line 5
    iput p2, p0, Lcom/miui/systemui/events/CollapseEvent;->unfoldCount:I

    .line 7
    iput-object p3, p0, Lcom/miui/systemui/events/CollapseEvent;->isDeleteNotification:Ljava/lang/String;

    .line 9
    iput-wide p4, p0, Lcom/miui/systemui/events/CollapseEvent;->residenceTime:J

    .line 11
    iput p6, p0, Lcom/miui/systemui/events/CollapseEvent;->notificationVisibleCount:I

    .line 13
    iput p7, p0, Lcom/miui/systemui/events/CollapseEvent;->slidingTimes:I

    .line 15
    iput p8, p0, Lcom/miui/systemui/events/CollapseEvent;->importantCount:I

    .line 17
    iput-object p9, p0, Lcom/miui/systemui/events/CollapseEvent;->sessionId:Ljava/lang/String;

    .line 19
    iput-object p10, p0, Lcom/miui/systemui/events/CollapseEvent;->orientation:Ljava/lang/String;

    .line 21
    iput-object p11, p0, Lcom/miui/systemui/events/CollapseEvent;->tip:Ljava/lang/String;

    .line 23
    iput p12, p0, Lcom/miui/systemui/events/CollapseEvent;->version:I

    .line 25
    return-void
    .line 27
.end method

.method public static synthetic copy$default(Lcom/miui/systemui/events/CollapseEvent;Ljava/lang/String;ILjava/lang/String;JIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Lcom/miui/systemui/events/CollapseEvent;
    .locals 13

    .line 1
    move-object v0, p0

    move/from16 v1, p13

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/miui/systemui/events/CollapseEvent;->collapseMode:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget v3, v0, Lcom/miui/systemui/events/CollapseEvent;->unfoldCount:I

    goto :goto_1

    :cond_1
    move v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/miui/systemui/events/CollapseEvent;->isDeleteNotification:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-wide v5, v0, Lcom/miui/systemui/events/CollapseEvent;->residenceTime:J

    goto :goto_3

    :cond_3
    move-wide/from16 v5, p4

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    iget v7, v0, Lcom/miui/systemui/events/CollapseEvent;->notificationVisibleCount:I

    goto :goto_4

    :cond_4
    move/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    iget v8, v0, Lcom/miui/systemui/events/CollapseEvent;->slidingTimes:I

    goto :goto_5

    :cond_5
    move/from16 v8, p7

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    iget v9, v0, Lcom/miui/systemui/events/CollapseEvent;->importantCount:I

    goto :goto_6

    :cond_6
    move/from16 v9, p8

    :goto_6
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_7

    iget-object v10, v0, Lcom/miui/systemui/events/CollapseEvent;->sessionId:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v10, p9

    :goto_7
    and-int/lit16 v11, v1, 0x100

    if-eqz v11, :cond_8

    iget-object v11, v0, Lcom/miui/systemui/events/CollapseEvent;->orientation:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v11, p10

    :goto_8
    and-int/lit16 v12, v1, 0x200

    if-eqz v12, :cond_9

    iget-object v12, v0, Lcom/miui/systemui/events/CollapseEvent;->tip:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v12, p11

    :goto_9
    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_a

    iget v1, v0, Lcom/miui/systemui/events/CollapseEvent;->version:I

    goto :goto_a

    :cond_a
    move/from16 v1, p12

    :goto_a
    move-object p1, v2

    move p2, v3

    move-object/from16 p3, v4

    move-wide/from16 p4, v5

    move/from16 p6, v7

    move/from16 p7, v8

    move/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move/from16 p12, v1

    invoke-virtual/range {p0 .. p12}, Lcom/miui/systemui/events/CollapseEvent;->copy(Ljava/lang/String;ILjava/lang/String;JIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/miui/systemui/events/CollapseEvent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/CollapseEvent;->collapseMode:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component10()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/CollapseEvent;->tip:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component11()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/CollapseEvent;->version:I

    .line 2
    return p0
    .line 4
.end method

.method public final component2()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/CollapseEvent;->unfoldCount:I

    .line 2
    return p0
    .line 4
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/CollapseEvent;->isDeleteNotification:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component4()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/miui/systemui/events/CollapseEvent;->residenceTime:J

    .line 2
    return-wide v0
    .line 4
.end method

.method public final component5()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/CollapseEvent;->notificationVisibleCount:I

    .line 2
    return p0
    .line 4
.end method

.method public final component6()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/CollapseEvent;->slidingTimes:I

    .line 2
    return p0
    .line 4
.end method

.method public final component7()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/CollapseEvent;->importantCount:I

    .line 2
    return p0
    .line 4
.end method

.method public final component8()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/CollapseEvent;->sessionId:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component9()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/CollapseEvent;->orientation:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final copy(Ljava/lang/String;ILjava/lang/String;JIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/miui/systemui/events/CollapseEvent;
    .locals 14

    .line 1
    new-instance v13, Lcom/miui/systemui/events/CollapseEvent;

    .line 2
    move-object v0, v13

    .line 4
    move-object v1, p1

    .line 5
    move/from16 v2, p2

    .line 6
    move-object/from16 v3, p3

    .line 8
    move-wide/from16 v4, p4

    .line 10
    move/from16 v6, p6

    .line 12
    move/from16 v7, p7

    .line 14
    move/from16 v8, p8

    .line 16
    move-object/from16 v9, p9

    .line 18
    move-object/from16 v10, p10

    .line 20
    move-object/from16 v11, p11

    .line 22
    move/from16 v12, p12

    .line 24
    invoke-direct/range {v0 .. v12}, Lcom/miui/systemui/events/CollapseEvent;-><init>(Ljava/lang/String;ILjava/lang/String;JIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 26
    return-object v13
    .line 29
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/miui/systemui/events/CollapseEvent;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/miui/systemui/events/CollapseEvent;

    .line 12
    iget-object v1, p0, Lcom/miui/systemui/events/CollapseEvent;->collapseMode:Ljava/lang/String;

    .line 14
    iget-object v3, p1, Lcom/miui/systemui/events/CollapseEvent;->collapseMode:Ljava/lang/String;

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
    iget v1, p0, Lcom/miui/systemui/events/CollapseEvent;->unfoldCount:I

    .line 25
    iget v3, p1, Lcom/miui/systemui/events/CollapseEvent;->unfoldCount:I

    .line 27
    if-eq v1, v3, :cond_3

    .line 29
    return v2

    .line 31
    :cond_3
    iget-object v1, p0, Lcom/miui/systemui/events/CollapseEvent;->isDeleteNotification:Ljava/lang/String;

    .line 32
    iget-object v3, p1, Lcom/miui/systemui/events/CollapseEvent;->isDeleteNotification:Ljava/lang/String;

    .line 34
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    move-result v1

    .line 39
    if-nez v1, :cond_4

    .line 40
    return v2

    .line 42
    :cond_4
    iget-wide v3, p0, Lcom/miui/systemui/events/CollapseEvent;->residenceTime:J

    .line 43
    iget-wide v5, p1, Lcom/miui/systemui/events/CollapseEvent;->residenceTime:J

    .line 45
    cmp-long v1, v3, v5

    .line 47
    if-eqz v1, :cond_5

    .line 49
    return v2

    .line 51
    :cond_5
    iget v1, p0, Lcom/miui/systemui/events/CollapseEvent;->notificationVisibleCount:I

    .line 52
    iget v3, p1, Lcom/miui/systemui/events/CollapseEvent;->notificationVisibleCount:I

    .line 54
    if-eq v1, v3, :cond_6

    .line 56
    return v2

    .line 58
    :cond_6
    iget v1, p0, Lcom/miui/systemui/events/CollapseEvent;->slidingTimes:I

    .line 59
    iget v3, p1, Lcom/miui/systemui/events/CollapseEvent;->slidingTimes:I

    .line 61
    if-eq v1, v3, :cond_7

    .line 63
    return v2

    .line 65
    :cond_7
    iget v1, p0, Lcom/miui/systemui/events/CollapseEvent;->importantCount:I

    .line 66
    iget v3, p1, Lcom/miui/systemui/events/CollapseEvent;->importantCount:I

    .line 68
    if-eq v1, v3, :cond_8

    .line 70
    return v2

    .line 72
    :cond_8
    iget-object v1, p0, Lcom/miui/systemui/events/CollapseEvent;->sessionId:Ljava/lang/String;

    .line 73
    iget-object v3, p1, Lcom/miui/systemui/events/CollapseEvent;->sessionId:Ljava/lang/String;

    .line 75
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 77
    move-result v1

    .line 80
    if-nez v1, :cond_9

    .line 81
    return v2

    .line 83
    :cond_9
    iget-object v1, p0, Lcom/miui/systemui/events/CollapseEvent;->orientation:Ljava/lang/String;

    .line 84
    iget-object v3, p1, Lcom/miui/systemui/events/CollapseEvent;->orientation:Ljava/lang/String;

    .line 86
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 88
    move-result v1

    .line 91
    if-nez v1, :cond_a

    .line 92
    return v2

    .line 94
    :cond_a
    iget-object v1, p0, Lcom/miui/systemui/events/CollapseEvent;->tip:Ljava/lang/String;

    .line 95
    iget-object v3, p1, Lcom/miui/systemui/events/CollapseEvent;->tip:Ljava/lang/String;

    .line 97
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 99
    move-result v1

    .line 102
    if-nez v1, :cond_b

    .line 103
    return v2

    .line 105
    :cond_b
    iget p0, p0, Lcom/miui/systemui/events/CollapseEvent;->version:I

    .line 106
    iget p1, p1, Lcom/miui/systemui/events/CollapseEvent;->version:I

    .line 108
    if-eq p0, p1, :cond_c

    .line 110
    return v2

    .line 112
    :cond_c
    return v0
    .line 113
.end method

.method public final getCollapseMode()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/CollapseEvent;->collapseMode:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getImportantCount()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/CollapseEvent;->importantCount:I

    .line 2
    return p0
    .line 4
.end method

.method public final getNotificationVisibleCount()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/CollapseEvent;->notificationVisibleCount:I

    .line 2
    return p0
    .line 4
.end method

.method public final getOrientation()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/CollapseEvent;->orientation:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getResidenceTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/miui/systemui/events/CollapseEvent;->residenceTime:J

    .line 2
    return-wide v0
    .line 4
.end method

.method public final getSessionId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/CollapseEvent;->sessionId:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getSlidingTimes()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/CollapseEvent;->slidingTimes:I

    .line 2
    return p0
    .line 4
.end method

.method public final getTip()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/CollapseEvent;->tip:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getUnfoldCount()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/CollapseEvent;->unfoldCount:I

    .line 2
    return p0
    .line 4
.end method

.method public final getVersion()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/CollapseEvent;->version:I

    .line 2
    return p0
    .line 4
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/systemui/events/CollapseEvent;->collapseMode:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget v1, p0, Lcom/miui/systemui/events/CollapseEvent;->unfoldCount:I

    .line 10
    const/16 v2, 0x1f

    .line 12
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 14
    move-result v0

    .line 17
    iget-object v1, p0, Lcom/miui/systemui/events/CollapseEvent;->isDeleteNotification:Ljava/lang/String;

    .line 18
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 20
    move-result v0

    .line 23
    iget-wide v1, p0, Lcom/miui/systemui/events/CollapseEvent;->residenceTime:J

    .line 24
    const/16 v3, 0x1f

    .line 26
    invoke-static {v1, v2, v0, v3}, Lcom/android/app/motiontool/TraceMetadata$$ExternalSyntheticOutline0;->m(JII)I

    .line 28
    move-result v0

    .line 31
    iget v1, p0, Lcom/miui/systemui/events/CollapseEvent;->notificationVisibleCount:I

    .line 32
    const/16 v2, 0x1f

    .line 34
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 36
    move-result v0

    .line 39
    iget v1, p0, Lcom/miui/systemui/events/CollapseEvent;->slidingTimes:I

    .line 40
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 42
    move-result v0

    .line 45
    iget v1, p0, Lcom/miui/systemui/events/CollapseEvent;->importantCount:I

    .line 46
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 48
    move-result v0

    .line 51
    iget-object v1, p0, Lcom/miui/systemui/events/CollapseEvent;->sessionId:Ljava/lang/String;

    .line 52
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 54
    move-result v0

    .line 57
    iget-object v1, p0, Lcom/miui/systemui/events/CollapseEvent;->orientation:Ljava/lang/String;

    .line 58
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 60
    move-result v0

    .line 63
    iget-object v1, p0, Lcom/miui/systemui/events/CollapseEvent;->tip:Ljava/lang/String;

    .line 64
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 66
    move-result v0

    .line 69
    iget p0, p0, Lcom/miui/systemui/events/CollapseEvent;->version:I

    .line 70
    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    .line 72
    move-result p0

    .line 75
    add-int/2addr p0, v0

    .line 76
    return p0
    .line 77
.end method

.method public final isDeleteNotification()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/CollapseEvent;->isDeleteNotification:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/miui/systemui/events/CollapseEvent;->collapseMode:Ljava/lang/String;

    .line 2
    iget v1, p0, Lcom/miui/systemui/events/CollapseEvent;->unfoldCount:I

    .line 4
    iget-object v2, p0, Lcom/miui/systemui/events/CollapseEvent;->isDeleteNotification:Ljava/lang/String;

    .line 6
    iget-wide v3, p0, Lcom/miui/systemui/events/CollapseEvent;->residenceTime:J

    .line 8
    iget v5, p0, Lcom/miui/systemui/events/CollapseEvent;->notificationVisibleCount:I

    .line 10
    iget v6, p0, Lcom/miui/systemui/events/CollapseEvent;->slidingTimes:I

    .line 12
    iget v7, p0, Lcom/miui/systemui/events/CollapseEvent;->importantCount:I

    .line 14
    iget-object v8, p0, Lcom/miui/systemui/events/CollapseEvent;->sessionId:Ljava/lang/String;

    .line 16
    iget-object v9, p0, Lcom/miui/systemui/events/CollapseEvent;->orientation:Ljava/lang/String;

    .line 18
    iget-object v10, p0, Lcom/miui/systemui/events/CollapseEvent;->tip:Ljava/lang/String;

    .line 20
    iget p0, p0, Lcom/miui/systemui/events/CollapseEvent;->version:I

    .line 22
    const-string v11, "CollapseEvent(collapseMode="

    .line 24
    const-string v12, ", unfoldCount="

    .line 26
    const-string v13, ", isDeleteNotification="

    .line 28
    invoke-static {v11, v0, v12, v1, v13}, Lcom/android/keyguard/wallpaper/entity/ClockInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    move-result-object v0

    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    const-string v1, ", residenceTime="

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 42
    const-string v1, ", notificationVisibleCount="

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    const-string v1, ", slidingTimes="

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    const-string v1, ", importantCount="

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    const-string v1, ", sessionId="

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const-string v1, ", orientation="

    .line 77
    const-string v2, ", tip="

    .line 79
    invoke-static {v0, v1, v9, v2, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v1, ", version="

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    const-string p0, ")"

    .line 92
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    move-result-object p0

    .line 100
    return-object p0
    .line 101
.end method
