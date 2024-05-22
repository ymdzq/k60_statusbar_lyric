.class public final Lcom/miui/systemui/events/WindowClickEvent;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# annotations
.annotation runtime Lcom/miui/systemui/events/EventID;
    id = "window_click"
.end annotation

.annotation runtime Lcom/miui/systemui/events/EventModule;
    value = .enum Lcom/miui/systemui/events/EventModuleTarget;->NEWNOTIF:Lcom/miui/systemui/events/EventModuleTarget;
.end annotation


# instance fields
.field private final targetPkg:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "target_pkg"
    .end annotation
.end field

.field private final tip:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "tip"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/miui/systemui/events/WindowClickEvent;->targetPkg:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/miui/systemui/events/WindowClickEvent;->tip:Ljava/lang/String;

    .line 7
    return-void
    .line 9
.end method

.method public static synthetic copy$default(Lcom/miui/systemui/events/WindowClickEvent;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/miui/systemui/events/WindowClickEvent;
    .locals 0

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    if-eqz p4, :cond_0

    .line 4
    iget-object p1, p0, Lcom/miui/systemui/events/WindowClickEvent;->targetPkg:Ljava/lang/String;

    .line 6
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 8
    if-eqz p3, :cond_1

    .line 10
    iget-object p2, p0, Lcom/miui/systemui/events/WindowClickEvent;->tip:Ljava/lang/String;

    .line 12
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/miui/systemui/events/WindowClickEvent;->copy(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/systemui/events/WindowClickEvent;

    .line 14
    move-result-object p0

    .line 17
    return-object p0
    .line 18
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/WindowClickEvent;->targetPkg:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/WindowClickEvent;->tip:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/systemui/events/WindowClickEvent;
    .locals 0

    .line 1
    new-instance p0, Lcom/miui/systemui/events/WindowClickEvent;

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/miui/systemui/events/WindowClickEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

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
    instance-of v1, p1, Lcom/miui/systemui/events/WindowClickEvent;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/miui/systemui/events/WindowClickEvent;

    .line 12
    iget-object v1, p0, Lcom/miui/systemui/events/WindowClickEvent;->targetPkg:Ljava/lang/String;

    .line 14
    iget-object v3, p1, Lcom/miui/systemui/events/WindowClickEvent;->targetPkg:Ljava/lang/String;

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
    iget-object p0, p0, Lcom/miui/systemui/events/WindowClickEvent;->tip:Ljava/lang/String;

    .line 25
    iget-object p1, p1, Lcom/miui/systemui/events/WindowClickEvent;->tip:Ljava/lang/String;

    .line 27
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    move-result p0

    .line 32
    if-nez p0, :cond_3

    .line 33
    return v2

    .line 35
    :cond_3
    return v0
    .line 36
.end method

.method public final getTargetPkg()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/WindowClickEvent;->targetPkg:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getTip()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/WindowClickEvent;->tip:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/systemui/events/WindowClickEvent;->targetPkg:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-object p0, p0, Lcom/miui/systemui/events/WindowClickEvent;->tip:Ljava/lang/String;

    .line 10
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 12
    move-result p0

    .line 15
    add-int/2addr p0, v0

    .line 16
    return p0
    .line 17
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/systemui/events/WindowClickEvent;->targetPkg:Ljava/lang/String;

    .line 2
    iget-object p0, p0, Lcom/miui/systemui/events/WindowClickEvent;->tip:Ljava/lang/String;

    .line 4
    const-string v1, "WindowClickEvent(targetPkg="

    .line 6
    const-string v2, ", tip="

    .line 8
    const-string v3, ")"

    .line 10
    invoke-static {v1, v0, v2, p0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 15
    return-object p0
    .line 16
.end method
