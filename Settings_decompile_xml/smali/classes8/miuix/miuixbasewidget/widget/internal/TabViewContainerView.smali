.class public Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;
.super Landroid/widget/FrameLayout;
.source "TabViewContainerView.java"


# instance fields
.field private mChildrenTotalWidth:I

.field private mDensityDpi:I

.field private mGapBetweenTabs:I

.field private mLayoutCenter:Z

.field private mLayoutMode:I

.field private final mOverSizeViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mSmallSizeViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mSpaciousLessThanTwoItemMinWidth:I

.field private mSpaciousMoreThanFourItemMinWidth:I

.field private mSpaciousThreeItemMinWidth:I

.field private mVerticalPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, v0}, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, v0}, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, p3, v0}, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 29
    iput-boolean p1, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mLayoutCenter:Z

    .line 32
    iput p1, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mLayoutMode:I

    .line 35
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mOverSizeViews:Ljava/util/List;

    .line 36
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mSmallSizeViews:Ljava/util/List;

    .line 52
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->updateLayoutParams()V

    return-void
.end method

.method private isViewGone(Landroid/view/View;)Z
    .locals 0

    .line 182
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    const/16 p1, 0x8

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private updateLayoutParams()V
    .locals 3

    .line 56
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 57
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 58
    sget v2, Lmiuix/miuixbasewidget/R$dimen;->miuix_appcompat_filter_sort_view2_tab_gap:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mGapBetweenTabs:I

    .line 59
    sget v2, Lmiuix/miuixbasewidget/R$dimen;->miuix_appcompat_filter_sort_view2_vertical_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mVerticalPadding:I

    const/high16 v1, 0x435c0000    # 220.0f

    .line 60
    invoke-static {v0, v1}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mSpaciousLessThanTwoItemMinWidth:I

    const/high16 v1, 0x43340000    # 180.0f

    .line 61
    invoke-static {v0, v1}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mSpaciousThreeItemMinWidth:I

    const/high16 v1, 0x43160000    # 150.0f

    .line 62
    invoke-static {v0, v1}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mSpaciousMoreThanFourItemMinWidth:I

    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 67
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 68
    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 69
    iget v0, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mDensityDpi:I

    if-eq p1, v0, :cond_0

    .line 70
    iput p1, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mDensityDpi:I

    .line 71
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->updateLayoutParams()V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    sub-int/2addr p4, p2

    .line 190
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    .line 191
    iget p2, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mVerticalPadding:I

    .line 192
    iget-boolean p3, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mLayoutCenter:Z

    if-eqz p3, :cond_0

    .line 193
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingStart()I

    move-result p3

    iget p5, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mChildrenTotalWidth:I

    sub-int/2addr p4, p5

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p3, p4

    goto :goto_0

    .line 195
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingStart()I

    move-result p3

    :goto_0
    const/4 p4, 0x0

    move v2, p3

    :goto_1
    if-ge p4, p1, :cond_2

    .line 198
    invoke-virtual {p0, p4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 199
    invoke-direct {p0, v1}, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->isViewGone(Landroid/view/View;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 200
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    add-int/2addr p3, v2

    .line 201
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    add-int v5, p2, p5

    move-object v0, p0

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 202
    iget p5, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mGapBetweenTabs:I

    add-int v2, p3, p5

    :cond_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 77
    iput-boolean v1, v0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mLayoutCenter:Z

    .line 78
    iput v1, v0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mChildrenTotalWidth:I

    .line 79
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    move v3, v1

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_1

    .line 82
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {v0, v5}, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->isViewGone(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_1
    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ge v3, v2, :cond_5

    .line 87
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 88
    iget v8, v0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mLayoutMode:I

    if-ne v8, v6, :cond_4

    if-gt v4, v5, :cond_2

    .line 90
    iget v5, v0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mSpaciousLessThanTwoItemMinWidth:I

    invoke-virtual {v7, v5}, Landroid/view/View;->setMinimumWidth(I)V

    goto :goto_2

    :cond_2
    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    .line 92
    iget v5, v0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mSpaciousThreeItemMinWidth:I

    invoke-virtual {v7, v5}, Landroid/view/View;->setMinimumWidth(I)V

    goto :goto_2

    .line 94
    :cond_3
    iget v5, v0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mSpaciousMoreThanFourItemMinWidth:I

    invoke-virtual {v7, v5}, Landroid/view/View;->setMinimumWidth(I)V

    goto :goto_2

    .line 97
    :cond_4
    invoke-virtual {v7, v1}, Landroid/view/View;->setMinimumWidth(I)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 100
    :cond_5
    invoke-super/range {p0 .. p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    if-gtz v4, :cond_6

    return-void

    .line 104
    :cond_6
    iget-object v3, v0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mOverSizeViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 105
    iget-object v3, v0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mSmallSizeViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 107
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 108
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingStart()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingEnd()I

    move-result v8

    add-int/2addr v7, v8

    if-le v4, v6, :cond_7

    add-int/lit8 v8, v4, -0x1

    .line 111
    iget v9, v0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mGapBetweenTabs:I

    mul-int/2addr v8, v9

    goto :goto_3

    :cond_7
    move v8, v1

    :goto_3
    sub-int v9, v3, v7

    sub-int/2addr v9, v8

    .line 115
    div-int v4, v9, v4

    move v10, v1

    move v11, v10

    move v12, v11

    move v13, v12

    :goto_4
    const/high16 v14, 0x40000000    # 2.0f

    if-ge v10, v2, :cond_a

    .line 119
    invoke-virtual {v0, v10}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 120
    invoke-direct {v0, v15}, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->isViewGone(Landroid/view/View;)Z

    move-result v16

    if-nez v16, :cond_9

    .line 121
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v11, v1

    if-le v1, v4, :cond_8

    .line 124
    iget-object v6, v0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mOverSizeViews:Ljava/util/List;

    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v13, v1

    goto :goto_5

    .line 127
    :cond_8
    iget-object v6, v0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mSmallSizeViews:Ljava/util/List;

    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v12, v1

    .line 132
    :goto_5
    invoke-static {v1, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 133
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v6

    invoke-static {v6, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 131
    invoke-virtual {v15, v1, v6}, Landroid/view/View;->measure(II)V

    :cond_9
    add-int/lit8 v10, v10, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x1

    goto :goto_4

    .line 137
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    iget v6, v0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mVerticalPadding:I

    mul-int/2addr v6, v5

    add-int/2addr v1, v6

    if-le v11, v9, :cond_b

    add-int/2addr v11, v8

    add-int/2addr v11, v7

    .line 139
    invoke-virtual {v0, v11, v1}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    return-void

    .line 142
    :cond_b
    iget v5, v0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mLayoutMode:I

    if-nez v5, :cond_10

    .line 143
    iget-object v5, v0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mOverSizeViews:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_d

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v2, :cond_f

    .line 145
    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 146
    invoke-direct {v0, v6}, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->isViewGone(Landroid/view/View;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 148
    invoke-static {v4, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 149
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-static {v8, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 147
    invoke-virtual {v6, v7, v8}, Landroid/view/View;->measure(II)V

    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_d
    if-lez v12, :cond_f

    .line 155
    iget-object v2, v0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mSmallSizeViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v9, v13

    const/4 v4, 0x0

    :goto_7
    if-ge v4, v2, :cond_f

    .line 158
    iget-object v5, v0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mSmallSizeViews:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 159
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x3f800000    # 1.0f

    mul-float/2addr v6, v7

    int-to-float v7, v12

    div-float/2addr v6, v7

    int-to-float v7, v9

    mul-float/2addr v6, v7

    float-to-int v6, v6

    .line 160
    invoke-direct {v0, v5}, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->isViewGone(Landroid/view/View;)Z

    move-result v7

    if-nez v7, :cond_e

    .line 162
    invoke-static {v6, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 163
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-static {v7, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 161
    invoke-virtual {v5, v6, v7}, Landroid/view/View;->measure(II)V

    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 170
    :cond_f
    invoke-virtual {v0, v3, v1}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    goto :goto_8

    :cond_10
    const/4 v2, 0x1

    if-ne v5, v2, :cond_11

    .line 172
    iput-boolean v2, v0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mLayoutCenter:Z

    add-int/2addr v11, v8

    .line 173
    iput v11, v0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mChildrenTotalWidth:I

    .line 175
    invoke-virtual {v0, v3, v1}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    :goto_8
    return-void

    .line 177
    :cond_11
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal layout mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mLayoutMode:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setTabViewLayoutMode(I)V
    .locals 1

    .line 208
    iget v0, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mLayoutMode:I

    if-eq v0, p1, :cond_0

    .line 209
    iput p1, p0, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->mLayoutMode:I

    .line 210
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_0
    return-void
.end method
