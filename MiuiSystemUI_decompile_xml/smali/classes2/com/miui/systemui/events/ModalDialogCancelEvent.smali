.class public final Lcom/miui/systemui/events/ModalDialogCancelEvent;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# annotations
.annotation runtime Lcom/miui/systemui/events/EventID;
    id = "dialog_cancel"
.end annotation

.annotation runtime Lcom/miui/systemui/events/EventModule;
    value = .enum Lcom/miui/systemui/events/EventModuleTarget;->NOTIFICATION:Lcom/miui/systemui/events/EventModuleTarget;
.end annotation


# instance fields
.field private final cancelMode:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "cancel_mode"
    .end annotation
.end field

.field private final dialogSource:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "dialog_source"
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


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/miui/systemui/events/ModalDialogCancelEvent;->pkg:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/miui/systemui/events/ModalDialogCancelEvent;->targetPkg:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lcom/miui/systemui/events/ModalDialogCancelEvent;->style:Ljava/lang/String;

    .line 9
    iput-object p4, p0, Lcom/miui/systemui/events/ModalDialogCancelEvent;->dialogSource:Ljava/lang/String;

    .line 11
    iput-object p5, p0, Lcom/miui/systemui/events/ModalDialogCancelEvent;->cancelMode:Ljava/lang/String;

    .line 13
    return-void
    .line 15
.end method

.method public static synthetic copy$default(Lcom/miui/systemui/events/ModalDialogCancelEvent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/miui/systemui/events/ModalDialogCancelEvent;
    .locals 3

    .line 1
    and-int/lit8 p7, p6, 0x1

    .line 2
    if-eqz p7, :cond_0

    .line 4
    iget-object p1, p0, Lcom/miui/systemui/events/ModalDialogCancelEvent;->pkg:Ljava/lang/String;

    .line 6
    :cond_0
    and-int/lit8 p7, p6, 0x2

    .line 8
    if-eqz p7, :cond_1

    .line 10
    iget-object p2, p0, Lcom/miui/systemui/events/ModalDialogCancelEvent;->targetPkg:Ljava/lang/String;

    .line 12
    :cond_1
    move-object p7, p2

    .line 14
    and-int/lit8 p2, p6, 0x4

    .line 15
    if-eqz p2, :cond_2

    .line 17
    iget-object p3, p0, Lcom/miui/systemui/events/ModalDialogCancelEvent;->style:Ljava/lang/String;

    .line 19
    :cond_2
    move-object v0, p3

    .line 21
    and-int/lit8 p2, p6, 0x8

    .line 22
    if-eqz p2, :cond_3

    .line 24
    iget-object p4, p0, Lcom/miui/systemui/events/ModalDialogCancelEvent;->dialogSource:Ljava/lang/String;

    .line 26
    :cond_3
    move-object v1, p4

    .line 28
    and-int/lit8 p2, p6, 0x10

    .line 29
    if-eqz p2, :cond_4

    .line 31
    iget-object p5, p0, Lcom/miui/systemui/events/ModalDialogCancelEvent;->cancelMode:Ljava/lang/String;

    .line 33
    :cond_4
    move-object v2, p5

    .line 35
    move-object p2, p0

    .line 36
    move-object p3, p1

    .line 37
    move-object p4, p7

    .line 38
    move-object p5, v0

    .line 39
    move-object p6, v1

    .line 40
    move-object p7, v2

    .line 41
    invoke-virtual/range {p2 .. p7}, Lcom/miui/systemui/events/ModalDialogCancelEvent;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/systemui/events/ModalDialogCancelEvent;

    .line 42
    move-result-object p0

    .line 45
    return-object p0
    .line 46
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/ModalDialogCancelEvent;->pkg:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/ModalDialogCancelEvent;->targetPkg:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/ModalDialogCancelEvent;->style:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component4()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/ModalDialogCancelEvent;->dialogSource:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component5()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/ModalDialogCancelEvent;->cancelMode:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/systemui/events/ModalDialogCancelEvent;
    .locals 6

    .line 1
    new-instance p0, Lcom/miui/systemui/events/ModalDialogCancelEvent;

    .line 2
    move-object v0, p0

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
    invoke-direct/range {v0 .. v5}, Lcom/miui/systemui/events/ModalDialogCancelEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    return-object p0
    .line 13
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
    instance-of v1, p1, Lcom/miui/systemui/events/ModalDialogCancelEvent;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/miui/systemui/events/ModalDialogCancelEvent;

    .line 12
    iget-object v1, p0, Lcom/miui/systemui/events/ModalDialogCancelEvent;->pkg:Ljava/lang/String;

    .line 14
    iget-object v3, p1, Lcom/miui/systemui/events/ModalDialogCancelEvent;->pkg:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/miui/systemui/events/ModalDialogCancelEvent;->targetPkg:Ljava/lang/String;

    .line 25
    iget-object v3, p1, Lcom/miui/systemui/events/ModalDialogCancelEvent;->targetPkg:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/miui/systemui/events/ModalDialogCancelEvent;->style:Ljava/lang/String;

    .line 36
    iget-object v3, p1, Lcom/miui/systemui/events/ModalDialogCancelEvent;->style:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/miui/systemui/events/ModalDialogCancelEvent;->dialogSource:Ljava/lang/String;

    .line 47
    iget-object v3, p1, Lcom/miui/systemui/events/ModalDialogCancelEvent;->dialogSource:Ljava/lang/String;

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
    iget-object p0, p0, Lcom/miui/systemui/events/ModalDialogCancelEvent;->cancelMode:Ljava/lang/String;

    .line 58
    iget-object p1, p1, Lcom/miui/systemui/events/ModalDialogCancelEvent;->cancelMode:Ljava/lang/String;

    .line 60
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    move-result p0

    .line 65
    if-nez p0, :cond_6

    .line 66
    return v2

    .line 68
    :cond_6
    return v0
    .line 69
.end method

.method public final getCancelMode()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/ModalDialogCancelEvent;->cancelMode:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getDialogSource()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/ModalDialogCancelEvent;->dialogSource:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getPkg()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/ModalDialogCancelEvent;->pkg:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getStyle()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/ModalDialogCancelEvent;->style:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getTargetPkg()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/ModalDialogCancelEvent;->targetPkg:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/systemui/events/ModalDialogCancelEvent;->pkg:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-object v1, p0, Lcom/miui/systemui/events/ModalDialogCancelEvent;->targetPkg:Ljava/lang/String;

    .line 10
    const/16 v2, 0x1f

    .line 12
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 14
    move-result v0

    .line 17
    iget-object v1, p0, Lcom/miui/systemui/events/ModalDialogCancelEvent;->style:Ljava/lang/String;

    .line 18
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 20
    move-result v0

    .line 23
    iget-object v1, p0, Lcom/miui/systemui/events/ModalDialogCancelEvent;->dialogSource:Ljava/lang/String;

    .line 24
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 26
    move-result v0

    .line 29
    iget-object p0, p0, Lcom/miui/systemui/events/ModalDialogCancelEvent;->cancelMode:Ljava/lang/String;

    .line 30
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 32
    move-result p0

    .line 35
    add-int/2addr p0, v0

    .line 36
    return p0
    .line 37
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/miui/systemui/events/ModalDialogCancelEvent;->pkg:Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lcom/miui/systemui/events/ModalDialogCancelEvent;->targetPkg:Ljava/lang/String;

    .line 4
    iget-object v2, p0, Lcom/miui/systemui/events/ModalDialogCancelEvent;->style:Ljava/lang/String;

    .line 6
    iget-object v3, p0, Lcom/miui/systemui/events/ModalDialogCancelEvent;->dialogSource:Ljava/lang/String;

    .line 8
    iget-object p0, p0, Lcom/miui/systemui/events/ModalDialogCancelEvent;->cancelMode:Ljava/lang/String;

    .line 10
    const-string v4, "ModalDialogCancelEvent(pkg="

    .line 12
    const-string v5, ", targetPkg="

    .line 14
    const-string v6, ", style="

    .line 16
    invoke-static {v4, v0, v5, v1, v6}, Lcom/android/keyguard/event/FodQuickOpenActionEvent$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    move-result-object v0

    .line 21
    const-string v1, ", dialogSource="

    .line 22
    const-string v4, ", cancelMode="

    .line 24
    invoke-static {v0, v2, v1, v3, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const-string v1, ")"

    .line 29
    invoke-static {v0, p0, v1}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 34
    return-object p0
    .line 35
.end method
