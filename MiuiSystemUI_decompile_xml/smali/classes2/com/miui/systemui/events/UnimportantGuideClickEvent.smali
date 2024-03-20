.class public final Lcom/miui/systemui/events/UnimportantGuideClickEvent;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# annotations
.annotation runtime Lcom/miui/systemui/events/EventID;
    id = "unimportant_guide_click"
.end annotation

.annotation runtime Lcom/miui/systemui/events/EventModule;
    value = .enum Lcom/miui/systemui/events/EventModuleTarget;->NEWNOTIF:Lcom/miui/systemui/events/EventModuleTarget;
.end annotation


# instance fields
.field private final displayIcon:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "if_display_icon"
    .end annotation
.end field

.field private final sessionId:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "panel_session_id"
    .end annotation
.end field

.field private final status:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "screen_orientation"
    .end annotation
.end field

.field private final tip:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "tip"
    .end annotation
.end field

.field private final tsId:J
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "ts_id"
    .end annotation
.end field

.field private final version:I
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "notification_data_version"
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/miui/systemui/events/UnimportantGuideClickEvent;->tsId:J

    .line 5
    iput-object p3, p0, Lcom/miui/systemui/events/UnimportantGuideClickEvent;->displayIcon:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcom/miui/systemui/events/UnimportantGuideClickEvent;->status:Ljava/lang/String;

    .line 9
    iput-object p5, p0, Lcom/miui/systemui/events/UnimportantGuideClickEvent;->sessionId:Ljava/lang/String;

    .line 11
    iput-object p6, p0, Lcom/miui/systemui/events/UnimportantGuideClickEvent;->tip:Ljava/lang/String;

    .line 13
    iput p7, p0, Lcom/miui/systemui/events/UnimportantGuideClickEvent;->version:I

    .line 15
    return-void
    .line 17
.end method

.method public static synthetic copy$default(Lcom/miui/systemui/events/UnimportantGuideClickEvent;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Lcom/miui/systemui/events/UnimportantGuideClickEvent;
    .locals 8

    .line 1
    move-object v0, p0

    .line 2
    and-int/lit8 v1, p8, 0x1

    .line 3
    if-eqz v1, :cond_0

    .line 5
    iget-wide v1, v0, Lcom/miui/systemui/events/UnimportantGuideClickEvent;->tsId:J

    .line 7
    goto :goto_0

    .line 9
    :cond_0
    move-wide v1, p1

    .line 10
    :goto_0
    and-int/lit8 v3, p8, 0x2

    .line 11
    if-eqz v3, :cond_1

    .line 13
    iget-object v3, v0, Lcom/miui/systemui/events/UnimportantGuideClickEvent;->displayIcon:Ljava/lang/String;

    .line 15
    goto :goto_1

    .line 17
    :cond_1
    move-object v3, p3

    .line 18
    :goto_1
    and-int/lit8 v4, p8, 0x4

    .line 19
    if-eqz v4, :cond_2

    .line 21
    iget-object v4, v0, Lcom/miui/systemui/events/UnimportantGuideClickEvent;->status:Ljava/lang/String;

    .line 23
    goto :goto_2

    .line 25
    :cond_2
    move-object v4, p4

    .line 26
    :goto_2
    and-int/lit8 v5, p8, 0x8

    .line 27
    if-eqz v5, :cond_3

    .line 29
    iget-object v5, v0, Lcom/miui/systemui/events/UnimportantGuideClickEvent;->sessionId:Ljava/lang/String;

    .line 31
    goto :goto_3

    .line 33
    :cond_3
    move-object v5, p5

    .line 34
    :goto_3
    and-int/lit8 v6, p8, 0x10

    .line 35
    if-eqz v6, :cond_4

    .line 37
    iget-object v6, v0, Lcom/miui/systemui/events/UnimportantGuideClickEvent;->tip:Ljava/lang/String;

    .line 39
    goto :goto_4

    .line 41
    :cond_4
    move-object v6, p6

    .line 42
    :goto_4
    and-int/lit8 v7, p8, 0x20

    .line 43
    if-eqz v7, :cond_5

    .line 45
    iget v7, v0, Lcom/miui/systemui/events/UnimportantGuideClickEvent;->version:I

    .line 47
    goto :goto_5

    .line 49
    :cond_5
    move v7, p7

    .line 50
    :goto_5
    move-wide p1, v1

    .line 51
    move-object p3, v3

    .line 52
    move-object p4, v4

    .line 53
    move-object p5, v5

    .line 54
    move-object p6, v6

    .line 55
    move p7, v7

    .line 56
    invoke-virtual/range {p0 .. p7}, Lcom/miui/systemui/events/UnimportantGuideClickEvent;->copy(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/miui/systemui/events/UnimportantGuideClickEvent;

    .line 57
    move-result-object v0

    .line 60
    return-object v0
    .line 61
.end method


# virtual methods
.method public final component1()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/miui/systemui/events/UnimportantGuideClickEvent;->tsId:J

    .line 2
    return-wide v0
    .line 4
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/UnimportantGuideClickEvent;->displayIcon:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/UnimportantGuideClickEvent;->status:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component4()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/UnimportantGuideClickEvent;->sessionId:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component5()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/UnimportantGuideClickEvent;->tip:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component6()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/UnimportantGuideClickEvent;->version:I

    .line 2
    return p0
    .line 4
.end method

.method public final copy(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/miui/systemui/events/UnimportantGuideClickEvent;
    .locals 8

    .line 1
    new-instance p0, Lcom/miui/systemui/events/UnimportantGuideClickEvent;

    .line 2
    move-object v0, p0

    .line 4
    move-wide v1, p1

    .line 5
    move-object v3, p3

    .line 6
    move-object v4, p4

    .line 7
    move-object v5, p5

    .line 8
    move-object v6, p6

    .line 9
    move v7, p7

    .line 10
    invoke-direct/range {v0 .. v7}, Lcom/miui/systemui/events/UnimportantGuideClickEvent;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 11
    return-object p0
    .line 14
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
    instance-of v1, p1, Lcom/miui/systemui/events/UnimportantGuideClickEvent;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/miui/systemui/events/UnimportantGuideClickEvent;

    .line 12
    iget-wide v3, p0, Lcom/miui/systemui/events/UnimportantGuideClickEvent;->tsId:J

    .line 14
    iget-wide v5, p1, Lcom/miui/systemui/events/UnimportantGuideClickEvent;->tsId:J

    .line 16
    cmp-long v1, v3, v5

    .line 18
    if-eqz v1, :cond_2

    .line 20
    return v2

    .line 22
    :cond_2
    iget-object v1, p0, Lcom/miui/systemui/events/UnimportantGuideClickEvent;->displayIcon:Ljava/lang/String;

    .line 23
    iget-object v3, p1, Lcom/miui/systemui/events/UnimportantGuideClickEvent;->displayIcon:Ljava/lang/String;

    .line 25
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    move-result v1

    .line 30
    if-nez v1, :cond_3

    .line 31
    return v2

    .line 33
    :cond_3
    iget-object v1, p0, Lcom/miui/systemui/events/UnimportantGuideClickEvent;->status:Ljava/lang/String;

    .line 34
    iget-object v3, p1, Lcom/miui/systemui/events/UnimportantGuideClickEvent;->status:Ljava/lang/String;

    .line 36
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    move-result v1

    .line 41
    if-nez v1, :cond_4

    .line 42
    return v2

    .line 44
    :cond_4
    iget-object v1, p0, Lcom/miui/systemui/events/UnimportantGuideClickEvent;->sessionId:Ljava/lang/String;

    .line 45
    iget-object v3, p1, Lcom/miui/systemui/events/UnimportantGuideClickEvent;->sessionId:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/miui/systemui/events/UnimportantGuideClickEvent;->tip:Ljava/lang/String;

    .line 56
    iget-object v3, p1, Lcom/miui/systemui/events/UnimportantGuideClickEvent;->tip:Ljava/lang/String;

    .line 58
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    move-result v1

    .line 63
    if-nez v1, :cond_6

    .line 64
    return v2

    .line 66
    :cond_6
    iget p0, p0, Lcom/miui/systemui/events/UnimportantGuideClickEvent;->version:I

    .line 67
    iget p1, p1, Lcom/miui/systemui/events/UnimportantGuideClickEvent;->version:I

    .line 69
    if-eq p0, p1, :cond_7

    .line 71
    return v2

    .line 73
    :cond_7
    return v0
    .line 74
.end method

.method public final getDisplayIcon()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/UnimportantGuideClickEvent;->displayIcon:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getSessionId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/UnimportantGuideClickEvent;->sessionId:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getStatus()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/UnimportantGuideClickEvent;->status:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getTip()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/UnimportantGuideClickEvent;->tip:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getTsId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/miui/systemui/events/UnimportantGuideClickEvent;->tsId:J

    .line 2
    return-wide v0
    .line 4
.end method

.method public final getVersion()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/UnimportantGuideClickEvent;->version:I

    .line 2
    return p0
    .line 4
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/miui/systemui/events/UnimportantGuideClickEvent;->tsId:J

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    .line 4
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-object v1, p0, Lcom/miui/systemui/events/UnimportantGuideClickEvent;->displayIcon:Ljava/lang/String;

    .line 10
    const/16 v2, 0x1f

    .line 12
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 14
    move-result v0

    .line 17
    iget-object v1, p0, Lcom/miui/systemui/events/UnimportantGuideClickEvent;->status:Ljava/lang/String;

    .line 18
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 20
    move-result v0

    .line 23
    iget-object v1, p0, Lcom/miui/systemui/events/UnimportantGuideClickEvent;->sessionId:Ljava/lang/String;

    .line 24
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 26
    move-result v0

    .line 29
    iget-object v1, p0, Lcom/miui/systemui/events/UnimportantGuideClickEvent;->tip:Ljava/lang/String;

    .line 30
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 32
    move-result v0

    .line 35
    iget p0, p0, Lcom/miui/systemui/events/UnimportantGuideClickEvent;->version:I

    .line 36
    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    .line 38
    move-result p0

    .line 41
    add-int/2addr p0, v0

    .line 42
    return p0
    .line 43
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 1
    iget-wide v0, p0, Lcom/miui/systemui/events/UnimportantGuideClickEvent;->tsId:J

    .line 2
    iget-object v2, p0, Lcom/miui/systemui/events/UnimportantGuideClickEvent;->displayIcon:Ljava/lang/String;

    .line 4
    iget-object v3, p0, Lcom/miui/systemui/events/UnimportantGuideClickEvent;->status:Ljava/lang/String;

    .line 6
    iget-object v4, p0, Lcom/miui/systemui/events/UnimportantGuideClickEvent;->sessionId:Ljava/lang/String;

    .line 8
    iget-object v5, p0, Lcom/miui/systemui/events/UnimportantGuideClickEvent;->tip:Ljava/lang/String;

    .line 10
    iget p0, p0, Lcom/miui/systemui/events/UnimportantGuideClickEvent;->version:I

    .line 12
    new-instance v6, Ljava/lang/StringBuilder;

    .line 14
    const-string v7, "UnimportantGuideClickEvent(tsId="

    .line 16
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    const-string v0, ", displayIcon="

    .line 24
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    const-string v0, ", status="

    .line 32
    const-string v1, ", sessionId="

    .line 34
    invoke-static {v6, v0, v3, v1, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v0, ", tip="

    .line 39
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    const-string v0, ", version="

    .line 47
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    const-string p0, ")"

    .line 55
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object p0

    .line 63
    return-object p0
    .line 64
.end method
