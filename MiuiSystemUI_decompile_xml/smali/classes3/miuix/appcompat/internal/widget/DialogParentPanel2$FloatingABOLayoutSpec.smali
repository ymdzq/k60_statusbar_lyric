.class Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mFixedHeightMajor:Landroid/util/TypedValue;

.field public mFixedHeightMinor:Landroid/util/TypedValue;

.field public mFixedWidthMajor:Landroid/util/TypedValue;

.field public mFixedWidthMinor:Landroid/util/TypedValue;

.field public mIsFreeWindowMode:Z

.field public mMaxHeightMajor:Landroid/util/TypedValue;

.field public mMaxHeightMinor:Landroid/util/TypedValue;

.field public mMaxWidthMajor:Landroid/util/TypedValue;

.field public mMaxWidthMinor:Landroid/util/TypedValue;

.field public mScreenHeightDp:I

.field public final mScreenSize:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Point;

    .line 5
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 7
    iput-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mScreenSize:Landroid/graphics/Point;

    .line 10
    iput-object p1, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mContext:Landroid/content/Context;

    .line 12
    if-nez p2, :cond_0

    .line 14
    goto/16 :goto_0

    .line 16
    :cond_0
    sget-object v1, Lmiuix/appcompat/R$styleable;->Window:[I

    .line 18
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 20
    move-result-object p2

    .line 23
    const/16 v1, 0x16

    .line 24
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 26
    move-result v2

    .line 29
    if-eqz v2, :cond_1

    .line 30
    new-instance v2, Landroid/util/TypedValue;

    .line 32
    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 34
    iput-object v2, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mFixedWidthMinor:Landroid/util/TypedValue;

    .line 37
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 39
    :cond_1
    const/16 v1, 0x13

    .line 42
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 44
    move-result v2

    .line 47
    if-eqz v2, :cond_2

    .line 48
    new-instance v2, Landroid/util/TypedValue;

    .line 50
    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 52
    iput-object v2, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mFixedHeightMajor:Landroid/util/TypedValue;

    .line 55
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 57
    :cond_2
    const/16 v1, 0x15

    .line 60
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 62
    move-result v2

    .line 65
    if-eqz v2, :cond_3

    .line 66
    new-instance v2, Landroid/util/TypedValue;

    .line 68
    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 70
    iput-object v2, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mFixedWidthMajor:Landroid/util/TypedValue;

    .line 73
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 75
    :cond_3
    const/16 v1, 0x14

    .line 78
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 80
    move-result v2

    .line 83
    if-eqz v2, :cond_4

    .line 84
    new-instance v2, Landroid/util/TypedValue;

    .line 86
    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 88
    iput-object v2, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mFixedHeightMinor:Landroid/util/TypedValue;

    .line 91
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 93
    :cond_4
    const/16 v1, 0x1c

    .line 96
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 98
    move-result v2

    .line 101
    if-eqz v2, :cond_5

    .line 102
    new-instance v2, Landroid/util/TypedValue;

    .line 104
    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 106
    iput-object v2, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mMaxWidthMinor:Landroid/util/TypedValue;

    .line 109
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 111
    :cond_5
    const/16 v1, 0x1b

    .line 114
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 116
    move-result v2

    .line 119
    if-eqz v2, :cond_6

    .line 120
    new-instance v2, Landroid/util/TypedValue;

    .line 122
    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 124
    iput-object v2, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mMaxWidthMajor:Landroid/util/TypedValue;

    .line 127
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 129
    :cond_6
    const/16 v1, 0x19

    .line 132
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 134
    move-result v2

    .line 137
    if-eqz v2, :cond_7

    .line 138
    new-instance v2, Landroid/util/TypedValue;

    .line 140
    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 142
    iput-object v2, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mMaxHeightMajor:Landroid/util/TypedValue;

    .line 145
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 147
    :cond_7
    const/16 v1, 0x1a

    .line 150
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 152
    move-result v2

    .line 155
    if-eqz v2, :cond_8

    .line 156
    new-instance v2, Landroid/util/TypedValue;

    .line 158
    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 160
    iput-object v2, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mMaxHeightMinor:Landroid/util/TypedValue;

    .line 163
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 165
    :cond_8
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 168
    :goto_0
    invoke-static {p1, v0}, Lmiuix/core/util/WindowUtils;->getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 171
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 174
    move-result-object p2

    .line 177
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 178
    move-result-object p2

    .line 181
    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    .line 182
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 184
    int-to-float v0, v0

    .line 186
    div-float/2addr v0, p2

    .line 187
    float-to-int p2, v0

    .line 188
    iput p2, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mScreenHeightDp:I

    .line 189
    invoke-static {p1}, Lmiuix/core/util/MiuixUIUtils;->isFreeformMode(Landroid/content/Context;)Z

    .line 191
    move-result p1

    .line 194
    iput-boolean p1, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mIsFreeWindowMode:Z

    .line 195
    return-void
    .line 197
.end method


# virtual methods
.method public final getMeasureSpec(IZLandroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;)I
    .locals 5

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 2
    move-result v0

    .line 5
    const/high16 v1, -0x80000000

    .line 6
    if-ne v0, v1, :cond_7

    .line 8
    if-nez p2, :cond_0

    .line 10
    iget-boolean v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mIsFreeWindowMode:Z

    .line 12
    if-eqz v0, :cond_0

    .line 14
    return p1

    .line 16
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mContext:Landroid/content/Context;

    .line 17
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 19
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 23
    move-result-object v0

    .line 26
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 27
    const/4 v2, 0x0

    .line 29
    const/4 v3, 0x1

    .line 30
    if-ne v0, v3, :cond_1

    .line 31
    move v0, v3

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    move v0, v2

    .line 35
    :goto_0
    if-eqz v0, :cond_2

    .line 36
    goto :goto_1

    .line 38
    :cond_2
    iget v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mScreenHeightDp:I

    .line 39
    const/16 v4, 0x1f4

    .line 41
    if-lt v0, v4, :cond_3

    .line 43
    move v2, v3

    .line 45
    :cond_3
    move v3, v2

    .line 46
    :goto_1
    if-eqz v3, :cond_4

    .line 47
    goto :goto_2

    .line 49
    :cond_4
    move-object p3, p4

    .line 50
    :goto_2
    invoke-virtual {p0, p3, p2}, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->resolveDimension(Landroid/util/TypedValue;Z)I

    .line 51
    move-result p3

    .line 54
    if-lez p3, :cond_5

    .line 55
    const/high16 p0, 0x40000000    # 2.0f

    .line 57
    invoke-static {p3, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 59
    move-result p1

    .line 62
    goto :goto_4

    .line 63
    :cond_5
    if-eqz v3, :cond_6

    .line 64
    goto :goto_3

    .line 66
    :cond_6
    move-object p5, p6

    .line 67
    :goto_3
    invoke-virtual {p0, p5, p2}, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->resolveDimension(Landroid/util/TypedValue;Z)I

    .line 68
    move-result p0

    .line 71
    if-lez p0, :cond_7

    .line 72
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 74
    move-result p1

    .line 77
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    .line 78
    move-result p0

    .line 81
    invoke-static {p0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 82
    move-result p1

    .line 85
    :cond_7
    :goto_4
    return p1
    .line 86
.end method

.method public final resolveDimension(Landroid/util/TypedValue;Z)I
    .locals 2

    .line 1
    if-eqz p1, :cond_2

    .line 2
    iget v0, p1, Landroid/util/TypedValue;->type:I

    .line 4
    if-eqz v0, :cond_2

    .line 6
    const/4 v1, 0x5

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    iget-object p0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mContext:Landroid/content/Context;

    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 13
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 17
    move-result-object p0

    .line 20
    invoke-virtual {p1, p0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    .line 21
    move-result p0

    .line 24
    :goto_0
    float-to-int p0, p0

    .line 25
    goto :goto_2

    .line 26
    :cond_0
    const/4 v1, 0x6

    .line 27
    if-ne v0, v1, :cond_2

    .line 28
    iget-object p0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mScreenSize:Landroid/graphics/Point;

    .line 30
    if-eqz p2, :cond_1

    .line 32
    iget p0, p0, Landroid/graphics/Point;->x:I

    .line 34
    goto :goto_1

    .line 36
    :cond_1
    iget p0, p0, Landroid/graphics/Point;->y:I

    .line 37
    :goto_1
    int-to-float p0, p0

    .line 39
    invoke-virtual {p1, p0, p0}, Landroid/util/TypedValue;->getFraction(FF)F

    .line 40
    move-result p0

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    const/4 p0, 0x0

    .line 45
    :goto_2
    return p0
    .line 46
.end method
