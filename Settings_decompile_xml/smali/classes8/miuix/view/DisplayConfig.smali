.class public Lmiuix/view/DisplayConfig;
.super Ljava/lang/Object;
.source "DisplayConfig.java"


# instance fields
.field public defaultBitmapDensity:I

.field public density:F

.field public densityDpi:I

.field public fontScale:F

.field public scaledDensity:F


# direct methods
.method public constructor <init>(Landroid/content/res/Configuration;)V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, p0, Lmiuix/view/DisplayConfig;->defaultBitmapDensity:I

    .line 17
    iput v0, p0, Lmiuix/view/DisplayConfig;->densityDpi:I

    int-to-float v0, v0

    const v1, 0x3bcccccd    # 0.00625f

    mul-float/2addr v0, v1

    .line 18
    iput v0, p0, Lmiuix/view/DisplayConfig;->density:F

    .line 19
    iget p1, p1, Landroid/content/res/Configuration;->fontScale:F

    iput p1, p0, Lmiuix/view/DisplayConfig;->fontScale:F

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    mul-float/2addr v0, p1

    .line 20
    iput v0, p0, Lmiuix/view/DisplayConfig;->scaledDensity:F

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 25
    instance-of v0, p1, Lmiuix/view/DisplayConfig;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 26
    iget v0, p0, Lmiuix/view/DisplayConfig;->density:F

    check-cast p1, Lmiuix/view/DisplayConfig;

    iget v2, p1, Lmiuix/view/DisplayConfig;->density:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lmiuix/view/DisplayConfig;->scaledDensity:F

    iget v2, p1, Lmiuix/view/DisplayConfig;->scaledDensity:F

    .line 27
    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lmiuix/view/DisplayConfig;->fontScale:F

    iget v2, p1, Lmiuix/view/DisplayConfig;->fontScale:F

    .line 28
    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lmiuix/view/DisplayConfig;->densityDpi:I

    iget v2, p1, Lmiuix/view/DisplayConfig;->densityDpi:I

    if-ne v0, v2, :cond_0

    iget p0, p0, Lmiuix/view/DisplayConfig;->defaultBitmapDensity:I

    iget p1, p1, Lmiuix/view/DisplayConfig;->defaultBitmapDensity:I

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 0

    .line 37
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ densityDpi:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiuix/view/DisplayConfig;->densityDpi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", density:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiuix/view/DisplayConfig;->density:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", scaledDensity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiuix/view/DisplayConfig;->scaledDensity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", fontScale: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiuix/view/DisplayConfig;->fontScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", defaultBitmapDensity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lmiuix/view/DisplayConfig;->defaultBitmapDensity:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
