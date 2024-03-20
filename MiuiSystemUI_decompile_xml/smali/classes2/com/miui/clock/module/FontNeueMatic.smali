.class public final Lcom/miui/clock/module/FontNeueMatic;
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
    iput-object v0, p0, Lcom/miui/clock/module/FontNeueMatic;->mPercentages:[F

    .line 11
    return-void

    .line 13
    :array_0
    .array-data 4
        0x3f451eb8    # 0.77f
        0x3e851eb8    # 0.26f
        0x3e2e147b    # 0.17f
        0x3e19999a    # 0.15f
        0x3e75c28f    # 0.24f
        0x3de147ae    # 0.11f
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
    sget-object p0, Lcom/miui/clock/module/BaseFontStyle$Style;->NeueMatic:Lcom/miui/clock/module/BaseFontStyle$Style;

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
    iget-object p0, p0, Lcom/miui/clock/module/FontNeueMatic;->mPercentages:[F

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
    const/16 p0, 0x2c

    .line 2
    return p0
    .line 4
.end method
