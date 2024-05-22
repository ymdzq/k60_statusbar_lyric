.class public final Lcom/miui/systemui/events/NotificationPanelSlideEvent;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# annotations
.annotation runtime Lcom/miui/systemui/events/EventID;
    id = "slide"
.end annotation

.annotation runtime Lcom/miui/systemui/events/EventModule;
    value = .enum Lcom/miui/systemui/events/EventModuleTarget;->NEWNOTIF:Lcom/miui/systemui/events/EventModuleTarget;
.end annotation


# instance fields
.field private final dataVersion:I
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "notification_data_version"
    .end annotation
.end field

.field private final direction:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "sliding_direction"
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


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/miui/systemui/events/NotificationPanelSlideEvent;->direction:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/miui/systemui/events/NotificationPanelSlideEvent;->sessionId:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lcom/miui/systemui/events/NotificationPanelSlideEvent;->tip:Ljava/lang/String;

    .line 9
    iput p4, p0, Lcom/miui/systemui/events/NotificationPanelSlideEvent;->dataVersion:I

    .line 11
    return-void
    .line 13
.end method

.method public static synthetic copy$default(Lcom/miui/systemui/events/NotificationPanelSlideEvent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Lcom/miui/systemui/events/NotificationPanelSlideEvent;
    .locals 0

    .line 1
    and-int/lit8 p6, p5, 0x1

    .line 2
    if-eqz p6, :cond_0

    .line 4
    iget-object p1, p0, Lcom/miui/systemui/events/NotificationPanelSlideEvent;->direction:Ljava/lang/String;

    .line 6
    :cond_0
    and-int/lit8 p6, p5, 0x2

    .line 8
    if-eqz p6, :cond_1

    .line 10
    iget-object p2, p0, Lcom/miui/systemui/events/NotificationPanelSlideEvent;->sessionId:Ljava/lang/String;

    .line 12
    :cond_1
    and-int/lit8 p6, p5, 0x4

    .line 14
    if-eqz p6, :cond_2

    .line 16
    iget-object p3, p0, Lcom/miui/systemui/events/NotificationPanelSlideEvent;->tip:Ljava/lang/String;

    .line 18
    :cond_2
    and-int/lit8 p5, p5, 0x8

    .line 20
    if-eqz p5, :cond_3

    .line 22
    iget p4, p0, Lcom/miui/systemui/events/NotificationPanelSlideEvent;->dataVersion:I

    .line 24
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/systemui/events/NotificationPanelSlideEvent;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/miui/systemui/events/NotificationPanelSlideEvent;

    .line 26
    move-result-object p0

    .line 29
    return-object p0
    .line 30
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/NotificationPanelSlideEvent;->direction:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/NotificationPanelSlideEvent;->sessionId:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/NotificationPanelSlideEvent;->tip:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component4()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/NotificationPanelSlideEvent;->dataVersion:I

    .line 2
    return p0
    .line 4
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/miui/systemui/events/NotificationPanelSlideEvent;
    .locals 0

    .line 1
    new-instance p0, Lcom/miui/systemui/events/NotificationPanelSlideEvent;

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/systemui/events/NotificationPanelSlideEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 4
    return-object p0
    .line 7
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
    instance-of v1, p1, Lcom/miui/systemui/events/NotificationPanelSlideEvent;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/miui/systemui/events/NotificationPanelSlideEvent;

    .line 12
    iget-object v1, p0, Lcom/miui/systemui/events/NotificationPanelSlideEvent;->direction:Ljava/lang/String;

    .line 14
    iget-object v3, p1, Lcom/miui/systemui/events/NotificationPanelSlideEvent;->direction:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/miui/systemui/events/NotificationPanelSlideEvent;->sessionId:Ljava/lang/String;

    .line 25
    iget-object v3, p1, Lcom/miui/systemui/events/NotificationPanelSlideEvent;->sessionId:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/miui/systemui/events/NotificationPanelSlideEvent;->tip:Ljava/lang/String;

    .line 36
    iget-object v3, p1, Lcom/miui/systemui/events/NotificationPanelSlideEvent;->tip:Ljava/lang/String;

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
    iget p0, p0, Lcom/miui/systemui/events/NotificationPanelSlideEvent;->dataVersion:I

    .line 47
    iget p1, p1, Lcom/miui/systemui/events/NotificationPanelSlideEvent;->dataVersion:I

    .line 49
    if-eq p0, p1, :cond_5

    .line 51
    return v2

    .line 53
    :cond_5
    return v0
    .line 54
.end method

.method public final getDataVersion()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/NotificationPanelSlideEvent;->dataVersion:I

    .line 2
    return p0
    .line 4
.end method

.method public final getDirection()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/NotificationPanelSlideEvent;->direction:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getSessionId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/NotificationPanelSlideEvent;->sessionId:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getTip()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/NotificationPanelSlideEvent;->tip:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/systemui/events/NotificationPanelSlideEvent;->direction:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-object v1, p0, Lcom/miui/systemui/events/NotificationPanelSlideEvent;->sessionId:Ljava/lang/String;

    .line 10
    const/16 v2, 0x1f

    .line 12
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 14
    move-result v0

    .line 17
    iget-object v1, p0, Lcom/miui/systemui/events/NotificationPanelSlideEvent;->tip:Ljava/lang/String;

    .line 18
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 20
    move-result v0

    .line 23
    iget p0, p0, Lcom/miui/systemui/events/NotificationPanelSlideEvent;->dataVersion:I

    .line 24
    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    .line 26
    move-result p0

    .line 29
    add-int/2addr p0, v0

    .line 30
    return p0
    .line 31
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/miui/systemui/events/NotificationPanelSlideEvent;->direction:Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lcom/miui/systemui/events/NotificationPanelSlideEvent;->sessionId:Ljava/lang/String;

    .line 4
    iget-object v2, p0, Lcom/miui/systemui/events/NotificationPanelSlideEvent;->tip:Ljava/lang/String;

    .line 6
    iget p0, p0, Lcom/miui/systemui/events/NotificationPanelSlideEvent;->dataVersion:I

    .line 8
    const-string v3, "NotificationPanelSlideEvent(direction="

    .line 10
    const-string v4, ", sessionId="

    .line 12
    const-string v5, ", tip="

    .line 14
    invoke-static {v3, v0, v4, v1, v5}, Lcom/android/keyguard/event/FodQuickOpenActionEvent$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    move-result-object v0

    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    const-string v1, ", dataVersion="

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    const-string p0, ")"

    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p0

    .line 39
    return-object p0
    .line 40
.end method
