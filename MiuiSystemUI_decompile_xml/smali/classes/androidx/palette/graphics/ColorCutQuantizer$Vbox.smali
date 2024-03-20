.class public final Landroidx/palette/graphics/ColorCutQuantizer$Vbox;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mLowerIndex:I

.field public mMaxBlue:I

.field public mMaxGreen:I

.field public mMaxRed:I

.field public mMinBlue:I

.field public mMinGreen:I

.field public mMinRed:I

.field public mPopulation:I

.field public mUpperIndex:I

.field public final synthetic this$0:Landroidx/palette/graphics/ColorCutQuantizer;


# direct methods
.method public constructor <init>(Landroidx/palette/graphics/ColorCutQuantizer;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->this$0:Landroidx/palette/graphics/ColorCutQuantizer;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p2, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mLowerIndex:I

    .line 7
    iput p3, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    .line 9
    invoke-virtual {p0}, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->fitBox()V

    .line 11
    return-void
    .line 14
.end method


# virtual methods
.method public final fitBox()V
    .locals 13

    .line 1
    iget-object v0, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->this$0:Landroidx/palette/graphics/ColorCutQuantizer;

    .line 2
    iget-object v1, v0, Landroidx/palette/graphics/ColorCutQuantizer;->mColors:[I

    .line 4
    iget-object v0, v0, Landroidx/palette/graphics/ColorCutQuantizer;->mHistogram:[I

    .line 6
    const v2, 0x7fffffff

    .line 8
    const/high16 v3, -0x80000000

    .line 11
    const/4 v4, 0x0

    .line 13
    iget v5, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mLowerIndex:I

    .line 14
    move v6, v3

    .line 16
    move v7, v6

    .line 17
    move v8, v4

    .line 18
    move v9, v5

    .line 19
    move v3, v2

    .line 20
    move v4, v3

    .line 21
    move v5, v7

    .line 22
    :goto_0
    iget v10, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    .line 23
    if-gt v9, v10, :cond_6

    .line 25
    aget v10, v1, v9

    .line 27
    aget v11, v0, v10

    .line 29
    add-int/2addr v8, v11

    .line 31
    shr-int/lit8 v11, v10, 0xa

    .line 32
    and-int/lit8 v11, v11, 0x1f

    .line 34
    shr-int/lit8 v12, v10, 0x5

    .line 36
    and-int/lit8 v12, v12, 0x1f

    .line 38
    and-int/lit8 v10, v10, 0x1f

    .line 40
    if-le v11, v5, :cond_0

    .line 42
    move v5, v11

    .line 44
    :cond_0
    if-ge v11, v2, :cond_1

    .line 45
    move v2, v11

    .line 47
    :cond_1
    if-le v12, v6, :cond_2

    .line 48
    move v6, v12

    .line 50
    :cond_2
    if-ge v12, v3, :cond_3

    .line 51
    move v3, v12

    .line 53
    :cond_3
    if-le v10, v7, :cond_4

    .line 54
    move v7, v10

    .line 56
    :cond_4
    if-ge v10, v4, :cond_5

    .line 57
    move v4, v10

    .line 59
    :cond_5
    add-int/lit8 v9, v9, 0x1

    .line 60
    goto :goto_0

    .line 62
    :cond_6
    iput v2, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMinRed:I

    .line 63
    iput v5, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMaxRed:I

    .line 65
    iput v3, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMinGreen:I

    .line 67
    iput v6, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMaxGreen:I

    .line 69
    iput v4, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMinBlue:I

    .line 71
    iput v7, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMaxBlue:I

    .line 73
    iput v8, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mPopulation:I

    .line 75
    return-void
    .line 77
.end method
