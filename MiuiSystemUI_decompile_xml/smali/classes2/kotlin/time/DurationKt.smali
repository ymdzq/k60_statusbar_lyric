.class public abstract Lkotlin/time/DurationKt;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public static final durationOfMillis(J)J
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    shl-long/2addr p0, v0

    .line 3
    const-wide/16 v0, 0x1

    .line 4
    add-long/2addr p0, v0

    .line 6
    sget v0, Lkotlin/time/Duration;->$r8$clinit:I

    .line 7
    sget v0, Lkotlin/time/DurationJvmKt;->$r8$clinit:I

    .line 9
    return-wide p0
    .line 11
.end method

.method public static final toDuration(ILkotlin/time/DurationUnit;)J
    .locals 8

    .line 1
    sget-object v0, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-gtz v0, :cond_0

    .line 9
    int-to-long v2, p0

    .line 11
    sget-object p0, Lkotlin/time/DurationUnit;->NANOSECONDS:Lkotlin/time/DurationUnit;

    .line 12
    invoke-virtual {p0}, Lkotlin/time/DurationUnit;->getTimeUnit$kotlin_stdlib()Ljava/util/concurrent/TimeUnit;

    .line 14
    move-result-object p0

    .line 17
    invoke-virtual {p1}, Lkotlin/time/DurationUnit;->getTimeUnit$kotlin_stdlib()Ljava/util/concurrent/TimeUnit;

    .line 18
    move-result-object p1

    .line 21
    invoke-virtual {p0, v2, v3, p1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    .line 22
    move-result-wide p0

    .line 25
    shl-long/2addr p0, v1

    .line 26
    sget v0, Lkotlin/time/Duration;->$r8$clinit:I

    .line 27
    sget v0, Lkotlin/time/DurationJvmKt;->$r8$clinit:I

    .line 29
    goto :goto_0

    .line 31
    :cond_0
    int-to-long v2, p0

    .line 32
    sget-object p0, Lkotlin/time/DurationUnit;->NANOSECONDS:Lkotlin/time/DurationUnit;

    .line 33
    invoke-virtual {p1}, Lkotlin/time/DurationUnit;->getTimeUnit$kotlin_stdlib()Ljava/util/concurrent/TimeUnit;

    .line 35
    move-result-object v0

    .line 38
    invoke-virtual {p0}, Lkotlin/time/DurationUnit;->getTimeUnit$kotlin_stdlib()Ljava/util/concurrent/TimeUnit;

    .line 39
    move-result-object v4

    .line 42
    const-wide v5, 0x3ffffffffffa14bfL    # 1.9999999999138678

    .line 43
    invoke-virtual {v0, v5, v6, v4}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    .line 48
    move-result-wide v4

    .line 51
    new-instance v0, Lkotlin/ranges/LongRange;

    .line 52
    neg-long v6, v4

    .line 54
    invoke-direct {v0, v6, v7, v4, v5}, Lkotlin/ranges/LongRange;-><init>(JJ)V

    .line 55
    invoke-virtual {v0, v2, v3}, Lkotlin/ranges/LongRange;->contains(J)Z

    .line 58
    move-result v0

    .line 61
    if-eqz v0, :cond_1

    .line 62
    invoke-virtual {p0}, Lkotlin/time/DurationUnit;->getTimeUnit$kotlin_stdlib()Ljava/util/concurrent/TimeUnit;

    .line 64
    move-result-object p0

    .line 67
    invoke-virtual {p1}, Lkotlin/time/DurationUnit;->getTimeUnit$kotlin_stdlib()Ljava/util/concurrent/TimeUnit;

    .line 68
    move-result-object p1

    .line 71
    invoke-virtual {p0, v2, v3, p1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    .line 72
    move-result-wide p0

    .line 75
    shl-long/2addr p0, v1

    .line 76
    sget v0, Lkotlin/time/Duration;->$r8$clinit:I

    .line 77
    sget v0, Lkotlin/time/DurationJvmKt;->$r8$clinit:I

    .line 79
    goto :goto_0

    .line 81
    :cond_1
    sget-object p0, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    .line 82
    invoke-virtual {p0}, Lkotlin/time/DurationUnit;->getTimeUnit$kotlin_stdlib()Ljava/util/concurrent/TimeUnit;

    .line 84
    move-result-object p0

    .line 87
    invoke-virtual {p1}, Lkotlin/time/DurationUnit;->getTimeUnit$kotlin_stdlib()Ljava/util/concurrent/TimeUnit;

    .line 88
    move-result-object p1

    .line 91
    invoke-virtual {p0, v2, v3, p1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    .line 92
    move-result-wide p0

    .line 95
    invoke-static {p0, p1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(J)J

    .line 96
    move-result-wide p0

    .line 99
    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->durationOfMillis(J)J

    .line 100
    move-result-wide p0

    .line 103
    :goto_0
    return-wide p0
    .line 104
.end method
