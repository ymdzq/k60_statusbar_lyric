.class public final Lcom/miui/clock/module/FontMiSansExtraLight;
.super Lcom/miui/clock/module/BaseFontStyle;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mPercentages:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/miui/clock/module/BaseFontStyle;-><init>()V

    .line 2
    const/4 v0, 0x7

    .line 5
    new-array v0, v0, [F

    .line 6
    fill-array-data v0, :array_0

    .line 8
    iput-object v0, p0, Lcom/miui/clock/module/FontMiSansExtraLight;->mPercentages:[F

    .line 11
    return-void

    .line 13
    :array_0
    .array-data 4
        0x3f59999a    # 0.85f
        0x3e570a3d    # 0.21f
        0x3df5c28f    # 0.12f
        0x3df5c28f    # 0.12f
        0x3e6147ae    # 0.22f
        0x3dcccccd    # 0.1f
        0x3d75c28f    # 0.06f
    .end array-data
    .line 14
.end method


# virtual methods
.method public final getColonResource()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final getColonSize()F
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final getFontStyle()Lcom/miui/clock/module/BaseFontStyle$Style;
    .locals 0

    .line 1
    sget-object p0, Lcom/miui/clock/module/BaseFontStyle$Style;->MiSansExtraLight:Lcom/miui/clock/module/BaseFontStyle$Style;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getHourOffset()[[[I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public final getMinuteOffset()[[[I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public final getPercentages()[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontMiSansExtraLight;->mPercentages:[F

    .line 2
    return-object p0
    .line 4
.end method

.method public final getSmallColonResource()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final getSvgResource()[I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public final getTextBoxWidth()I
    .locals 0

    .line 1
    const/16 p0, 0x34

    .line 2
    return p0
    .line 4
.end method
