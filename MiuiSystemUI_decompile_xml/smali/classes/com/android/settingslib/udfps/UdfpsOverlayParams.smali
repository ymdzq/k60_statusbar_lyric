.class public final Lcom/android/settingslib/udfps/UdfpsOverlayParams;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final logicalDisplayHeight:I

.field public final logicalDisplayWidth:I

.field public final nativeOverlayBounds:Landroid/graphics/Rect;

.field public final nativeSensorBounds:Landroid/graphics/Rect;

.field public final naturalDisplayHeight:I

.field public final naturalDisplayWidth:I

.field public final overlayBounds:Landroid/graphics/Rect;

.field public final rotation:I

.field public final scaleFactor:F

.field public final sensorBounds:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>()V
    .locals 7

    .line 12
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 13
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object v0, p0

    .line 14
    invoke-direct/range {v0 .. v6}, Lcom/android/settingslib/udfps/UdfpsOverlayParams;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;IIFI)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;IIFI)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/settingslib/udfps/UdfpsOverlayParams;->sensorBounds:Landroid/graphics/Rect;

    .line 3
    iput-object p2, p0, Lcom/android/settingslib/udfps/UdfpsOverlayParams;->overlayBounds:Landroid/graphics/Rect;

    .line 4
    iput p3, p0, Lcom/android/settingslib/udfps/UdfpsOverlayParams;->naturalDisplayWidth:I

    .line 5
    iput p4, p0, Lcom/android/settingslib/udfps/UdfpsOverlayParams;->naturalDisplayHeight:I

    .line 6
    iput p5, p0, Lcom/android/settingslib/udfps/UdfpsOverlayParams;->scaleFactor:F

    .line 7
    iput p6, p0, Lcom/android/settingslib/udfps/UdfpsOverlayParams;->rotation:I

    .line 8
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/high16 p1, 0x3f800000    # 1.0f

    div-float v1, p1, p5

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->scale(F)V

    iput-object v0, p0, Lcom/android/settingslib/udfps/UdfpsOverlayParams;->nativeSensorBounds:Landroid/graphics/Rect;

    .line 9
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    div-float/2addr p1, p5

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->scale(F)V

    iput-object v0, p0, Lcom/android/settingslib/udfps/UdfpsOverlayParams;->nativeOverlayBounds:Landroid/graphics/Rect;

    const/4 p1, 0x3

    const/4 p2, 0x1

    if-eq p6, p2, :cond_1

    if-ne p6, p1, :cond_0

    goto :goto_0

    :cond_0
    move p5, p3

    goto :goto_1

    :cond_1
    :goto_0
    move p5, p4

    .line 10
    :goto_1
    iput p5, p0, Lcom/android/settingslib/udfps/UdfpsOverlayParams;->logicalDisplayWidth:I

    if-eq p6, p2, :cond_3

    if-ne p6, p1, :cond_2

    goto :goto_2

    :cond_2
    move p3, p4

    .line 11
    :cond_3
    :goto_2
    iput p3, p0, Lcom/android/settingslib/udfps/UdfpsOverlayParams;->logicalDisplayHeight:I

    return-void
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
    instance-of v1, p1, Lcom/android/settingslib/udfps/UdfpsOverlayParams;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/settingslib/udfps/UdfpsOverlayParams;

    .line 12
    iget-object v1, p1, Lcom/android/settingslib/udfps/UdfpsOverlayParams;->sensorBounds:Landroid/graphics/Rect;

    .line 14
    iget-object v3, p0, Lcom/android/settingslib/udfps/UdfpsOverlayParams;->sensorBounds:Landroid/graphics/Rect;

    .line 16
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lcom/android/settingslib/udfps/UdfpsOverlayParams;->overlayBounds:Landroid/graphics/Rect;

    .line 25
    iget-object v3, p1, Lcom/android/settingslib/udfps/UdfpsOverlayParams;->overlayBounds:Landroid/graphics/Rect;

    .line 27
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    return v2

    .line 35
    :cond_3
    iget v1, p0, Lcom/android/settingslib/udfps/UdfpsOverlayParams;->naturalDisplayWidth:I

    .line 36
    iget v3, p1, Lcom/android/settingslib/udfps/UdfpsOverlayParams;->naturalDisplayWidth:I

    .line 38
    if-eq v1, v3, :cond_4

    .line 40
    return v2

    .line 42
    :cond_4
    iget v1, p0, Lcom/android/settingslib/udfps/UdfpsOverlayParams;->naturalDisplayHeight:I

    .line 43
    iget v3, p1, Lcom/android/settingslib/udfps/UdfpsOverlayParams;->naturalDisplayHeight:I

    .line 45
    if-eq v1, v3, :cond_5

    .line 47
    return v2

    .line 49
    :cond_5
    iget v1, p0, Lcom/android/settingslib/udfps/UdfpsOverlayParams;->scaleFactor:F

    .line 50
    iget v3, p1, Lcom/android/settingslib/udfps/UdfpsOverlayParams;->scaleFactor:F

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
    iget p0, p0, Lcom/android/settingslib/udfps/UdfpsOverlayParams;->rotation:I

    .line 61
    iget p1, p1, Lcom/android/settingslib/udfps/UdfpsOverlayParams;->rotation:I

    .line 63
    if-eq p0, p1, :cond_7

    .line 65
    return v2

    .line 67
    :cond_7
    return v0
    .line 68
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/settingslib/udfps/UdfpsOverlayParams;->sensorBounds:Landroid/graphics/Rect;

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Rect;->hashCode()I

    .line 4
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-object v1, p0, Lcom/android/settingslib/udfps/UdfpsOverlayParams;->overlayBounds:Landroid/graphics/Rect;

    .line 10
    invoke-virtual {v1}, Landroid/graphics/Rect;->hashCode()I

    .line 12
    move-result v1

    .line 15
    add-int/2addr v1, v0

    .line 16
    mul-int/lit8 v1, v1, 0x1f

    .line 17
    iget v0, p0, Lcom/android/settingslib/udfps/UdfpsOverlayParams;->naturalDisplayWidth:I

    .line 19
    const/16 v2, 0x1f

    .line 21
    invoke-static {v0, v1, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 23
    move-result v0

    .line 26
    iget v1, p0, Lcom/android/settingslib/udfps/UdfpsOverlayParams;->naturalDisplayHeight:I

    .line 27
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 29
    move-result v0

    .line 32
    iget v1, p0, Lcom/android/settingslib/udfps/UdfpsOverlayParams;->scaleFactor:F

    .line 33
    invoke-static {v1, v0, v2}, Lcom/android/settingslib/udfps/UdfpsOverlayParams$$ExternalSyntheticOutline0;->m(FII)I

    .line 35
    move-result v0

    .line 38
    iget p0, p0, Lcom/android/settingslib/udfps/UdfpsOverlayParams;->rotation:I

    .line 39
    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    .line 41
    move-result p0

    .line 44
    add-int/2addr p0, v0

    .line 45
    return p0
    .line 46
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "UdfpsOverlayParams(sensorBounds="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/android/settingslib/udfps/UdfpsOverlayParams;->sensorBounds:Landroid/graphics/Rect;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ", overlayBounds="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v1, p0, Lcom/android/settingslib/udfps/UdfpsOverlayParams;->overlayBounds:Landroid/graphics/Rect;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ", naturalDisplayWidth="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget v1, p0, Lcom/android/settingslib/udfps/UdfpsOverlayParams;->naturalDisplayWidth:I

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, ", naturalDisplayHeight="

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget v1, p0, Lcom/android/settingslib/udfps/UdfpsOverlayParams;->naturalDisplayHeight:I

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    const-string v1, ", scaleFactor="

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget v1, p0, Lcom/android/settingslib/udfps/UdfpsOverlayParams;->scaleFactor:F

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 51
    const-string v1, ", rotation="

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget p0, p0, Lcom/android/settingslib/udfps/UdfpsOverlayParams;->rotation:I

    .line 59
    const-string v1, ")"

    .line 61
    invoke-static {v0, p0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 63
    move-result-object p0

    .line 66
    return-object p0
    .line 67
.end method
