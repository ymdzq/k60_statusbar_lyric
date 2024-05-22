.class public final Lcom/android/systemui/multishade/shared/model/ShadeConfig$DualShadeConfig;
.super Lcom/android/systemui/multishade/shared/model/ShadeConfig;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final leftShadeWidthPx:I

.field public final rightShadeWidthPx:I

.field public final scrimAlpha:F

.field public final splitFraction:F

.field public final swipeCollapseThreshold:F

.field public final swipeExpandThreshold:F


# direct methods
.method public constructor <init>(FFFFII)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/systemui/multishade/shared/model/ShadeId;->LEFT:Lcom/android/systemui/multishade/shared/model/ShadeId;

    .line 2
    sget-object v1, Lcom/android/systemui/multishade/shared/model/ShadeId;->RIGHT:Lcom/android/systemui/multishade/shared/model/ShadeId;

    .line 4
    filled-new-array {v0, v1}, [Lcom/android/systemui/multishade/shared/model/ShadeId;

    .line 6
    move-result-object v0

    .line 9
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 10
    move-result-object v0

    .line 13
    invoke-direct {p0, v0}, Lcom/android/systemui/multishade/shared/model/ShadeConfig;-><init>(Ljava/util/List;)V

    .line 14
    iput p5, p0, Lcom/android/systemui/multishade/shared/model/ShadeConfig$DualShadeConfig;->leftShadeWidthPx:I

    .line 17
    iput p6, p0, Lcom/android/systemui/multishade/shared/model/ShadeConfig$DualShadeConfig;->rightShadeWidthPx:I

    .line 19
    iput p1, p0, Lcom/android/systemui/multishade/shared/model/ShadeConfig$DualShadeConfig;->swipeCollapseThreshold:F

    .line 21
    iput p2, p0, Lcom/android/systemui/multishade/shared/model/ShadeConfig$DualShadeConfig;->swipeExpandThreshold:F

    .line 23
    iput p3, p0, Lcom/android/systemui/multishade/shared/model/ShadeConfig$DualShadeConfig;->splitFraction:F

    .line 25
    iput p4, p0, Lcom/android/systemui/multishade/shared/model/ShadeConfig$DualShadeConfig;->scrimAlpha:F

    .line 27
    return-void
    .line 29
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
    instance-of v1, p1, Lcom/android/systemui/multishade/shared/model/ShadeConfig$DualShadeConfig;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/systemui/multishade/shared/model/ShadeConfig$DualShadeConfig;

    .line 12
    iget v1, p1, Lcom/android/systemui/multishade/shared/model/ShadeConfig$DualShadeConfig;->leftShadeWidthPx:I

    .line 14
    iget v3, p0, Lcom/android/systemui/multishade/shared/model/ShadeConfig$DualShadeConfig;->leftShadeWidthPx:I

    .line 16
    if-eq v3, v1, :cond_2

    .line 18
    return v2

    .line 20
    :cond_2
    iget v1, p0, Lcom/android/systemui/multishade/shared/model/ShadeConfig$DualShadeConfig;->rightShadeWidthPx:I

    .line 21
    iget v3, p1, Lcom/android/systemui/multishade/shared/model/ShadeConfig$DualShadeConfig;->rightShadeWidthPx:I

    .line 23
    if-eq v1, v3, :cond_3

    .line 25
    return v2

    .line 27
    :cond_3
    iget v1, p0, Lcom/android/systemui/multishade/shared/model/ShadeConfig$DualShadeConfig;->swipeCollapseThreshold:F

    .line 28
    iget v3, p1, Lcom/android/systemui/multishade/shared/model/ShadeConfig$DualShadeConfig;->swipeCollapseThreshold:F

    .line 30
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    .line 32
    move-result v1

    .line 35
    if-eqz v1, :cond_4

    .line 36
    return v2

    .line 38
    :cond_4
    iget v1, p0, Lcom/android/systemui/multishade/shared/model/ShadeConfig$DualShadeConfig;->swipeExpandThreshold:F

    .line 39
    iget v3, p1, Lcom/android/systemui/multishade/shared/model/ShadeConfig$DualShadeConfig;->swipeExpandThreshold:F

    .line 41
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    .line 43
    move-result v1

    .line 46
    if-eqz v1, :cond_5

    .line 47
    return v2

    .line 49
    :cond_5
    iget v1, p0, Lcom/android/systemui/multishade/shared/model/ShadeConfig$DualShadeConfig;->splitFraction:F

    .line 50
    iget v3, p1, Lcom/android/systemui/multishade/shared/model/ShadeConfig$DualShadeConfig;->splitFraction:F

    .line 52
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    .line 54
    move-result v1

    .line 57
    if-eqz v1, :cond_6

    .line 58
    return v2

    .line 60
    :cond_6
    iget p0, p0, Lcom/android/systemui/multishade/shared/model/ShadeConfig$DualShadeConfig;->scrimAlpha:F

    .line 61
    iget p1, p1, Lcom/android/systemui/multishade/shared/model/ShadeConfig$DualShadeConfig;->scrimAlpha:F

    .line 63
    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    .line 65
    move-result p0

    .line 68
    if-eqz p0, :cond_7

    .line 69
    return v2

    .line 71
    :cond_7
    return v0
    .line 72
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/multishade/shared/model/ShadeConfig$DualShadeConfig;->leftShadeWidthPx:I

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    .line 4
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget v1, p0, Lcom/android/systemui/multishade/shared/model/ShadeConfig$DualShadeConfig;->rightShadeWidthPx:I

    .line 10
    const/16 v2, 0x1f

    .line 12
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 14
    move-result v0

    .line 17
    iget v1, p0, Lcom/android/systemui/multishade/shared/model/ShadeConfig$DualShadeConfig;->swipeCollapseThreshold:F

    .line 18
    invoke-static {v1, v0, v2}, Lcom/android/settingslib/udfps/UdfpsOverlayParams$$ExternalSyntheticOutline0;->m(FII)I

    .line 20
    move-result v0

    .line 23
    iget v1, p0, Lcom/android/systemui/multishade/shared/model/ShadeConfig$DualShadeConfig;->swipeExpandThreshold:F

    .line 24
    invoke-static {v1, v0, v2}, Lcom/android/settingslib/udfps/UdfpsOverlayParams$$ExternalSyntheticOutline0;->m(FII)I

    .line 26
    move-result v0

    .line 29
    iget v1, p0, Lcom/android/systemui/multishade/shared/model/ShadeConfig$DualShadeConfig;->splitFraction:F

    .line 30
    invoke-static {v1, v0, v2}, Lcom/android/settingslib/udfps/UdfpsOverlayParams$$ExternalSyntheticOutline0;->m(FII)I

    .line 32
    move-result v0

    .line 35
    iget p0, p0, Lcom/android/systemui/multishade/shared/model/ShadeConfig$DualShadeConfig;->scrimAlpha:F

    .line 36
    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    .line 38
    move-result p0

    .line 41
    add-int/2addr p0, v0

    .line 42
    return p0
    .line 43
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "DualShadeConfig(leftShadeWidthPx="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget v1, p0, Lcom/android/systemui/multishade/shared/model/ShadeConfig$DualShadeConfig;->leftShadeWidthPx:I

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ", rightShadeWidthPx="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget v1, p0, Lcom/android/systemui/multishade/shared/model/ShadeConfig$DualShadeConfig;->rightShadeWidthPx:I

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ", swipeCollapseThreshold="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget v1, p0, Lcom/android/systemui/multishade/shared/model/ShadeConfig$DualShadeConfig;->swipeCollapseThreshold:F

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, ", swipeExpandThreshold="

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget v1, p0, Lcom/android/systemui/multishade/shared/model/ShadeConfig$DualShadeConfig;->swipeExpandThreshold:F

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 41
    const-string v1, ", splitFraction="

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget v1, p0, Lcom/android/systemui/multishade/shared/model/ShadeConfig$DualShadeConfig;->splitFraction:F

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 51
    const-string v1, ", scrimAlpha="

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget p0, p0, Lcom/android/systemui/multishade/shared/model/ShadeConfig$DualShadeConfig;->scrimAlpha:F

    .line 59
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 61
    const-string p0, ")"

    .line 64
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object p0

    .line 72
    return-object p0
    .line 73
.end method
