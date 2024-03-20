.class public final Lcom/android/systemui/media/controls/ui/RippleData;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public alpha:F

.field public highlight:F

.field public maxSize:F

.field public minSize:F

.field public progress:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/systemui/media/controls/ui/RippleData;->x:F

    .line 6
    iput v0, p0, Lcom/android/systemui/media/controls/ui/RippleData;->y:F

    .line 8
    iput v0, p0, Lcom/android/systemui/media/controls/ui/RippleData;->alpha:F

    .line 10
    iput v0, p0, Lcom/android/systemui/media/controls/ui/RippleData;->progress:F

    .line 12
    iput v0, p0, Lcom/android/systemui/media/controls/ui/RippleData;->minSize:F

    .line 14
    iput v0, p0, Lcom/android/systemui/media/controls/ui/RippleData;->maxSize:F

    .line 16
    iput v0, p0, Lcom/android/systemui/media/controls/ui/RippleData;->highlight:F

    .line 18
    return-void
    .line 20
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
    instance-of v1, p1, Lcom/android/systemui/media/controls/ui/RippleData;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/systemui/media/controls/ui/RippleData;

    .line 12
    iget v1, p0, Lcom/android/systemui/media/controls/ui/RippleData;->x:F

    .line 14
    iget v3, p1, Lcom/android/systemui/media/controls/ui/RippleData;->x:F

    .line 16
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    .line 18
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    return v2

    .line 24
    :cond_2
    iget v1, p0, Lcom/android/systemui/media/controls/ui/RippleData;->y:F

    .line 25
    iget v3, p1, Lcom/android/systemui/media/controls/ui/RippleData;->y:F

    .line 27
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    .line 29
    move-result v1

    .line 32
    if-eqz v1, :cond_3

    .line 33
    return v2

    .line 35
    :cond_3
    iget v1, p0, Lcom/android/systemui/media/controls/ui/RippleData;->alpha:F

    .line 36
    iget v3, p1, Lcom/android/systemui/media/controls/ui/RippleData;->alpha:F

    .line 38
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    .line 40
    move-result v1

    .line 43
    if-eqz v1, :cond_4

    .line 44
    return v2

    .line 46
    :cond_4
    iget v1, p0, Lcom/android/systemui/media/controls/ui/RippleData;->progress:F

    .line 47
    iget v3, p1, Lcom/android/systemui/media/controls/ui/RippleData;->progress:F

    .line 49
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    .line 51
    move-result v1

    .line 54
    if-eqz v1, :cond_5

    .line 55
    return v2

    .line 57
    :cond_5
    iget v1, p0, Lcom/android/systemui/media/controls/ui/RippleData;->minSize:F

    .line 58
    iget v3, p1, Lcom/android/systemui/media/controls/ui/RippleData;->minSize:F

    .line 60
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    .line 62
    move-result v1

    .line 65
    if-eqz v1, :cond_6

    .line 66
    return v2

    .line 68
    :cond_6
    iget v1, p0, Lcom/android/systemui/media/controls/ui/RippleData;->maxSize:F

    .line 69
    iget v3, p1, Lcom/android/systemui/media/controls/ui/RippleData;->maxSize:F

    .line 71
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    .line 73
    move-result v1

    .line 76
    if-eqz v1, :cond_7

    .line 77
    return v2

    .line 79
    :cond_7
    iget p0, p0, Lcom/android/systemui/media/controls/ui/RippleData;->highlight:F

    .line 80
    iget p1, p1, Lcom/android/systemui/media/controls/ui/RippleData;->highlight:F

    .line 82
    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    .line 84
    move-result p0

    .line 87
    if-eqz p0, :cond_8

    .line 88
    return v2

    .line 90
    :cond_8
    return v0
    .line 91
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/media/controls/ui/RippleData;->x:F

    .line 2
    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    .line 4
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget v1, p0, Lcom/android/systemui/media/controls/ui/RippleData;->y:F

    .line 10
    const/16 v2, 0x1f

    .line 12
    invoke-static {v1, v0, v2}, Lcom/android/settingslib/udfps/UdfpsOverlayParams$$ExternalSyntheticOutline0;->m(FII)I

    .line 14
    move-result v0

    .line 17
    iget v1, p0, Lcom/android/systemui/media/controls/ui/RippleData;->alpha:F

    .line 18
    invoke-static {v1, v0, v2}, Lcom/android/settingslib/udfps/UdfpsOverlayParams$$ExternalSyntheticOutline0;->m(FII)I

    .line 20
    move-result v0

    .line 23
    iget v1, p0, Lcom/android/systemui/media/controls/ui/RippleData;->progress:F

    .line 24
    invoke-static {v1, v0, v2}, Lcom/android/settingslib/udfps/UdfpsOverlayParams$$ExternalSyntheticOutline0;->m(FII)I

    .line 26
    move-result v0

    .line 29
    iget v1, p0, Lcom/android/systemui/media/controls/ui/RippleData;->minSize:F

    .line 30
    invoke-static {v1, v0, v2}, Lcom/android/settingslib/udfps/UdfpsOverlayParams$$ExternalSyntheticOutline0;->m(FII)I

    .line 32
    move-result v0

    .line 35
    iget v1, p0, Lcom/android/systemui/media/controls/ui/RippleData;->maxSize:F

    .line 36
    invoke-static {v1, v0, v2}, Lcom/android/settingslib/udfps/UdfpsOverlayParams$$ExternalSyntheticOutline0;->m(FII)I

    .line 38
    move-result v0

    .line 41
    iget p0, p0, Lcom/android/systemui/media/controls/ui/RippleData;->highlight:F

    .line 42
    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    .line 44
    move-result p0

    .line 47
    add-int/2addr p0, v0

    .line 48
    return p0
    .line 49
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/systemui/media/controls/ui/RippleData;->x:F

    .line 2
    iget v1, p0, Lcom/android/systemui/media/controls/ui/RippleData;->y:F

    .line 4
    iget v2, p0, Lcom/android/systemui/media/controls/ui/RippleData;->alpha:F

    .line 6
    iget v3, p0, Lcom/android/systemui/media/controls/ui/RippleData;->progress:F

    .line 8
    iget v4, p0, Lcom/android/systemui/media/controls/ui/RippleData;->minSize:F

    .line 10
    iget v5, p0, Lcom/android/systemui/media/controls/ui/RippleData;->maxSize:F

    .line 12
    iget p0, p0, Lcom/android/systemui/media/controls/ui/RippleData;->highlight:F

    .line 14
    new-instance v6, Ljava/lang/StringBuilder;

    .line 16
    const-string v7, "RippleData(x="

    .line 18
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 23
    const-string v0, ", y="

    .line 26
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 31
    const-string v0, ", alpha="

    .line 34
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    const-string v0, ", progress="

    .line 39
    const-string v1, ", minSize="

    .line 41
    invoke-static {v6, v2, v0, v3, v1}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    .line 43
    const-string v0, ", maxSize="

    .line 46
    const-string v1, ", highlight="

    .line 48
    invoke-static {v6, v4, v0, v5, v1}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    .line 50
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 53
    const-string p0, ")"

    .line 56
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object p0

    .line 64
    return-object p0
    .line 65
.end method
