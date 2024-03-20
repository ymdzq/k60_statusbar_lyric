.class public final Lcom/miui/systemui/events/GroupCollapseEvent;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# annotations
.annotation runtime Lcom/miui/systemui/events/EventID;
    id = "group_retract"
.end annotation

.annotation runtime Lcom/miui/systemui/events/EventModule;
    value = .enum Lcom/miui/systemui/events/EventModuleTarget;->NOTIFICATION:Lcom/miui/systemui/events/EventModuleTarget;
.end annotation


# instance fields
.field private final groupAmount:I
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "group_amount"
    .end annotation
.end field

.field private final pkg:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "send_pkg"
    .end annotation
.end field

.field private final targetPkg:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "target_pkg"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/miui/systemui/events/GroupCollapseEvent;->pkg:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/miui/systemui/events/GroupCollapseEvent;->targetPkg:Ljava/lang/String;

    .line 7
    iput p3, p0, Lcom/miui/systemui/events/GroupCollapseEvent;->groupAmount:I

    .line 9
    return-void
    .line 11
.end method

.method public static synthetic copy$default(Lcom/miui/systemui/events/GroupCollapseEvent;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Lcom/miui/systemui/events/GroupCollapseEvent;
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x1

    .line 2
    if-eqz p5, :cond_0

    .line 4
    iget-object p1, p0, Lcom/miui/systemui/events/GroupCollapseEvent;->pkg:Ljava/lang/String;

    .line 6
    :cond_0
    and-int/lit8 p5, p4, 0x2

    .line 8
    if-eqz p5, :cond_1

    .line 10
    iget-object p2, p0, Lcom/miui/systemui/events/GroupCollapseEvent;->targetPkg:Ljava/lang/String;

    .line 12
    :cond_1
    and-int/lit8 p4, p4, 0x4

    .line 14
    if-eqz p4, :cond_2

    .line 16
    iget p3, p0, Lcom/miui/systemui/events/GroupCollapseEvent;->groupAmount:I

    .line 18
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/systemui/events/GroupCollapseEvent;->copy(Ljava/lang/String;Ljava/lang/String;I)Lcom/miui/systemui/events/GroupCollapseEvent;

    .line 20
    move-result-object p0

    .line 23
    return-object p0
    .line 24
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/GroupCollapseEvent;->pkg:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/GroupCollapseEvent;->targetPkg:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component3()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/GroupCollapseEvent;->groupAmount:I

    .line 2
    return p0
    .line 4
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;I)Lcom/miui/systemui/events/GroupCollapseEvent;
    .locals 0

    .line 1
    new-instance p0, Lcom/miui/systemui/events/GroupCollapseEvent;

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/systemui/events/GroupCollapseEvent;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

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
    instance-of v1, p1, Lcom/miui/systemui/events/GroupCollapseEvent;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/miui/systemui/events/GroupCollapseEvent;

    .line 12
    iget-object v1, p0, Lcom/miui/systemui/events/GroupCollapseEvent;->pkg:Ljava/lang/String;

    .line 14
    iget-object v3, p1, Lcom/miui/systemui/events/GroupCollapseEvent;->pkg:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/miui/systemui/events/GroupCollapseEvent;->targetPkg:Ljava/lang/String;

    .line 25
    iget-object v3, p1, Lcom/miui/systemui/events/GroupCollapseEvent;->targetPkg:Ljava/lang/String;

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
    iget p0, p0, Lcom/miui/systemui/events/GroupCollapseEvent;->groupAmount:I

    .line 36
    iget p1, p1, Lcom/miui/systemui/events/GroupCollapseEvent;->groupAmount:I

    .line 38
    if-eq p0, p1, :cond_4

    .line 40
    return v2

    .line 42
    :cond_4
    return v0
    .line 43
.end method

.method public final getGroupAmount()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/GroupCollapseEvent;->groupAmount:I

    .line 2
    return p0
    .line 4
.end method

.method public final getPkg()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/GroupCollapseEvent;->pkg:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getTargetPkg()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/GroupCollapseEvent;->targetPkg:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/systemui/events/GroupCollapseEvent;->pkg:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-object v1, p0, Lcom/miui/systemui/events/GroupCollapseEvent;->targetPkg:Ljava/lang/String;

    .line 10
    const/16 v2, 0x1f

    .line 12
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 14
    move-result v0

    .line 17
    iget p0, p0, Lcom/miui/systemui/events/GroupCollapseEvent;->groupAmount:I

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
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/miui/systemui/events/GroupCollapseEvent;->pkg:Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lcom/miui/systemui/events/GroupCollapseEvent;->targetPkg:Ljava/lang/String;

    .line 4
    iget p0, p0, Lcom/miui/systemui/events/GroupCollapseEvent;->groupAmount:I

    .line 6
    const-string v2, "GroupCollapseEvent(pkg="

    .line 8
    const-string v3, ", targetPkg="

    .line 10
    const-string v4, ", groupAmount="

    .line 12
    invoke-static {v2, v0, v3, v1, v4}, Lcom/android/keyguard/event/FodQuickOpenActionEvent$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    move-result-object v0

    .line 17
    const-string v1, ")"

    .line 18
    invoke-static {v0, p0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object p0

    .line 23
    return-object p0
    .line 24
.end method
