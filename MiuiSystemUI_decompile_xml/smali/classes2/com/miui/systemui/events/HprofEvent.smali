.class public final Lcom/miui/systemui/events/HprofEvent;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# annotations
.annotation runtime Lcom/miui/systemui/events/EventID;
    id = "sysui_hprof"
.end annotation

.annotation runtime Lcom/miui/systemui/events/EventModule;
    value = .enum Lcom/miui/systemui/events/EventModuleTarget;->SYSTEMUI:Lcom/miui/systemui/events/EventModuleTarget;
.end annotation


# instance fields
.field private final day:I
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "Day"
    .end annotation
.end field

.field private final filesize:I
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "FileSize"
    .end annotation
.end field

.field private final pss:I
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "TotalPSS"
    .end annotation
.end field

.field private final type:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/miui/systemui/events/HprofEvent;->day:I

    .line 5
    iput-object p2, p0, Lcom/miui/systemui/events/HprofEvent;->type:Ljava/lang/String;

    .line 7
    iput p3, p0, Lcom/miui/systemui/events/HprofEvent;->pss:I

    .line 9
    iput p4, p0, Lcom/miui/systemui/events/HprofEvent;->filesize:I

    .line 11
    return-void
    .line 13
.end method

.method public static synthetic copy$default(Lcom/miui/systemui/events/HprofEvent;ILjava/lang/String;IIILjava/lang/Object;)Lcom/miui/systemui/events/HprofEvent;
    .locals 0

    .line 1
    and-int/lit8 p6, p5, 0x1

    .line 2
    if-eqz p6, :cond_0

    .line 4
    iget p1, p0, Lcom/miui/systemui/events/HprofEvent;->day:I

    .line 6
    :cond_0
    and-int/lit8 p6, p5, 0x2

    .line 8
    if-eqz p6, :cond_1

    .line 10
    iget-object p2, p0, Lcom/miui/systemui/events/HprofEvent;->type:Ljava/lang/String;

    .line 12
    :cond_1
    and-int/lit8 p6, p5, 0x4

    .line 14
    if-eqz p6, :cond_2

    .line 16
    iget p3, p0, Lcom/miui/systemui/events/HprofEvent;->pss:I

    .line 18
    :cond_2
    and-int/lit8 p5, p5, 0x8

    .line 20
    if-eqz p5, :cond_3

    .line 22
    iget p4, p0, Lcom/miui/systemui/events/HprofEvent;->filesize:I

    .line 24
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/systemui/events/HprofEvent;->copy(ILjava/lang/String;II)Lcom/miui/systemui/events/HprofEvent;

    .line 26
    move-result-object p0

    .line 29
    return-object p0
    .line 30
.end method


# virtual methods
.method public final component1()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/HprofEvent;->day:I

    .line 2
    return p0
    .line 4
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/HprofEvent;->type:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component3()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/HprofEvent;->pss:I

    .line 2
    return p0
    .line 4
.end method

.method public final component4()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/HprofEvent;->filesize:I

    .line 2
    return p0
    .line 4
.end method

.method public final copy(ILjava/lang/String;II)Lcom/miui/systemui/events/HprofEvent;
    .locals 0

    .line 1
    new-instance p0, Lcom/miui/systemui/events/HprofEvent;

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/systemui/events/HprofEvent;-><init>(ILjava/lang/String;II)V

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
    instance-of v1, p1, Lcom/miui/systemui/events/HprofEvent;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/miui/systemui/events/HprofEvent;

    .line 12
    iget v1, p0, Lcom/miui/systemui/events/HprofEvent;->day:I

    .line 14
    iget v3, p1, Lcom/miui/systemui/events/HprofEvent;->day:I

    .line 16
    if-eq v1, v3, :cond_2

    .line 18
    return v2

    .line 20
    :cond_2
    iget-object v1, p0, Lcom/miui/systemui/events/HprofEvent;->type:Ljava/lang/String;

    .line 21
    iget-object v3, p1, Lcom/miui/systemui/events/HprofEvent;->type:Ljava/lang/String;

    .line 23
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    move-result v1

    .line 28
    if-nez v1, :cond_3

    .line 29
    return v2

    .line 31
    :cond_3
    iget v1, p0, Lcom/miui/systemui/events/HprofEvent;->pss:I

    .line 32
    iget v3, p1, Lcom/miui/systemui/events/HprofEvent;->pss:I

    .line 34
    if-eq v1, v3, :cond_4

    .line 36
    return v2

    .line 38
    :cond_4
    iget p0, p0, Lcom/miui/systemui/events/HprofEvent;->filesize:I

    .line 39
    iget p1, p1, Lcom/miui/systemui/events/HprofEvent;->filesize:I

    .line 41
    if-eq p0, p1, :cond_5

    .line 43
    return v2

    .line 45
    :cond_5
    return v0
    .line 46
.end method

.method public final getDay()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/HprofEvent;->day:I

    .line 2
    return p0
    .line 4
.end method

.method public final getFilesize()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/HprofEvent;->filesize:I

    .line 2
    return p0
    .line 4
.end method

.method public final getPss()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/HprofEvent;->pss:I

    .line 2
    return p0
    .line 4
.end method

.method public final getType()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/HprofEvent;->type:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/miui/systemui/events/HprofEvent;->day:I

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    .line 4
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-object v1, p0, Lcom/miui/systemui/events/HprofEvent;->type:Ljava/lang/String;

    .line 10
    const/16 v2, 0x1f

    .line 12
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 14
    move-result v0

    .line 17
    iget v1, p0, Lcom/miui/systemui/events/HprofEvent;->pss:I

    .line 18
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 20
    move-result v0

    .line 23
    iget p0, p0, Lcom/miui/systemui/events/HprofEvent;->filesize:I

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
    .locals 5

    .line 1
    iget v0, p0, Lcom/miui/systemui/events/HprofEvent;->day:I

    .line 2
    iget-object v1, p0, Lcom/miui/systemui/events/HprofEvent;->type:Ljava/lang/String;

    .line 4
    iget v2, p0, Lcom/miui/systemui/events/HprofEvent;->pss:I

    .line 6
    iget p0, p0, Lcom/miui/systemui/events/HprofEvent;->filesize:I

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    .line 10
    const-string v4, "HprofEvent(day="

    .line 12
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    const-string v0, ", type="

    .line 20
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    const-string v0, ", pss="

    .line 28
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    const-string v0, ", filesize="

    .line 36
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    const-string p0, ")"

    .line 44
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object p0

    .line 52
    return-object p0
    .line 53
.end method
