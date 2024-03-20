.class public abstract Lcom/miui/clock/module/RotateFontStyle;
.super Lcom/miui/clock/module/BaseFontStyle;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public rotateMinus:[[[I

.field public rotatePlus:[[[I


# virtual methods
.method public final getFontRotateValue(FI)[I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v1, p1, v0

    .line 3
    const/4 v2, 0x0

    .line 5
    if-gez v1, :cond_2

    .line 6
    iget-object p0, p0, Lcom/miui/clock/module/RotateFontStyle;->rotateMinus:[[[I

    .line 8
    if-eqz p0, :cond_1

    .line 10
    array-length v1, p0

    .line 12
    if-ge v1, p2, :cond_0

    .line 13
    goto :goto_0

    .line 15
    :cond_0
    aget-object p0, p0, p2

    .line 16
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    return-object v2

    .line 19
    :cond_2
    iget-object p0, p0, Lcom/miui/clock/module/RotateFontStyle;->rotatePlus:[[[I

    .line 20
    if-eqz p0, :cond_7

    .line 22
    array-length v1, p0

    .line 24
    if-ge v1, p2, :cond_3

    .line 25
    goto :goto_2

    .line 27
    :cond_3
    aget-object p0, p0, p2

    .line 28
    :goto_1
    if-nez p0, :cond_4

    .line 30
    return-object v2

    .line 32
    :cond_4
    float-to-int p2, p1

    .line 33
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 34
    move-result p2

    .line 37
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 38
    move-result p1

    .line 41
    int-to-float v1, p2

    .line 42
    sub-float/2addr p1, v1

    .line 43
    cmpl-float v0, p1, v0

    .line 44
    if-nez v0, :cond_6

    .line 46
    array-length p1, p0

    .line 48
    if-le p1, p2, :cond_5

    .line 49
    aget-object p0, p0, p2

    .line 51
    return-object p0

    .line 53
    :cond_5
    return-object v2

    .line 54
    :cond_6
    array-length v0, p0

    .line 55
    add-int/lit8 v1, p2, 0x1

    .line 56
    if-le v0, v1, :cond_7

    .line 58
    const/4 v0, 0x0

    .line 60
    aget-object v3, p0, v0

    .line 61
    array-length v3, v3

    .line 63
    const/4 v4, 0x2

    .line 64
    if-lt v3, v4, :cond_7

    .line 65
    aget-object v1, p0, v1

    .line 67
    aget v2, v1, v0

    .line 69
    aget-object p0, p0, p2

    .line 71
    aget p2, p0, v0

    .line 73
    sub-int/2addr v2, p2

    .line 75
    int-to-float v0, v2

    .line 76
    mul-float/2addr v0, p1

    .line 77
    int-to-float p2, p2

    .line 78
    add-float/2addr v0, p2

    .line 79
    float-to-int p2, v0

    .line 80
    const/4 v0, 0x1

    .line 81
    aget v1, v1, v0

    .line 82
    aget p0, p0, v0

    .line 84
    sub-int/2addr v1, p0

    .line 86
    int-to-float v0, v1

    .line 87
    mul-float/2addr p1, v0

    .line 88
    int-to-float p0, p0

    .line 89
    add-float/2addr p1, p0

    .line 90
    float-to-int p0, p1

    .line 91
    filled-new-array {p2, p0}, [I

    .line 92
    move-result-object p0

    .line 95
    return-object p0

    .line 96
    :cond_7
    :goto_2
    return-object v2
    .line 97
.end method
