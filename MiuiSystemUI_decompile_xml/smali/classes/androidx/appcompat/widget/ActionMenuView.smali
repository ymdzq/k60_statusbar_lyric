.class public Landroidx/appcompat/widget/ActionMenuView;
.super Landroidx/appcompat/widget/LinearLayoutCompat;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuBuilder$ItemInvoker;
.implements Landroidx/appcompat/view/menu/MenuView;


# instance fields
.field public mActionMenuPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

.field public mFormatItems:Z

.field public mFormatItemsWidth:I

.field public final mGeneratedItemPadding:I

.field public mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

.field public mMenuBuilderCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

.field public final mMinCellSize:I

.field public mOnMenuItemClickListener:Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;

.field public mPopupContext:Landroid/content/Context;

.field public mPopupTheme:I

.field public mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

.field public mReserveOverflow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->setBaselineAligned(Z)V

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42600000    # 56.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 5
    iput v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mMinCellSize:I

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 6
    iput v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mGeneratedItemPadding:I

    .line 7
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    .line 8
    iput p2, p0, Landroidx/appcompat/widget/ActionMenuView;->mPopupTheme:I

    return-void
.end method

.method public static generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .locals 2

    const/16 v0, 0x10

    if-eqz p0, :cond_2

    .line 5
    instance-of v1, p0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    if-eqz v1, :cond_0

    .line 6
    new-instance v1, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    check-cast p0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;-><init>(Landroidx/appcompat/widget/ActionMenuView$LayoutParams;)V

    goto :goto_0

    .line 7
    :cond_0
    new-instance v1, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    :goto_0
    iget p0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gtz p0, :cond_1

    .line 9
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :cond_1
    return-object v1

    .line 10
    :cond_2
    new-instance p0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    invoke-direct {p0}, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;-><init>()V

    .line 11
    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    return-object p0
.end method


# virtual methods
.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1
    instance-of p0, p1, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 2
    return p0
    .line 4
.end method

.method public final dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    new-instance p0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    invoke-direct {p0}, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;-><init>()V

    const/16 v0, 0x10

    .line 2
    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    return-object p0
.end method

.method public final generateDefaultLayoutParams()Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .locals 1

    .line 3
    new-instance p0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    invoke-direct {p0}, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;-><init>()V

    const/16 v0, 0x10

    .line 4
    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    return-object p0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 3
    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/appcompat/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .locals 1

    .line 4
    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .locals 0

    .line 2
    invoke-static {p1}, Landroidx/appcompat/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 2
    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 9
    new-instance v1, Landroidx/appcompat/view/menu/MenuBuilder;

    .line 10
    invoke-direct {v1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 12
    iput-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 15
    new-instance v2, Landroidx/appcompat/widget/ActionMenuView$MenuBuilderCallback;

    .line 17
    invoke-direct {v2, p0}, Landroidx/appcompat/widget/ActionMenuView$MenuBuilderCallback;-><init>(Landroidx/appcompat/widget/ActionMenuView;)V

    .line 19
    iput-object v2, v1, Landroidx/appcompat/view/menu/MenuBuilder;->mCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

    .line 22
    new-instance v1, Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 24
    invoke-direct {v1, v0}, Landroidx/appcompat/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    .line 26
    iput-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 29
    const/4 v0, 0x1

    .line 31
    iput-boolean v0, v1, Landroidx/appcompat/widget/ActionMenuPresenter;->mReserveOverflow:Z

    .line 32
    iput-boolean v0, v1, Landroidx/appcompat/widget/ActionMenuPresenter;->mReserveOverflowSet:Z

    .line 34
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mActionMenuPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    .line 36
    if-eqz v0, :cond_0

    .line 38
    goto :goto_0

    .line 40
    :cond_0
    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$ActionMenuPresenterCallback;

    .line 41
    invoke-direct {v0}, Landroidx/appcompat/widget/ActionMenuView$ActionMenuPresenterCallback;-><init>()V

    .line 43
    :goto_0
    iput-object v0, v1, Landroidx/appcompat/widget/ActionMenuPresenter;->mCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    .line 46
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 48
    iget-object v2, p0, Landroidx/appcompat/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    .line 50
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 52
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 55
    iput-object p0, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    .line 57
    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 59
    iput-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 61
    :cond_1
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 63
    return-object p0
    .line 65
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    .line 2
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 5
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 11
    move-result-object p0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    .line 16
    if-eqz v0, :cond_1

    .line 18
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    .line 20
    goto :goto_0

    .line 22
    :cond_1
    const/4 p0, 0x0

    .line 23
    :goto_0
    return-object p0
.end method

.method public getPopupTheme()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPopupTheme:I

    .line 2
    return p0
    .line 4
.end method

.method public getWindowAnimations()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final hasSupportDividerBeforeChildAt(I)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    add-int/lit8 v1, p1, -0x1

    .line 6
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 8
    move-result-object v1

    .line 11
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 12
    move-result-object v2

    .line 15
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 16
    move-result p0

    .line 19
    if-ge p1, p0, :cond_1

    .line 20
    instance-of p0, v1, Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;

    .line 22
    if-eqz p0, :cond_1

    .line 24
    check-cast v1, Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;

    .line 26
    invoke-interface {v1}, Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;->needsDividerAfter()Z

    .line 28
    move-result p0

    .line 31
    or-int/2addr v0, p0

    .line 32
    :cond_1
    if-lez p1, :cond_2

    .line 33
    instance-of p0, v2, Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;

    .line 35
    if-eqz p0, :cond_2

    .line 37
    check-cast v2, Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;

    .line 39
    invoke-interface {v2}, Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;->needsDividerBefore()Z

    .line 41
    move-result p0

    .line 44
    or-int/2addr v0, p0

    .line 45
    :cond_2
    return v0
    .line 46
.end method

.method public final initialize(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 2
    return-void
    .line 4
.end method

.method public final invokeItem(Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 2
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, p1, v0, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/MenuPresenter;I)Z

    .line 6
    move-result p0

    .line 9
    return p0
    .line 10
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 5
    if-eqz p1, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->updateMenuView(Z)V

    .line 10
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 13
    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    .line 15
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 21
    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 23
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 26
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->showOverflowMenu()Z

    .line 28
    :cond_0
    return-void
    .line 31
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 5
    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 9
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mActionButtonPopup:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;

    .line 12
    if-eqz p0, :cond_0

    .line 14
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuPopupHelper;->isShowing()Z

    .line 16
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    iget-object p0, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mPopup:Landroidx/appcompat/view/menu/MenuPopup;

    .line 22
    invoke-interface {p0}, Landroidx/appcompat/view/menu/ShowableListMenu;->dismiss()V

    .line 24
    :cond_0
    return-void
    .line 27
.end method

.method public final onLayout(ZIIII)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-boolean v1, v0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItems:Z

    .line 4
    if-nez v1, :cond_0

    .line 6
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/LinearLayoutCompat;->onLayout(ZIIII)V

    .line 8
    return-void

    .line 11
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 12
    move-result v1

    .line 15
    sub-int v2, p5, p3

    .line 16
    div-int/lit8 v2, v2, 0x2

    .line 18
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getDividerWidth()I

    .line 20
    move-result v3

    .line 23
    sub-int v4, p4, p2

    .line 24
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 26
    move-result v5

    .line 29
    sub-int v5, v4, v5

    .line 30
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 32
    move-result v6

    .line 35
    sub-int/2addr v5, v6

    .line 36
    invoke-static/range {p0 .. p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    .line 37
    move-result v6

    .line 40
    const/4 v8, 0x0

    .line 41
    const/4 v9, 0x0

    .line 42
    const/4 v10, 0x0

    .line 43
    :goto_0
    const/16 v11, 0x8

    .line 44
    const/4 v12, 0x1

    .line 46
    if-ge v8, v1, :cond_5

    .line 47
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 49
    move-result-object v13

    .line 52
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    .line 53
    move-result v14

    .line 56
    if-ne v14, v11, :cond_1

    .line 57
    goto :goto_2

    .line 59
    :cond_1
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 60
    move-result-object v11

    .line 63
    check-cast v11, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 64
    iget-boolean v14, v11, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 66
    if-eqz v14, :cond_4

    .line 68
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 70
    move-result v9

    .line 73
    invoke-virtual {v0, v8}, Landroidx/appcompat/widget/ActionMenuView;->hasSupportDividerBeforeChildAt(I)Z

    .line 74
    move-result v14

    .line 77
    if-eqz v14, :cond_2

    .line 78
    add-int/2addr v9, v3

    .line 80
    :cond_2
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 81
    move-result v14

    .line 84
    if-eqz v6, :cond_3

    .line 85
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 87
    move-result v15

    .line 90
    iget v11, v11, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 91
    add-int/2addr v15, v11

    .line 93
    add-int v11, v15, v9

    .line 94
    goto :goto_1

    .line 96
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    .line 97
    move-result v15

    .line 100
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 101
    move-result v16

    .line 104
    sub-int v15, v15, v16

    .line 105
    iget v11, v11, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 107
    sub-int v11, v15, v11

    .line 109
    sub-int v15, v11, v9

    .line 111
    :goto_1
    div-int/lit8 v16, v14, 0x2

    .line 113
    sub-int v7, v2, v16

    .line 115
    add-int/2addr v14, v7

    .line 117
    invoke-virtual {v13, v15, v7, v11, v14}, Landroid/view/View;->layout(IIII)V

    .line 118
    sub-int/2addr v5, v9

    .line 121
    move v9, v12

    .line 122
    goto :goto_2

    .line 123
    :cond_4
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 124
    move-result v7

    .line 127
    iget v12, v11, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 128
    add-int/2addr v7, v12

    .line 130
    iget v11, v11, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 131
    add-int/2addr v7, v11

    .line 133
    sub-int/2addr v5, v7

    .line 134
    invoke-virtual {v0, v8}, Landroidx/appcompat/widget/ActionMenuView;->hasSupportDividerBeforeChildAt(I)Z

    .line 135
    add-int/lit8 v10, v10, 0x1

    .line 138
    :goto_2
    add-int/lit8 v8, v8, 0x1

    .line 140
    goto :goto_0

    .line 142
    :cond_5
    if-ne v1, v12, :cond_6

    .line 143
    if-nez v9, :cond_6

    .line 145
    const/4 v3, 0x0

    .line 147
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 148
    move-result-object v0

    .line 151
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 152
    move-result v1

    .line 155
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 156
    move-result v3

    .line 159
    div-int/lit8 v4, v4, 0x2

    .line 160
    div-int/lit8 v5, v1, 0x2

    .line 162
    sub-int/2addr v4, v5

    .line 164
    div-int/lit8 v5, v3, 0x2

    .line 165
    sub-int/2addr v2, v5

    .line 167
    add-int/2addr v1, v4

    .line 168
    add-int/2addr v3, v2

    .line 169
    invoke-virtual {v0, v4, v2, v1, v3}, Landroid/view/View;->layout(IIII)V

    .line 170
    return-void

    .line 173
    :cond_6
    xor-int/lit8 v3, v9, 0x1

    .line 174
    sub-int/2addr v10, v3

    .line 176
    if-lez v10, :cond_7

    .line 177
    div-int v3, v5, v10

    .line 179
    goto :goto_3

    .line 181
    :cond_7
    const/4 v3, 0x0

    .line 182
    :goto_3
    const/4 v4, 0x0

    .line 183
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    .line 184
    move-result v3

    .line 187
    if-eqz v6, :cond_a

    .line 188
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    .line 190
    move-result v5

    .line 193
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 194
    move-result v6

    .line 197
    sub-int/2addr v5, v6

    .line 198
    move v7, v4

    .line 199
    :goto_4
    if-ge v7, v1, :cond_d

    .line 200
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 202
    move-result-object v4

    .line 205
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 206
    move-result-object v6

    .line 209
    check-cast v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 210
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 212
    move-result v8

    .line 215
    if-eq v8, v11, :cond_9

    .line 216
    iget-boolean v8, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 218
    if-eqz v8, :cond_8

    .line 220
    goto :goto_5

    .line 222
    :cond_8
    iget v8, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 223
    sub-int/2addr v5, v8

    .line 225
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    .line 226
    move-result v8

    .line 229
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 230
    move-result v9

    .line 233
    div-int/lit8 v10, v9, 0x2

    .line 234
    sub-int v10, v2, v10

    .line 236
    sub-int v12, v5, v8

    .line 238
    add-int/2addr v9, v10

    .line 240
    invoke-virtual {v4, v12, v10, v5, v9}, Landroid/view/View;->layout(IIII)V

    .line 241
    iget v4, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 244
    add-int/2addr v8, v4

    .line 246
    add-int/2addr v8, v3

    .line 247
    sub-int/2addr v5, v8

    .line 248
    :cond_9
    :goto_5
    add-int/lit8 v7, v7, 0x1

    .line 249
    goto :goto_4

    .line 251
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 252
    move-result v5

    .line 255
    move v7, v4

    .line 256
    :goto_6
    if-ge v7, v1, :cond_d

    .line 257
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 259
    move-result-object v4

    .line 262
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 263
    move-result-object v6

    .line 266
    check-cast v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 267
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 269
    move-result v8

    .line 272
    if-eq v8, v11, :cond_c

    .line 273
    iget-boolean v8, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 275
    if-eqz v8, :cond_b

    .line 277
    goto :goto_7

    .line 279
    :cond_b
    iget v8, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 280
    add-int/2addr v5, v8

    .line 282
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    .line 283
    move-result v8

    .line 286
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 287
    move-result v9

    .line 290
    div-int/lit8 v10, v9, 0x2

    .line 291
    sub-int v10, v2, v10

    .line 293
    add-int v12, v5, v8

    .line 295
    add-int/2addr v9, v10

    .line 297
    invoke-virtual {v4, v5, v10, v12, v9}, Landroid/view/View;->layout(IIII)V

    .line 298
    iget v4, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 301
    add-int/2addr v8, v4

    .line 303
    add-int/2addr v8, v3

    .line 304
    add-int/2addr v8, v5

    .line 305
    move v5, v8

    .line 306
    :cond_c
    :goto_7
    add-int/lit8 v7, v7, 0x1

    .line 307
    goto :goto_6

    .line 309
    :cond_d
    return-void
    .line 310
.end method

.method public final onMeasure(II)V
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-boolean v1, v0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItems:Z

    .line 4
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 6
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x1

    .line 11
    const/high16 v5, 0x40000000    # 2.0f

    .line 12
    if-ne v2, v5, :cond_0

    .line 14
    move v2, v4

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v2, v3

    .line 18
    :goto_0
    iput-boolean v2, v0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItems:Z

    .line 19
    if-eq v1, v2, :cond_1

    .line 21
    iput v3, v0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItemsWidth:I

    .line 23
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 25
    move-result v1

    .line 28
    iget-boolean v2, v0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItems:Z

    .line 29
    if-eqz v2, :cond_2

    .line 31
    iget-object v2, v0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 33
    if-eqz v2, :cond_2

    .line 35
    iget v6, v0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItemsWidth:I

    .line 37
    if-eq v1, v6, :cond_2

    .line 39
    iput v1, v0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItemsWidth:I

    .line 41
    invoke-virtual {v2, v4}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 43
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 46
    move-result v1

    .line 49
    iget-boolean v2, v0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItems:Z

    .line 50
    if-eqz v2, :cond_2e

    .line 52
    if-lez v1, :cond_2e

    .line 54
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 56
    move-result v1

    .line 59
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 60
    move-result v2

    .line 63
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 64
    move-result v6

    .line 67
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 68
    move-result v7

    .line 71
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 72
    move-result v8

    .line 75
    add-int/2addr v8, v7

    .line 76
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 77
    move-result v7

    .line 80
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 81
    move-result v9

    .line 84
    add-int/2addr v9, v7

    .line 85
    const/4 v7, -0x2

    .line 86
    move/from16 v10, p2

    .line 87
    invoke-static {v10, v9, v7}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 89
    move-result v7

    .line 92
    sub-int/2addr v2, v8

    .line 93
    iget v8, v0, Landroidx/appcompat/widget/ActionMenuView;->mMinCellSize:I

    .line 94
    div-int v10, v2, v8

    .line 96
    rem-int v11, v2, v8

    .line 98
    if-nez v10, :cond_3

    .line 100
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 102
    goto/16 :goto_1b

    .line 105
    :cond_3
    div-int/2addr v11, v10

    .line 107
    add-int/2addr v11, v8

    .line 108
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 109
    move-result v8

    .line 112
    move v4, v3

    .line 113
    move v12, v4

    .line 114
    move v13, v12

    .line 115
    move v14, v13

    .line 116
    move v15, v14

    .line 117
    move/from16 v18, v15

    .line 118
    const-wide/16 v16, 0x0

    .line 120
    :goto_1
    if-ge v14, v8, :cond_12

    .line 122
    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 124
    move-result-object v5

    .line 127
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 128
    move-result v3

    .line 131
    move/from16 v19, v6

    .line 132
    const/16 v6, 0x8

    .line 134
    if-ne v3, v6, :cond_4

    .line 136
    move/from16 v23, v1

    .line 138
    move/from16 v22, v2

    .line 140
    move/from16 v21, v9

    .line 142
    goto/16 :goto_9

    .line 144
    :cond_4
    instance-of v3, v5, Landroidx/appcompat/view/menu/ActionMenuItemView;

    .line 146
    add-int/lit8 v12, v12, 0x1

    .line 148
    if-eqz v3, :cond_5

    .line 150
    iget v6, v0, Landroidx/appcompat/widget/ActionMenuView;->mGeneratedItemPadding:I

    .line 152
    move/from16 v20, v12

    .line 154
    const/4 v12, 0x0

    .line 156
    invoke-virtual {v5, v6, v12, v6, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 157
    goto :goto_2

    .line 160
    :cond_5
    move/from16 v20, v12

    .line 161
    const/4 v12, 0x0

    .line 163
    :goto_2
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 164
    move-result-object v6

    .line 167
    check-cast v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 168
    iput-boolean v12, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 170
    iput v12, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 172
    iput v12, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 174
    iput-boolean v12, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 176
    iput v12, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 178
    iput v12, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 180
    if-eqz v3, :cond_6

    .line 182
    move-object v12, v5

    .line 184
    check-cast v12, Landroidx/appcompat/view/menu/ActionMenuItemView;

    .line 185
    invoke-virtual {v12}, Landroidx/appcompat/view/menu/ActionMenuItemView;->hasText()Z

    .line 187
    move-result v12

    .line 190
    if-eqz v12, :cond_6

    .line 191
    const/4 v12, 0x1

    .line 193
    goto :goto_3

    .line 194
    :cond_6
    const/4 v12, 0x0

    .line 195
    :goto_3
    iput-boolean v12, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    .line 196
    iget-boolean v12, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 198
    if-eqz v12, :cond_7

    .line 200
    const/4 v12, 0x1

    .line 202
    goto :goto_4

    .line 203
    :cond_7
    move v12, v10

    .line 204
    :goto_4
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 205
    move-result-object v21

    .line 208
    move/from16 v22, v2

    .line 209
    move-object/from16 v2, v21

    .line 211
    check-cast v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 213
    invoke-static {v7}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 215
    move-result v21

    .line 218
    move/from16 v23, v1

    .line 219
    sub-int v1, v21, v9

    .line 221
    move/from16 v21, v9

    .line 223
    invoke-static {v7}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 225
    move-result v9

    .line 228
    invoke-static {v1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 229
    move-result v1

    .line 232
    if-eqz v3, :cond_8

    .line 233
    move-object v3, v5

    .line 235
    check-cast v3, Landroidx/appcompat/view/menu/ActionMenuItemView;

    .line 236
    goto :goto_5

    .line 238
    :cond_8
    const/4 v3, 0x0

    .line 239
    :goto_5
    if-eqz v3, :cond_9

    .line 240
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/ActionMenuItemView;->hasText()Z

    .line 242
    move-result v3

    .line 245
    if-eqz v3, :cond_9

    .line 246
    const/4 v3, 0x1

    .line 248
    goto :goto_6

    .line 249
    :cond_9
    const/4 v3, 0x0

    .line 250
    :goto_6
    if-lez v12, :cond_c

    .line 251
    if-eqz v3, :cond_a

    .line 253
    const/4 v9, 0x2

    .line 255
    if-lt v12, v9, :cond_c

    .line 256
    :cond_a
    mul-int/2addr v12, v11

    .line 258
    const/high16 v9, -0x80000000

    .line 259
    invoke-static {v12, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 261
    move-result v9

    .line 264
    invoke-virtual {v5, v9, v1}, Landroid/view/View;->measure(II)V

    .line 265
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    .line 268
    move-result v9

    .line 271
    div-int v12, v9, v11

    .line 272
    rem-int/2addr v9, v11

    .line 274
    if-eqz v9, :cond_b

    .line 275
    add-int/lit8 v12, v12, 0x1

    .line 277
    :cond_b
    if-eqz v3, :cond_d

    .line 279
    const/4 v9, 0x2

    .line 281
    if-ge v12, v9, :cond_d

    .line 282
    const/4 v12, 0x2

    .line 284
    goto :goto_7

    .line 285
    :cond_c
    const/4 v12, 0x0

    .line 286
    :cond_d
    :goto_7
    iget-boolean v9, v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 287
    if-nez v9, :cond_e

    .line 289
    if-eqz v3, :cond_e

    .line 291
    const/4 v3, 0x1

    .line 293
    goto :goto_8

    .line 294
    :cond_e
    const/4 v3, 0x0

    .line 295
    :goto_8
    iput-boolean v3, v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 296
    iput v12, v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 298
    mul-int v2, v11, v12

    .line 300
    const/high16 v3, 0x40000000    # 2.0f

    .line 302
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 304
    move-result v2

    .line 307
    invoke-virtual {v5, v2, v1}, Landroid/view/View;->measure(II)V

    .line 308
    invoke-static {v13, v12}, Ljava/lang/Math;->max(II)I

    .line 311
    move-result v13

    .line 314
    iget-boolean v1, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 315
    if-eqz v1, :cond_f

    .line 317
    add-int/lit8 v18, v18, 0x1

    .line 319
    :cond_f
    iget-boolean v1, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 321
    if-eqz v1, :cond_10

    .line 323
    const/4 v15, 0x1

    .line 325
    :cond_10
    sub-int/2addr v10, v12

    .line 326
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    .line 327
    move-result v1

    .line 330
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    .line 331
    move-result v4

    .line 334
    const/4 v1, 0x1

    .line 335
    if-ne v12, v1, :cond_11

    .line 336
    shl-int v2, v1, v14

    .line 338
    int-to-long v1, v2

    .line 340
    or-long v16, v16, v1

    .line 341
    :cond_11
    move/from16 v12, v20

    .line 343
    :goto_9
    add-int/lit8 v14, v14, 0x1

    .line 345
    move/from16 v6, v19

    .line 347
    move/from16 v9, v21

    .line 349
    move/from16 v2, v22

    .line 351
    move/from16 v1, v23

    .line 353
    const/4 v3, 0x0

    .line 355
    goto/16 :goto_1

    .line 356
    :cond_12
    move/from16 v23, v1

    .line 358
    move/from16 v22, v2

    .line 360
    move/from16 v19, v6

    .line 362
    if-eqz v15, :cond_13

    .line 364
    const/4 v1, 0x2

    .line 366
    if-ne v12, v1, :cond_13

    .line 367
    const/4 v1, 0x1

    .line 369
    goto :goto_a

    .line 370
    :cond_13
    const/4 v1, 0x0

    .line 371
    :goto_a
    const/4 v2, 0x0

    .line 372
    :goto_b
    if-lez v18, :cond_18

    .line 373
    if-lez v10, :cond_18

    .line 375
    const v3, 0x7fffffff

    .line 377
    const/4 v9, 0x0

    .line 380
    const/4 v14, 0x0

    .line 381
    const-wide/16 v20, 0x0

    .line 382
    :goto_c
    if-ge v14, v8, :cond_17

    .line 384
    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 386
    move-result-object v24

    .line 389
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 390
    move-result-object v24

    .line 393
    move-object/from16 v5, v24

    .line 394
    check-cast v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 396
    iget-boolean v6, v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 398
    if-nez v6, :cond_14

    .line 400
    goto :goto_d

    .line 402
    :cond_14
    iget v5, v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 403
    const-wide/16 v24, 0x1

    .line 405
    if-ge v5, v3, :cond_15

    .line 407
    shl-long v20, v24, v14

    .line 409
    move v3, v5

    .line 411
    const/4 v9, 0x1

    .line 412
    goto :goto_d

    .line 413
    :cond_15
    if-ne v5, v3, :cond_16

    .line 414
    shl-long v5, v24, v14

    .line 416
    or-long v5, v20, v5

    .line 418
    add-int/lit8 v9, v9, 0x1

    .line 420
    move-wide/from16 v20, v5

    .line 422
    :cond_16
    :goto_d
    add-int/lit8 v14, v14, 0x1

    .line 424
    goto :goto_c

    .line 426
    :cond_17
    or-long v16, v16, v20

    .line 427
    if-le v9, v10, :cond_19

    .line 429
    :cond_18
    move v9, v7

    .line 431
    move/from16 v24, v8

    .line 432
    goto :goto_10

    .line 434
    :cond_19
    add-int/lit8 v3, v3, 0x1

    .line 435
    const/4 v2, 0x0

    .line 437
    :goto_e
    if-ge v2, v8, :cond_1d

    .line 438
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 440
    move-result-object v5

    .line 443
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 444
    move-result-object v6

    .line 447
    check-cast v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 448
    const/4 v9, 0x1

    .line 450
    shl-int v14, v9, v2

    .line 451
    move v9, v7

    .line 453
    move/from16 v24, v8

    .line 454
    int-to-long v7, v14

    .line 456
    and-long v25, v20, v7

    .line 457
    const-wide/16 v27, 0x0

    .line 459
    cmp-long v14, v25, v27

    .line 461
    if-nez v14, :cond_1a

    .line 463
    iget v5, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 465
    if-ne v5, v3, :cond_1c

    .line 467
    or-long v16, v16, v7

    .line 469
    goto :goto_f

    .line 471
    :cond_1a
    if-eqz v1, :cond_1b

    .line 472
    iget-boolean v7, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    .line 474
    if-eqz v7, :cond_1b

    .line 476
    const/4 v7, 0x1

    .line 478
    if-ne v10, v7, :cond_1b

    .line 479
    iget v8, v0, Landroidx/appcompat/widget/ActionMenuView;->mGeneratedItemPadding:I

    .line 481
    add-int v14, v8, v11

    .line 483
    const/4 v7, 0x0

    .line 485
    invoke-virtual {v5, v14, v7, v8, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 486
    :cond_1b
    iget v5, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 489
    const/4 v7, 0x1

    .line 491
    add-int/2addr v5, v7

    .line 492
    iput v5, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 493
    iput-boolean v7, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 495
    add-int/lit8 v10, v10, -0x1

    .line 497
    :cond_1c
    :goto_f
    add-int/lit8 v2, v2, 0x1

    .line 499
    move v7, v9

    .line 501
    move/from16 v8, v24

    .line 502
    goto :goto_e

    .line 504
    :cond_1d
    const/4 v2, 0x1

    .line 505
    goto/16 :goto_b

    .line 506
    :goto_10
    const/4 v1, 0x1

    .line 508
    if-nez v15, :cond_1e

    .line 509
    if-ne v12, v1, :cond_1e

    .line 511
    move v3, v1

    .line 513
    goto :goto_11

    .line 514
    :cond_1e
    const/4 v3, 0x0

    .line 515
    :goto_11
    if-lez v10, :cond_2a

    .line 516
    const-wide/16 v5, 0x0

    .line 518
    cmp-long v7, v16, v5

    .line 520
    if-eqz v7, :cond_2a

    .line 522
    sub-int/2addr v12, v1

    .line 524
    if-lt v10, v12, :cond_1f

    .line 525
    if-nez v3, :cond_1f

    .line 527
    if-le v13, v1, :cond_2a

    .line 529
    :cond_1f
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->bitCount(J)I

    .line 531
    move-result v1

    .line 534
    int-to-float v1, v1

    .line 535
    if-nez v3, :cond_21

    .line 536
    const-wide/16 v5, 0x1

    .line 538
    and-long v5, v16, v5

    .line 540
    const-wide/16 v7, 0x0

    .line 542
    cmp-long v3, v5, v7

    .line 544
    const/high16 v5, 0x3f000000    # 0.5f

    .line 546
    if-eqz v3, :cond_20

    .line 548
    const/4 v3, 0x0

    .line 550
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 551
    move-result-object v6

    .line 554
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 555
    move-result-object v3

    .line 558
    check-cast v3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 559
    iget-boolean v3, v3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    .line 561
    if-nez v3, :cond_20

    .line 563
    sub-float/2addr v1, v5

    .line 565
    :cond_20
    add-int/lit8 v8, v24, -0x1

    .line 566
    const/4 v3, 0x1

    .line 568
    shl-int v6, v3, v8

    .line 569
    int-to-long v6, v6

    .line 571
    and-long v6, v16, v6

    .line 572
    const-wide/16 v12, 0x0

    .line 574
    cmp-long v3, v6, v12

    .line 576
    if-eqz v3, :cond_21

    .line 578
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 580
    move-result-object v3

    .line 583
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 584
    move-result-object v3

    .line 587
    check-cast v3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 588
    iget-boolean v3, v3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    .line 590
    if-nez v3, :cond_21

    .line 592
    sub-float/2addr v1, v5

    .line 594
    :cond_21
    const/4 v3, 0x0

    .line 595
    cmpl-float v3, v1, v3

    .line 596
    if-lez v3, :cond_22

    .line 598
    mul-int/2addr v10, v11

    .line 600
    int-to-float v3, v10

    .line 601
    div-float/2addr v3, v1

    .line 602
    float-to-int v12, v3

    .line 603
    goto :goto_12

    .line 604
    :cond_22
    const/4 v12, 0x0

    .line 605
    :goto_12
    move v1, v2

    .line 606
    move/from16 v3, v24

    .line 607
    const/4 v2, 0x0

    .line 609
    :goto_13
    if-ge v2, v3, :cond_29

    .line 610
    const/4 v5, 0x1

    .line 612
    shl-int v6, v5, v2

    .line 613
    int-to-long v5, v6

    .line 615
    and-long v5, v16, v5

    .line 616
    const-wide/16 v7, 0x0

    .line 618
    cmp-long v5, v5, v7

    .line 620
    if-nez v5, :cond_23

    .line 622
    goto :goto_14

    .line 624
    :cond_23
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 625
    move-result-object v5

    .line 628
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 629
    move-result-object v6

    .line 632
    check-cast v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 633
    instance-of v5, v5, Landroidx/appcompat/view/menu/ActionMenuItemView;

    .line 635
    if-eqz v5, :cond_25

    .line 637
    iput v12, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 639
    const/4 v1, 0x1

    .line 641
    iput-boolean v1, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 642
    if-nez v2, :cond_24

    .line 644
    iget-boolean v1, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    .line 646
    if-nez v1, :cond_24

    .line 648
    neg-int v1, v12

    .line 650
    const/4 v5, 0x2

    .line 651
    div-int/2addr v1, v5

    .line 652
    iput v1, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 653
    :cond_24
    const/4 v1, 0x1

    .line 655
    :goto_14
    const/4 v5, 0x1

    .line 656
    const/4 v10, 0x2

    .line 657
    goto :goto_15

    .line 658
    :cond_25
    iget-boolean v5, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 659
    if-eqz v5, :cond_26

    .line 661
    iput v12, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 663
    const/4 v5, 0x1

    .line 665
    iput-boolean v5, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 666
    neg-int v1, v12

    .line 668
    const/4 v10, 0x2

    .line 669
    div-int/2addr v1, v10

    .line 670
    iput v1, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 671
    move v1, v5

    .line 673
    goto :goto_15

    .line 674
    :cond_26
    const/4 v5, 0x1

    .line 675
    const/4 v10, 0x2

    .line 676
    if-eqz v2, :cond_27

    .line 677
    div-int/lit8 v13, v12, 0x2

    .line 679
    iput v13, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 681
    :cond_27
    add-int/lit8 v13, v3, -0x1

    .line 683
    if-eq v2, v13, :cond_28

    .line 685
    div-int/lit8 v13, v12, 0x2

    .line 687
    iput v13, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 689
    :cond_28
    :goto_15
    add-int/lit8 v2, v2, 0x1

    .line 691
    goto :goto_13

    .line 693
    :cond_29
    move v2, v1

    .line 694
    goto :goto_16

    .line 695
    :cond_2a
    move/from16 v3, v24

    .line 696
    :goto_16
    if-eqz v2, :cond_2c

    .line 698
    const/4 v1, 0x0

    .line 700
    :goto_17
    if-ge v1, v3, :cond_2c

    .line 701
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 703
    move-result-object v2

    .line 706
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 707
    move-result-object v5

    .line 710
    check-cast v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 711
    iget-boolean v6, v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 713
    if-nez v6, :cond_2b

    .line 715
    const/high16 v5, 0x40000000    # 2.0f

    .line 717
    goto :goto_18

    .line 719
    :cond_2b
    iget v6, v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 720
    mul-int/2addr v6, v11

    .line 722
    iget v5, v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 723
    add-int/2addr v6, v5

    .line 725
    const/high16 v5, 0x40000000    # 2.0f

    .line 726
    invoke-static {v6, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 728
    move-result v6

    .line 731
    invoke-virtual {v2, v6, v9}, Landroid/view/View;->measure(II)V

    .line 732
    :goto_18
    add-int/lit8 v1, v1, 0x1

    .line 735
    goto :goto_17

    .line 737
    :cond_2c
    const/high16 v5, 0x40000000    # 2.0f

    .line 738
    move/from16 v1, v23

    .line 740
    if-eq v1, v5, :cond_2d

    .line 742
    move v6, v4

    .line 744
    goto :goto_19

    .line 745
    :cond_2d
    move/from16 v6, v19

    .line 746
    :goto_19
    move/from16 v2, v22

    .line 748
    invoke-virtual {v0, v2, v6}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 750
    goto :goto_1b

    .line 753
    :cond_2e
    move/from16 v10, p2

    .line 754
    const/4 v12, 0x0

    .line 756
    :goto_1a
    if-ge v12, v1, :cond_2f

    .line 757
    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 759
    move-result-object v2

    .line 762
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 763
    move-result-object v2

    .line 766
    check-cast v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 767
    const/4 v3, 0x0

    .line 769
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 770
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 772
    add-int/lit8 v12, v12, 0x1

    .line 774
    goto :goto_1a

    .line 776
    :cond_2f
    invoke-super/range {p0 .. p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->onMeasure(II)V

    .line 777
    :goto_1b
    return-void
    .line 780
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 2
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    .line 4
    return-void
    .line 6
.end method

.method public setMenuCallbacks(Landroidx/appcompat/view/menu/MenuPresenter$Callback;Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mActionMenuPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    .line 2
    iput-object p2, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenuBuilderCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

    .line 4
    return-void
    .line 6
.end method

.method public setOnMenuItemClickListener(Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mOnMenuItemClickListener:Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;

    .line 2
    return-void
    .line 4
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    .line 2
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 5
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    .line 16
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    .line 18
    :goto_0
    return-void
    .line 20
.end method

.method public setOverflowReserved(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mReserveOverflow:Z

    .line 2
    return-void
    .line 4
.end method

.method public setPopupTheme(I)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPopupTheme:I

    .line 2
    if-eq v0, p1, :cond_1

    .line 4
    iput p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPopupTheme:I

    .line 6
    if-nez p1, :cond_0

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 10
    move-result-object p1

    .line 13
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 19
    move-result-object v1

    .line 22
    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 23
    iput-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    .line 26
    :cond_1
    :goto_0
    return-void
    .line 28
.end method

.method public setPresenter(Landroidx/appcompat/widget/ActionMenuPresenter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 2
    iput-object p0, p1, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    .line 4
    iget-object p1, p1, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 6
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 8
    return-void
    .line 10
.end method
