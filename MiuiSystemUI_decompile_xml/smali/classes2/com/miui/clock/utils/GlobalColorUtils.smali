.class public abstract Lcom/miui/clock/utils/GlobalColorUtils;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static transformAodColor(I)I
    .locals 11

    .line 1
    new-instance v0, Lcom/miui/clock/hct/Hct;

    .line 2
    invoke-direct {v0, p0}, Lcom/miui/clock/hct/Hct;-><init>(I)V

    .line 4
    iget-wide v1, v0, Lcom/miui/clock/hct/Hct;->tone:D

    .line 7
    const-wide v3, 0x3fa8bef8c0000000L    # 0.04833199828863144

    .line 9
    mul-double/2addr v1, v3

    .line 14
    const-wide v3, 0x4013553260000000L    # 4.833199977874756

    .line 15
    sub-double/2addr v1, v3

    .line 20
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    .line 21
    move-result-wide v1

    .line 24
    const-wide/high16 v3, 0x4032000000000000L    # 18.0

    .line 25
    mul-double/2addr v1, v3

    .line 27
    const-wide/high16 v3, 0x4051000000000000L    # 68.0

    .line 28
    add-double v9, v1, v3

    .line 30
    iget-wide v5, v0, Lcom/miui/clock/hct/Hct;->hue:D

    .line 32
    iget-wide v7, v0, Lcom/miui/clock/hct/Hct;->chroma:D

    .line 34
    invoke-static/range {v5 .. v10}, Lcom/miui/clock/hct/HctSolver;->solveToInt(DDD)I

    .line 36
    move-result p0

    .line 39
    return p0
    .line 40
.end method

.method public static transformSmartFrameAodColor(I)I
    .locals 11

    .line 1
    invoke-static {p0}, Lcom/miui/clock/utils/GlobalColorUtils;->transformAodColor(I)I

    .line 2
    move-result p0

    .line 5
    new-instance v0, Lcom/miui/clock/hct/Hct;

    .line 6
    invoke-direct {v0, p0}, Lcom/miui/clock/hct/Hct;-><init>(I)V

    .line 8
    iget-wide v1, v0, Lcom/miui/clock/hct/Hct;->chroma:D

    .line 11
    const-wide/high16 v3, 0x4008000000000000L    # 3.0

    .line 13
    mul-double/2addr v1, v3

    .line 15
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 16
    add-double/2addr v1, v3

    .line 18
    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    .line 19
    move-result-wide v1

    .line 22
    const-wide/high16 v3, 0x4020000000000000L    # 8.0

    .line 23
    mul-double v7, v1, v3

    .line 25
    iget-wide v5, v0, Lcom/miui/clock/hct/Hct;->hue:D

    .line 27
    iget-wide v9, v0, Lcom/miui/clock/hct/Hct;->tone:D

    .line 29
    invoke-static/range {v5 .. v10}, Lcom/miui/clock/hct/HctSolver;->solveToInt(DDD)I

    .line 31
    move-result p0

    .line 34
    return p0
    .line 35
.end method
