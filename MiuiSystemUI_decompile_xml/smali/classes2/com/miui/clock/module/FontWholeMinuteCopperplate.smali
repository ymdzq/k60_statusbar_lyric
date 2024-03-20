.class public final Lcom/miui/clock/module/FontWholeMinuteCopperplate;
.super Lcom/miui/clock/module/BaseFontStyle;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


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
    const/16 v0, 0x3c

    .line 5
    new-array v1, v0, [I

    .line 7
    fill-array-data v1, :array_0

    .line 9
    iput-object v1, p0, Lcom/miui/clock/module/FontWholeMinuteCopperplate;->mSVGResource:[I

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
    iput-object v2, p0, Lcom/miui/clock/module/FontWholeMinuteCopperplate;->mHourOffset:[[[I

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
    iput-object v1, p0, Lcom/miui/clock/module/FontWholeMinuteCopperplate;->mMinuteOffset:[[[I

    .line 40
    const/4 v1, 0x7

    .line 42
    new-array v1, v1, [F

    .line 43
    fill-array-data v1, :array_1

    .line 45
    iput-object v1, p0, Lcom/miui/clock/module/FontWholeMinuteCopperplate;->mPercentages:[F

    .line 48
    new-array v1, v0, [F

    .line 50
    fill-array-data v1, :array_2

    .line 52
    iput-object v1, p0, Lcom/miui/clock/module/FontWholeMinuteCopperplate;->mSVGEmptyLeft:[F

    .line 55
    new-array v0, v0, [F

    .line 57
    fill-array-data v0, :array_3

    .line 59
    iput-object v0, p0, Lcom/miui/clock/module/FontWholeMinuteCopperplate;->mSVGEmptyRight:[F

    .line 62
    return-void

    .line 64
    nop

    .line 65
    :array_0
    .array-data 4
        0x7f080cff    # @drawable/font_j_r_bottom_00 'res/drawable/font_j_r_bottom_00.xml'
        0x7f080d00    # @drawable/font_j_r_bottom_01 'res/drawable/font_j_r_bottom_01.xml'
        0x7f080d01    # @drawable/font_j_r_bottom_02 'res/drawable/font_j_r_bottom_02.xml'
        0x7f080d02    # @drawable/font_j_r_bottom_03 'res/drawable/font_j_r_bottom_03.xml'
        0x7f080d03    # @drawable/font_j_r_bottom_04 'res/drawable/font_j_r_bottom_04.xml'
        0x7f080d04    # @drawable/font_j_r_bottom_05 'res/drawable/font_j_r_bottom_05.xml'
        0x7f080d05    # @drawable/font_j_r_bottom_06 'res/drawable/font_j_r_bottom_06.xml'
        0x7f080d06    # @drawable/font_j_r_bottom_07 'res/drawable/font_j_r_bottom_07.xml'
        0x7f080d07    # @drawable/font_j_r_bottom_08 'res/drawable/font_j_r_bottom_08.xml'
        0x7f080d08    # @drawable/font_j_r_bottom_09 'res/drawable/font_j_r_bottom_09.xml'
        0x7f080d09    # @drawable/font_j_r_bottom_10 'res/drawable/font_j_r_bottom_10.xml'
        0x7f080d0a    # @drawable/font_j_r_bottom_11 'res/drawable/font_j_r_bottom_11.xml'
        0x7f080d0b    # @drawable/font_j_r_bottom_12 'res/drawable/font_j_r_bottom_12.xml'
        0x7f080d0c    # @drawable/font_j_r_bottom_13 'res/drawable/font_j_r_bottom_13.xml'
        0x7f080d0d    # @drawable/font_j_r_bottom_14 'res/drawable/font_j_r_bottom_14.xml'
        0x7f080d0e    # @drawable/font_j_r_bottom_15 'res/drawable/font_j_r_bottom_15.xml'
        0x7f080d0f    # @drawable/font_j_r_bottom_16 'res/drawable/font_j_r_bottom_16.xml'
        0x7f080d10    # @drawable/font_j_r_bottom_17 'res/drawable/font_j_r_bottom_17.xml'
        0x7f080d11    # @drawable/font_j_r_bottom_18 'res/drawable/font_j_r_bottom_18.xml'
        0x7f080d12    # @drawable/font_j_r_bottom_19 'res/drawable/font_j_r_bottom_19.xml'
        0x7f080d13    # @drawable/font_j_r_bottom_20 'res/drawable/font_j_r_bottom_20.xml'
        0x7f080d14    # @drawable/font_j_r_bottom_21 'res/drawable/font_j_r_bottom_21.xml'
        0x7f080d15    # @drawable/font_j_r_bottom_22 'res/drawable/font_j_r_bottom_22.xml'
        0x7f080d16    # @drawable/font_j_r_bottom_23 'res/drawable/font_j_r_bottom_23.xml'
        0x7f080d17    # @drawable/font_j_r_bottom_24 'res/drawable/font_j_r_bottom_24.xml'
        0x7f080d18    # @drawable/font_j_r_bottom_25 'res/drawable/font_j_r_bottom_25.xml'
        0x7f080d19    # @drawable/font_j_r_bottom_26 'res/drawable/font_j_r_bottom_26.xml'
        0x7f080d1a    # @drawable/font_j_r_bottom_27 'res/drawable/font_j_r_bottom_27.xml'
        0x7f080d1b    # @drawable/font_j_r_bottom_28 'res/drawable/font_j_r_bottom_28.xml'
        0x7f080d1c    # @drawable/font_j_r_bottom_29 'res/drawable/font_j_r_bottom_29.xml'
        0x7f080d1d    # @drawable/font_j_r_bottom_30 'res/drawable/font_j_r_bottom_30.xml'
        0x7f080d1e    # @drawable/font_j_r_bottom_31 'res/drawable/font_j_r_bottom_31.xml'
        0x7f080d1f    # @drawable/font_j_r_bottom_32 'res/drawable/font_j_r_bottom_32.xml'
        0x7f080d20    # @drawable/font_j_r_bottom_33 'res/drawable/font_j_r_bottom_33.xml'
        0x7f080d21    # @drawable/font_j_r_bottom_34 'res/drawable/font_j_r_bottom_34.xml'
        0x7f080d22    # @drawable/font_j_r_bottom_35 'res/drawable/font_j_r_bottom_35.xml'
        0x7f080d23    # @drawable/font_j_r_bottom_36 'res/drawable/font_j_r_bottom_36.xml'
        0x7f080d24    # @drawable/font_j_r_bottom_37 'res/drawable/font_j_r_bottom_37.xml'
        0x7f080d25    # @drawable/font_j_r_bottom_38 'res/drawable/font_j_r_bottom_38.xml'
        0x7f080d26    # @drawable/font_j_r_bottom_39 'res/drawable/font_j_r_bottom_39.xml'
        0x7f080d27    # @drawable/font_j_r_bottom_40 'res/drawable/font_j_r_bottom_40.xml'
        0x7f080d28    # @drawable/font_j_r_bottom_41 'res/drawable/font_j_r_bottom_41.xml'
        0x7f080d29    # @drawable/font_j_r_bottom_42 'res/drawable/font_j_r_bottom_42.xml'
        0x7f080d2a    # @drawable/font_j_r_bottom_43 'res/drawable/font_j_r_bottom_43.xml'
        0x7f080d2b    # @drawable/font_j_r_bottom_44 'res/drawable/font_j_r_bottom_44.xml'
        0x7f080d2c    # @drawable/font_j_r_bottom_45 'res/drawable/font_j_r_bottom_45.xml'
        0x7f080d2d    # @drawable/font_j_r_bottom_46 'res/drawable/font_j_r_bottom_46.xml'
        0x7f080d2e    # @drawable/font_j_r_bottom_47 'res/drawable/font_j_r_bottom_47.xml'
        0x7f080d2f    # @drawable/font_j_r_bottom_48 'res/drawable/font_j_r_bottom_48.xml'
        0x7f080d30    # @drawable/font_j_r_bottom_49 'res/drawable/font_j_r_bottom_49.xml'
        0x7f080d31    # @drawable/font_j_r_bottom_50 'res/drawable/font_j_r_bottom_50.xml'
        0x7f080d32    # @drawable/font_j_r_bottom_51 'res/drawable/font_j_r_bottom_51.xml'
        0x7f080d33    # @drawable/font_j_r_bottom_52 'res/drawable/font_j_r_bottom_52.xml'
        0x7f080d34    # @drawable/font_j_r_bottom_53 'res/drawable/font_j_r_bottom_53.xml'
        0x7f080d35    # @drawable/font_j_r_bottom_54 'res/drawable/font_j_r_bottom_54.xml'
        0x7f080d36    # @drawable/font_j_r_bottom_55 'res/drawable/font_j_r_bottom_55.xml'
        0x7f080d37    # @drawable/font_j_r_bottom_56 'res/drawable/font_j_r_bottom_56.xml'
        0x7f080d38    # @drawable/font_j_r_bottom_57 'res/drawable/font_j_r_bottom_57.xml'
        0x7f080d39    # @drawable/font_j_r_bottom_58 'res/drawable/font_j_r_bottom_58.xml'
        0x7f080d3a    # @drawable/font_j_r_bottom_59 'res/drawable/font_j_r_bottom_59.xml'
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

    :array_2
    .array-data 4
        0x41edb6db
        0x41f6db6e
        0x41f6db6e
        0x41f6db6e
        0x418f3cf4
        0x41f6db6e
        0x41edb6db
        0x419e79e8
        0x41de79e8
        0x41f6db6e
        0x41f6db6e
        0x420aaaab
        0x41de79e8
        0x420aaaab
        0x41de79e8
        0x41de79e8
        0x41edb6db
        0x41edb6db
        0x4213cf3d
        0x4213cf3d
        0x42200000    # 40.0f
        0x42200000    # 40.0f
        0x42200000    # 40.0f
        0x420aaaab
        0x42200000    # 40.0f
        0x42200000    # 40.0f
        0x42200000    # 40.0f
        0x42200000    # 40.0f
        0x42200000    # 40.0f
        0x42200000    # 40.0f
        0x42200000    # 40.0f
        0x42200000    # 40.0f
        0x422aaaab
        0x42200000    # 40.0f
        0x422aaaab
        0x42200000    # 40.0f
        0x42200000    # 40.0f
        0x42200000    # 40.0f
        0x42200000    # 40.0f
        0x42200000    # 40.0f
        0x40b6db6e
        0x40b6db6e
        0x40b6db6e
        0x40b6db6e
        0x40b6db6e
        0x40b6db6e
        0x409e79e8
        0x40db6db7
        0x40b6db6e
        0x40b6db6e
        0x40db6db7
        0x40db6db7
        0x40db6db7
        0x40db6db7
        0x40db6db7
        0x40b6db6e
        0x40db6db7
        0x40db6db7
        0x42230c31
        0x40db6db7
    .end array-data

    :array_3
    .array-data 4
        0x43836db7
        0x43846186
        0x438c9249
        0x43880000    # 272.0f
        0x437430c3
        0x43806186
        0x43870c31
        0x43818618
        0x437e1862
        0x43824925
        0x437c30c3
        0x436f3cf4
        0x4372aaab
        0x43755555
        0x43736db7
        0x43779e7a
        0x437d5555
        0x437e79e8
        0x4381b6db
        0x43800000    # 256.0f
        0x4385b6db
        0x43852492
        0x4382db6e
        0x438bcf3d
        0x437db6db
        0x438b9e7a
        0x4385b6db
        0x438b3cf4
        0x43839e7a
        0x4382aaab
        0x43855555
        0x4385b6db
        0x4388c30c
        0x43858618
        0x43886186
        0x437f9e7a
        0x438679e8
        0x43855555
        0x437f3cf4
        0x43833cf4
        0x43886186
        0x43886186
        0x43915555
        0x438aaaab
        0x4384c30c
        0x43895555
        0x438b3cf4
        0x438db6db
        0x438a4925
        0x438db6db
        0x43873cf4
        0x43818618
        0x438c9249
        0x43900000    # 288.0f
        0x437db6db
        0x4380f3cf
        0x438e4925
        0x438a4925
        0x43830c31
        0x43846186
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
    iget-object p0, p0, Lcom/miui/clock/module/FontWholeMinuteCopperplate;->mHourOffset:[[[I

    .line 2
    return-object p0
    .line 4
.end method

.method public final getLeftEmpty()[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontWholeMinuteCopperplate;->mSVGEmptyLeft:[F

    .line 2
    return-object p0
    .line 4
.end method

.method public final getMinuteOffset()[[[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontWholeMinuteCopperplate;->mMinuteOffset:[[[I

    .line 2
    return-object p0
    .line 4
.end method

.method public final getPercentages()[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontWholeMinuteCopperplate;->mPercentages:[F

    .line 2
    return-object p0
    .line 4
.end method

.method public final getRightEmpty()[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontWholeMinuteCopperplate;->mSVGEmptyRight:[F

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
    iget-object p0, p0, Lcom/miui/clock/module/FontWholeMinuteCopperplate;->mSVGResource:[I

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
