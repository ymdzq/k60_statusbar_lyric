.class public Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;
.super Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mActionCount:I

.field public mMaxActionButtonWidth:I

.field public mMenuItemGap:I

.field public mMenuItemHeight:I

.field public final mStartPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 3
    iput p2, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mMaxActionButtonWidth:I

    .line 4
    iput p2, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mMenuItemGap:I

    .line 5
    iput p2, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mStartPadding:I

    .line 6
    iput p2, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mActionCount:I

    const/4 p2, 0x0

    .line 7
    invoke-super {p0, p2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070a11    # @dimen/miuix_appcompat_action_end_menu_button_gap '8.0dp'

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mMenuItemGap:I

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070a12    # @dimen/miuix_appcompat_action_end_menu_start_padding '12.0dp'

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mStartPadding:I

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070a0e    # @dimen/miuix_appcompat_action_button_max_width '152.73dp'

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mMaxActionButtonWidth:I

    return-void
.end method

.method private getActionMenuItemCount()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method


# virtual methods
.method public final filterLeftoverView(I)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    move-result-object v0

    .line 9
    check-cast v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    .line 10
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x1

    .line 13
    if-eqz v0, :cond_1

    .line 14
    iget-boolean v0, v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 16
    if-nez v0, :cond_0

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    move v0, v1

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    move v0, v2

    .line 23
    :goto_1
    if-eqz v0, :cond_2

    .line 24
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->filterLeftoverView(I)Z

    .line 26
    move v1, v2

    .line 29
    :cond_2
    return v1
    .line 30
.end method

.method public getCollapsedHeight()I
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mMenuItemHeight:I

    .line 2
    return p0
    .line 4
.end method

.method public final onLayout(ZIIII)V
    .locals 7

    .line 1
    sub-int/2addr p5, p3

    .line 2
    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 4
    move-result p2

    .line 7
    iget p3, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mStartPadding:I

    .line 8
    const/4 p4, 0x0

    .line 10
    :goto_0
    if-ge p4, p2, :cond_0

    .line 11
    invoke-virtual {p0, p4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 13
    move-result-object v6

    .line 16
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    .line 17
    move-result v0

    .line 20
    add-int v4, v0, p3

    .line 21
    move-object v0, p0

    .line 23
    move-object v1, v6

    .line 24
    move v2, p3

    .line 25
    move v3, p1

    .line 26
    move v5, p5

    .line 27
    invoke-static/range {v0 .. v5}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 28
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    .line 31
    move-result v0

    .line 34
    iget v1, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mMenuItemGap:I

    .line 35
    add-int/2addr v0, v1

    .line 37
    add-int/2addr p3, v0

    .line 38
    add-int/lit8 p4, p4, 0x1

    .line 39
    goto :goto_0

    .line 41
    :cond_0
    return-void
    .line 42
.end method

.method public final onMeasure(II)V
    .locals 13

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 2
    move-result v0

    .line 5
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->getActionMenuItemCount()I

    .line 6
    move-result v1

    .line 9
    iput v1, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mActionCount:I

    .line 10
    const/4 v2, 0x0

    .line 12
    if-eqz v0, :cond_3

    .line 13
    if-nez v1, :cond_0

    .line 15
    goto :goto_1

    .line 17
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 18
    move-result p1

    .line 21
    iget v1, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mActionCount:I

    .line 22
    div-int v1, p1, v1

    .line 24
    iget v3, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mMaxActionButtonWidth:I

    .line 26
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    .line 28
    move-result v1

    .line 31
    iput v1, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mMaxActionButtonWidth:I

    .line 32
    const/high16 v3, -0x80000000

    .line 34
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 36
    move-result v1

    .line 39
    move v3, v2

    .line 40
    move v10, v3

    .line 41
    move v11, v10

    .line 42
    :goto_0
    if-ge v3, v0, :cond_1

    .line 43
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 45
    move-result-object v12

    .line 48
    const/4 v7, 0x0

    .line 49
    const/4 v9, 0x0

    .line 50
    move-object v4, p0

    .line 51
    move-object v5, v12

    .line 52
    move v6, v1

    .line 53
    move v8, p2

    .line 54
    invoke-virtual/range {v4 .. v9}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 55
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    .line 58
    move-result v4

    .line 61
    iget v5, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mMaxActionButtonWidth:I

    .line 62
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    .line 64
    move-result v4

    .line 67
    add-int/2addr v10, v4

    .line 68
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    .line 69
    move-result v4

    .line 72
    invoke-static {v11, v4}, Ljava/lang/Math;->max(II)I

    .line 73
    move-result v11

    .line 76
    add-int/lit8 v3, v3, 0x1

    .line 77
    goto :goto_0

    .line 79
    :cond_1
    iget p2, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mMenuItemGap:I

    .line 80
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mActionCount:I

    .line 82
    add-int/lit8 v0, v0, -0x1

    .line 84
    mul-int/2addr v0, p2

    .line 86
    iget p2, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mStartPadding:I

    .line 87
    add-int v1, p2, v10

    .line 89
    add-int/2addr v1, v0

    .line 91
    if-le v1, p1, :cond_2

    .line 92
    iput v2, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mMenuItemGap:I

    .line 94
    :cond_2
    add-int/2addr v10, v0

    .line 96
    add-int/2addr v10, p2

    .line 97
    iput v11, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mMenuItemHeight:I

    .line 98
    invoke-virtual {p0, v10, v11}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    .line 100
    return-void

    .line 103
    :cond_3
    :goto_1
    iput v2, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mMenuItemHeight:I

    .line 104
    invoke-virtual {p0, v2, v2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    .line 106
    return-void
    .line 109
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public setBgBlur(Z[I[I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
