.class public final Lmiuix/view/DisplayConfig;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final defaultBitmapDensity:I

.field public final density:F

.field public final densityDpi:I

.field public final fontScale:F

.field public final scaledDensity:F


# direct methods
.method public constructor <init>(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 5
    iput v0, p0, Lmiuix/view/DisplayConfig;->defaultBitmapDensity:I

    .line 7
    iput v0, p0, Lmiuix/view/DisplayConfig;->densityDpi:I

    .line 9
    int-to-float v0, v0

    .line 11
    const v1, 0x3bcccccd    # 0.00625f

    .line 12
    mul-float/2addr v0, v1

    .line 15
    iput v0, p0, Lmiuix/view/DisplayConfig;->density:F

    .line 16
    iget p1, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 18
    iput p1, p0, Lmiuix/view/DisplayConfig;->fontScale:F

    .line 20
    const/4 v1, 0x0

    .line 22
    cmpl-float v1, p1, v1

    .line 23
    if-eqz v1, :cond_0

    .line 25
    goto :goto_0

    .line 27
    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 28
    :goto_0
    mul-float/2addr v0, p1

    .line 30
    iput v0, p0, Lmiuix/view/DisplayConfig;->scaledDensity:F

    .line 31
    return-void
    .line 33
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lmiuix/view/DisplayConfig;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    check-cast p1, Lmiuix/view/DisplayConfig;

    .line 7
    iget v0, p1, Lmiuix/view/DisplayConfig;->density:F

    .line 9
    iget v2, p0, Lmiuix/view/DisplayConfig;->density:F

    .line 11
    invoke-static {v2, v0}, Ljava/lang/Float;->compare(FF)I

    .line 13
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    iget v0, p0, Lmiuix/view/DisplayConfig;->scaledDensity:F

    .line 19
    iget v2, p1, Lmiuix/view/DisplayConfig;->scaledDensity:F

    .line 21
    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    .line 23
    move-result v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    iget v0, p0, Lmiuix/view/DisplayConfig;->fontScale:F

    .line 29
    iget v2, p1, Lmiuix/view/DisplayConfig;->fontScale:F

    .line 31
    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    .line 33
    move-result v0

    .line 36
    if-nez v0, :cond_0

    .line 37
    iget v0, p0, Lmiuix/view/DisplayConfig;->densityDpi:I

    .line 39
    iget v2, p1, Lmiuix/view/DisplayConfig;->densityDpi:I

    .line 41
    if-ne v0, v2, :cond_0

    .line 43
    iget p0, p0, Lmiuix/view/DisplayConfig;->defaultBitmapDensity:I

    .line 45
    iget p1, p1, Lmiuix/view/DisplayConfig;->defaultBitmapDensity:I

    .line 47
    if-ne p0, p1, :cond_0

    .line 49
    const/4 v1, 0x1

    .line 51
    :cond_0
    return v1
    .line 52
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "{ densityDpi:"

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget v1, p0, Lmiuix/view/DisplayConfig;->densityDpi:I

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ", density:"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget v1, p0, Lmiuix/view/DisplayConfig;->density:F

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ", scaledDensity:"

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget v1, p0, Lmiuix/view/DisplayConfig;->scaledDensity:F

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, ", fontScale: "

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget v1, p0, Lmiuix/view/DisplayConfig;->fontScale:F

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 41
    const-string v1, ", defaultBitmapDensity:"

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget p0, p0, Lmiuix/view/DisplayConfig;->defaultBitmapDensity:I

    .line 49
    const-string v1, "}"

    .line 51
    invoke-static {v0, p0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 53
    move-result-object p0

    .line 56
    return-object p0
    .line 57
.end method
