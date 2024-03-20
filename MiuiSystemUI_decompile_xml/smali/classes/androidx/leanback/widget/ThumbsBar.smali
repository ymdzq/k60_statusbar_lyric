.class public Landroidx/leanback/widget/ThumbsBar;
.super Landroid/widget/LinearLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mBitmaps:Landroid/util/SparseArray;

.field public mHeroThumbHeightInPixel:I

.field public mHeroThumbWidthInPixel:I

.field public mIsUserSets:Z

.field public mMeasuredMarginInPixel:I

.field public mNumOfThumbs:I

.field public mThumbHeightInPixel:I

.field public mThumbWidthInPixel:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroidx/leanback/widget/ThumbsBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, -0x1

    .line 3
    iput p2, p0, Landroidx/leanback/widget/ThumbsBar;->mNumOfThumbs:I

    .line 4
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Landroidx/leanback/widget/ThumbsBar;->mBitmaps:Landroid/util/SparseArray;

    const/4 p2, 0x0

    .line 5
    iput-boolean p2, p0, Landroidx/leanback/widget/ThumbsBar;->mIsUserSets:Z

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0705a1    # @dimen/lb_playback_transport_thumbs_width '154.0dp'

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroidx/leanback/widget/ThumbsBar;->mThumbWidthInPixel:I

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f07059f    # @dimen/lb_playback_transport_thumbs_height '154.0dp'

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroidx/leanback/widget/ThumbsBar;->mThumbHeightInPixel:I

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070597    # @dimen/lb_playback_transport_hero_thumbs_width '192.0dp'

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroidx/leanback/widget/ThumbsBar;->mHeroThumbHeightInPixel:I

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070596    # @dimen/lb_playback_transport_hero_thumbs_height '192.0dp'

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroidx/leanback/widget/ThumbsBar;->mHeroThumbWidthInPixel:I

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0705a0    # @dimen/lb_playback_transport_thumbs_margin '4.0dp'

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/leanback/widget/ThumbsBar;->mMeasuredMarginInPixel:I

    return-void
.end method


# virtual methods
.method public getHeroIndex()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 2
    move-result p0

    .line 5
    div-int/lit8 p0, p0, 0x2

    .line 6
    return p0
    .line 8
.end method

.method public final onLayout(ZIIII)V
    .locals 4

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 2
    invoke-virtual {p0}, Landroidx/leanback/widget/ThumbsBar;->getHeroIndex()I

    .line 5
    move-result p1

    .line 8
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 9
    move-result-object p2

    .line 12
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    .line 13
    move-result p3

    .line 16
    div-int/lit8 p3, p3, 0x2

    .line 17
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    .line 19
    move-result p4

    .line 22
    div-int/lit8 p4, p4, 0x2

    .line 23
    sub-int/2addr p3, p4

    .line 25
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    .line 26
    move-result p4

    .line 29
    div-int/lit8 p4, p4, 0x2

    .line 30
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    .line 32
    move-result p5

    .line 35
    div-int/lit8 p5, p5, 0x2

    .line 36
    add-int/2addr p5, p4

    .line 38
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    .line 39
    move-result p4

    .line 42
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    .line 43
    move-result v0

    .line 46
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 47
    move-result v1

    .line 50
    add-int/2addr v1, v0

    .line 51
    invoke-virtual {p2, p3, p4, p5, v1}, Landroid/view/View;->layout(IIII)V

    .line 52
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    .line 55
    move-result p4

    .line 58
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 59
    move-result p2

    .line 62
    div-int/lit8 p2, p2, 0x2

    .line 63
    add-int/2addr p2, p4

    .line 65
    add-int/lit8 p4, p1, -0x1

    .line 66
    :goto_0
    if-ltz p4, :cond_0

    .line 68
    iget v0, p0, Landroidx/leanback/widget/ThumbsBar;->mMeasuredMarginInPixel:I

    .line 70
    sub-int/2addr p3, v0

    .line 72
    invoke-virtual {p0, p4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 73
    move-result-object v0

    .line 76
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 77
    move-result v1

    .line 80
    sub-int v1, p3, v1

    .line 81
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 83
    move-result v2

    .line 86
    div-int/lit8 v2, v2, 0x2

    .line 87
    sub-int v2, p2, v2

    .line 89
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 91
    move-result v3

    .line 94
    div-int/lit8 v3, v3, 0x2

    .line 95
    add-int/2addr v3, p2

    .line 97
    invoke-virtual {v0, v1, v2, p3, v3}, Landroid/view/View;->layout(IIII)V

    .line 98
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 101
    move-result v0

    .line 104
    sub-int/2addr p3, v0

    .line 105
    add-int/lit8 p4, p4, -0x1

    .line 106
    goto :goto_0

    .line 108
    :cond_0
    :goto_1
    add-int/lit8 p1, p1, 0x1

    .line 109
    iget p3, p0, Landroidx/leanback/widget/ThumbsBar;->mNumOfThumbs:I

    .line 111
    if-ge p1, p3, :cond_1

    .line 113
    iget p3, p0, Landroidx/leanback/widget/ThumbsBar;->mMeasuredMarginInPixel:I

    .line 115
    add-int/2addr p5, p3

    .line 117
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 118
    move-result-object p3

    .line 121
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    .line 122
    move-result p4

    .line 125
    div-int/lit8 p4, p4, 0x2

    .line 126
    sub-int p4, p2, p4

    .line 128
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    .line 130
    move-result v0

    .line 133
    add-int/2addr v0, p5

    .line 134
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    .line 135
    move-result v1

    .line 138
    div-int/lit8 v1, v1, 0x2

    .line 139
    add-int/2addr v1, p2

    .line 141
    invoke-virtual {p3, p5, p4, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 142
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    .line 145
    move-result p3

    .line 148
    add-int/2addr p5, p3

    .line 149
    goto :goto_1

    .line 150
    :cond_1
    return-void
    .line 151
.end method

.method public final onMeasure(II)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    .line 5
    move-result p1

    .line 8
    iget-boolean p2, p0, Landroidx/leanback/widget/ThumbsBar;->mIsUserSets:Z

    .line 9
    if-nez p2, :cond_2

    .line 11
    iget p2, p0, Landroidx/leanback/widget/ThumbsBar;->mHeroThumbWidthInPixel:I

    .line 13
    sub-int/2addr p1, p2

    .line 15
    iget p2, p0, Landroidx/leanback/widget/ThumbsBar;->mThumbWidthInPixel:I

    .line 16
    iget v0, p0, Landroidx/leanback/widget/ThumbsBar;->mMeasuredMarginInPixel:I

    .line 18
    add-int/2addr p2, v0

    .line 20
    add-int/2addr p1, p2

    .line 21
    add-int/lit8 p1, p1, -0x1

    .line 22
    div-int/2addr p1, p2

    .line 24
    const/4 p2, 0x2

    .line 25
    if-ge p1, p2, :cond_0

    .line 26
    move p1, p2

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    and-int/lit8 p2, p1, 0x1

    .line 30
    if-eqz p2, :cond_1

    .line 32
    add-int/lit8 p1, p1, 0x1

    .line 34
    :cond_1
    :goto_0
    add-int/lit8 p1, p1, 0x1

    .line 36
    iget p2, p0, Landroidx/leanback/widget/ThumbsBar;->mNumOfThumbs:I

    .line 38
    if-eq p2, p1, :cond_2

    .line 40
    iput p1, p0, Landroidx/leanback/widget/ThumbsBar;->mNumOfThumbs:I

    .line 42
    invoke-virtual {p0}, Landroidx/leanback/widget/ThumbsBar;->setNumberOfThumbsInternal()V

    .line 44
    :cond_2
    return-void
    .line 47
.end method

.method public setHeroThumbSize(II)V
    .locals 8

    .line 1
    iput p2, p0, Landroidx/leanback/widget/ThumbsBar;->mHeroThumbHeightInPixel:I

    .line 2
    iput p1, p0, Landroidx/leanback/widget/ThumbsBar;->mHeroThumbWidthInPixel:I

    .line 4
    invoke-virtual {p0}, Landroidx/leanback/widget/ThumbsBar;->getHeroIndex()I

    .line 6
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    move v2, v1

    .line 11
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 12
    move-result v3

    .line 15
    if-ge v2, v3, :cond_3

    .line 16
    if-ne v0, v2, :cond_2

    .line 18
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 20
    move-result-object v3

    .line 23
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 24
    move-result-object v4

    .line 27
    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 28
    iget v5, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 30
    const/4 v6, 0x1

    .line 32
    if-eq v5, p2, :cond_0

    .line 33
    iput p2, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 35
    move v5, v6

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    move v5, v1

    .line 39
    :goto_1
    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 40
    if-eq v7, p1, :cond_1

    .line 42
    iput p1, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 44
    goto :goto_2

    .line 46
    :cond_1
    move v6, v5

    .line 47
    :goto_2
    if-eqz v6, :cond_2

    .line 48
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 53
    goto :goto_0

    .line 55
    :cond_3
    return-void
    .line 56
.end method

.method public setNumberOfThumbs(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/leanback/widget/ThumbsBar;->mIsUserSets:Z

    .line 3
    iput p1, p0, Landroidx/leanback/widget/ThumbsBar;->mNumOfThumbs:I

    .line 5
    invoke-virtual {p0}, Landroidx/leanback/widget/ThumbsBar;->setNumberOfThumbsInternal()V

    .line 7
    return-void
    .line 10
.end method

.method public final setNumberOfThumbsInternal()V
    .locals 5

    .line 1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 2
    move-result v0

    .line 5
    iget v1, p0, Landroidx/leanback/widget/ThumbsBar;->mNumOfThumbs:I

    .line 6
    if-le v0, v1, :cond_0

    .line 8
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 10
    move-result v0

    .line 13
    add-int/lit8 v0, v0, -0x1

    .line 14
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 16
    move-result-object v0

    .line 19
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 20
    goto :goto_0

    .line 23
    :cond_0
    :goto_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 24
    move-result v0

    .line 27
    iget v1, p0, Landroidx/leanback/widget/ThumbsBar;->mNumOfThumbs:I

    .line 28
    if-ge v0, v1, :cond_1

    .line 30
    new-instance v0, Landroid/widget/ImageView;

    .line 32
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 34
    move-result-object v1

    .line 37
    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 41
    iget v2, p0, Landroidx/leanback/widget/ThumbsBar;->mThumbWidthInPixel:I

    .line 43
    iget v3, p0, Landroidx/leanback/widget/ThumbsBar;->mThumbHeightInPixel:I

    .line 45
    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 47
    invoke-virtual {p0, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    goto :goto_1

    .line 53
    :cond_1
    invoke-virtual {p0}, Landroidx/leanback/widget/ThumbsBar;->getHeroIndex()I

    .line 54
    move-result v0

    .line 57
    const/4 v1, 0x0

    .line 58
    :goto_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 59
    move-result v2

    .line 62
    if-ge v1, v2, :cond_3

    .line 63
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 65
    move-result-object v2

    .line 68
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 69
    move-result-object v3

    .line 72
    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 73
    if-ne v0, v1, :cond_2

    .line 75
    iget v4, p0, Landroidx/leanback/widget/ThumbsBar;->mHeroThumbWidthInPixel:I

    .line 77
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 79
    iget v4, p0, Landroidx/leanback/widget/ThumbsBar;->mHeroThumbHeightInPixel:I

    .line 81
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 83
    goto :goto_3

    .line 85
    :cond_2
    iget v4, p0, Landroidx/leanback/widget/ThumbsBar;->mThumbWidthInPixel:I

    .line 86
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 88
    iget v4, p0, Landroidx/leanback/widget/ThumbsBar;->mThumbHeightInPixel:I

    .line 90
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 92
    :goto_3
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    add-int/lit8 v1, v1, 0x1

    .line 97
    goto :goto_2

    .line 99
    :cond_3
    return-void
    .line 100
.end method

.method public setThumbBitmap(ILandroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/ThumbsBar;->mBitmaps:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 7
    move-result-object p0

    .line 10
    check-cast p0, Landroid/widget/ImageView;

    .line 11
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 13
    return-void
    .line 16
.end method

.method public setThumbSize(II)V
    .locals 8

    .line 1
    iput p2, p0, Landroidx/leanback/widget/ThumbsBar;->mThumbHeightInPixel:I

    .line 2
    iput p1, p0, Landroidx/leanback/widget/ThumbsBar;->mThumbWidthInPixel:I

    .line 4
    invoke-virtual {p0}, Landroidx/leanback/widget/ThumbsBar;->getHeroIndex()I

    .line 6
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    move v2, v1

    .line 11
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 12
    move-result v3

    .line 15
    if-ge v2, v3, :cond_3

    .line 16
    if-eq v0, v2, :cond_2

    .line 18
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 20
    move-result-object v3

    .line 23
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 24
    move-result-object v4

    .line 27
    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 28
    iget v5, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 30
    const/4 v6, 0x1

    .line 32
    if-eq v5, p2, :cond_0

    .line 33
    iput p2, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 35
    move v5, v6

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    move v5, v1

    .line 39
    :goto_1
    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 40
    if-eq v7, p1, :cond_1

    .line 42
    iput p1, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 44
    goto :goto_2

    .line 46
    :cond_1
    move v6, v5

    .line 47
    :goto_2
    if-eqz v6, :cond_2

    .line 48
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 53
    goto :goto_0

    .line 55
    :cond_3
    return-void
    .line 56
.end method

.method public setThumbSpace(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/leanback/widget/ThumbsBar;->mMeasuredMarginInPixel:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 4
    return-void
    .line 7
.end method
