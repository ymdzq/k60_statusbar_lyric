.class public Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;
.super Landroid/view/ViewGroup;
.source "ProperPaddingViewGroup.java"


# instance fields
.field private final DENSITY:F

.field private mChildView:Landroid/view/View;

.field private mFixedHorizontalPadding:Z

.field private mFixedHorizontalPaddingEnd:I

.field private mFixedHorizontalPaddingStart:I

.field private final mHorizontalPaddingEnd:I

.field private final mHorizontalPaddingStart:I

.field private mPaddingEnd:I

.field private mPaddingStart:I

.field private final mSmallHorizontalPaddingEnd:I

.field private final mSmallHorizontalPaddingStart:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, v0}, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2, v0}, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 23
    iput-boolean p3, p0, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;->mFixedHorizontalPadding:Z

    const/high16 v0, -0x80000000

    .line 28
    iput v0, p0, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;->mFixedHorizontalPaddingStart:I

    .line 29
    iput v0, p0, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;->mFixedHorizontalPaddingEnd:I

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;->mChildView:Landroid/view/View;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;->DENSITY:F

    .line 48
    :try_start_0
    sget-object v1, Lmiuix/pickerwidget/R$styleable;->ProperPaddingViewGroup:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 49
    sget p1, Lmiuix/pickerwidget/R$styleable;->ProperPaddingViewGroup_horizontalPadding:I

    invoke-virtual {v0, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    .line 50
    sget p2, Lmiuix/pickerwidget/R$styleable;->ProperPaddingViewGroup_horizontalPaddingStart:I

    invoke-virtual {v0, p2, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;->mHorizontalPaddingStart:I

    .line 51
    sget p2, Lmiuix/pickerwidget/R$styleable;->ProperPaddingViewGroup_horizontalPaddingEnd:I

    invoke-virtual {v0, p2, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;->mHorizontalPaddingEnd:I

    .line 52
    sget p1, Lmiuix/pickerwidget/R$styleable;->ProperPaddingViewGroup_smallHorizontalPadding:I

    invoke-virtual {v0, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    .line 53
    sget p2, Lmiuix/pickerwidget/R$styleable;->ProperPaddingViewGroup_smallHorizontalPaddingStart:I

    invoke-virtual {v0, p2, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;->mSmallHorizontalPaddingStart:I

    .line 54
    sget p2, Lmiuix/pickerwidget/R$styleable;->ProperPaddingViewGroup_smallHorizontalPaddingEnd:I

    invoke-virtual {v0, p2, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;->mSmallHorizontalPaddingEnd:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 59
    :cond_0
    throw p0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .line 64
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 65
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 68
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;->mChildView:Landroid/view/View;

    return-void

    .line 66
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Only one child view can be added into the ProperPaddingViewGroup!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 103
    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 104
    iget p1, p0, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;->mPaddingEnd:I

    goto :goto_0

    .line 106
    :cond_0
    iget p1, p0, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;->mPaddingStart:I

    .line 109
    :goto_0
    iget-object p2, p0, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;->mChildView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    add-int/2addr p2, p1

    .line 110
    iget-object p3, p0, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;->mChildView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    const/4 p4, 0x0

    add-int/2addr p3, p4

    .line 111
    iget-object p0, p0, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;->mChildView:Landroid/view/View;

    invoke-virtual {p0, p1, p4, p2, p3}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 73
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    int-to-float v1, v0

    .line 74
    iget v2, p0, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;->DENSITY:F

    div-float v3, v1, v2

    .line 75
    iget-boolean v4, p0, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;->mFixedHorizontalPadding:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 76
    iget v1, p0, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;->mFixedHorizontalPaddingStart:I

    iput v1, p0, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;->mPaddingStart:I

    .line 77
    iget v1, p0, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;->mFixedHorizontalPaddingEnd:I

    iput v1, p0, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;->mPaddingEnd:I

    goto :goto_0

    :cond_0
    const/high16 v4, 0x43aa0000    # 340.0f

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_2

    const/high16 v3, 0x43910000    # 290.0f

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 81
    div-int/lit8 v1, v1, 0x2

    if-gez v1, :cond_1

    move v1, v5

    .line 85
    :cond_1
    iget v2, p0, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;->mSmallHorizontalPaddingStart:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v2, v1

    iput v2, p0, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;->mPaddingStart:I

    .line 86
    iget v2, p0, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;->mSmallHorizontalPaddingEnd:I

    add-int/2addr v2, v1

    iput v2, p0, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;->mPaddingEnd:I

    goto :goto_0

    .line 88
    :cond_2
    iget v1, p0, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;->mHorizontalPaddingStart:I

    iput v1, p0, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;->mPaddingStart:I

    .line 89
    iget v1, p0, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;->mHorizontalPaddingEnd:I

    iput v1, p0, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;->mPaddingEnd:I

    .line 92
    :goto_0
    iget-object v1, p0, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;->mChildView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 93
    iget-object v2, p0, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;->mChildView:Landroid/view/View;

    iget v3, p0, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;->mPaddingStart:I

    iget v4, p0, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;->mPaddingEnd:I

    add-int/2addr v3, v4

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 94
    invoke-static {p1, v3, v1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p1

    iget-object v1, p0, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;->mChildView:Landroid/view/View;

    .line 95
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p2, v5, v1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    .line 93
    invoke-virtual {v2, p1, p2}, Landroid/view/View;->measure(II)V

    .line 97
    iget-object p1, p0, Lmiuix/pickerwidget/internal/widget/ProperPaddingViewGroup;->mChildView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method
