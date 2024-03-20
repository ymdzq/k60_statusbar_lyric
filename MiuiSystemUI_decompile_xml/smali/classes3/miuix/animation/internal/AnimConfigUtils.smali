.class public Lmiuix/animation/internal/AnimConfigUtils;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static chooseSpeed(FF)F
    .locals 2

    .line 1
    float-to-double v0, p0

    .line 2
    invoke-static {v0, v1}, Lmiuix/animation/internal/AnimValueUtils;->isInvalid(D)Z

    .line 3
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    return p1

    .line 9
    :cond_0
    float-to-double v0, p1

    .line 10
    invoke-static {v0, v1}, Lmiuix/animation/internal/AnimValueUtils;->isInvalid(D)Z

    .line 11
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    return p0

    .line 17
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    .line 18
    move-result p0

    .line 21
    return p0
    .line 22
.end method

.method public static getDelay(Lmiuix/animation/base/AnimConfig;Lmiuix/animation/base/AnimSpecialConfig;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lmiuix/animation/base/AnimConfig;->delay:J

    .line 2
    if-eqz p1, :cond_0

    .line 4
    iget-wide p0, p1, Lmiuix/animation/base/AnimConfig;->delay:J

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    const-wide/16 p0, 0x0

    .line 9
    :goto_0
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    .line 11
    move-result-wide p0

    .line 14
    return-wide p0
    .line 15
.end method

.method public static getEase(Lmiuix/animation/base/AnimConfig;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/utils/EaseManager$EaseStyle;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p1, Lmiuix/animation/base/AnimConfig;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 4
    if-eqz p1, :cond_0

    .line 6
    sget-object v0, Lmiuix/animation/base/AnimConfig;->sDefEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 8
    if-eq p1, v0, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, p0, Lmiuix/animation/base/AnimConfig;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 13
    :goto_0
    if-nez p1, :cond_1

    .line 15
    sget-object p1, Lmiuix/animation/base/AnimConfig;->sDefEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 17
    :cond_1
    return-object p1
    .line 19
.end method

.method public static getFromSpeed(Lmiuix/animation/base/AnimConfig;Lmiuix/animation/base/AnimSpecialConfig;)F
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    iget v0, p1, Lmiuix/animation/base/AnimConfig;->fromSpeed:F

    .line 4
    float-to-double v0, v0

    .line 6
    invoke-static {v0, v1}, Lmiuix/animation/internal/AnimValueUtils;->isInvalid(D)Z

    .line 7
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    iget p0, p1, Lmiuix/animation/base/AnimConfig;->fromSpeed:F

    .line 13
    return p0

    .line 15
    :cond_0
    iget p0, p0, Lmiuix/animation/base/AnimConfig;->fromSpeed:F

    .line 16
    return p0
    .line 18
.end method

.method public static getTintMode(Lmiuix/animation/base/AnimConfig;Lmiuix/animation/base/AnimSpecialConfig;)I
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/animation/base/AnimConfig;->tintMode:I

    .line 2
    if-eqz p1, :cond_0

    .line 4
    iget p1, p1, Lmiuix/animation/base/AnimConfig;->tintMode:I

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, -0x1

    .line 9
    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    .line 10
    move-result p0

    .line 13
    return p0
    .line 14
.end method
