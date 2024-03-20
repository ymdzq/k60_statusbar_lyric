.class public Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lmiuix/appcompat/internal/view/menu/MenuPresenter;


# instance fields
.field public isMaxItemCountSet:Z

.field public mActionButtonPopup:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ActionButtonSubMenu;

.field public mBottomMenuCustomView:Landroid/view/View;

.field public mCallback:Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;

.field public mContext:Landroid/content/Context;

.field public final mDecorView:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

.field public mId:I

.field public final mItemLayoutRes:I

.field public final mListItemLayoutRes:I

.field public final mListLayoutRes:I

.field public mListOverflowMenu:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ListOverflowMenu;

.field public mMaxItems:I

.field public mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

.field public final mMenuLayoutRes:I

.field public mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

.field public mOpenSubMenuId:I

.field public mOverflowButton:Landroid/view/View;

.field public mOverflowMenu:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;

.field public final mOverflowMenuAttrs:I

.field public mOverflowMenuItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

.field public final mPopupPresenterCallback:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$PopupPresenterCallback;

.field public mPostedOpenRunnable:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OpenOverflowRunnable;

.field public mReserveOverflow:Z

.field public final mSystemContext:Landroid/content/Context;

.field public final mSystemInflater:Landroid/view/LayoutInflater;

.field public mWidthLimitSet:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 7
    move-result-object p1

    .line 10
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    .line 11
    iput p3, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mMenuLayoutRes:I

    .line 13
    iput p4, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mItemLayoutRes:I

    .line 15
    const p1, 0x10102f6    # @android:attr/actionOverflowButtonStyle

    .line 17
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowMenuAttrs:I

    .line 20
    new-instance p1, Landroid/util/SparseBooleanArray;

    .line 22
    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 24
    new-instance p1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$PopupPresenterCallback;

    .line 27
    invoke-direct {p1, p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$PopupPresenterCallback;-><init>(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)V

    .line 29
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mPopupPresenterCallback:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$PopupPresenterCallback;

    .line 32
    iput p5, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mListLayoutRes:I

    .line 34
    iput p6, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mListItemLayoutRes:I

    .line 36
    iput-object p2, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mDecorView:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 38
    return-void
    .line 40
.end method


# virtual methods
.method public final bridge synthetic collapseItemActionView(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public createOverflowMenuButton(Landroid/content/Context;)Landroid/view/View;
    .locals 3

    .line 1
    new-instance v0, Lmiuix/appcompat/internal/view/menu/action/OverflowMenuButton;

    .line 2
    const/4 v1, 0x0

    .line 4
    iget v2, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowMenuAttrs:I

    .line 5
    invoke-direct {v0, p1, v1, v2}, Lmiuix/appcompat/internal/view/menu/action/OverflowMenuButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 7
    new-instance p1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$$ExternalSyntheticLambda0;

    .line 10
    invoke-direct {p1, p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$$ExternalSyntheticLambda0;-><init>(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)V

    .line 12
    iput-object p1, v0, Lmiuix/appcompat/internal/view/menu/action/OverflowMenuButton;->mOnOverflowMenuButtonClickListener:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$$ExternalSyntheticLambda0;

    .line 15
    return-object v0
    .line 17
.end method

.method public final bridge synthetic expandItemActionView(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final flagActionItems()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 2
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v1

    .line 11
    iget p0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mMaxItems:I

    .line 12
    if-ge p0, v1, :cond_0

    .line 14
    add-int/lit8 p0, p0, -0x1

    .line 16
    :cond_0
    const/4 v2, 0x0

    .line 18
    move v3, v2

    .line 19
    :goto_0
    const/4 v4, 0x1

    .line 20
    if-ge v3, v1, :cond_6

    .line 21
    if-lez p0, :cond_6

    .line 23
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object v5

    .line 28
    check-cast v5, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 29
    iget v6, v5, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    .line 31
    and-int/2addr v6, v4

    .line 33
    if-ne v6, v4, :cond_1

    .line 34
    move v6, v4

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move v6, v2

    .line 38
    :goto_1
    if-nez v6, :cond_3

    .line 39
    invoke-virtual {v5}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    .line 41
    move-result v6

    .line 44
    if-eqz v6, :cond_2

    .line 45
    goto :goto_2

    .line 47
    :cond_2
    move v4, v2

    .line 48
    :cond_3
    :goto_2
    if-eqz v4, :cond_4

    .line 49
    iget v6, v5, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 51
    or-int/lit8 v6, v6, 0x20

    .line 53
    iput v6, v5, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 55
    goto :goto_3

    .line 57
    :cond_4
    iget v6, v5, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 58
    and-int/lit8 v6, v6, -0x21

    .line 60
    iput v6, v5, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 62
    :goto_3
    if-eqz v4, :cond_5

    .line 64
    add-int/lit8 p0, p0, -0x1

    .line 66
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 68
    goto :goto_0

    .line 70
    :cond_6
    :goto_4
    if-ge v3, v1, :cond_7

    .line 71
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 73
    move-result-object p0

    .line 76
    check-cast p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 77
    iget v2, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 79
    and-int/lit8 v2, v2, -0x21

    .line 81
    iput v2, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 83
    add-int/lit8 v3, v3, 0x1

    .line 85
    goto :goto_4

    .line 87
    :cond_7
    return v4
    .line 88
.end method

.method public getDefaultMaxItemCount()I
    .locals 2

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mContext:Landroid/content/Context;

    .line 2
    const/4 v0, 0x5

    .line 4
    if-eqz p0, :cond_0

    .line 5
    const v1, 0x7f040053    # @attr/actionMenuItemLimit

    .line 7
    invoke-static {p0, v1, v0}, Lmiuix/internal/util/AttributeResolver;->resolveInt(Landroid/content/Context;II)I

    .line 10
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_0
    return v0
    .line 15
.end method

.method public final getId()I
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mId:I

    .line 2
    return p0
    .line 4
.end method

.method public final getItemView(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    .line 2
    move-result-object v0

    .line 5
    const/16 v1, 0x8

    .line 6
    const/4 v2, 0x0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    iget v3, p1, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    .line 11
    and-int/2addr v3, v1

    .line 13
    if-eqz v3, :cond_0

    .line 14
    iget-object v3, p1, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 16
    if-eqz v3, :cond_0

    .line 18
    const/4 v3, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v3, v2

    .line 22
    :goto_0
    if-eqz v3, :cond_4

    .line 23
    :cond_1
    invoke-virtual {p0, p2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->isConvertViewTypeAllowed(Landroid/view/View;)Z

    .line 25
    move-result v0

    .line 28
    if-nez v0, :cond_2

    .line 29
    const/4 p2, 0x0

    .line 31
    :cond_2
    instance-of v0, p2, Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;

    .line 32
    if-eqz v0, :cond_3

    .line 34
    check-cast p2, Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;

    .line 36
    goto :goto_1

    .line 38
    :cond_3
    iget-object p2, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    .line 39
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mItemLayoutRes:I

    .line 41
    invoke-virtual {p2, v0, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 43
    move-result-object p2

    .line 46
    check-cast p2, Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;

    .line 47
    :goto_1
    invoke-interface {p2, p1}, Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;->initialize(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)V

    .line 49
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    .line 52
    check-cast p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder$ItemInvoker;

    .line 54
    invoke-interface {p2, p0}, Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;->setItemInvoker(Lmiuix/appcompat/internal/view/menu/MenuBuilder$ItemInvoker;)V

    .line 56
    move-object v0, p2

    .line 59
    check-cast v0, Landroid/view/View;

    .line 60
    :cond_4
    iget-boolean p0, p1, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mIsActionViewExpanded:Z

    .line 62
    if-eqz p0, :cond_5

    .line 64
    goto :goto_2

    .line 66
    :cond_5
    move v1, v2

    .line 67
    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 68
    check-cast p3, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 71
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 73
    move-result-object p0

    .line 76
    invoke-virtual {p3, p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    .line 77
    move-result p1

    .line 80
    if-nez p1, :cond_6

    .line 81
    invoke-static {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    .line 83
    move-result-object p0

    .line 86
    invoke-virtual {v0, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    :cond_6
    return-object v0
    .line 90
.end method

.method public final getMenuView(Landroid/view/ViewGroup;)Lmiuix/appcompat/internal/view/menu/MenuView;
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    .line 2
    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    .line 6
    iget v1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mMenuLayoutRes:I

    .line 8
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 11
    move-result-object p1

    .line 14
    check-cast p1, Lmiuix/appcompat/internal/view/menu/MenuView;

    .line 15
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    .line 17
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 19
    invoke-interface {p1, v0}, Lmiuix/appcompat/internal/view/menu/MenuView;->initialize(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    .line 21
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->updateMenuView()V

    .line 24
    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    .line 27
    move-object v0, p1

    .line 29
    check-cast v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 30
    invoke-virtual {v0, p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->setPresenter(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)V

    .line 32
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mBottomMenuCustomView:Landroid/view/View;

    .line 35
    if-eqz v0, :cond_2

    .line 37
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 39
    move-result-object v0

    .line 42
    if-nez v0, :cond_2

    .line 43
    instance-of v0, p1, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    .line 45
    if-eqz v0, :cond_2

    .line 47
    move-object v0, p1

    .line 49
    check-cast v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    .line 50
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mBottomMenuCustomView:Landroid/view/View;

    .line 52
    if-nez p0, :cond_1

    .line 54
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    goto :goto_0

    .line 59
    :cond_1
    iput-object p0, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    .line 60
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 62
    :cond_2
    :goto_0
    return-object p1
    .line 65
.end method

.method public final getOverflowMenu()Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;
    .locals 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 6
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    if-eqz v0, :cond_1

    .line 15
    new-instance v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$PopupOverflowMenu;

    .line 17
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mContext:Landroid/content/Context;

    .line 19
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 21
    iget-object v3, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 23
    invoke-direct {v0, p0, v1, v2, v3}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$PopupOverflowMenu;-><init>(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;Landroid/view/View;)V

    .line 25
    return-object v0

    .line 28
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mListOverflowMenu:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ListOverflowMenu;

    .line 29
    if-nez v0, :cond_2

    .line 31
    new-instance v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ListOverflowMenu;

    .line 33
    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ListOverflowMenu;-><init>(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)V

    .line 35
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mListOverflowMenu:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ListOverflowMenu;

    .line 38
    :cond_2
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mListOverflowMenu:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ListOverflowMenu;

    .line 40
    return-object p0
    .line 42
.end method

.method public final getOverflowMenuItem()Lmiuix/appcompat/internal/view/menu/MenuItemImpl;
    .locals 9

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowMenuItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 2
    if-nez v0, :cond_0

    .line 4
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 6
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mContext:Landroid/content/Context;

    .line 8
    const v1, 0x7f1307fe    # @string/more 'More'

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 13
    move-result-object v7

    .line 16
    const/4 v8, 0x0

    .line 17
    const/4 v3, 0x0

    .line 18
    const v4, 0x7f0a061e    # @id/more

    .line 19
    const/4 v5, 0x0

    .line 22
    const/4 v6, 0x0

    .line 23
    new-instance v0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 24
    move-object v1, v0

    .line 26
    invoke-direct/range {v1 .. v8}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;-><init>(Lmiuix/appcompat/internal/view/menu/MenuBuilder;IIIILjava/lang/CharSequence;I)V

    .line 27
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowMenuItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 30
    :cond_0
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowMenuItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 32
    return-object p0
    .line 34
.end method

.method public final hideOverflowMenu(Z)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mPostedOpenRunnable:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OpenOverflowRunnable;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 11
    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 13
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    .line 16
    check-cast p1, Landroid/view/View;

    .line 18
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mPostedOpenRunnable:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OpenOverflowRunnable;

    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 22
    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mPostedOpenRunnable:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OpenOverflowRunnable;

    .line 26
    const/4 p0, 0x1

    .line 28
    return p0

    .line 29
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowMenu:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;

    .line 30
    if-eqz v0, :cond_2

    .line 32
    invoke-interface {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;->isShowing()Z

    .line 34
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 40
    invoke-virtual {v2, v1}, Landroid/view/View;->setSelected(Z)V

    .line 42
    :cond_1
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowMenu:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;

    .line 45
    invoke-interface {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;->dismiss(Z)V

    .line 47
    return v0

    .line 50
    :cond_2
    return v1
    .line 51
.end method

.method public final initForMenu(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mContext:Landroid/content/Context;

    .line 2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    iput-object p2, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    const/4 p2, 0x1

    .line 12
    iput-boolean p2, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mReserveOverflow:Z

    .line 13
    iget-boolean p2, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mWidthLimitSet:Z

    .line 15
    if-nez p2, :cond_0

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 19
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 23
    move-result-object p1

    .line 26
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 27
    div-int/lit8 p1, p1, 0x2

    .line 29
    :cond_0
    iget-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->isMaxItemCountSet:Z

    .line 31
    if-nez p1, :cond_1

    .line 33
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->getDefaultMaxItemCount()I

    .line 35
    move-result p1

    .line 38
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mMaxItems:I

    .line 39
    :cond_1
    iget-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mReserveOverflow:Z

    .line 41
    if-eqz p1, :cond_3

    .line 43
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 45
    if-nez p1, :cond_2

    .line 47
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    .line 49
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->createOverflowMenuButton(Landroid/content/Context;)Landroid/view/View;

    .line 51
    move-result-object p1

    .line 54
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 55
    :cond_2
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 57
    if-eqz p1, :cond_4

    .line 59
    const/4 p1, 0x0

    .line 61
    invoke-static {p1, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 62
    move-result p1

    .line 65
    iget-object p2, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 66
    invoke-virtual {p2, p1, p1}, Landroid/view/View;->measure(II)V

    .line 68
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 71
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 73
    goto :goto_0

    .line 76
    :cond_3
    const/4 p1, 0x0

    .line 77
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 78
    :cond_4
    :goto_0
    return-void
    .line 80
.end method

.method public isConvertViewTypeAllowed(Landroid/view/View;)Z
    .locals 0

    .line 1
    instance-of p0, p1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemView;

    .line 2
    return p0
    .line 4
.end method

.method public final isOverflowMenuShowing()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowMenu:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;->isShowing()Z

    .line 6
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
    .line 15
.end method

.method public final onCloseMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    .line 3
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mCallback:Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;

    .line 6
    if-eqz p0, :cond_0

    .line 8
    invoke-interface {p0, p1, p2}, Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V

    .line 10
    :cond_0
    return-void
    .line 13
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    check-cast p1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$SavedState;

    .line 2
    iget p1, p1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$SavedState;->openSubMenuId:I

    .line 4
    if-lez p1, :cond_0

    .line 6
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 8
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    .line 10
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    invoke-interface {p1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    .line 16
    move-result-object p1

    .line 19
    check-cast p1, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;

    .line 20
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->onSubMenuSelected(Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;)Z

    .line 22
    :cond_0
    return-void
    .line 25
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .line 1
    new-instance v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$SavedState;

    .line 2
    invoke-direct {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$SavedState;-><init>()V

    .line 4
    iget p0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOpenSubMenuId:I

    .line 7
    iput p0, v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$SavedState;->openSubMenuId:I

    .line 9
    return-object v0
    .line 11
.end method

.method public onSubMenuSelected(Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;)Z
    .locals 8

    .line 1
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->hasVisibleItems()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    return v1

    .line 9
    :cond_0
    move-object v0, p1

    .line 10
    :goto_0
    iget-object v2, v0, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;->mParentMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 11
    iget-object v3, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 13
    if-eq v2, v3, :cond_1

    .line 15
    move-object v0, v2

    .line 17
    check-cast v0, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;

    .line 18
    goto :goto_0

    .line 20
    :cond_1
    iget-object v0, v0, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;->mItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 21
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    .line 23
    check-cast v2, Landroid/view/ViewGroup;

    .line 25
    const/4 v3, 0x0

    .line 27
    if-nez v2, :cond_2

    .line 28
    goto :goto_2

    .line 30
    :cond_2
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 31
    move-result v4

    .line 34
    move v5, v1

    .line 35
    :goto_1
    if-ge v5, v4, :cond_4

    .line 36
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 38
    move-result-object v6

    .line 41
    instance-of v7, v6, Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;

    .line 42
    if-eqz v7, :cond_3

    .line 44
    move-object v7, v6

    .line 46
    check-cast v7, Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;

    .line 47
    invoke-interface {v7}, Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;->getItemData()Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 49
    move-result-object v7

    .line 52
    if-ne v7, v0, :cond_3

    .line 53
    goto :goto_3

    .line 55
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 56
    goto :goto_1

    .line 58
    :cond_4
    :goto_2
    move-object v6, v3

    .line 59
    :goto_3
    if-nez v6, :cond_5

    .line 60
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 62
    if-nez v0, :cond_5

    .line 64
    return v1

    .line 66
    :cond_5
    iget-object v0, p1, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;->mItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 67
    iget v0, v0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mId:I

    .line 69
    iput v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOpenSubMenuId:I

    .line 71
    new-instance v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ActionButtonSubMenu;

    .line 73
    invoke-direct {v0, p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ActionButtonSubMenu;-><init>(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;)V

    .line 75
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mActionButtonPopup:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ActionButtonSubMenu;

    .line 78
    invoke-virtual {v0, v3}, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;->show(Landroid/os/IBinder;)V

    .line 80
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mCallback:Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;

    .line 83
    if-eqz p0, :cond_6

    .line 85
    invoke-interface {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)Z

    .line 87
    :cond_6
    const/4 p0, 0x1

    .line 90
    return p0
    .line 91
.end method

.method public final showOverflowMenu()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mReserveOverflow:Z

    .line 2
    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->isOverflowMenuShowing()Z

    .line 6
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 12
    if-eqz v0, :cond_1

    .line 14
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    .line 16
    if-eqz v0, :cond_1

    .line 18
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mPostedOpenRunnable:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OpenOverflowRunnable;

    .line 20
    if-nez v0, :cond_1

    .line 22
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->getOverflowMenu()Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;

    .line 24
    move-result-object v0

    .line 27
    new-instance v1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OpenOverflowRunnable;

    .line 28
    invoke-direct {v1, p0, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OpenOverflowRunnable;-><init>(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;)V

    .line 30
    iput-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mPostedOpenRunnable:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OpenOverflowRunnable;

    .line 33
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    .line 35
    check-cast v0, Landroid/view/View;

    .line 37
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 39
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mCallback:Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;

    .line 42
    if-eqz v0, :cond_0

    .line 44
    const/4 v1, 0x0

    .line 46
    invoke-interface {v0, v1}, Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)Z

    .line 47
    :cond_0
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 50
    const/4 v0, 0x1

    .line 52
    invoke-virtual {p0, v0}, Landroid/view/View;->setSelected(Z)V

    .line 53
    return v0

    .line 56
    :cond_1
    const/4 p0, 0x0

    .line 57
    return p0
    .line 58
.end method

.method public final updateMenuView()V
    .locals 10

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    .line 2
    move-object v1, v0

    .line 4
    check-cast v1, Landroid/view/ViewGroup;

    .line 5
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x0

    .line 9
    if-nez v1, :cond_0

    .line 10
    goto/16 :goto_4

    .line 12
    :cond_0
    invoke-interface {v0}, Lmiuix/appcompat/internal/view/menu/MenuView;->hasBackgroundView()Z

    .line 14
    move-result v0

    .line 17
    iget-object v5, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 18
    if-eqz v5, :cond_7

    .line 20
    invoke-virtual {v5}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->flagActionItems()V

    .line 22
    iget-object v5, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 25
    invoke-virtual {v5}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    .line 27
    move-result-object v5

    .line 30
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 31
    move-result-object v5

    .line 34
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    move-result v6

    .line 38
    if-eqz v6, :cond_7

    .line 39
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    move-result-object v6

    .line 44
    check-cast v6, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 45
    iget v7, v6, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 47
    const/16 v8, 0x20

    .line 49
    and-int/2addr v7, v8

    .line 51
    if-ne v7, v8, :cond_2

    .line 52
    move v7, v2

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    move v7, v4

    .line 56
    :goto_1
    if-eqz v7, :cond_1

    .line 57
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 59
    move-result-object v7

    .line 62
    instance-of v8, v7, Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;

    .line 63
    if-eqz v8, :cond_3

    .line 65
    move-object v8, v7

    .line 67
    check-cast v8, Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;

    .line 68
    invoke-interface {v8}, Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;->getItemData()Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 70
    move-result-object v8

    .line 73
    goto :goto_2

    .line 74
    :cond_3
    move-object v8, v3

    .line 75
    :goto_2
    invoke-virtual {p0, v6, v7, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->getItemView(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 76
    move-result-object v9

    .line 79
    if-eq v6, v8, :cond_4

    .line 80
    invoke-virtual {v9, v4}, Landroid/view/View;->setPressed(Z)V

    .line 82
    :cond_4
    if-eq v9, v7, :cond_6

    .line 85
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 87
    move-result-object v7

    .line 90
    check-cast v7, Landroid/view/ViewGroup;

    .line 91
    if-eqz v7, :cond_5

    .line 93
    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 95
    :cond_5
    iget-object v7, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    .line 98
    check-cast v7, Landroid/view/ViewGroup;

    .line 100
    invoke-virtual {v7, v9, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 102
    :cond_6
    iput-object v9, v6, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mView:Landroid/view/View;

    .line 105
    add-int/lit8 v0, v0, 0x1

    .line 107
    goto :goto_0

    .line 109
    :cond_7
    :goto_3
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 110
    move-result v5

    .line 113
    if-ge v0, v5, :cond_8

    .line 114
    iget-object v5, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    .line 116
    invoke-interface {v5, v0}, Lmiuix/appcompat/internal/view/menu/MenuView;->filterLeftoverView(I)Z

    .line 118
    move-result v5

    .line 121
    if-nez v5, :cond_7

    .line 122
    add-int/lit8 v0, v0, 0x1

    .line 124
    goto :goto_3

    .line 126
    :cond_8
    :goto_4
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    .line 127
    if-nez v0, :cond_9

    .line 129
    return-void

    .line 131
    :cond_9
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 132
    if-eqz v0, :cond_a

    .line 134
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->flagActionItems()V

    .line 136
    iget-object v3, v0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    .line 139
    :cond_a
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mReserveOverflow:Z

    .line 141
    if-eqz v0, :cond_c

    .line 143
    if-eqz v3, :cond_c

    .line 145
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 147
    move-result v0

    .line 150
    if-ne v0, v2, :cond_b

    .line 151
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 153
    move-result-object v0

    .line 156
    check-cast v0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 157
    iget-boolean v0, v0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mIsActionViewExpanded:Z

    .line 159
    xor-int/2addr v0, v2

    .line 161
    goto :goto_5

    .line 162
    :cond_b
    if-lez v0, :cond_c

    .line 163
    move v0, v2

    .line 165
    goto :goto_5

    .line 166
    :cond_c
    move v0, v4

    .line 167
    :goto_5
    if-eqz v0, :cond_f

    .line 168
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 170
    if-nez v0, :cond_d

    .line 172
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    .line 174
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->createOverflowMenuButton(Landroid/content/Context;)Landroid/view/View;

    .line 176
    move-result-object v0

    .line 179
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 180
    goto :goto_6

    .line 182
    :cond_d
    const/4 v1, 0x0

    .line 183
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 184
    :goto_6
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 187
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 189
    move-result-object v0

    .line 192
    check-cast v0, Landroid/view/ViewGroup;

    .line 193
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    .line 195
    if-eq v0, v1, :cond_10

    .line 197
    if-eqz v0, :cond_e

    .line 199
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 201
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 203
    :cond_e
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    .line 206
    check-cast v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 208
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 210
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 212
    new-instance v3, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    .line 215
    invoke-direct {v3}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;-><init>()V

    .line 217
    iput-boolean v2, v3, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 220
    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    goto :goto_7

    .line 225
    :cond_f
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 226
    if-eqz v0, :cond_10

    .line 228
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 230
    move-result-object v0

    .line 233
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    .line 234
    if-ne v0, v1, :cond_10

    .line 236
    check-cast v1, Landroid/view/ViewGroup;

    .line 238
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 240
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 242
    :cond_10
    :goto_7
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    .line 245
    check-cast v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 247
    iget-boolean v1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mReserveOverflow:Z

    .line 249
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->setOverflowReserved(Z)V

    .line 251
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 254
    if-eqz v0, :cond_11

    .line 256
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 258
    move-result-object v0

    .line 261
    if-eqz v0, :cond_11

    .line 262
    goto :goto_8

    .line 264
    :cond_11
    move v2, v4

    .line 265
    :goto_8
    if-nez v2, :cond_12

    .line 266
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->getOverflowMenu()Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;

    .line 268
    move-result-object v0

    .line 271
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 272
    invoke-interface {v0, p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;->update(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    .line 274
    :cond_12
    return-void
    .line 277
.end method
