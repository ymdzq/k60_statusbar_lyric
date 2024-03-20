.class public final Landroidx/palette/graphics/ColorCutQuantizer$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 1
    check-cast p1, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;

    .line 2
    check-cast p2, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;

    .line 4
    iget p0, p2, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMaxRed:I

    .line 6
    iget v0, p2, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMinRed:I

    .line 8
    sub-int/2addr p0, v0

    .line 10
    add-int/lit8 p0, p0, 0x1

    .line 11
    iget v0, p2, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMaxGreen:I

    .line 13
    iget v1, p2, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMinGreen:I

    .line 15
    sub-int/2addr v0, v1

    .line 17
    add-int/lit8 v0, v0, 0x1

    .line 18
    mul-int/2addr v0, p0

    .line 20
    iget p0, p2, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMaxBlue:I

    .line 21
    iget p2, p2, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMinBlue:I

    .line 23
    sub-int/2addr p0, p2

    .line 25
    add-int/lit8 p0, p0, 0x1

    .line 26
    mul-int/2addr p0, v0

    .line 28
    iget p2, p1, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMaxRed:I

    .line 29
    iget v0, p1, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMinRed:I

    .line 31
    sub-int/2addr p2, v0

    .line 33
    add-int/lit8 p2, p2, 0x1

    .line 34
    iget v0, p1, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMaxGreen:I

    .line 36
    iget v1, p1, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMinGreen:I

    .line 38
    sub-int/2addr v0, v1

    .line 40
    add-int/lit8 v0, v0, 0x1

    .line 41
    mul-int/2addr v0, p2

    .line 43
    iget p2, p1, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMaxBlue:I

    .line 44
    iget p1, p1, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMinBlue:I

    .line 46
    sub-int/2addr p2, p1

    .line 48
    add-int/lit8 p2, p2, 0x1

    .line 49
    mul-int/2addr p2, v0

    .line 51
    sub-int/2addr p0, p2

    .line 52
    return p0
    .line 53
.end method
