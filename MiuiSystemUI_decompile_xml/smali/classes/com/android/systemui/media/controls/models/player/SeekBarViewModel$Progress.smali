.class public final Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$Progress;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final duration:I

.field public final elapsedTime:Ljava/lang/Integer;

.field public final enabled:Z

.field public final playing:Z

.field public final scrubbing:Z

.field public final seekAvailable:Z


# direct methods
.method public constructor <init>(ZZZZLjava/lang/Integer;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$Progress;->enabled:Z

    .line 5
    iput-boolean p2, p0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$Progress;->seekAvailable:Z

    .line 7
    iput-boolean p3, p0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$Progress;->playing:Z

    .line 9
    iput-boolean p4, p0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$Progress;->scrubbing:Z

    .line 11
    iput-object p5, p0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$Progress;->elapsedTime:Ljava/lang/Integer;

    .line 13
    iput p6, p0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$Progress;->duration:I

    .line 15
    return-void
    .line 17
.end method

.method public static copy$default(Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$Progress;ZLjava/lang/Integer;I)Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$Progress;
    .locals 9

    .line 1
    and-int/lit8 v0, p3, 0x1

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    iget-boolean v0, p0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$Progress;->enabled:Z

    .line 7
    move v3, v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v3, v1

    .line 11
    :goto_0
    and-int/lit8 v0, p3, 0x2

    .line 12
    if-eqz v0, :cond_1

    .line 14
    iget-boolean v0, p0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$Progress;->seekAvailable:Z

    .line 16
    move v4, v0

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move v4, v1

    .line 20
    :goto_1
    and-int/lit8 v0, p3, 0x4

    .line 21
    if-eqz v0, :cond_2

    .line 23
    iget-boolean v0, p0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$Progress;->playing:Z

    .line 25
    move v5, v0

    .line 27
    goto :goto_2

    .line 28
    :cond_2
    move v5, v1

    .line 29
    :goto_2
    and-int/lit8 v0, p3, 0x8

    .line 30
    if-eqz v0, :cond_3

    .line 32
    iget-boolean p1, p0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$Progress;->scrubbing:Z

    .line 34
    :cond_3
    move v6, p1

    .line 36
    and-int/lit8 p1, p3, 0x10

    .line 37
    if-eqz p1, :cond_4

    .line 39
    iget-object p2, p0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$Progress;->elapsedTime:Ljava/lang/Integer;

    .line 41
    :cond_4
    move-object v7, p2

    .line 43
    and-int/lit8 p1, p3, 0x20

    .line 44
    if-eqz p1, :cond_5

    .line 46
    iget v1, p0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$Progress;->duration:I

    .line 48
    :cond_5
    move v8, v1

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    new-instance p0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$Progress;

    .line 54
    move-object v2, p0

    .line 56
    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$Progress;-><init>(ZZZZLjava/lang/Integer;I)V

    .line 57
    return-object p0
    .line 60
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
    instance-of v1, p1, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$Progress;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$Progress;

    .line 12
    iget-boolean v1, p1, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$Progress;->enabled:Z

    .line 14
    iget-boolean v3, p0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$Progress;->enabled:Z

    .line 16
    if-eq v3, v1, :cond_2

    .line 18
    return v2

    .line 20
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$Progress;->seekAvailable:Z

    .line 21
    iget-boolean v3, p1, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$Progress;->seekAvailable:Z

    .line 23
    if-eq v1, v3, :cond_3

    .line 25
    return v2

    .line 27
    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$Progress;->playing:Z

    .line 28
    iget-boolean v3, p1, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$Progress;->playing:Z

    .line 30
    if-eq v1, v3, :cond_4

    .line 32
    return v2

    .line 34
    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$Progress;->scrubbing:Z

    .line 35
    iget-boolean v3, p1, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$Progress;->scrubbing:Z

    .line 37
    if-eq v1, v3, :cond_5

    .line 39
    return v2

    .line 41
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$Progress;->elapsedTime:Ljava/lang/Integer;

    .line 42
    iget-object v3, p1, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$Progress;->elapsedTime:Ljava/lang/Integer;

    .line 44
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    move-result v1

    .line 49
    if-nez v1, :cond_6

    .line 50
    return v2

    .line 52
    :cond_6
    iget p0, p0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$Progress;->duration:I

    .line 53
    iget p1, p1, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$Progress;->duration:I

    .line 55
    if-eq p0, p1, :cond_7

    .line 57
    return v2

    .line 59
    :cond_7
    return v0
    .line 60
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-boolean v1, p0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$Progress;->enabled:Z

    .line 3
    if-eqz v1, :cond_0

    .line 5
    move v1, v0

    .line 7
    :cond_0
    mul-int/lit8 v1, v1, 0x1f

    .line 8
    iget-boolean v2, p0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$Progress;->seekAvailable:Z

    .line 10
    if-eqz v2, :cond_1

    .line 12
    move v2, v0

    .line 14
    :cond_1
    add-int/2addr v1, v2

    .line 15
    mul-int/lit8 v1, v1, 0x1f

    .line 16
    iget-boolean v2, p0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$Progress;->playing:Z

    .line 18
    if-eqz v2, :cond_2

    .line 20
    move v2, v0

    .line 22
    :cond_2
    add-int/2addr v1, v2

    .line 23
    mul-int/lit8 v1, v1, 0x1f

    .line 24
    iget-boolean v2, p0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$Progress;->scrubbing:Z

    .line 26
    if-eqz v2, :cond_3

    .line 28
    goto :goto_0

    .line 30
    :cond_3
    move v0, v2

    .line 31
    :goto_0
    add-int/2addr v1, v0

    .line 32
    mul-int/lit8 v1, v1, 0x1f

    .line 33
    iget-object v0, p0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$Progress;->elapsedTime:Ljava/lang/Integer;

    .line 35
    if-nez v0, :cond_4

    .line 37
    const/4 v0, 0x0

    .line 39
    goto :goto_1

    .line 40
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 41
    move-result v0

    .line 44
    :goto_1
    add-int/2addr v1, v0

    .line 45
    mul-int/lit8 v1, v1, 0x1f

    .line 46
    iget p0, p0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$Progress;->duration:I

    .line 48
    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    .line 50
    move-result p0

    .line 53
    add-int/2addr p0, v1

    .line 54
    return p0
    .line 55
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "Progress(enabled="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-boolean v1, p0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$Progress;->enabled:Z

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ", seekAvailable="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-boolean v1, p0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$Progress;->seekAvailable:Z

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ", playing="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-boolean v1, p0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$Progress;->playing:Z

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, ", scrubbing="

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-boolean v1, p0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$Progress;->scrubbing:Z

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    const-string v1, ", elapsedTime="

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget-object v1, p0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$Progress;->elapsedTime:Ljava/lang/Integer;

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    const-string v1, ", duration="

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget p0, p0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$Progress;->duration:I

    .line 59
    const-string v1, ")"

    .line 61
    invoke-static {v0, p0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 63
    move-result-object p0

    .line 66
    return-object p0
    .line 67
.end method
