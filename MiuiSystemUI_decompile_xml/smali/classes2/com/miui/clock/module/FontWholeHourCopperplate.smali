.class public final Lcom/miui/clock/module/FontWholeHourCopperplate;
.super Lcom/miui/clock/module/BaseFontStyle;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mHourOffset:[[[I

.field public final mMinuteOffset:[[[I

.field public final mPercentages:[F

.field public final mSVGEmptyLeft:[F

.field public final mSVGEmptyRight:[F

.field public final mSVGResource:[I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/miui/clock/module/BaseFontStyle;-><init>()V

    .line 2
    const/16 v0, 0x18

    .line 5
    new-array v1, v0, [I

    .line 7
    fill-array-data v1, :array_0

    .line 9
    iput-object v1, p0, Lcom/miui/clock/module/FontWholeHourCopperplate;->mSVGResource:[I

    .line 12
    const/16 v1, 0xa

    .line 14
    filled-new-array {v1, v1, v1}, [I

    .line 16
    move-result-object v2

    .line 19
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 20
    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 22
    move-result-object v2

    .line 25
    check-cast v2, [[[I

    .line 26
    iput-object v2, p0, Lcom/miui/clock/module/FontWholeHourCopperplate;->mHourOffset:[[[I

    .line 28
    filled-new-array {v1, v1, v1}, [I

    .line 30
    move-result-object v1

    .line 33
    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 34
    move-result-object v1

    .line 37
    check-cast v1, [[[I

    .line 38
    iput-object v1, p0, Lcom/miui/clock/module/FontWholeHourCopperplate;->mMinuteOffset:[[[I

    .line 40
    const/4 v1, 0x7

    .line 42
    new-array v1, v1, [F

    .line 43
    fill-array-data v1, :array_1

    .line 45
    iput-object v1, p0, Lcom/miui/clock/module/FontWholeHourCopperplate;->mPercentages:[F

    .line 48
    new-array v1, v0, [F

    .line 50
    fill-array-data v1, :array_2

    .line 52
    iput-object v1, p0, Lcom/miui/clock/module/FontWholeHourCopperplate;->mSVGEmptyLeft:[F

    .line 55
    new-array v0, v0, [F

    .line 57
    fill-array-data v0, :array_3

    .line 59
    iput-object v0, p0, Lcom/miui/clock/module/FontWholeHourCopperplate;->mSVGEmptyRight:[F

    .line 62
    return-void

    .line 64
    nop

    .line 65
    :array_0
    .array-data 4
        0x7f080d3b    # @drawable/font_j_r_top_00 'res/drawable/font_j_r_top_00.xml'
        0x7f080d3c    # @drawable/font_j_r_top_01 'res/drawable/font_j_r_top_01.xml'
        0x7f080d3d    # @drawable/font_j_r_top_02 'res/drawable/font_j_r_top_02.xml'
        0x7f080d3e    # @drawable/font_j_r_top_03 'res/drawable/font_j_r_top_03.xml'
        0x7f080d3f    # @drawable/font_j_r_top_04 'res/drawable/font_j_r_top_04.xml'
        0x7f080d40    # @drawable/font_j_r_top_05 'res/drawable/font_j_r_top_05.xml'
        0x7f080d41    # @drawable/font_j_r_top_06 'res/drawable/font_j_r_top_06.xml'
        0x7f080d42    # @drawable/font_j_r_top_07 'res/drawable/font_j_r_top_07.xml'
        0x7f080d43    # @drawable/font_j_r_top_08 'res/drawable/font_j_r_top_08.xml'
        0x7f080d44    # @drawable/font_j_r_top_09 'res/drawable/font_j_r_top_09.xml'
        0x7f080d45    # @drawable/font_j_r_top_10 'res/drawable/font_j_r_top_10.xml'
        0x7f080d46    # @drawable/font_j_r_top_11 'res/drawable/font_j_r_top_11.xml'
        0x7f080d47    # @drawable/font_j_r_top_12 'res/drawable/font_j_r_top_12.xml'
        0x7f080d48    # @drawable/font_j_r_top_13 'res/drawable/font_j_r_top_13.xml'
        0x7f080d49    # @drawable/font_j_r_top_14 'res/drawable/font_j_r_top_14.xml'
        0x7f080d4a    # @drawable/font_j_r_top_15 'res/drawable/font_j_r_top_15.xml'
        0x7f080d4b    # @drawable/font_j_r_top_16 'res/drawable/font_j_r_top_16.xml'
        0x7f080d4c    # @drawable/font_j_r_top_17 'res/drawable/font_j_r_top_17.xml'
        0x7f080d4d    # @drawable/font_j_r_top_18 'res/drawable/font_j_r_top_18.xml'
        0x7f080d4e    # @drawable/font_j_r_top_19 'res/drawable/font_j_r_top_19.xml'
        0x7f080d4f    # @drawable/font_j_r_top_20 'res/drawable/font_j_r_top_20.xml'
        0x7f080d50    # @drawable/font_j_r_top_21 'res/drawable/font_j_r_top_21.xml'
        0x7f080d51    # @drawable/font_j_r_top_22 'res/drawable/font_j_r_top_22.xml'
        0x7f080d52    # @drawable/font_j_r_top_23 'res/drawable/font_j_r_top_23.xml'
    .end array-data

    .line 66
    :array_1
    .array-data 4
        0x3f4e147b    # 0.805f
        0x3dcccccd    # 0.1f
        0x3d75c28f    # 0.06f
        0x3d75c28f    # 0.06f
        0x3e051eb8    # 0.13f
        0x3d4ccccd    # 0.05f
        0x3ca3d70a    # 0.02f
    .end array-data

    .line 118
    :array_2
    .array-data 4
        0x42a18618
        0x42a00000    # 80.0f
        0x429b6db7
        0x42a18618
        0x42adb6db
        0x42ab6db7
        0x42a9e79e
        0x4293cf3d
        0x42a9e79e
        0x42bb6db7
        0x42b55555
        0x42c18618
        0x429db6db
        0x42b18618
        0x42c18618
        0x42c3cf3d
        0x42bdb6db
        0x42b55555
        0x42cb6db7
        0x42c3cf3d
        0x42adb6db
        0x42979e7a
        0x429b6db7
        0x429b6db7
    .end array-data

    :array_3
    .array-data 4
        0x439cc30c
        0x43998618
        0x43a0f3cf
        0x43a89249
        0x439c0000    # 312.0f
        0x439c0000    # 312.0f
        0x43a2aaab
        0x439c9249
        0x43a30c31
        0x43a1b6db
        0x439c30c3
        0x4394c30c
        0x4394f3cf
        0x4396db6e
        0x439adb6e
        0x439b9e7a
        0x439eaaab
        0x439a79e8
        0x439f0c31
        0x439e4925
        0x43a33cf4
        0x439cc30c
        0x43a21862
        0x43a18618
    .end array-data
.end method


# virtual methods
.method public final getColonInterval()F
    .locals 0

    .line 1
    const/high16 p0, 0x42200000    # 40.0f

    .line 2
    return p0
    .line 4
.end method

.method public final getColonResource()I
    .locals 0

    .line 1
    const p0, 0x7f081315    # @drawable/miui_rhombus_colon_circle 'res/drawable/miui_rhombus_colon_circle.xml'

    .line 2
    return p0
    .line 5
.end method

.method public final getColonSize()F
    .locals 0

    .line 1
    const/high16 p0, 0x42000000    # 32.0f

    .line 2
    return p0
    .line 4
.end method

.method public final getFontStyle()Lcom/miui/clock/module/BaseFontStyle$Style;
    .locals 0

    .line 1
    sget-object p0, Lcom/miui/clock/module/BaseFontStyle$Style;->Copperplate:Lcom/miui/clock/module/BaseFontStyle$Style;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getHourOffset()[[[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontWholeHourCopperplate;->mHourOffset:[[[I

    .line 2
    return-object p0
    .line 4
.end method

.method public final getLeftEmpty()[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontWholeHourCopperplate;->mSVGEmptyLeft:[F

    .line 2
    return-object p0
    .line 4
.end method

.method public final getMinuteOffset()[[[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontWholeHourCopperplate;->mMinuteOffset:[[[I

    .line 2
    return-object p0
    .line 4
.end method

.method public final getPercentages()[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontWholeHourCopperplate;->mPercentages:[F

    .line 2
    return-object p0
    .line 4
.end method

.method public final getRightEmpty()[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontWholeHourCopperplate;->mSVGEmptyRight:[F

    .line 2
    return-object p0
    .line 4
.end method

.method public final getSmallColonResource()I
    .locals 0

    .line 1
    const p0, 0x7f080cfe    # @drawable/font_j_h_colon 'res/drawable/font_j_h_colon.xml'

    .line 2
    return p0
    .line 5
.end method

.method public final getSvgResource()[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontWholeHourCopperplate;->mSVGResource:[I

    .line 2
    return-object p0
    .line 4
.end method

.method public final getTextBoxWidth()I
    .locals 0

    .line 1
    const/16 p0, 0x160

    .line 2
    return p0
    .line 4
.end method
