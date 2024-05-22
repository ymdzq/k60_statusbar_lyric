.class public final Lcom/miui/systemui/events/NotificationAppStateEvent;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# annotations
.annotation runtime Lcom/miui/systemui/events/EventID;
    id = "app_states"
.end annotation

.annotation runtime Lcom/miui/systemui/events/EventModule;
    value = .enum Lcom/miui/systemui/events/EventModuleTarget;->NEWNOTIF:Lcom/miui/systemui/events/EventModuleTarget;
.end annotation


# instance fields
.field private final items:Ljava/util/List;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "app_states"
    .end annotation
.end field

.field private final tip:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "tip"
    .end annotation
.end field

.field private final version:I
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "notification_data_version"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/miui/systemui/events/NotificationAppStateEvent;->items:Ljava/util/List;

    .line 5
    iput-object p2, p0, Lcom/miui/systemui/events/NotificationAppStateEvent;->tip:Ljava/lang/String;

    .line 7
    iput p3, p0, Lcom/miui/systemui/events/NotificationAppStateEvent;->version:I

    .line 9
    return-void
    .line 11
.end method

.method public static synthetic copy$default(Lcom/miui/systemui/events/NotificationAppStateEvent;Ljava/util/List;Ljava/lang/String;IILjava/lang/Object;)Lcom/miui/systemui/events/NotificationAppStateEvent;
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x1

    .line 2
    if-eqz p5, :cond_0

    .line 4
    iget-object p1, p0, Lcom/miui/systemui/events/NotificationAppStateEvent;->items:Ljava/util/List;

    .line 6
    :cond_0
    and-int/lit8 p5, p4, 0x2

    .line 8
    if-eqz p5, :cond_1

    .line 10
    iget-object p2, p0, Lcom/miui/systemui/events/NotificationAppStateEvent;->tip:Ljava/lang/String;

    .line 12
    :cond_1
    and-int/lit8 p4, p4, 0x4

    .line 14
    if-eqz p4, :cond_2

    .line 16
    iget p3, p0, Lcom/miui/systemui/events/NotificationAppStateEvent;->version:I

    .line 18
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/systemui/events/NotificationAppStateEvent;->copy(Ljava/util/List;Ljava/lang/String;I)Lcom/miui/systemui/events/NotificationAppStateEvent;

    .line 20
    move-result-object p0

    .line 23
    return-object p0
    .line 24
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/NotificationAppStateEvent;->items:Ljava/util/List;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/NotificationAppStateEvent;->tip:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component3()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/NotificationAppStateEvent;->version:I

    .line 2
    return p0
    .line 4
.end method

.method public final copy(Ljava/util/List;Ljava/lang/String;I)Lcom/miui/systemui/events/NotificationAppStateEvent;
    .locals 0

    .line 1
    new-instance p0, Lcom/miui/systemui/events/NotificationAppStateEvent;

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/systemui/events/NotificationAppStateEvent;-><init>(Ljava/util/List;Ljava/lang/String;I)V

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
    instance-of v1, p1, Lcom/miui/systemui/events/NotificationAppStateEvent;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/miui/systemui/events/NotificationAppStateEvent;

    .line 12
    iget-object v1, p0, Lcom/miui/systemui/events/NotificationAppStateEvent;->items:Ljava/util/List;

    .line 14
    iget-object v3, p1, Lcom/miui/systemui/events/NotificationAppStateEvent;->items:Ljava/util/List;

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
    iget-object v1, p0, Lcom/miui/systemui/events/NotificationAppStateEvent;->tip:Ljava/lang/String;

    .line 25
    iget-object v3, p1, Lcom/miui/systemui/events/NotificationAppStateEvent;->tip:Ljava/lang/String;

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
    iget p0, p0, Lcom/miui/systemui/events/NotificationAppStateEvent;->version:I

    .line 36
    iget p1, p1, Lcom/miui/systemui/events/NotificationAppStateEvent;->version:I

    .line 38
    if-eq p0, p1, :cond_4

    .line 40
    return v2

    .line 42
    :cond_4
    return v0
    .line 43
.end method

.method public final getItems()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/NotificationAppStateEvent;->items:Ljava/util/List;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getTip()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/NotificationAppStateEvent;->tip:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getVersion()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/NotificationAppStateEvent;->version:I

    .line 2
    return p0
    .line 4
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/systemui/events/NotificationAppStateEvent;->items:Ljava/util/List;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-object v1, p0, Lcom/miui/systemui/events/NotificationAppStateEvent;->tip:Ljava/lang/String;

    .line 10
    const/16 v2, 0x1f

    .line 12
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 14
    move-result v0

    .line 17
    iget p0, p0, Lcom/miui/systemui/events/NotificationAppStateEvent;->version:I

    .line 18
    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    .line 20
    move-result p0

    .line 23
    add-int/2addr p0, v0

    .line 24
    return p0
    .line 25
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/systemui/events/NotificationAppStateEvent;->items:Ljava/util/List;

    .line 2
    iget-object v1, p0, Lcom/miui/systemui/events/NotificationAppStateEvent;->tip:Ljava/lang/String;

    .line 4
    iget p0, p0, Lcom/miui/systemui/events/NotificationAppStateEvent;->version:I

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    const-string v3, "NotificationAppStateEvent(items="

    .line 10
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    const-string v0, ", tip="

    .line 18
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    const-string v0, ", version="

    .line 26
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    const-string v0, ")"

    .line 31
    invoke-static {v2, p0, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 36
    return-object p0
    .line 37
.end method
