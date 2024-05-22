.class public final Lcom/miui/systemui/events/ExpansionEvent;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# annotations
.annotation runtime Lcom/miui/systemui/events/EventID;
    id = "notification_expansion_changed"
.end annotation

.annotation runtime Lcom/miui/systemui/events/EventModule;
    value = .enum Lcom/miui/systemui/events/EventModuleTarget;->NOTIFICATION:Lcom/miui/systemui/events/EventModuleTarget;
.end annotation


# instance fields
.field private final clearable:Z
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "if_delete_notification"
    .end annotation
.end field

.field private final expanded:Z
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "expanded"
    .end annotation
.end field

.field private final index:I
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "index"
    .end annotation
.end field

.field private final pkg:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "send_pkg"
    .end annotation
.end field

.field private final style:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "style"
    .end annotation
.end field

.field private final targetPkg:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "target_pkg"
    .end annotation
.end field

.field private final tsId:J
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "ts_id"
    .end annotation
.end field

.field private final userAction:Z
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "user_action"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZIZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/miui/systemui/events/ExpansionEvent;->pkg:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/miui/systemui/events/ExpansionEvent;->targetPkg:Ljava/lang/String;

    .line 7
    iput-wide p3, p0, Lcom/miui/systemui/events/ExpansionEvent;->tsId:J

    .line 9
    iput-object p5, p0, Lcom/miui/systemui/events/ExpansionEvent;->style:Ljava/lang/String;

    .line 11
    iput-boolean p6, p0, Lcom/miui/systemui/events/ExpansionEvent;->clearable:Z

    .line 13
    iput p7, p0, Lcom/miui/systemui/events/ExpansionEvent;->index:I

    .line 15
    iput-boolean p8, p0, Lcom/miui/systemui/events/ExpansionEvent;->userAction:Z

    .line 17
    iput-boolean p9, p0, Lcom/miui/systemui/events/ExpansionEvent;->expanded:Z

    .line 19
    return-void
    .line 21
.end method

.method public static synthetic copy$default(Lcom/miui/systemui/events/ExpansionEvent;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZIZZILjava/lang/Object;)Lcom/miui/systemui/events/ExpansionEvent;
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
    iget-object v2, v0, Lcom/miui/systemui/events/ExpansionEvent;->pkg:Ljava/lang/String;

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
    iget-object v3, v0, Lcom/miui/systemui/events/ExpansionEvent;->targetPkg:Ljava/lang/String;

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
    iget-wide v4, v0, Lcom/miui/systemui/events/ExpansionEvent;->tsId:J

    .line 25
    goto :goto_2

    .line 27
    :cond_2
    move-wide v4, p3

    .line 28
    :goto_2
    and-int/lit8 v6, v1, 0x8

    .line 29
    if-eqz v6, :cond_3

    .line 31
    iget-object v6, v0, Lcom/miui/systemui/events/ExpansionEvent;->style:Ljava/lang/String;

    .line 33
    goto :goto_3

    .line 35
    :cond_3
    move-object v6, p5

    .line 36
    :goto_3
    and-int/lit8 v7, v1, 0x10

    .line 37
    if-eqz v7, :cond_4

    .line 39
    iget-boolean v7, v0, Lcom/miui/systemui/events/ExpansionEvent;->clearable:Z

    .line 41
    goto :goto_4

    .line 43
    :cond_4
    move/from16 v7, p6

    .line 44
    :goto_4
    and-int/lit8 v8, v1, 0x20

    .line 46
    if-eqz v8, :cond_5

    .line 48
    iget v8, v0, Lcom/miui/systemui/events/ExpansionEvent;->index:I

    .line 50
    goto :goto_5

    .line 52
    :cond_5
    move/from16 v8, p7

    .line 53
    :goto_5
    and-int/lit8 v9, v1, 0x40

    .line 55
    if-eqz v9, :cond_6

    .line 57
    iget-boolean v9, v0, Lcom/miui/systemui/events/ExpansionEvent;->userAction:Z

    .line 59
    goto :goto_6

    .line 61
    :cond_6
    move/from16 v9, p8

    .line 62
    :goto_6
    and-int/lit16 v1, v1, 0x80

    .line 64
    if-eqz v1, :cond_7

    .line 66
    iget-boolean v1, v0, Lcom/miui/systemui/events/ExpansionEvent;->expanded:Z

    .line 68
    goto :goto_7

    .line 70
    :cond_7
    move/from16 v1, p9

    .line 71
    :goto_7
    move-object p1, v2

    .line 73
    move-object p2, v3

    .line 74
    move-wide p3, v4

    .line 75
    move-object p5, v6

    .line 76
    move/from16 p6, v7

    .line 77
    move/from16 p7, v8

    .line 79
    move/from16 p8, v9

    .line 81
    move/from16 p9, v1

    .line 83
    invoke-virtual/range {p0 .. p9}, Lcom/miui/systemui/events/ExpansionEvent;->copy(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZIZZ)Lcom/miui/systemui/events/ExpansionEvent;

    .line 85
    move-result-object v0

    .line 88
    return-object v0
    .line 89
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/ExpansionEvent;->pkg:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/ExpansionEvent;->targetPkg:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component3()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/miui/systemui/events/ExpansionEvent;->tsId:J

    .line 2
    return-wide v0
    .line 4
.end method

.method public final component4()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/ExpansionEvent;->style:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component5()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/miui/systemui/events/ExpansionEvent;->clearable:Z

    .line 2
    return p0
    .line 4
.end method

.method public final component6()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/ExpansionEvent;->index:I

    .line 2
    return p0
    .line 4
.end method

.method public final component7()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/miui/systemui/events/ExpansionEvent;->userAction:Z

    .line 2
    return p0
    .line 4
.end method

.method public final component8()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/miui/systemui/events/ExpansionEvent;->expanded:Z

    .line 2
    return p0
    .line 4
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZIZZ)Lcom/miui/systemui/events/ExpansionEvent;
    .locals 11

    .line 1
    new-instance v10, Lcom/miui/systemui/events/ExpansionEvent;

    .line 2
    move-object v0, v10

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-wide v3, p3

    .line 7
    move-object/from16 v5, p5

    .line 8
    move/from16 v6, p6

    .line 10
    move/from16 v7, p7

    .line 12
    move/from16 v8, p8

    .line 14
    move/from16 v9, p9

    .line 16
    invoke-direct/range {v0 .. v9}, Lcom/miui/systemui/events/ExpansionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZIZZ)V

    .line 18
    return-object v10
    .line 21
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
    instance-of v1, p1, Lcom/miui/systemui/events/ExpansionEvent;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/miui/systemui/events/ExpansionEvent;

    .line 12
    iget-object v1, p0, Lcom/miui/systemui/events/ExpansionEvent;->pkg:Ljava/lang/String;

    .line 14
    iget-object v3, p1, Lcom/miui/systemui/events/ExpansionEvent;->pkg:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/miui/systemui/events/ExpansionEvent;->targetPkg:Ljava/lang/String;

    .line 25
    iget-object v3, p1, Lcom/miui/systemui/events/ExpansionEvent;->targetPkg:Ljava/lang/String;

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
    iget-wide v3, p0, Lcom/miui/systemui/events/ExpansionEvent;->tsId:J

    .line 36
    iget-wide v5, p1, Lcom/miui/systemui/events/ExpansionEvent;->tsId:J

    .line 38
    cmp-long v1, v3, v5

    .line 40
    if-eqz v1, :cond_4

    .line 42
    return v2

    .line 44
    :cond_4
    iget-object v1, p0, Lcom/miui/systemui/events/ExpansionEvent;->style:Ljava/lang/String;

    .line 45
    iget-object v3, p1, Lcom/miui/systemui/events/ExpansionEvent;->style:Ljava/lang/String;

    .line 47
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    move-result v1

    .line 52
    if-nez v1, :cond_5

    .line 53
    return v2

    .line 55
    :cond_5
    iget-boolean v1, p0, Lcom/miui/systemui/events/ExpansionEvent;->clearable:Z

    .line 56
    iget-boolean v3, p1, Lcom/miui/systemui/events/ExpansionEvent;->clearable:Z

    .line 58
    if-eq v1, v3, :cond_6

    .line 60
    return v2

    .line 62
    :cond_6
    iget v1, p0, Lcom/miui/systemui/events/ExpansionEvent;->index:I

    .line 63
    iget v3, p1, Lcom/miui/systemui/events/ExpansionEvent;->index:I

    .line 65
    if-eq v1, v3, :cond_7

    .line 67
    return v2

    .line 69
    :cond_7
    iget-boolean v1, p0, Lcom/miui/systemui/events/ExpansionEvent;->userAction:Z

    .line 70
    iget-boolean v3, p1, Lcom/miui/systemui/events/ExpansionEvent;->userAction:Z

    .line 72
    if-eq v1, v3, :cond_8

    .line 74
    return v2

    .line 76
    :cond_8
    iget-boolean p0, p0, Lcom/miui/systemui/events/ExpansionEvent;->expanded:Z

    .line 77
    iget-boolean p1, p1, Lcom/miui/systemui/events/ExpansionEvent;->expanded:Z

    .line 79
    if-eq p0, p1, :cond_9

    .line 81
    return v2

    .line 83
    :cond_9
    return v0
    .line 84
.end method

.method public final getClearable()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/miui/systemui/events/ExpansionEvent;->clearable:Z

    .line 2
    return p0
    .line 4
.end method

.method public final getExpanded()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/miui/systemui/events/ExpansionEvent;->expanded:Z

    .line 2
    return p0
    .line 4
.end method

.method public final getIndex()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/ExpansionEvent;->index:I

    .line 2
    return p0
    .line 4
.end method

.method public final getPkg()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/ExpansionEvent;->pkg:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getStyle()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/ExpansionEvent;->style:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getTargetPkg()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/ExpansionEvent;->targetPkg:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getTsId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/miui/systemui/events/ExpansionEvent;->tsId:J

    .line 2
    return-wide v0
    .line 4
.end method

.method public final getUserAction()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/miui/systemui/events/ExpansionEvent;->userAction:Z

    .line 2
    return p0
    .line 4
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/systemui/events/ExpansionEvent;->pkg:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-object v1, p0, Lcom/miui/systemui/events/ExpansionEvent;->targetPkg:Ljava/lang/String;

    .line 10
    const/16 v2, 0x1f

    .line 12
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 14
    move-result v0

    .line 17
    iget-wide v1, p0, Lcom/miui/systemui/events/ExpansionEvent;->tsId:J

    .line 18
    const/16 v3, 0x1f

    .line 20
    invoke-static {v1, v2, v0, v3}, Lcom/android/app/motiontool/TraceMetadata$$ExternalSyntheticOutline0;->m(JII)I

    .line 22
    move-result v0

    .line 25
    iget-object v1, p0, Lcom/miui/systemui/events/ExpansionEvent;->style:Ljava/lang/String;

    .line 26
    const/16 v2, 0x1f

    .line 28
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 30
    move-result v0

    .line 33
    iget-boolean v1, p0, Lcom/miui/systemui/events/ExpansionEvent;->clearable:Z

    .line 34
    const/4 v2, 0x1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    move v1, v2

    .line 39
    :cond_0
    add-int/2addr v0, v1

    .line 40
    mul-int/lit8 v0, v0, 0x1f

    .line 41
    iget v1, p0, Lcom/miui/systemui/events/ExpansionEvent;->index:I

    .line 43
    const/16 v3, 0x1f

    .line 45
    invoke-static {v1, v0, v3}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 47
    move-result v0

    .line 50
    iget-boolean v1, p0, Lcom/miui/systemui/events/ExpansionEvent;->userAction:Z

    .line 51
    if-eqz v1, :cond_1

    .line 53
    move v1, v2

    .line 55
    :cond_1
    add-int/2addr v0, v1

    .line 56
    mul-int/lit8 v0, v0, 0x1f

    .line 57
    iget-boolean p0, p0, Lcom/miui/systemui/events/ExpansionEvent;->expanded:Z

    .line 59
    if-eqz p0, :cond_2

    .line 61
    goto :goto_0

    .line 63
    :cond_2
    move v2, p0

    .line 64
    :goto_0
    add-int/2addr v0, v2

    .line 65
    return v0
    .line 66
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/miui/systemui/events/ExpansionEvent;->pkg:Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lcom/miui/systemui/events/ExpansionEvent;->targetPkg:Ljava/lang/String;

    .line 4
    iget-wide v2, p0, Lcom/miui/systemui/events/ExpansionEvent;->tsId:J

    .line 6
    iget-object v4, p0, Lcom/miui/systemui/events/ExpansionEvent;->style:Ljava/lang/String;

    .line 8
    iget-boolean v5, p0, Lcom/miui/systemui/events/ExpansionEvent;->clearable:Z

    .line 10
    iget v6, p0, Lcom/miui/systemui/events/ExpansionEvent;->index:I

    .line 12
    iget-boolean v7, p0, Lcom/miui/systemui/events/ExpansionEvent;->userAction:Z

    .line 14
    iget-boolean p0, p0, Lcom/miui/systemui/events/ExpansionEvent;->expanded:Z

    .line 16
    const-string v8, "ExpansionEvent(pkg="

    .line 18
    const-string v9, ", targetPkg="

    .line 20
    const-string v10, ", tsId="

    .line 22
    invoke-static {v8, v0, v9, v1, v10}, Lcom/android/keyguard/event/FodQuickOpenActionEvent$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    move-result-object v0

    .line 27
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 28
    const-string v1, ", style="

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    const-string v1, ", clearable="

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 44
    const-string v1, ", index="

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    const-string v1, ", userAction="

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 60
    const-string v1, ", expanded="

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 68
    const-string p0, ")"

    .line 71
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object p0

    .line 79
    return-object p0
    .line 80
.end method
