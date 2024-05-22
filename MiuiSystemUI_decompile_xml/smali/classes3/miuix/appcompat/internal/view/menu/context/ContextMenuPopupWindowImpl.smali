.class public final Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;
.super Lmiuix/internal/widget/ListPopup;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mAdapter:Lmiuix/appcompat/internal/view/menu/context/ContextMenuAdapter;

.field public mLastAnchor:Landroid/view/View;

.field public mLastParent:Landroid/view/ViewGroup;

.field public final mMarginScreen:I

.field public final mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

.field public mPopupContentView:Landroid/widget/LinearLayout;

.field public final mSeparateMenuItem:Landroid/view/MenuItem;

.field public mSeparateMenuView:Landroid/view/View;

.field public mX:F

.field public mY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lmiuix/internal/widget/ListPopup;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p2, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 5
    new-instance v0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuAdapter;

    .line 7
    invoke-direct {v0, p1, p2}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuAdapter;-><init>(Landroid/content/Context;Landroid/view/Menu;)V

    .line 9
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mAdapter:Lmiuix/appcompat/internal/view/menu/context/ContextMenuAdapter;

    .line 12
    iget-object p2, v0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuAdapter;->mLastCategorySystemOrderMenuItem:Landroid/view/MenuItem;

    .line 14
    iput-object p2, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuItem:Landroid/view/MenuItem;

    .line 16
    if-nez p2, :cond_0

    .line 18
    iget-object p2, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuView:Landroid/view/View;

    .line 20
    const/16 v1, 0x8

    .line 22
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    goto :goto_0

    .line 27
    :cond_0
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuView:Landroid/view/View;

    .line 28
    const v2, 0x1020014    # @android:id/text1

    .line 30
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    move-result-object v1

    .line 36
    check-cast v1, Landroid/widget/TextView;

    .line 37
    invoke-interface {p2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    .line 39
    move-result-object p2

    .line 42
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object p2, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuView:Landroid/view/View;

    .line 46
    new-instance v1, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl$2;

    .line 48
    invoke-direct {v1, p0}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl$2;-><init>(Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;)V

    .line 50
    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object p2, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuView:Landroid/view/View;

    .line 56
    invoke-static {p2}, Lmiuix/internal/util/AnimHelper;->addPressAnim(Landroid/view/View;)V

    .line 58
    :goto_0
    invoke-virtual {p0, v0}, Lmiuix/internal/widget/ListPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 61
    new-instance p2, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl$1;

    .line 64
    invoke-direct {p2, p0}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl$1;-><init>(Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;)V

    .line 66
    iput-object p2, p0, Lmiuix/internal/widget/ListPopup;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 69
    iput-object p3, p0, Lmiuix/internal/widget/ListPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 73
    move-result-object p1

    .line 76
    const p2, 0x7f070a51    # @dimen/miuix_appcompat_context_menu_window_margin_screen '16.0dp'

    .line 77
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 80
    move-result p1

    .line 83
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mMarginScreen:I

    .line 84
    return-void
    .line 86
.end method


# virtual methods
.method public final checkMaxHeight()I
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/internal/widget/ListPopup;->mMaxAllowedHeight:I

    .line 2
    return p0
    .line 4
.end method

.method public final getListViewHeight()I
    .locals 7

    .line 1
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mContentView:Landroid/view/View;

    .line 2
    const v1, 0x102000a    # @android:id/list

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 10
    check-cast v0, Landroid/widget/ListView;

    .line 11
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 16
    move-result-object p0

    .line 19
    move v2, v1

    .line 20
    move v3, v2

    .line 21
    :goto_0
    invoke-interface {p0}, Landroid/widget/ListAdapter;->getCount()I

    .line 22
    move-result v4

    .line 25
    if-ge v2, v4, :cond_1

    .line 26
    const/4 v4, 0x0

    .line 28
    invoke-interface {p0, v2, v4, v0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 29
    move-result-object v4

    .line 32
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 33
    move-result v5

    .line 36
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 37
    move-result v6

    .line 40
    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    .line 41
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 44
    move-result v4

    .line 47
    add-int/2addr v3, v4

    .line 48
    add-int/lit8 v2, v2, 0x1

    .line 49
    goto :goto_0

    .line 51
    :cond_0
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mContentView:Landroid/view/View;

    .line 52
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 54
    move-result v2

    .line 57
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 58
    move-result v3

    .line 61
    invoke-virtual {v0, v2, v3}, Landroid/view/View;->measure(II)V

    .line 62
    iget-object p0, p0, Lmiuix/internal/widget/ListPopup;->mContentView:Landroid/view/View;

    .line 65
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 67
    move-result p0

    .line 70
    add-int/lit8 v3, p0, 0x0

    .line 71
    :cond_1
    return v3
    .line 73
.end method

.method public final prepareContentView(Landroid/content/Context;)V
    .locals 7

    .line 1
    new-instance v0, Landroid/widget/LinearLayout;

    .line 2
    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 4
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mPopupContentView:Landroid/widget/LinearLayout;

    .line 7
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 10
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 13
    move-result-object v0

    .line 16
    const v1, 0x7f0d020d    # @layout/miuix_appcompat_popup_menu_item_context_separate 'res/layout/miuix_appcompat_popup_menu_item_context_separate.xml'

    .line 17
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 22
    move-result-object v0

    .line 25
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuView:Landroid/view/View;

    .line 26
    const v0, 0x7f0403cd    # @attr/immersionWindowBackground

    .line 28
    invoke-static {v0, p1}, Lmiuix/internal/util/AttributeResolver;->resolveDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 31
    move-result-object v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 37
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 39
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Lmiuix/smooth/SmoothFrameLayout2;

    .line 42
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 44
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuView:Landroid/view/View;

    .line 47
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 49
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    .line 53
    move-result-object v0

    .line 56
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 57
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 60
    const/4 v1, -0x1

    .line 62
    const/4 v4, -0x2

    .line 63
    invoke-direct {v0, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 67
    move-result-object p1

    .line 70
    const v4, 0x7f070a4e    # @dimen/miuix_appcompat_context_menu_separate_item_margin_top '16.0dp'

    .line 71
    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 74
    move-result p1

    .line 77
    invoke-virtual {v0, v3, p1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 78
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mPopupContentView:Landroid/widget/LinearLayout;

    .line 81
    iget-object v4, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Lmiuix/smooth/SmoothFrameLayout2;

    .line 83
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 85
    const/high16 v6, 0x3f800000    # 1.0f

    .line 87
    invoke-direct {v5, v1, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 89
    invoke-virtual {p1, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mPopupContentView:Landroid/widget/LinearLayout;

    .line 95
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuView:Landroid/view/View;

    .line 97
    invoke-virtual {p1, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    invoke-virtual {p0, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 102
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mPopupContentView:Landroid/widget/LinearLayout;

    .line 105
    invoke-virtual {p0, p1}, Lmiuix/internal/widget/ListPopup;->setPopupWindowContentView(Landroid/view/View;)V

    .line 107
    return-void
    .line 110
.end method

.method public final show(Landroid/view/View;Landroid/view/ViewGroup;FF)V
    .locals 1

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mLastAnchor:Landroid/view/View;

    .line 2
    iput-object p2, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mLastParent:Landroid/view/ViewGroup;

    .line 4
    iput p3, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mX:F

    .line 6
    iput p4, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mY:F

    .line 8
    invoke-virtual {p0, p1}, Lmiuix/internal/widget/ListPopup;->prepareShow(Landroid/view/View;)Z

    .line 10
    move-result p2

    .line 13
    if-eqz p2, :cond_0

    .line 14
    iget-object p2, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuView:Landroid/view/View;

    .line 16
    iget v0, p0, Lmiuix/internal/widget/ListPopup;->mElevation:I

    .line 18
    int-to-float v0, v0

    .line 20
    invoke-virtual {p2, v0}, Landroid/view/View;->setElevation(F)V

    .line 21
    iget-object p2, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuView:Landroid/view/View;

    .line 24
    invoke-virtual {p0, p2}, Lmiuix/internal/widget/ListPopup;->setPopupShadowAlpha(Landroid/view/View;)V

    .line 26
    invoke-virtual {p0, p1, p3, p4}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->showWithAnchor(Landroid/view/View;FF)V

    .line 29
    :cond_0
    return-void
    .line 32
.end method

.method public final showWithAnchor(Landroid/view/View;FF)V
    .locals 10

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [I

    .line 3
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 5
    const/4 v2, 0x0

    .line 8
    aget v3, v1, v2

    .line 9
    float-to-int p2, p2

    .line 11
    add-int/2addr v3, p2

    .line 12
    const/4 p2, 0x1

    .line 13
    aget v1, v1, p2

    .line 14
    float-to-int p3, p3

    .line 16
    add-int/2addr v1, p3

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 18
    move-result-object p3

    .line 21
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    .line 22
    move-result v4

    .line 25
    if-gt v3, v4, :cond_0

    .line 26
    move v4, p2

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v4, v2

    .line 30
    :goto_0
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    .line 31
    move-result v5

    .line 34
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    .line 35
    move-result v6

    .line 38
    sub-int/2addr v5, v6

    .line 39
    if-lt v3, v5, :cond_1

    .line 40
    goto :goto_1

    .line 42
    :cond_1
    move p2, v2

    .line 43
    :goto_1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->getListViewHeight()I

    .line 44
    move-result v5

    .line 47
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->getListViewHeight()I

    .line 48
    move-result v6

    .line 51
    div-int/2addr v6, v0

    .line 52
    sub-int/2addr v1, v6

    .line 53
    int-to-float v0, v1

    .line 54
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    .line 55
    move-result v1

    .line 58
    int-to-float v1, v1

    .line 59
    const v6, 0x3dcccccd    # 0.1f

    .line 60
    mul-float/2addr v1, v6

    .line 63
    cmpg-float v1, v0, v1

    .line 64
    if-gez v1, :cond_2

    .line 66
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    .line 68
    move-result v0

    .line 71
    int-to-float v0, v0

    .line 72
    mul-float/2addr v0, v6

    .line 73
    :cond_2
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuView:Landroid/view/View;

    .line 74
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 76
    move-result v1

    .line 79
    if-nez v1, :cond_4

    .line 80
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuView:Landroid/view/View;

    .line 82
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 84
    move-result-object v1

    .line 87
    if-eqz v1, :cond_3

    .line 88
    instance-of v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 90
    if-eqz v1, :cond_3

    .line 92
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuView:Landroid/view/View;

    .line 94
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 96
    move-result-object v1

    .line 99
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 100
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 102
    add-int/2addr v1, v2

    .line 104
    goto :goto_2

    .line 105
    :cond_3
    move v1, v2

    .line 106
    :goto_2
    iget-object v7, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuView:Landroid/view/View;

    .line 107
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 109
    move-result v8

    .line 112
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 113
    move-result v9

    .line 116
    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    .line 117
    iget-object v7, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuView:Landroid/view/View;

    .line 120
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    .line 122
    move-result v7

    .line 125
    add-int/2addr v7, v1

    .line 126
    goto :goto_3

    .line 127
    :cond_4
    move v7, v2

    .line 128
    :goto_3
    add-int/2addr v5, v7

    .line 129
    int-to-float v1, v5

    .line 130
    add-float v5, v0, v1

    .line 131
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    .line 133
    move-result v7

    .line 136
    int-to-float v7, v7

    .line 137
    const v8, 0x3f666666    # 0.9f

    .line 138
    mul-float/2addr v7, v8

    .line 141
    cmpl-float v5, v5, v7

    .line 142
    if-lez v5, :cond_5

    .line 144
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    .line 146
    move-result v0

    .line 149
    int-to-float v0, v0

    .line 150
    mul-float/2addr v0, v8

    .line 151
    sub-float/2addr v0, v1

    .line 152
    :cond_5
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    .line 153
    move-result v1

    .line 156
    int-to-float v1, v1

    .line 157
    mul-float/2addr v1, v6

    .line 158
    cmpg-float v1, v0, v1

    .line 159
    if-gez v1, :cond_6

    .line 161
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    .line 163
    move-result v0

    .line 166
    int-to-float v0, v0

    .line 167
    mul-float/2addr v0, v6

    .line 168
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    .line 169
    move-result v1

    .line 172
    int-to-float v1, v1

    .line 173
    const v5, 0x3f4ccccc    # 0.79999995f

    .line 174
    mul-float/2addr v1, v5

    .line 177
    float-to-int v1, v1

    .line 178
    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 179
    :cond_6
    if-eqz v4, :cond_7

    .line 182
    iget v3, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mMarginScreen:I

    .line 184
    goto :goto_4

    .line 186
    :cond_7
    if-eqz p2, :cond_8

    .line 187
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    .line 189
    move-result p2

    .line 192
    iget p3, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mMarginScreen:I

    .line 193
    sub-int/2addr p2, p3

    .line 195
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    .line 196
    move-result p3

    .line 199
    sub-int v3, p2, p3

    .line 200
    :cond_8
    :goto_4
    float-to-int p2, v0

    .line 202
    invoke-virtual {p0, p1, v2, v3, p2}, Lmiuix/internal/widget/ListPopup;->showAtLocation(Landroid/view/View;III)V

    .line 203
    iget-object p0, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Lmiuix/smooth/SmoothFrameLayout2;

    .line 206
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    .line 208
    move-result-object p0

    .line 211
    invoke-static {p0}, Lmiuix/internal/widget/ListPopup;->changeWindowBackground(Landroid/view/View;)V

    .line 212
    return-void
    .line 215
.end method
