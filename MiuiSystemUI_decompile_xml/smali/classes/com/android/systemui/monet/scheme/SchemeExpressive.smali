.class public final Lcom/android/systemui/monet/scheme/SchemeExpressive;
.super Lcom/android/systemui/monet/scheme/DynamicScheme;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


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
    sput-object v1, Lcom/android/systemui/monet/scheme/SchemeExpressive;->HUES:[D

    .line 9
    new-array v1, v0, [D

    .line 11
    fill-array-data v1, :array_1

    .line 13
    sput-object v1, Lcom/android/systemui/monet/scheme/SchemeExpressive;->SECONDARY_ROTATIONS:[D

    .line 16
    new-array v0, v0, [D

    .line 18
    fill-array-data v0, :array_2

    .line 20
    sput-object v0, Lcom/android/systemui/monet/scheme/SchemeExpressive;->TERTIARY_ROTATIONS:[D

    .line 23
    return-void

    .line 25
    :array_0
    .array-data 8
        0x0
        0x4035000000000000L    # 21.0
        0x4049800000000000L    # 51.0
        0x405e400000000000L    # 121.0
        0x4062e00000000000L    # 151.0
        0x4067e00000000000L    # 191.0
        0x4070f00000000000L    # 271.0
        0x4074100000000000L    # 321.0
        0x4076800000000000L    # 360.0
    .end array-data

    .line 26
    :array_1
    .array-data 8
        0x4046800000000000L    # 45.0
        0x4057c00000000000L    # 95.0
        0x4046800000000000L    # 45.0
        0x4034000000000000L    # 20.0
        0x4046800000000000L    # 45.0
        0x4056800000000000L    # 90.0
        0x4046800000000000L    # 45.0
        0x4046800000000000L    # 45.0
        0x4046800000000000L    # 45.0
    .end array-data

    .line 66
    :array_2
    .array-data 8
        0x405e000000000000L    # 120.0
        0x405e000000000000L    # 120.0
        0x4034000000000000L    # 20.0
        0x4046800000000000L    # 45.0
        0x4034000000000000L    # 20.0
        0x402e000000000000L    # 15.0
        0x4034000000000000L    # 20.0
        0x405e000000000000L    # 120.0
        0x405e000000000000L    # 120.0
    .end array-data
.end method

.method public constructor <init>(Lcom/android/systemui/monet/hct/Hct;ZD)V
    .locals 11

    .line 1
    sget-object v2, Lcom/android/systemui/monet/scheme/Variant;->EXPRESSIVE:Lcom/android/systemui/monet/scheme/Variant;

    .line 2
    iget-wide v0, p1, Lcom/android/systemui/monet/hct/Hct;->hue:D

    .line 4
    const-wide/high16 v3, 0x406e000000000000L    # 240.0

    .line 6
    add-double/2addr v0, v3

    .line 8
    invoke-static {v0, v1}, Lcom/android/systemui/monet/utils/MathUtils;->sanitizeDegreesDouble(D)D

    .line 9
    move-result-wide v0

    .line 12
    const-wide/high16 v3, 0x4044000000000000L    # 40.0

    .line 13
    invoke-static {v0, v1, v3, v4}, Lcom/android/systemui/monet/palettes/TonalPalette;->fromHueAndChroma(DD)Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 15
    move-result-object v6

    .line 18
    sget-object v0, Lcom/android/systemui/monet/scheme/SchemeExpressive;->HUES:[D

    .line 19
    sget-object v1, Lcom/android/systemui/monet/scheme/SchemeExpressive;->SECONDARY_ROTATIONS:[D

    .line 21
    invoke-static {p1, v0, v1}, Lcom/android/systemui/monet/scheme/DynamicScheme;->getRotatedHue(Lcom/android/systemui/monet/hct/Hct;[D[D)D

    .line 23
    move-result-wide v3

    .line 26
    const-wide/high16 v7, 0x4038000000000000L    # 24.0

    .line 27
    invoke-static {v3, v4, v7, v8}, Lcom/android/systemui/monet/palettes/TonalPalette;->fromHueAndChroma(DD)Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 29
    move-result-object v7

    .line 32
    sget-object v1, Lcom/android/systemui/monet/scheme/SchemeExpressive;->TERTIARY_ROTATIONS:[D

    .line 33
    invoke-static {p1, v0, v1}, Lcom/android/systemui/monet/scheme/DynamicScheme;->getRotatedHue(Lcom/android/systemui/monet/hct/Hct;[D[D)D

    .line 35
    move-result-wide v0

    .line 38
    const-wide/high16 v3, 0x4040000000000000L    # 32.0

    .line 39
    invoke-static {v0, v1, v3, v4}, Lcom/android/systemui/monet/palettes/TonalPalette;->fromHueAndChroma(DD)Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 41
    move-result-object v8

    .line 44
    iget-wide v0, p1, Lcom/android/systemui/monet/hct/Hct;->hue:D

    .line 45
    const-wide/high16 v3, 0x402e000000000000L    # 15.0

    .line 47
    add-double/2addr v0, v3

    .line 49
    invoke-static {v0, v1}, Lcom/android/systemui/monet/utils/MathUtils;->sanitizeDegreesDouble(D)D

    .line 50
    move-result-wide v0

    .line 53
    const-wide/high16 v9, 0x4020000000000000L    # 8.0

    .line 54
    invoke-static {v0, v1, v9, v10}, Lcom/android/systemui/monet/palettes/TonalPalette;->fromHueAndChroma(DD)Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 56
    move-result-object v9

    .line 59
    iget-wide v0, p1, Lcom/android/systemui/monet/hct/Hct;->hue:D

    .line 60
    add-double/2addr v0, v3

    .line 62
    invoke-static {v0, v1}, Lcom/android/systemui/monet/utils/MathUtils;->sanitizeDegreesDouble(D)D

    .line 63
    move-result-wide v0

    .line 66
    const-wide/high16 v3, 0x4028000000000000L    # 12.0

    .line 67
    invoke-static {v0, v1, v3, v4}, Lcom/android/systemui/monet/palettes/TonalPalette;->fromHueAndChroma(DD)Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 69
    move-result-object v10

    .line 72
    move-object v0, p0

    .line 73
    move-object v1, p1

    .line 74
    move v3, p2

    .line 75
    move-wide v4, p3

    .line 76
    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/monet/scheme/DynamicScheme;-><init>(Lcom/android/systemui/monet/hct/Hct;Lcom/android/systemui/monet/scheme/Variant;ZDLcom/android/systemui/monet/palettes/TonalPalette;Lcom/android/systemui/monet/palettes/TonalPalette;Lcom/android/systemui/monet/palettes/TonalPalette;Lcom/android/systemui/monet/palettes/TonalPalette;Lcom/android/systemui/monet/palettes/TonalPalette;)V

    .line 77
    return-void
    .line 80
.end method
