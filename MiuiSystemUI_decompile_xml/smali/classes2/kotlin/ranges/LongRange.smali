.class public final Lkotlin/ranges/LongRange;
.super Lkotlin/ranges/LongProgression;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lkotlin/ranges/LongRange;

    .line 2
    const-wide/16 v1, 0x1

    .line 4
    const-wide/16 v3, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/ranges/LongRange;-><init>(JJ)V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final contains(J)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lkotlin/ranges/LongProgression;->first:J

    .line 2
    cmp-long v0, v0, p1

    .line 4
    if-gtz v0, :cond_0

    .line 6
    iget-wide v0, p0, Lkotlin/ranges/LongProgression;->last:J

    .line 8
    cmp-long p0, p1, v0

    .line 10
    if-gtz p0, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
    .line 17
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 10

    .line 1
    instance-of v0, p1, Lkotlin/ranges/LongRange;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_4

    .line 5
    iget-wide v2, p0, Lkotlin/ranges/LongProgression;->first:J

    .line 7
    iget-wide v4, p0, Lkotlin/ranges/LongProgression;->last:J

    .line 9
    cmp-long p0, v2, v4

    .line 11
    const/4 v0, 0x1

    .line 13
    if-lez p0, :cond_0

    .line 14
    move p0, v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move p0, v1

    .line 18
    :goto_0
    if-eqz p0, :cond_2

    .line 19
    move-object p0, p1

    .line 21
    check-cast p0, Lkotlin/ranges/LongRange;

    .line 22
    iget-wide v6, p0, Lkotlin/ranges/LongProgression;->first:J

    .line 24
    iget-wide v8, p0, Lkotlin/ranges/LongProgression;->last:J

    .line 26
    cmp-long p0, v6, v8

    .line 28
    if-lez p0, :cond_1

    .line 30
    move p0, v0

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move p0, v1

    .line 34
    :goto_1
    if-nez p0, :cond_3

    .line 35
    :cond_2
    check-cast p1, Lkotlin/ranges/LongRange;

    .line 37
    iget-wide v6, p1, Lkotlin/ranges/LongProgression;->first:J

    .line 39
    cmp-long p0, v2, v6

    .line 41
    if-nez p0, :cond_4

    .line 43
    iget-wide p0, p1, Lkotlin/ranges/LongProgression;->last:J

    .line 45
    cmp-long p0, v4, p0

    .line 47
    if-nez p0, :cond_4

    .line 49
    :cond_3
    move v1, v0

    .line 51
    :cond_4
    return v1
    .line 52
.end method

.method public final hashCode()I
    .locals 8

    .line 1
    iget-wide v0, p0, Lkotlin/ranges/LongProgression;->first:J

    .line 2
    iget-wide v2, p0, Lkotlin/ranges/LongProgression;->last:J

    .line 4
    cmp-long p0, v0, v2

    .line 6
    if-lez p0, :cond_0

    .line 8
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    if-eqz p0, :cond_1

    .line 13
    const/4 p0, -0x1

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    const/16 p0, 0x1f

    .line 17
    int-to-long v4, p0

    .line 19
    const/16 p0, 0x20

    .line 20
    ushr-long v6, v0, p0

    .line 22
    xor-long/2addr v0, v6

    .line 24
    mul-long/2addr v4, v0

    .line 25
    ushr-long v0, v2, p0

    .line 26
    xor-long/2addr v0, v2

    .line 28
    add-long/2addr v4, v0

    .line 29
    long-to-int p0, v4

    .line 30
    :goto_1
    return p0
    .line 31
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    iget-wide v1, p0, Lkotlin/ranges/LongProgression;->first:J

    .line 7
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 9
    const-string v1, ".."

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    iget-wide v1, p0, Lkotlin/ranges/LongProgression;->last:J

    .line 17
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object p0

    .line 25
    return-object p0
    .line 26
.end method
