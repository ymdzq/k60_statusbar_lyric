.class public final Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final centerX:F

.field public final centerY:F

.field public color:I

.field public final maxHeight:F

.field public final maxWidth:F

.field public final pixelDensity:F


# direct methods
.method public constructor <init>(FFFFFI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->centerX:F

    .line 5
    iput p2, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->centerY:F

    .line 7
    iput p3, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->maxWidth:F

    .line 9
    iput p4, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->maxHeight:F

    .line 11
    iput p5, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->pixelDensity:F

    .line 13
    iput p6, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->color:I

    .line 15
    return-void
    .line 17
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
    instance-of v1, p1, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    iget v1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->centerX:F

    .line 17
    iget v3, p1, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->centerX:F

    .line 19
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    .line 21
    move-result v1

    .line 24
    if-eqz v1, :cond_2

    .line 25
    return v2

    .line 27
    :cond_2
    iget v1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->centerY:F

    .line 28
    iget v3, p1, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->centerY:F

    .line 30
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    .line 32
    move-result v1

    .line 35
    if-eqz v1, :cond_3

    .line 36
    return v2

    .line 38
    :cond_3
    iget v1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->maxWidth:F

    .line 39
    iget v3, p1, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->maxWidth:F

    .line 41
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    .line 43
    move-result v1

    .line 46
    if-eqz v1, :cond_4

    .line 47
    return v2

    .line 49
    :cond_4
    iget v1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->maxHeight:F

    .line 50
    iget v3, p1, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->maxHeight:F

    .line 52
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    .line 54
    move-result v1

    .line 57
    if-eqz v1, :cond_5

    .line 58
    return v2

    .line 60
    :cond_5
    iget v1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->pixelDensity:F

    .line 61
    iget v3, p1, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->pixelDensity:F

    .line 63
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    .line 65
    move-result v1

    .line 68
    if-eqz v1, :cond_6

    .line 69
    return v2

    .line 71
    :cond_6
    iget p0, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->color:I

    .line 72
    iget p1, p1, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->color:I

    .line 74
    if-eq p0, p1, :cond_7

    .line 76
    return v2

    .line 78
    :cond_7
    const/4 p0, 0x0

    .line 79
    invoke-static {p0, p0}, Ljava/lang/Float;->compare(FF)I

    .line 80
    move-result p0

    .line 83
    if-eqz p0, :cond_8

    .line 84
    return v2

    .line 86
    :cond_8
    const/4 p0, 0x0

    .line 87
    invoke-static {p0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 88
    move-result p1

    .line 91
    if-nez p1, :cond_9

    .line 92
    return v2

    .line 94
    :cond_9
    invoke-static {p0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    move-result p1

    .line 98
    if-nez p1, :cond_a

    .line 99
    return v2

    .line 101
    :cond_a
    invoke-static {p0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 102
    move-result p0

    .line 105
    if-nez p0, :cond_b

    .line 106
    return v2

    .line 108
    :cond_b
    return v0
    .line 109
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;->CIRCLE:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    .line 4
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    const-wide/16 v1, 0x5dc

    .line 10
    const/16 v3, 0x1f

    .line 12
    invoke-static {v1, v2, v0, v3}, Lcom/android/app/motiontool/TraceMetadata$$ExternalSyntheticOutline0;->m(JII)I

    .line 14
    move-result v0

    .line 17
    iget v1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->centerX:F

    .line 18
    const/16 v2, 0x1f

    .line 20
    invoke-static {v1, v0, v2}, Lcom/android/settingslib/udfps/UdfpsOverlayParams$$ExternalSyntheticOutline0;->m(FII)I

    .line 22
    move-result v0

    .line 25
    iget v1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->centerY:F

    .line 26
    invoke-static {v1, v0, v2}, Lcom/android/settingslib/udfps/UdfpsOverlayParams$$ExternalSyntheticOutline0;->m(FII)I

    .line 28
    move-result v0

    .line 31
    iget v1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->maxWidth:F

    .line 32
    invoke-static {v1, v0, v2}, Lcom/android/settingslib/udfps/UdfpsOverlayParams$$ExternalSyntheticOutline0;->m(FII)I

    .line 34
    move-result v0

    .line 37
    iget v1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->maxHeight:F

    .line 38
    invoke-static {v1, v0, v2}, Lcom/android/settingslib/udfps/UdfpsOverlayParams$$ExternalSyntheticOutline0;->m(FII)I

    .line 40
    move-result v0

    .line 43
    iget v1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->pixelDensity:F

    .line 44
    invoke-static {v1, v0, v2}, Lcom/android/settingslib/udfps/UdfpsOverlayParams$$ExternalSyntheticOutline0;->m(FII)I

    .line 46
    move-result v0

    .line 49
    iget p0, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->color:I

    .line 50
    const/16 v1, 0x1f

    .line 52
    invoke-static {p0, v0, v1}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 54
    move-result p0

    .line 57
    const/16 v0, 0x64

    .line 58
    invoke-static {v0, p0, v1}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 60
    move-result p0

    .line 63
    const/4 v0, 0x0

    .line 64
    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    .line 65
    move-result v0

    .line 68
    add-int/2addr v0, p0

    .line 69
    mul-int/lit8 v0, v0, 0x1f

    .line 70
    add-int/lit8 v0, v0, 0x0

    .line 72
    mul-int/lit8 v0, v0, 0x1f

    .line 74
    add-int/lit8 v0, v0, 0x0

    .line 76
    mul-int/lit8 v0, v0, 0x1f

    .line 78
    add-int/lit8 v0, v0, 0x0

    .line 80
    mul-int/lit8 v0, v0, 0x1f

    .line 82
    add-int/lit8 v0, v0, 0x0

    .line 84
    return v0
    .line 86
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->color:I

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    const-string v2, "RippleAnimationConfig(rippleShape="

    .line 6
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    sget-object v2, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;->CIRCLE:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;

    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    const-string v2, ", duration=1500, centerX="

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget v2, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->centerX:F

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 23
    const-string v2, ", centerY="

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget v2, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->centerY:F

    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 33
    const-string v2, ", maxWidth="

    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    iget v2, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->maxWidth:F

    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 43
    const-string v2, ", maxHeight="

    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget v2, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->maxHeight:F

    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 53
    const-string v2, ", pixelDensity="

    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget p0, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->pixelDensity:F

    .line 61
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 63
    const-string p0, ", color="

    .line 66
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    const-string p0, ", opacity=100, sparkleStrength=0.0, baseRingFadeParams=null, sparkleRingFadeParams=null, centerFillFadeParams=null, shouldDistort=false)"

    .line 74
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object p0

    .line 82
    return-object p0
    .line 83
.end method
