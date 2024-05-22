.class public final Lcom/miui/clock/module/FontMiSansNormal;
.super Lcom/miui/clock/module/BaseFontStyle;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mCHSPercentages:[F

.field public final mPercentages:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/miui/clock/module/BaseFontStyle;-><init>()V

    .line 2
    const/4 v0, 0x7

    .line 5
    new-array v1, v0, [F

    .line 6
    fill-array-data v1, :array_0

    .line 8
    iput-object v1, p0, Lcom/miui/clock/module/FontMiSansNormal;->mPercentages:[F

    .line 11
    new-array v0, v0, [F

    .line 13
    fill-array-data v0, :array_1

    .line 15
    iput-object v0, p0, Lcom/miui/clock/module/FontMiSansNormal;->mCHSPercentages:[F

    .line 18
    return-void

    .line 20
    nop

    .line 21
    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3e4ccccd    # 0.2f
        0x3e19999a    # 0.15f
        0x3e19999a    # 0.15f
        0x3e8f5c29    # 0.28f
        0x3df5c28f    # 0.12f
        0x3d75c28f    # 0.06f
    .end array-data

    .line 22
    :array_1
    .array-data 4
        0x3f4f5c29    # 0.81f
        0x3e2e147b    # 0.17f
        0x3e0f5c29    # 0.14f
        0x3e0f5c29    # 0.14f
        0x3e3851ec    # 0.18f
        0x3e051eb8    # 0.13f
        0x3d4ccccd    # 0.05f
    .end array-data
.end method


# virtual methods
.method public final getCHSPercentages()[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontMiSansNormal;->mCHSPercentages:[F

    .line 2
    return-object p0
    .line 4
.end method

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
    sget-object p0, Lcom/miui/clock/module/BaseFontStyle$Style;->MiSansNormal:Lcom/miui/clock/module/BaseFontStyle$Style;

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
    iget-object p0, p0, Lcom/miui/clock/module/FontMiSansNormal;->mPercentages:[F

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
    const/16 p0, 0x29

    .line 2
    return p0
    .line 4
.end method
