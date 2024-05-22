.class public final Lcom/android/systemui/monet/scheme/SchemeMonochrome;
.super Lcom/android/systemui/monet/scheme/DynamicScheme;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public constructor <init>(Lcom/android/systemui/monet/hct/Hct;ZD)V
    .locals 11

    .line 1
    sget-object v2, Lcom/android/systemui/monet/scheme/Variant;->MONOCHROME:Lcom/android/systemui/monet/scheme/Variant;

    .line 2
    iget-wide v0, p1, Lcom/android/systemui/monet/hct/Hct;->hue:D

    .line 4
    const-wide/16 v3, 0x0

    .line 6
    invoke-static {v0, v1, v3, v4}, Lcom/android/systemui/monet/palettes/TonalPalette;->fromHueAndChroma(DD)Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 8
    move-result-object v6

    .line 11
    iget-wide v0, p1, Lcom/android/systemui/monet/hct/Hct;->hue:D

    .line 12
    invoke-static {v0, v1, v3, v4}, Lcom/android/systemui/monet/palettes/TonalPalette;->fromHueAndChroma(DD)Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 14
    move-result-object v7

    .line 17
    iget-wide v0, p1, Lcom/android/systemui/monet/hct/Hct;->hue:D

    .line 18
    invoke-static {v0, v1, v3, v4}, Lcom/android/systemui/monet/palettes/TonalPalette;->fromHueAndChroma(DD)Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 20
    move-result-object v8

    .line 23
    iget-wide v0, p1, Lcom/android/systemui/monet/hct/Hct;->hue:D

    .line 24
    invoke-static {v0, v1, v3, v4}, Lcom/android/systemui/monet/palettes/TonalPalette;->fromHueAndChroma(DD)Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 26
    move-result-object v9

    .line 29
    iget-wide v0, p1, Lcom/android/systemui/monet/hct/Hct;->hue:D

    .line 30
    invoke-static {v0, v1, v3, v4}, Lcom/android/systemui/monet/palettes/TonalPalette;->fromHueAndChroma(DD)Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 32
    move-result-object v10

    .line 35
    move-object v0, p0

    .line 36
    move-object v1, p1

    .line 37
    move v3, p2

    .line 38
    move-wide v4, p3

    .line 39
    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/monet/scheme/DynamicScheme;-><init>(Lcom/android/systemui/monet/hct/Hct;Lcom/android/systemui/monet/scheme/Variant;ZDLcom/android/systemui/monet/palettes/TonalPalette;Lcom/android/systemui/monet/palettes/TonalPalette;Lcom/android/systemui/monet/palettes/TonalPalette;Lcom/android/systemui/monet/palettes/TonalPalette;Lcom/android/systemui/monet/palettes/TonalPalette;)V

    .line 40
    return-void
    .line 43
.end method
