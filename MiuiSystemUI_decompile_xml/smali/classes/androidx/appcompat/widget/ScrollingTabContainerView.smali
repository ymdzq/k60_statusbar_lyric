.class public Landroidx/appcompat/widget/ScrollingTabContainerView;
.super Landroid/widget/HorizontalScrollView;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field public mAllowCollapse:Z

.field public mContentHeight:I

.field public mMaxTabWidth:I

.field public mSelectedTabIndex:I

.field public mStackedTabMaxWidth:I

.field public final mTabLayout:Landroidx/appcompat/widget/LinearLayoutCompat;

.field public mTabSelector:Landroidx/appcompat/widget/ScrollingTabContainerView$1;

.field public mTabSpinner:Landroidx/appcompat/widget/AppCompatSpinner;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 2
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 4
    return-void
    .line 7
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Landroidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener;

    .line 5
    invoke-direct {v0, p0}, Landroidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener;-><init>(Landroidx/appcompat/widget/ScrollingTabContainerView;)V

    .line 7
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 11
    sget-object v1, Landroidx/appcompat/R$styleable;->ActionBar:[I

    .line 14
    const v2, 0x7f040038    # @attr/actionBarStyle

    .line 16
    const/4 v3, 0x0

    .line 19
    invoke-virtual {p1, v3, v1, v2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 20
    move-result-object v1

    .line 23
    const/16 v2, 0x26

    .line 24
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    .line 26
    move-result v0

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 30
    move-result-object v2

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 34
    move-result-object v4

    .line 37
    const/high16 v5, 0x7f050000    # @bool/abc_action_bar_embed_tabs 'true'

    .line 38
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 40
    move-result v4

    .line 43
    if-nez v4, :cond_0

    .line 44
    const v4, 0x7f07000a    # @dimen/abc_action_bar_stacked_max_height '48.0dp'

    .line 46
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 49
    move-result v2

    .line 52
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 53
    move-result v0

    .line 56
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 57
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ScrollingTabContainerView;->setContentHeight(I)V

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 63
    move-result-object p1

    .line 66
    const v0, 0x7f07000b    # @dimen/abc_action_bar_stacked_tab_max_width '180.0dp'

    .line 67
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 70
    move-result p1

    .line 73
    iput p1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    .line 74
    new-instance p1, Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 76
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    .line 78
    move-result-object v0

    .line 81
    const v1, 0x7f04003b    # @attr/actionBarTabBarStyle

    .line 82
    invoke-direct {p1, v0, v3, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 85
    const/4 v0, 0x1

    .line 88
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->setMeasureWithLargestChildEnabled(Z)V

    .line 89
    const/16 v0, 0x11

    .line 92
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->setGravity(I)V

    .line 94
    new-instance v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 97
    const/4 v1, -0x2

    .line 99
    const/4 v2, -0x1

    .line 100
    invoke-direct {v0, v1, v2}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    .line 101
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    iput-object p1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabLayout:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 107
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 109
    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 111
    invoke-virtual {p0, p1, v0}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    return-void
    .line 117
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabSelector:Landroidx/appcompat/widget/ScrollingTabContainerView$1;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    .line 9
    :cond_0
    return-void
    .line 12
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    .line 5
    move-result-object p1

    .line 8
    sget-object v0, Landroidx/appcompat/R$styleable;->ActionBar:[I

    .line 9
    const/4 v1, 0x0

    .line 11
    const v2, 0x7f040038    # @attr/actionBarStyle

    .line 12
    const/4 v3, 0x0

    .line 15
    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 16
    move-result-object v0

    .line 19
    const/16 v1, 0x26

    .line 20
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    .line 22
    move-result v1

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 26
    move-result-object v2

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 30
    move-result-object v3

    .line 33
    const/high16 v4, 0x7f050000    # @bool/abc_action_bar_embed_tabs 'true'

    .line 34
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 36
    move-result v3

    .line 39
    if-nez v3, :cond_0

    .line 40
    const v3, 0x7f07000a    # @dimen/abc_action_bar_stacked_max_height '48.0dp'

    .line 42
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 45
    move-result v2

    .line 48
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 49
    move-result v1

    .line 52
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 53
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/ScrollingTabContainerView;->setContentHeight(I)V

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 59
    move-result-object p1

    .line 62
    const v0, 0x7f07000b    # @dimen/abc_action_bar_stacked_tab_max_width '180.0dp'

    .line 63
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 66
    move-result p1

    .line 69
    iput p1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    .line 70
    return-void
    .line 72
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabSelector:Landroidx/appcompat/widget/ScrollingTabContainerView$1;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 9
    :cond_0
    return-void
    .line 12
.end method

.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    check-cast p2, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const/4 p0, 0x0

    .line 7
    throw p0
    .line 8
.end method

.method public final onMeasure(II)V
    .locals 7

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 2
    move-result p2

    .line 5
    const/4 v0, 0x1

    .line 6
    const/4 v1, 0x0

    .line 7
    const/high16 v2, 0x40000000    # 2.0f

    .line 8
    if-ne p2, v2, :cond_0

    .line 10
    move v3, v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v3, v1

    .line 14
    :goto_0
    invoke-virtual {p0, v3}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    .line 15
    iget-object v4, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabLayout:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 18
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    .line 20
    move-result v4

    .line 23
    const/4 v5, -0x1

    .line 24
    if-le v4, v0, :cond_3

    .line 25
    if-eq p2, v2, :cond_1

    .line 27
    const/high16 v6, -0x80000000

    .line 29
    if-ne p2, v6, :cond_3

    .line 31
    :cond_1
    const/4 p2, 0x2

    .line 33
    if-le v4, p2, :cond_2

    .line 34
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 36
    move-result p2

    .line 39
    int-to-float p2, p2

    .line 40
    const v4, 0x3ecccccd    # 0.4f

    .line 41
    mul-float/2addr p2, v4

    .line 44
    float-to-int p2, p2

    .line 45
    iput p2, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    .line 46
    goto :goto_1

    .line 48
    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 49
    move-result v4

    .line 52
    div-int/2addr v4, p2

    .line 53
    iput v4, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    .line 54
    :goto_1
    iget p2, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    .line 56
    iget v4, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    .line 58
    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    .line 60
    move-result p2

    .line 63
    iput p2, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    .line 64
    goto :goto_2

    .line 66
    :cond_3
    iput v5, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    .line 67
    :goto_2
    iget p2, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mContentHeight:I

    .line 69
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 71
    move-result p2

    .line 74
    if-nez v3, :cond_4

    .line 75
    iget-boolean v2, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    .line 77
    if-eqz v2, :cond_4

    .line 79
    move v2, v0

    .line 81
    goto :goto_3

    .line 82
    :cond_4
    move v2, v1

    .line 83
    :goto_3
    if-eqz v2, :cond_b

    .line 84
    iget-object v2, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabLayout:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 86
    invoke-virtual {v2, v1, p2}, Landroid/view/ViewGroup;->measure(II)V

    .line 88
    iget-object v2, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabLayout:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 91
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    .line 93
    move-result v2

    .line 96
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 97
    move-result v4

    .line 100
    if-le v2, v4, :cond_a

    .line 101
    iget-object v2, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 103
    if-eqz v2, :cond_5

    .line 105
    invoke-virtual {v2}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    .line 107
    move-result-object v2

    .line 110
    if-ne v2, p0, :cond_5

    .line 111
    goto :goto_4

    .line 113
    :cond_5
    move v0, v1

    .line 114
    :goto_4
    if-eqz v0, :cond_6

    .line 115
    goto :goto_5

    .line 117
    :cond_6
    iget-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 118
    const/4 v1, 0x0

    .line 120
    const/4 v2, -0x2

    .line 121
    if-nez v0, :cond_7

    .line 122
    new-instance v0, Landroidx/appcompat/widget/AppCompatSpinner;

    .line 124
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    .line 126
    move-result-object v4

    .line 129
    const v6, 0x7f04004d    # @attr/actionDropDownStyle

    .line 130
    invoke-direct {v0, v4, v1, v6}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 133
    new-instance v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 136
    invoke-direct {v4, v2, v5}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    .line 138
    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 144
    iput-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 147
    :cond_7
    iget-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabLayout:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 149
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->removeView(Landroid/view/View;)V

    .line 151
    iget-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 154
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    .line 156
    invoke-direct {v4, v2, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 158
    invoke-virtual {p0, v0, v4}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    iget-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 164
    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    .line 166
    move-result-object v0

    .line 169
    if-nez v0, :cond_8

    .line 170
    iget-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 172
    new-instance v2, Landroidx/appcompat/widget/ScrollingTabContainerView$TabAdapter;

    .line 174
    invoke-direct {v2, p0}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabAdapter;-><init>(Landroidx/appcompat/widget/ScrollingTabContainerView;)V

    .line 176
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 179
    :cond_8
    iget-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabSelector:Landroidx/appcompat/widget/ScrollingTabContainerView$1;

    .line 182
    if-eqz v0, :cond_9

    .line 184
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 186
    iput-object v1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabSelector:Landroidx/appcompat/widget/ScrollingTabContainerView$1;

    .line 189
    :cond_9
    iget-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 191
    iget v1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    .line 193
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 195
    goto :goto_5

    .line 198
    :cond_a
    invoke-virtual {p0}, Landroidx/appcompat/widget/ScrollingTabContainerView;->performExpand()V

    .line 199
    goto :goto_5

    .line 202
    :cond_b
    invoke-virtual {p0}, Landroidx/appcompat/widget/ScrollingTabContainerView;->performExpand()V

    .line 203
    :goto_5
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    .line 206
    move-result v0

    .line 209
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 210
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    .line 213
    move-result p1

    .line 216
    if-eqz v3, :cond_c

    .line 217
    if-eq v0, p1, :cond_c

    .line 219
    iget p1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    .line 221
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ScrollingTabContainerView;->setTabSelected(I)V

    .line 223
    :cond_c
    return-void
    .line 226
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final performExpand()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    .line 6
    move-result-object v0

    .line 9
    if-ne v0, p0, :cond_0

    .line 10
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    if-nez v0, :cond_1

    .line 15
    return-void

    .line 17
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 18
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->removeView(Landroid/view/View;)V

    .line 20
    iget-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabLayout:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 23
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 25
    const/4 v2, -0x2

    .line 27
    const/4 v3, -0x1

    .line 28
    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 29
    invoke-virtual {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    iget-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 35
    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    .line 37
    move-result v0

    .line 40
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ScrollingTabContainerView;->setTabSelected(I)V

    .line 41
    return-void
    .line 44
.end method

.method public setAllowCollapse(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    .line 2
    return-void
    .line 4
.end method

.method public setContentHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mContentHeight:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    .line 4
    return-void
    .line 7
.end method

.method public setTabSelected(I)V
    .locals 5

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabLayout:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 4
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    move v2, v1

    .line 11
    :goto_0
    if-ge v2, v0, :cond_3

    .line 12
    iget-object v3, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabLayout:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 14
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 16
    move-result-object v3

    .line 19
    if-ne v2, p1, :cond_0

    .line 20
    const/4 v4, 0x1

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    move v4, v1

    .line 24
    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    .line 25
    if-eqz v4, :cond_2

    .line 28
    iget-object v3, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabLayout:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 30
    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 32
    move-result-object v3

    .line 35
    iget-object v4, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabSelector:Landroidx/appcompat/widget/ScrollingTabContainerView$1;

    .line 36
    if-eqz v4, :cond_1

    .line 38
    invoke-virtual {p0, v4}, Landroid/widget/HorizontalScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 40
    :cond_1
    new-instance v4, Landroidx/appcompat/widget/ScrollingTabContainerView$1;

    .line 43
    invoke-direct {v4, p0, v3}, Landroidx/appcompat/widget/ScrollingTabContainerView$1;-><init>(Landroidx/appcompat/widget/ScrollingTabContainerView;Landroid/view/View;)V

    .line 45
    iput-object v4, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabSelector:Landroidx/appcompat/widget/ScrollingTabContainerView$1;

    .line 48
    invoke-virtual {p0, v4}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    .line 50
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 53
    goto :goto_0

    .line 55
    :cond_3
    iget-object p0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 56
    if-eqz p0, :cond_4

    .line 58
    if-ltz p1, :cond_4

    .line 60
    invoke-virtual {p0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 62
    :cond_4
    return-void
    .line 65
.end method
