.class public final Lcom/android/systemui/classifier/DiagonalClassifier;
.super Lcom/android/systemui/classifier/FalsingClassifier;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mHorizontalAngleRange:F

.field public final mVerticalAngleRange:F


# direct methods
.method public constructor <init>(Lcom/android/systemui/classifier/FalsingDataProvider;Lcom/android/systemui/util/DeviceConfigProxy;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/classifier/FalsingClassifier;-><init>(Lcom/android/systemui/classifier/FalsingDataProvider;)V

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    const-string/jumbo p1, "systemui"

    .line 8
    const-string p2, "brightline_falsing_diagonal_horizontal_angle_range"

    .line 11
    const v0, 0x3db2b8c2

    .line 13
    invoke-static {p1, p2, v0}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    .line 16
    move-result v1

    .line 19
    iput v1, p0, Lcom/android/systemui/classifier/DiagonalClassifier;->mHorizontalAngleRange:F

    .line 20
    invoke-static {p1, p2, v0}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    .line 22
    move-result p1

    .line 25
    iput p1, p0, Lcom/android/systemui/classifier/DiagonalClassifier;->mVerticalAngleRange:F

    .line 26
    return-void
    .line 28
.end method

.method public static angleBetween(FFF)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v1, p1, v0

    .line 3
    const v2, 0x40c90fdb

    .line 5
    if-gez v1, :cond_0

    .line 8
    rem-float/2addr p1, v2

    .line 10
    add-float/2addr p1, v2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    cmpl-float v1, p1, v2

    .line 13
    if-lez v1, :cond_1

    .line 15
    rem-float/2addr p1, v2

    .line 17
    :cond_1
    :goto_0
    cmpg-float v0, p2, v0

    .line 18
    if-gez v0, :cond_2

    .line 20
    rem-float/2addr p2, v2

    .line 22
    add-float/2addr p2, v2

    .line 23
    goto :goto_1

    .line 24
    :cond_2
    cmpl-float v0, p2, v2

    .line 25
    if-lez v0, :cond_3

    .line 27
    rem-float/2addr p2, v2

    .line 29
    :cond_3
    :goto_1
    cmpl-float v0, p1, p2

    .line 30
    const/4 v1, 0x1

    .line 32
    const/4 v2, 0x0

    .line 33
    cmpl-float p1, p0, p1

    .line 34
    if-lez v0, :cond_6

    .line 36
    if-gez p1, :cond_5

    .line 38
    cmpg-float p0, p0, p2

    .line 40
    if-gtz p0, :cond_4

    .line 42
    goto :goto_2

    .line 44
    :cond_4
    move v1, v2

    .line 45
    :cond_5
    :goto_2
    return v1

    .line 46
    :cond_6
    if-ltz p1, :cond_7

    .line 47
    cmpg-float p0, p0, p2

    .line 49
    if-gtz p0, :cond_7

    .line 51
    goto :goto_3

    .line 53
    :cond_7
    move v1, v2

    .line 54
    :goto_3
    return v1
    .line 55
.end method


# virtual methods
.method public final calculateFalsingResult(I)Lcom/android/systemui/classifier/FalsingClassifier$Result;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingClassifier;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    .line 2
    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingDataProvider;->recalculateData()V

    .line 4
    iget v1, v0, Lcom/android/systemui/classifier/FalsingDataProvider;->mAngle:F

    .line 7
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 9
    cmpl-float v2, v1, v2

    .line 12
    const-wide/16 v3, 0x0

    .line 14
    if-nez v2, :cond_0

    .line 16
    invoke-static {v3, v4}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->passed(D)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    .line 18
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_0
    const/4 v2, 0x5

    .line 23
    if-eq p1, v2, :cond_6

    .line 24
    const/4 v2, 0x6

    .line 26
    if-ne p1, v2, :cond_1

    .line 27
    goto :goto_3

    .line 29
    :cond_1
    const p1, 0x3f490fdb

    .line 30
    iget v2, p0, Lcom/android/systemui/classifier/DiagonalClassifier;->mHorizontalAngleRange:F

    .line 33
    sub-float v3, p1, v2

    .line 35
    add-float/2addr v2, p1

    .line 37
    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingDataProvider;->isHorizontal()Z

    .line 38
    move-result v4

    .line 41
    const/4 v5, 0x1

    .line 42
    xor-int/2addr v4, v5

    .line 43
    if-eqz v4, :cond_2

    .line 44
    iget v2, p0, Lcom/android/systemui/classifier/DiagonalClassifier;->mVerticalAngleRange:F

    .line 46
    sub-float v3, p1, v2

    .line 48
    add-float/2addr v2, p1

    .line 50
    :cond_2
    invoke-static {v1, v3, v2}, Lcom/android/systemui/classifier/DiagonalClassifier;->angleBetween(FFF)Z

    .line 51
    move-result p1

    .line 54
    if-nez p1, :cond_4

    .line 55
    const p1, 0x3fc90fdb

    .line 57
    add-float v4, v3, p1

    .line 60
    add-float v6, v2, p1

    .line 62
    invoke-static {v1, v4, v6}, Lcom/android/systemui/classifier/DiagonalClassifier;->angleBetween(FFF)Z

    .line 64
    move-result v4

    .line 67
    if-nez v4, :cond_4

    .line 68
    sub-float v4, v3, p1

    .line 70
    sub-float p1, v2, p1

    .line 72
    invoke-static {v1, v4, p1}, Lcom/android/systemui/classifier/DiagonalClassifier;->angleBetween(FFF)Z

    .line 74
    move-result p1

    .line 77
    if-nez p1, :cond_4

    .line 78
    const p1, 0x40490fdb    # (float)Math.PI

    .line 80
    add-float/2addr v3, p1

    .line 83
    add-float/2addr v2, p1

    .line 84
    invoke-static {v1, v3, v2}, Lcom/android/systemui/classifier/DiagonalClassifier;->angleBetween(FFF)Z

    .line 85
    move-result p1

    .line 88
    if-eqz p1, :cond_3

    .line 89
    goto :goto_0

    .line 91
    :cond_3
    const/4 p1, 0x0

    .line 92
    goto :goto_1

    .line 93
    :cond_4
    :goto_0
    move p1, v5

    .line 94
    :goto_1
    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    .line 95
    if-eqz p1, :cond_5

    .line 97
    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingDataProvider;->recalculateData()V

    .line 99
    iget p1, v0, Lcom/android/systemui/classifier/FalsingDataProvider;->mAngle:F

    .line 102
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 104
    move-result-object p1

    .line 107
    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingDataProvider;->isHorizontal()Z

    .line 108
    move-result v0

    .line 111
    xor-int/2addr v0, v5

    .line 112
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 113
    move-result-object v0

    .line 116
    filled-new-array {p1, v0}, [Ljava/lang/Object;

    .line 117
    move-result-object p1

    .line 120
    const/4 v0, 0x0

    .line 121
    const-string/jumbo v3, "{angle=%f, vertical=%s}"

    .line 122
    invoke-static {v0, v3, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 125
    move-result-object p1

    .line 128
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/systemui/classifier/FalsingClassifier;->falsed(Ljava/lang/String;D)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    .line 129
    move-result-object p0

    .line 132
    goto :goto_2

    .line 133
    :cond_5
    invoke-static {v1, v2}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->passed(D)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    .line 134
    move-result-object p0

    .line 137
    :goto_2
    return-object p0

    .line 138
    :cond_6
    :goto_3
    invoke-static {v3, v4}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->passed(D)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    .line 139
    move-result-object p0

    .line 142
    return-object p0
    .line 143
.end method
