.class public final Lcom/android/systemui/monet/scheme/SchemeRainbow;
.super Lcom/android/systemui/monet/scheme/DynamicScheme;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public constructor <init>(Lcom/android/systemui/monet/hct/Hct;ZD)V
    .locals 11

    .line 1
    sget-object v2, Lcom/android/systemui/monet/scheme/Variant;->RAINBOW:Lcom/android/systemui/monet/scheme/Variant;

    .line 2
    iget-wide v0, p1, Lcom/android/systemui/monet/hct/Hct;->hue:D

    .line 4
    const-wide/high16 v3, 0x4048000000000000L    # 48.0

    .line 6
    invoke-static {v0, v1, v3, v4}, Lcom/android/systemui/monet/palettes/TonalPalette;->fromHueAndChroma(DD)Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 8
    move-result-object v6

    .line 11
    iget-wide v0, p1, Lcom/android/systemui/monet/hct/Hct;->hue:D

    .line 12
    const-wide/high16 v3, 0x4030000000000000L    # 16.0

    .line 14
    invoke-static {v0, v1, v3, v4}, Lcom/android/systemui/monet/palettes/TonalPalette;->fromHueAndChroma(DD)Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 16
    move-result-object v7

    .line 19
    iget-wide v0, p1, Lcom/android/systemui/monet/hct/Hct;->hue:D

    .line 20
    const-wide/high16 v3, 0x404e000000000000L    # 60.0

    .line 22
    add-double/2addr v0, v3

    .line 24
    invoke-static {v0, v1}, Lcom/android/systemui/monet/utils/MathUtils;->sanitizeDegreesDouble(D)D

    .line 25
    move-result-wide v0

    .line 28
    const-wide/high16 v3, 0x4038000000000000L    # 24.0

    .line 29
    invoke-static {v0, v1, v3, v4}, Lcom/android/systemui/monet/palettes/TonalPalette;->fromHueAndChroma(DD)Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 31
    move-result-object v8

    .line 34
    iget-wide v0, p1, Lcom/android/systemui/monet/hct/Hct;->hue:D

    .line 35
    const-wide/16 v3, 0x0

    .line 37
    invoke-static {v0, v1, v3, v4}, Lcom/android/systemui/monet/palettes/TonalPalette;->fromHueAndChroma(DD)Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 39
    move-result-object v9

    .line 42
    iget-wide v0, p1, Lcom/android/systemui/monet/hct/Hct;->hue:D

    .line 43
    invoke-static {v0, v1, v3, v4}, Lcom/android/systemui/monet/palettes/TonalPalette;->fromHueAndChroma(DD)Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 45
    move-result-object v10

    .line 48
    move-object v0, p0

    .line 49
    move-object v1, p1

    .line 50
    move v3, p2

    .line 51
    move-wide v4, p3

    .line 52
    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/monet/scheme/DynamicScheme;-><init>(Lcom/android/systemui/monet/hct/Hct;Lcom/android/systemui/monet/scheme/Variant;ZDLcom/android/systemui/monet/palettes/TonalPalette;Lcom/android/systemui/monet/palettes/TonalPalette;Lcom/android/systemui/monet/palettes/TonalPalette;Lcom/android/systemui/monet/palettes/TonalPalette;Lcom/android/systemui/monet/palettes/TonalPalette;)V

    .line 53
    return-void
    .line 56
.end method
