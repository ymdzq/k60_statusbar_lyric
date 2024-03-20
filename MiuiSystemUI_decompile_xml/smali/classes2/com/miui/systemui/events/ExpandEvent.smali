.class public final Lcom/miui/systemui/events/ExpandEvent;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# annotations
.annotation runtime Lcom/miui/systemui/events/EventID;
    id = "expand_notification_bar"
.end annotation

.annotation runtime Lcom/miui/systemui/events/EventModule;
    value = .enum Lcom/miui/systemui/events/EventModuleTarget;->NEWNOTIF:Lcom/miui/systemui/events/EventModuleTarget;
.end annotation


# instance fields
.field private final currentPage:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "using_app_package_name"
    .end annotation
.end field

.field private final dataVersion:I
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "notification_data_version"
    .end annotation
.end field

.field private final expandMode:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "open_way"
    .end annotation
.end field

.field private final importantCount:I
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "important_notification_count"
    .end annotation
.end field

.field private final notificationsCount:I
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "notification_count"
    .end annotation
.end field

.field private final orientation:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "screen_orientation"
    .end annotation
.end field

.field private final sessionId:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "panel_session_id"
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


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/miui/systemui/events/ExpandEvent;->currentPage:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/miui/systemui/events/ExpandEvent;->expandMode:Ljava/lang/String;

    .line 7
    iput p3, p0, Lcom/miui/systemui/events/ExpandEvent;->notificationsCount:I

    .line 9
    iput-object p4, p0, Lcom/miui/systemui/events/ExpandEvent;->sessionId:Ljava/lang/String;

    .line 11
    iput-object p5, p0, Lcom/miui/systemui/events/ExpandEvent;->orientation:Ljava/lang/String;

    .line 13
    iput p6, p0, Lcom/miui/systemui/events/ExpandEvent;->importantCount:I

    .line 15
    iput p7, p0, Lcom/miui/systemui/events/ExpandEvent;->unfoldCount:I

    .line 17
    iput-object p8, p0, Lcom/miui/systemui/events/ExpandEvent;->tip:Ljava/lang/String;

    .line 19
    iput p9, p0, Lcom/miui/systemui/events/ExpandEvent;->dataVersion:I

    .line 21
    return-void
    .line 23
.end method

.method public static synthetic copy$default(Lcom/miui/systemui/events/ExpandEvent;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;IILjava/lang/Object;)Lcom/miui/systemui/events/ExpandEvent;
    .locals 10

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p10

    .line 3
    and-int/lit8 v2, v1, 0x1

    .line 5
    if-eqz v2, :cond_0

    .line 7
    iget-object v2, v0, Lcom/miui/systemui/events/ExpandEvent;->currentPage:Ljava/lang/String;

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
    iget-object v3, v0, Lcom/miui/systemui/events/ExpandEvent;->expandMode:Ljava/lang/String;

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
    iget v4, v0, Lcom/miui/systemui/events/ExpandEvent;->notificationsCount:I

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
    iget-object v5, v0, Lcom/miui/systemui/events/ExpandEvent;->sessionId:Ljava/lang/String;

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
    iget-object v6, v0, Lcom/miui/systemui/events/ExpandEvent;->orientation:Ljava/lang/String;

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
    iget v7, v0, Lcom/miui/systemui/events/ExpandEvent;->importantCount:I

    .line 49
    goto :goto_5

    .line 51
    :cond_5
    move/from16 v7, p6

    .line 52
    :goto_5
    and-int/lit8 v8, v1, 0x40

    .line 54
    if-eqz v8, :cond_6

    .line 56
    iget v8, v0, Lcom/miui/systemui/events/ExpandEvent;->unfoldCount:I

    .line 58
    goto :goto_6

    .line 60
    :cond_6
    move/from16 v8, p7

    .line 61
    :goto_6
    and-int/lit16 v9, v1, 0x80

    .line 63
    if-eqz v9, :cond_7

    .line 65
    iget-object v9, v0, Lcom/miui/systemui/events/ExpandEvent;->tip:Ljava/lang/String;

    .line 67
    goto :goto_7

    .line 69
    :cond_7
    move-object/from16 v9, p8

    .line 70
    :goto_7
    and-int/lit16 v1, v1, 0x100

    .line 72
    if-eqz v1, :cond_8

    .line 74
    iget v1, v0, Lcom/miui/systemui/events/ExpandEvent;->dataVersion:I

    .line 76
    goto :goto_8

    .line 78
    :cond_8
    move/from16 v1, p9

    .line 79
    :goto_8
    move-object p1, v2

    .line 81
    move-object p2, v3

    .line 82
    move p3, v4

    .line 83
    move-object p4, v5

    .line 84
    move-object p5, v6

    .line 85
    move/from16 p6, v7

    .line 86
    move/from16 p7, v8

    .line 88
    move-object/from16 p8, v9

    .line 90
    move/from16 p9, v1

    .line 92
    invoke-virtual/range {p0 .. p9}, Lcom/miui/systemui/events/ExpandEvent;->copy(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;I)Lcom/miui/systemui/events/ExpandEvent;

    .line 94
    move-result-object v0

    .line 97
    return-object v0
    .line 98
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/ExpandEvent;->currentPage:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/ExpandEvent;->expandMode:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component3()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/ExpandEvent;->notificationsCount:I

    .line 2
    return p0
    .line 4
.end method

.method public final component4()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/ExpandEvent;->sessionId:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component5()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/ExpandEvent;->orientation:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component6()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/ExpandEvent;->importantCount:I

    .line 2
    return p0
    .line 4
.end method

.method public final component7()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/ExpandEvent;->unfoldCount:I

    .line 2
    return p0
    .line 4
.end method

.method public final component8()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/ExpandEvent;->tip:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component9()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/ExpandEvent;->dataVersion:I

    .line 2
    return p0
    .line 4
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;I)Lcom/miui/systemui/events/ExpandEvent;
    .locals 11

    .line 1
    new-instance v10, Lcom/miui/systemui/events/ExpandEvent;

    .line 2
    move-object v0, v10

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move v3, p3

    .line 7
    move-object v4, p4

    .line 8
    move-object/from16 v5, p5

    .line 9
    move/from16 v6, p6

    .line 11
    move/from16 v7, p7

    .line 13
    move-object/from16 v8, p8

    .line 15
    move/from16 v9, p9

    .line 17
    invoke-direct/range {v0 .. v9}, Lcom/miui/systemui/events/ExpandEvent;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;I)V

    .line 19
    return-object v10
    .line 22
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
    instance-of v1, p1, Lcom/miui/systemui/events/ExpandEvent;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/miui/systemui/events/ExpandEvent;

    .line 12
    iget-object v1, p0, Lcom/miui/systemui/events/ExpandEvent;->currentPage:Ljava/lang/String;

    .line 14
    iget-object v3, p1, Lcom/miui/systemui/events/ExpandEvent;->currentPage:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/miui/systemui/events/ExpandEvent;->expandMode:Ljava/lang/String;

    .line 25
    iget-object v3, p1, Lcom/miui/systemui/events/ExpandEvent;->expandMode:Ljava/lang/String;

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
    iget v1, p0, Lcom/miui/systemui/events/ExpandEvent;->notificationsCount:I

    .line 36
    iget v3, p1, Lcom/miui/systemui/events/ExpandEvent;->notificationsCount:I

    .line 38
    if-eq v1, v3, :cond_4

    .line 40
    return v2

    .line 42
    :cond_4
    iget-object v1, p0, Lcom/miui/systemui/events/ExpandEvent;->sessionId:Ljava/lang/String;

    .line 43
    iget-object v3, p1, Lcom/miui/systemui/events/ExpandEvent;->sessionId:Ljava/lang/String;

    .line 45
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    move-result v1

    .line 50
    if-nez v1, :cond_5

    .line 51
    return v2

    .line 53
    :cond_5
    iget-object v1, p0, Lcom/miui/systemui/events/ExpandEvent;->orientation:Ljava/lang/String;

    .line 54
    iget-object v3, p1, Lcom/miui/systemui/events/ExpandEvent;->orientation:Ljava/lang/String;

    .line 56
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    move-result v1

    .line 61
    if-nez v1, :cond_6

    .line 62
    return v2

    .line 64
    :cond_6
    iget v1, p0, Lcom/miui/systemui/events/ExpandEvent;->importantCount:I

    .line 65
    iget v3, p1, Lcom/miui/systemui/events/ExpandEvent;->importantCount:I

    .line 67
    if-eq v1, v3, :cond_7

    .line 69
    return v2

    .line 71
    :cond_7
    iget v1, p0, Lcom/miui/systemui/events/ExpandEvent;->unfoldCount:I

    .line 72
    iget v3, p1, Lcom/miui/systemui/events/ExpandEvent;->unfoldCount:I

    .line 74
    if-eq v1, v3, :cond_8

    .line 76
    return v2

    .line 78
    :cond_8
    iget-object v1, p0, Lcom/miui/systemui/events/ExpandEvent;->tip:Ljava/lang/String;

    .line 79
    iget-object v3, p1, Lcom/miui/systemui/events/ExpandEvent;->tip:Ljava/lang/String;

    .line 81
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 83
    move-result v1

    .line 86
    if-nez v1, :cond_9

    .line 87
    return v2

    .line 89
    :cond_9
    iget p0, p0, Lcom/miui/systemui/events/ExpandEvent;->dataVersion:I

    .line 90
    iget p1, p1, Lcom/miui/systemui/events/ExpandEvent;->dataVersion:I

    .line 92
    if-eq p0, p1, :cond_a

    .line 94
    return v2

    .line 96
    :cond_a
    return v0
    .line 97
.end method

.method public final getCurrentPage()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/ExpandEvent;->currentPage:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getDataVersion()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/ExpandEvent;->dataVersion:I

    .line 2
    return p0
    .line 4
.end method

.method public final getExpandMode()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/ExpandEvent;->expandMode:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getImportantCount()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/ExpandEvent;->importantCount:I

    .line 2
    return p0
    .line 4
.end method

.method public final getNotificationsCount()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/ExpandEvent;->notificationsCount:I

    .line 2
    return p0
    .line 4
.end method

.method public final getOrientation()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/ExpandEvent;->orientation:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getSessionId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/ExpandEvent;->sessionId:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getTip()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/ExpandEvent;->tip:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getUnfoldCount()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/ExpandEvent;->unfoldCount:I

    .line 2
    return p0
    .line 4
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/systemui/events/ExpandEvent;->currentPage:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-object v1, p0, Lcom/miui/systemui/events/ExpandEvent;->expandMode:Ljava/lang/String;

    .line 10
    const/16 v2, 0x1f

    .line 12
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 14
    move-result v0

    .line 17
    iget v1, p0, Lcom/miui/systemui/events/ExpandEvent;->notificationsCount:I

    .line 18
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 20
    move-result v0

    .line 23
    iget-object v1, p0, Lcom/miui/systemui/events/ExpandEvent;->sessionId:Ljava/lang/String;

    .line 24
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 26
    move-result v0

    .line 29
    iget-object v1, p0, Lcom/miui/systemui/events/ExpandEvent;->orientation:Ljava/lang/String;

    .line 30
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 32
    move-result v0

    .line 35
    iget v1, p0, Lcom/miui/systemui/events/ExpandEvent;->importantCount:I

    .line 36
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 38
    move-result v0

    .line 41
    iget v1, p0, Lcom/miui/systemui/events/ExpandEvent;->unfoldCount:I

    .line 42
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 44
    move-result v0

    .line 47
    iget-object v1, p0, Lcom/miui/systemui/events/ExpandEvent;->tip:Ljava/lang/String;

    .line 48
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 50
    move-result v0

    .line 53
    iget p0, p0, Lcom/miui/systemui/events/ExpandEvent;->dataVersion:I

    .line 54
    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    .line 56
    move-result p0

    .line 59
    add-int/2addr p0, v0

    .line 60
    return p0
    .line 61
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/miui/systemui/events/ExpandEvent;->currentPage:Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lcom/miui/systemui/events/ExpandEvent;->expandMode:Ljava/lang/String;

    .line 4
    iget v2, p0, Lcom/miui/systemui/events/ExpandEvent;->notificationsCount:I

    .line 6
    iget-object v3, p0, Lcom/miui/systemui/events/ExpandEvent;->sessionId:Ljava/lang/String;

    .line 8
    iget-object v4, p0, Lcom/miui/systemui/events/ExpandEvent;->orientation:Ljava/lang/String;

    .line 10
    iget v5, p0, Lcom/miui/systemui/events/ExpandEvent;->importantCount:I

    .line 12
    iget v6, p0, Lcom/miui/systemui/events/ExpandEvent;->unfoldCount:I

    .line 14
    iget-object v7, p0, Lcom/miui/systemui/events/ExpandEvent;->tip:Ljava/lang/String;

    .line 16
    iget p0, p0, Lcom/miui/systemui/events/ExpandEvent;->dataVersion:I

    .line 18
    const-string v8, "ExpandEvent(currentPage="

    .line 20
    const-string v9, ", expandMode="

    .line 22
    const-string v10, ", notificationsCount="

    .line 24
    invoke-static {v8, v0, v9, v1, v10}, Lcom/android/keyguard/event/FodQuickOpenActionEvent$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    move-result-object v0

    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    const-string v1, ", sessionId="

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    const-string v1, ", orientation="

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    const-string v1, ", importantCount="

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    const-string v1, ", unfoldCount="

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    const-string v1, ", tip="

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const-string v1, ", dataVersion="

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const-string v1, ")"

    .line 78
    invoke-static {v0, p0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 80
    move-result-object p0

    .line 83
    return-object p0
    .line 84
.end method
