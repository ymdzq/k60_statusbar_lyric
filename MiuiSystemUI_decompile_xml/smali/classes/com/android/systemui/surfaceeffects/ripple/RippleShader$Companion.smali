.class public final Lcom/android/systemui/surfaceeffects/ripple/RippleShader$Companion;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public static final access$getFade(Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;F)F
    .locals 2

    .line 1
    sget-object v0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->Companion:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$Companion;

    .line 2
    iget v0, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeInStart:F

    .line 4
    iget v1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeInEnd:F

    .line 6
    invoke-static {v0, v1, p1}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$Companion;->subProgress(FFF)F

    .line 8
    move-result v0

    .line 11
    iget v1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeOutStart:F

    .line 12
    iget p0, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeOutEnd:F

    .line 14
    invoke-static {v1, p0, p1}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$Companion;->subProgress(FFF)F

    .line 16
    move-result p0

    .line 19
    const/high16 p1, 0x3f800000    # 1.0f

    .line 20
    sub-float/2addr p1, p0

    .line 22
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    .line 23
    move-result p0

    .line 26
    return p0
    .line 27
.end method

.method public static subProgress(FFF)F
    .locals 2

    .line 1
    cmpg-float v0, p0, p1

    .line 2
    if-nez v0, :cond_0

    .line 4
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    if-eqz v0, :cond_2

    .line 9
    cmpl-float p0, p2, p0

    .line 11
    if-lez p0, :cond_1

    .line 13
    const/high16 p0, 0x3f800000    # 1.0f

    .line 15
    goto :goto_1

    .line 17
    :cond_1
    const/4 p0, 0x0

    .line 18
    :goto_1
    return p0

    .line 19
    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    .line 20
    move-result v0

    .line 23
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    .line 24
    move-result v1

    .line 27
    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    .line 28
    move-result p2

    .line 31
    invoke-static {p2, v1}, Ljava/lang/Math;->min(FF)F

    .line 32
    move-result p2

    .line 35
    sub-float/2addr p2, p0

    .line 36
    sub-float/2addr p1, p0

    .line 37
    div-float/2addr p2, p1

    .line 38
    return p2
    .line 39
.end method
