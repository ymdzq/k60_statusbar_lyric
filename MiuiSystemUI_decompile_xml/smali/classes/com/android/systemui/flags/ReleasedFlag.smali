.class public final Lcom/android/systemui/flags/ReleasedFlag;
.super Lcom/android/systemui/flags/BooleanFlag;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final id:I

.field public final name:Ljava/lang/String;

.field public final namespace:Ljava/lang/String;

.field public final overridden:Z

.field public final teamfood:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    const/4 v7, 0x0

    .line 2
    const/4 v8, 0x0

    .line 3
    const/4 v3, 0x1

    .line 4
    move-object v0, p0

    .line 5
    move-object v1, p2

    .line 6
    move v2, p1

    .line 7
    move v4, v7

    .line 8
    move v5, v8

    .line 9
    move-object v6, p3

    .line 10
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/flags/BooleanFlag;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    .line 11
    iput p1, p0, Lcom/android/systemui/flags/ReleasedFlag;->id:I

    .line 14
    iput-object p2, p0, Lcom/android/systemui/flags/ReleasedFlag;->name:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/android/systemui/flags/ReleasedFlag;->namespace:Ljava/lang/String;

    .line 18
    iput-boolean v7, p0, Lcom/android/systemui/flags/ReleasedFlag;->teamfood:Z

    .line 20
    iput-boolean v8, p0, Lcom/android/systemui/flags/ReleasedFlag;->overridden:Z

    .line 22
    return-void
    .line 24
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/android/systemui/flags/ReleasedFlag;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/systemui/flags/ReleasedFlag;

    .line 12
    iget v1, p0, Lcom/android/systemui/flags/ReleasedFlag;->id:I

    .line 14
    iget v3, p1, Lcom/android/systemui/flags/ReleasedFlag;->id:I

    .line 16
    if-eq v1, v3, :cond_2

    .line 18
    return v2

    .line 20
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/flags/ReleasedFlag;->name:Ljava/lang/String;

    .line 21
    iget-object v3, p1, Lcom/android/systemui/flags/ReleasedFlag;->name:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/android/systemui/flags/ReleasedFlag;->namespace:Ljava/lang/String;

    .line 32
    iget-object v3, p1, Lcom/android/systemui/flags/ReleasedFlag;->namespace:Ljava/lang/String;

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
    iget-boolean v1, p0, Lcom/android/systemui/flags/ReleasedFlag;->teamfood:Z

    .line 43
    iget-boolean v3, p1, Lcom/android/systemui/flags/ReleasedFlag;->teamfood:Z

    .line 45
    if-eq v1, v3, :cond_5

    .line 47
    return v2

    .line 49
    :cond_5
    iget-boolean p0, p0, Lcom/android/systemui/flags/ReleasedFlag;->overridden:Z

    .line 50
    iget-boolean p1, p1, Lcom/android/systemui/flags/ReleasedFlag;->overridden:Z

    .line 52
    if-eq p0, p1, :cond_6

    .line 54
    return v2

    .line 56
    :cond_6
    return v0
    .line 57
.end method

.method public final getId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/flags/ReleasedFlag;->id:I

    .line 2
    return p0
    .line 4
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/flags/ReleasedFlag;->name:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getNamespace()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/flags/ReleasedFlag;->namespace:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getOverridden()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/flags/ReleasedFlag;->overridden:Z

    .line 2
    return p0
    .line 4
.end method

.method public final getTeamfood()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/flags/ReleasedFlag;->teamfood:Z

    .line 2
    return p0
    .line 4
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/flags/ReleasedFlag;->id:I

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    .line 4
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-object v1, p0, Lcom/android/systemui/flags/ReleasedFlag;->name:Ljava/lang/String;

    .line 10
    const/16 v2, 0x1f

    .line 12
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 14
    move-result v0

    .line 17
    iget-object v1, p0, Lcom/android/systemui/flags/ReleasedFlag;->namespace:Ljava/lang/String;

    .line 18
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 20
    move-result v0

    .line 23
    iget-boolean v1, p0, Lcom/android/systemui/flags/ReleasedFlag;->teamfood:Z

    .line 24
    const/4 v2, 0x1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    move v1, v2

    .line 29
    :cond_0
    add-int/2addr v0, v1

    .line 30
    mul-int/lit8 v0, v0, 0x1f

    .line 31
    iget-boolean p0, p0, Lcom/android/systemui/flags/ReleasedFlag;->overridden:Z

    .line 33
    if-eqz p0, :cond_1

    .line 35
    goto :goto_0

    .line 37
    :cond_1
    move v2, p0

    .line 38
    :goto_0
    add-int/2addr v0, v2

    .line 39
    return v0
    .line 40
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/systemui/flags/ReleasedFlag;->id:I

    .line 2
    iget-object v1, p0, Lcom/android/systemui/flags/ReleasedFlag;->name:Ljava/lang/String;

    .line 4
    iget-object v2, p0, Lcom/android/systemui/flags/ReleasedFlag;->namespace:Ljava/lang/String;

    .line 6
    iget-boolean v3, p0, Lcom/android/systemui/flags/ReleasedFlag;->teamfood:Z

    .line 8
    iget-boolean p0, p0, Lcom/android/systemui/flags/ReleasedFlag;->overridden:Z

    .line 10
    new-instance v4, Ljava/lang/StringBuilder;

    .line 12
    const-string v5, "ReleasedFlag(id="

    .line 14
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    const-string v0, ", name="

    .line 22
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    const-string v0, ", namespace="

    .line 30
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    const-string v0, ", teamfood="

    .line 38
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 43
    const-string v0, ", overridden="

    .line 46
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    const-string v0, ")"

    .line 51
    invoke-static {v4, p0, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    .line 53
    move-result-object p0

    .line 56
    return-object p0
    .line 57
.end method
