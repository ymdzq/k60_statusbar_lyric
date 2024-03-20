.class public final Lkotlin/ranges/ClosedFloatRange;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final _endInclusive:F

.field public final _start:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lkotlin/ranges/ClosedFloatRange;->_start:F

    .line 5
    iput p2, p0, Lkotlin/ranges/ClosedFloatRange;->_endInclusive:F

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    instance-of v0, p1, Lkotlin/ranges/ClosedFloatRange;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_6

    .line 5
    iget v0, p0, Lkotlin/ranges/ClosedFloatRange;->_start:F

    .line 7
    iget p0, p0, Lkotlin/ranges/ClosedFloatRange;->_endInclusive:F

    .line 9
    cmpg-float v2, v0, p0

    .line 11
    const/4 v3, 0x1

    .line 13
    if-lez v2, :cond_0

    .line 14
    move v2, v3

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v2, v1

    .line 18
    :goto_0
    if-eqz v2, :cond_2

    .line 19
    move-object v2, p1

    .line 21
    check-cast v2, Lkotlin/ranges/ClosedFloatRange;

    .line 22
    iget v4, v2, Lkotlin/ranges/ClosedFloatRange;->_start:F

    .line 24
    iget v2, v2, Lkotlin/ranges/ClosedFloatRange;->_endInclusive:F

    .line 26
    cmpg-float v2, v4, v2

    .line 28
    if-lez v2, :cond_1

    .line 30
    move v2, v3

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move v2, v1

    .line 34
    :goto_1
    if-nez v2, :cond_5

    .line 35
    :cond_2
    check-cast p1, Lkotlin/ranges/ClosedFloatRange;

    .line 37
    iget v2, p1, Lkotlin/ranges/ClosedFloatRange;->_start:F

    .line 39
    cmpg-float v0, v0, v2

    .line 41
    if-nez v0, :cond_3

    .line 43
    move v0, v3

    .line 45
    goto :goto_2

    .line 46
    :cond_3
    move v0, v1

    .line 47
    :goto_2
    if-eqz v0, :cond_6

    .line 48
    iget p1, p1, Lkotlin/ranges/ClosedFloatRange;->_endInclusive:F

    .line 50
    cmpg-float p0, p0, p1

    .line 52
    if-nez p0, :cond_4

    .line 54
    move p0, v3

    .line 56
    goto :goto_3

    .line 57
    :cond_4
    move p0, v1

    .line 58
    :goto_3
    if-eqz p0, :cond_6

    .line 59
    :cond_5
    move v1, v3

    .line 61
    :cond_6
    return v1
    .line 62
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lkotlin/ranges/ClosedFloatRange;->_start:F

    .line 2
    iget p0, p0, Lkotlin/ranges/ClosedFloatRange;->_endInclusive:F

    .line 4
    cmpg-float v1, v0, p0

    .line 6
    if-lez v1, :cond_0

    .line 8
    const/4 v1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    if-eqz v1, :cond_1

    .line 13
    const/4 p0, -0x1

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    .line 17
    move-result v0

    .line 20
    mul-int/lit8 v0, v0, 0x1f

    .line 21
    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    .line 23
    move-result p0

    .line 26
    add-int/2addr p0, v0

    .line 27
    :goto_1
    return p0
    .line 28
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    iget v1, p0, Lkotlin/ranges/ClosedFloatRange;->_start:F

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 9
    const-string v1, ".."

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    iget p0, p0, Lkotlin/ranges/ClosedFloatRange;->_endInclusive:F

    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object p0

    .line 25
    return-object p0
    .line 26
.end method
