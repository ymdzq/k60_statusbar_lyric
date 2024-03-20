.class public final Lcom/android/systemui/animation/LaunchAnimator$Timings;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final contentAfterFadeInDelay:J

.field public final contentAfterFadeInDuration:J

.field public final contentBeforeFadeOutDelay:J

.field public final contentBeforeFadeOutDuration:J

.field public final totalDuration:J


# direct methods
.method public constructor <init>(JJJJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/android/systemui/animation/LaunchAnimator$Timings;->totalDuration:J

    .line 5
    iput-wide p3, p0, Lcom/android/systemui/animation/LaunchAnimator$Timings;->contentBeforeFadeOutDelay:J

    .line 7
    iput-wide p5, p0, Lcom/android/systemui/animation/LaunchAnimator$Timings;->contentBeforeFadeOutDuration:J

    .line 9
    iput-wide p7, p0, Lcom/android/systemui/animation/LaunchAnimator$Timings;->contentAfterFadeInDelay:J

    .line 11
    iput-wide p9, p0, Lcom/android/systemui/animation/LaunchAnimator$Timings;->contentAfterFadeInDuration:J

    .line 13
    return-void
    .line 15
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/android/systemui/animation/LaunchAnimator$Timings;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/systemui/animation/LaunchAnimator$Timings;

    .line 12
    iget-wide v3, p1, Lcom/android/systemui/animation/LaunchAnimator$Timings;->totalDuration:J

    .line 14
    iget-wide v5, p0, Lcom/android/systemui/animation/LaunchAnimator$Timings;->totalDuration:J

    .line 16
    cmp-long v1, v5, v3

    .line 18
    if-eqz v1, :cond_2

    .line 20
    return v2

    .line 22
    :cond_2
    iget-wide v3, p0, Lcom/android/systemui/animation/LaunchAnimator$Timings;->contentBeforeFadeOutDelay:J

    .line 23
    iget-wide v5, p1, Lcom/android/systemui/animation/LaunchAnimator$Timings;->contentBeforeFadeOutDelay:J

    .line 25
    cmp-long v1, v3, v5

    .line 27
    if-eqz v1, :cond_3

    .line 29
    return v2

    .line 31
    :cond_3
    iget-wide v3, p0, Lcom/android/systemui/animation/LaunchAnimator$Timings;->contentBeforeFadeOutDuration:J

    .line 32
    iget-wide v5, p1, Lcom/android/systemui/animation/LaunchAnimator$Timings;->contentBeforeFadeOutDuration:J

    .line 34
    cmp-long v1, v3, v5

    .line 36
    if-eqz v1, :cond_4

    .line 38
    return v2

    .line 40
    :cond_4
    iget-wide v3, p0, Lcom/android/systemui/animation/LaunchAnimator$Timings;->contentAfterFadeInDelay:J

    .line 41
    iget-wide v5, p1, Lcom/android/systemui/animation/LaunchAnimator$Timings;->contentAfterFadeInDelay:J

    .line 43
    cmp-long v1, v3, v5

    .line 45
    if-eqz v1, :cond_5

    .line 47
    return v2

    .line 49
    :cond_5
    iget-wide v3, p0, Lcom/android/systemui/animation/LaunchAnimator$Timings;->contentAfterFadeInDuration:J

    .line 50
    iget-wide p0, p1, Lcom/android/systemui/animation/LaunchAnimator$Timings;->contentAfterFadeInDuration:J

    .line 52
    cmp-long p0, v3, p0

    .line 54
    if-eqz p0, :cond_6

    .line 56
    return v2

    .line 58
    :cond_6
    return v0
    .line 59
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/android/systemui/animation/LaunchAnimator$Timings;->totalDuration:J

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    .line 4
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-wide v1, p0, Lcom/android/systemui/animation/LaunchAnimator$Timings;->contentBeforeFadeOutDelay:J

    .line 10
    const/16 v3, 0x1f

    .line 12
    invoke-static {v1, v2, v0, v3}, Lcom/android/app/motiontool/TraceMetadata$$ExternalSyntheticOutline0;->m(JII)I

    .line 14
    move-result v0

    .line 17
    iget-wide v1, p0, Lcom/android/systemui/animation/LaunchAnimator$Timings;->contentBeforeFadeOutDuration:J

    .line 18
    invoke-static {v1, v2, v0, v3}, Lcom/android/app/motiontool/TraceMetadata$$ExternalSyntheticOutline0;->m(JII)I

    .line 20
    move-result v0

    .line 23
    iget-wide v1, p0, Lcom/android/systemui/animation/LaunchAnimator$Timings;->contentAfterFadeInDelay:J

    .line 24
    invoke-static {v1, v2, v0, v3}, Lcom/android/app/motiontool/TraceMetadata$$ExternalSyntheticOutline0;->m(JII)I

    .line 26
    move-result v0

    .line 29
    iget-wide v1, p0, Lcom/android/systemui/animation/LaunchAnimator$Timings;->contentAfterFadeInDuration:J

    .line 30
    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    .line 32
    move-result p0

    .line 35
    add-int/2addr p0, v0

    .line 36
    return p0
    .line 37
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "Timings(totalDuration="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-wide v1, p0, Lcom/android/systemui/animation/LaunchAnimator$Timings;->totalDuration:J

    .line 9
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ", contentBeforeFadeOutDelay="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-wide v1, p0, Lcom/android/systemui/animation/LaunchAnimator$Timings;->contentBeforeFadeOutDelay:J

    .line 19
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ", contentBeforeFadeOutDuration="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-wide v1, p0, Lcom/android/systemui/animation/LaunchAnimator$Timings;->contentBeforeFadeOutDuration:J

    .line 29
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, ", contentAfterFadeInDelay="

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-wide v1, p0, Lcom/android/systemui/animation/LaunchAnimator$Timings;->contentAfterFadeInDelay:J

    .line 39
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    const-string v1, ", contentAfterFadeInDuration="

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget-wide v1, p0, Lcom/android/systemui/animation/LaunchAnimator$Timings;->contentAfterFadeInDuration:J

    .line 49
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 51
    const-string p0, ")"

    .line 54
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object p0

    .line 62
    return-object p0
    .line 63
.end method
