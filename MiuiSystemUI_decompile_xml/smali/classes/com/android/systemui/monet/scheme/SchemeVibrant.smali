.class public final Lcom/android/systemui/monet/scheme/SchemeVibrant;
.super Lcom/android/systemui/monet/scheme/DynamicScheme;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final HUES:[D

.field public static final SECONDARY_ROTATIONS:[D

.field public static final TERTIARY_ROTATIONS:[D


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x9

    .line 2
    new-array v1, v0, [D

    .line 4
    fill-array-data v1, :array_0

    .line 6
    sput-object v1, Lcom/android/systemui/monet/scheme/SchemeVibrant;->HUES:[D

    .line 9
    new-array v1, v0, [D

    .line 11
    fill-array-data v1, :array_1

    .line 13
    sput-object v1, Lcom/android/systemui/monet/scheme/SchemeVibrant;->SECONDARY_ROTATIONS:[D

    .line 16
    new-array v0, v0, [D

    .line 18
    fill-array-data v0, :array_2

    .line 20
    sput-object v0, Lcom/android/systemui/monet/scheme/SchemeVibrant;->TERTIARY_ROTATIONS:[D

    .line 23
    return-void

    .line 25
    :array_0
    .array-data 8
        0x0
        0x4044800000000000L    # 41.0
        0x404e800000000000L    # 61.0
        0x4059400000000000L    # 101.0
        0x4060600000000000L    # 131.0
        0x4066a00000000000L    # 181.0
        0x406f600000000000L    # 251.0
        0x4072d00000000000L    # 301.0
        0x4076800000000000L    # 360.0
    .end array-data

    .line 26
    :array_1
    .array-data 8
        0x4032000000000000L    # 18.0
        0x402e000000000000L    # 15.0
        0x4024000000000000L    # 10.0
        0x4028000000000000L    # 12.0
        0x402e000000000000L    # 15.0
        0x4032000000000000L    # 18.0
        0x402e000000000000L    # 15.0
        0x4028000000000000L    # 12.0
        0x4028000000000000L    # 12.0
    .end array-data

    .line 66
    :array_2
    .array-data 8
        0x4041800000000000L    # 35.0
        0x403e000000000000L    # 30.0
        0x4034000000000000L    # 20.0
        0x4039000000000000L    # 25.0
        0x403e000000000000L    # 30.0
        0x4041800000000000L    # 35.0
        0x403e000000000000L    # 30.0
        0x4039000000000000L    # 25.0
        0x4039000000000000L    # 25.0
    .end array-data
.end method

.method public constructor <init>(Lcom/android/systemui/monet/hct/Hct;ZD)V
    .locals 11

    .line 1
    sget-object v2, Lcom/android/systemui/monet/scheme/Variant;->VIBRANT:Lcom/android/systemui/monet/scheme/Variant;

    .line 2
    iget-wide v0, p1, Lcom/android/systemui/monet/hct/Hct;->hue:D

    .line 4
    const-wide/high16 v3, 0x4069000000000000L    # 200.0

    .line 6
    invoke-static {v0, v1, v3, v4}, Lcom/android/systemui/monet/palettes/TonalPalette;->fromHueAndChroma(DD)Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 8
    move-result-object v6

    .line 11
    sget-object v0, Lcom/android/systemui/monet/scheme/SchemeVibrant;->HUES:[D

    .line 12
    sget-object v1, Lcom/android/systemui/monet/scheme/SchemeVibrant;->SECONDARY_ROTATIONS:[D

    .line 14
    invoke-static {p1, v0, v1}, Lcom/android/systemui/monet/scheme/DynamicScheme;->getRotatedHue(Lcom/android/systemui/monet/hct/Hct;[D[D)D

    .line 16
    move-result-wide v3

    .line 19
    const-wide/high16 v7, 0x4038000000000000L    # 24.0

    .line 20
    invoke-static {v3, v4, v7, v8}, Lcom/android/systemui/monet/palettes/TonalPalette;->fromHueAndChroma(DD)Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 22
    move-result-object v7

    .line 25
    sget-object v1, Lcom/android/systemui/monet/scheme/SchemeVibrant;->TERTIARY_ROTATIONS:[D

    .line 26
    invoke-static {p1, v0, v1}, Lcom/android/systemui/monet/scheme/DynamicScheme;->getRotatedHue(Lcom/android/systemui/monet/hct/Hct;[D[D)D

    .line 28
    move-result-wide v0

    .line 31
    const-wide/high16 v3, 0x4040000000000000L    # 32.0

    .line 32
    invoke-static {v0, v1, v3, v4}, Lcom/android/systemui/monet/palettes/TonalPalette;->fromHueAndChroma(DD)Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 34
    move-result-object v8

    .line 37
    iget-wide v0, p1, Lcom/android/systemui/monet/hct/Hct;->hue:D

    .line 38
    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    .line 40
    invoke-static {v0, v1, v3, v4}, Lcom/android/systemui/monet/palettes/TonalPalette;->fromHueAndChroma(DD)Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 42
    move-result-object v9

    .line 45
    iget-wide v0, p1, Lcom/android/systemui/monet/hct/Hct;->hue:D

    .line 46
    const-wide/high16 v3, 0x4028000000000000L    # 12.0

    .line 48
    invoke-static {v0, v1, v3, v4}, Lcom/android/systemui/monet/palettes/TonalPalette;->fromHueAndChroma(DD)Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 50
    move-result-object v10

    .line 53
    move-object v0, p0

    .line 54
    move-object v1, p1

    .line 55
    move v3, p2

    .line 56
    move-wide v4, p3

    .line 57
    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/monet/scheme/DynamicScheme;-><init>(Lcom/android/systemui/monet/hct/Hct;Lcom/android/systemui/monet/scheme/Variant;ZDLcom/android/systemui/monet/palettes/TonalPalette;Lcom/android/systemui/monet/palettes/TonalPalette;Lcom/android/systemui/monet/palettes/TonalPalette;Lcom/android/systemui/monet/palettes/TonalPalette;Lcom/android/systemui/monet/palettes/TonalPalette;)V

    .line 58
    return-void
    .line 61
.end method
