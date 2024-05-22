.class public final Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final open:Z

.field public final pos:I

.field public final start:Z

.field public final unrestricted:Z


# direct methods
.method public constructor <init>(ZZIZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;->open:Z

    .line 5
    iput p3, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;->pos:I

    .line 7
    iput-boolean p2, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;->unrestricted:Z

    .line 9
    iput-boolean p4, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;->start:Z

    .line 11
    return-void
    .line 13
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
    instance-of v1, p1, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;

    .line 12
    iget-boolean v1, p1, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;->open:Z

    .line 14
    iget-boolean v3, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;->open:Z

    .line 16
    if-eq v3, v1, :cond_2

    .line 18
    return v2

    .line 20
    :cond_2
    iget v1, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;->pos:I

    .line 21
    iget v3, p1, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;->pos:I

    .line 23
    if-eq v1, v3, :cond_3

    .line 25
    return v2

    .line 27
    :cond_3
    iget-boolean v1, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;->unrestricted:Z

    .line 28
    iget-boolean v3, p1, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;->unrestricted:Z

    .line 30
    if-eq v1, v3, :cond_4

    .line 32
    return v2

    .line 34
    :cond_4
    iget-boolean p0, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;->start:Z

    .line 35
    iget-boolean p1, p1, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;->start:Z

    .line 37
    if-eq p0, p1, :cond_5

    .line 39
    return v2

    .line 41
    :cond_5
    return v0
    .line 42
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-boolean v1, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;->open:Z

    .line 3
    if-eqz v1, :cond_0

    .line 5
    move v1, v0

    .line 7
    :cond_0
    mul-int/lit8 v1, v1, 0x1f

    .line 8
    iget v2, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;->pos:I

    .line 10
    const/16 v3, 0x1f

    .line 12
    invoke-static {v2, v1, v3}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 14
    move-result v1

    .line 17
    iget-boolean v2, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;->unrestricted:Z

    .line 18
    if-eqz v2, :cond_1

    .line 20
    move v2, v0

    .line 22
    :cond_1
    add-int/2addr v1, v2

    .line 23
    mul-int/lit8 v1, v1, 0x1f

    .line 24
    iget-boolean p0, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;->start:Z

    .line 26
    if-eqz p0, :cond_2

    .line 28
    goto :goto_0

    .line 30
    :cond_2
    move v0, p0

    .line 31
    :goto_0
    add-int/2addr v1, v0

    .line 32
    return v1
    .line 33
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "SweepLineEvent(open="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-boolean v1, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;->open:Z

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ", pos="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget v1, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;->pos:I

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ", unrestricted="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-boolean v1, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;->unrestricted:Z

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, ", start="

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-boolean p0, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;->start:Z

    .line 39
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    const-string p0, ")"

    .line 44
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object p0

    .line 52
    return-object p0
    .line 53
.end method
