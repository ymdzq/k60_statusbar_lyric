.class public final Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;
.super Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mMoreButtonItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)V
    .locals 7

    .line 1
    const v3, 0x7f0d01eb    # @layout/miuix_appcompat_action_end_menu_layout 'res/layout/miuix_appcompat_action_end_menu_layout.xml'

    .line 2
    const v4, 0x7f0d01ea    # @layout/miuix_appcompat_action_end_menu_item_layout 'res/layout/miuix_appcompat_action_end_menu_item_layout.xml'

    .line 5
    const v5, 0x7f0d01da    # @layout/miuix_appcompat_action_bar_expanded_menu_layout 'res/layout/miuix_appcompat_action_bar_expanded_menu_layout.xml'

    .line 8
    const v6, 0x7f0d01de    # @layout/miuix_appcompat_action_bar_list_menu_item_layout 'res/layout/miuix_appcompat_action_bar_list_menu_item_layout.xml'

    .line 11
    move-object v0, p0

    .line 14
    move-object v1, p1

    .line 15
    move-object v2, p2

    .line 16
    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;-><init>(Landroid/content/Context;Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;IIII)V

    .line 17
    return-void
    .line 20
.end method


# virtual methods
.method public final createOverflowMenuButton(Landroid/content/Context;)Landroid/view/View;
    .locals 11

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    .line 2
    check-cast v0, Landroid/view/ViewGroup;

    .line 4
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    return-object v1

    .line 9
    :cond_0
    iget-object v3, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 10
    const v2, 0x7f1307fe    # @string/more 'More'

    .line 12
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 15
    move-result-object v8

    .line 18
    const/4 v9, 0x2

    .line 19
    const/4 v4, 0x0

    .line 20
    const v5, 0x7f0a061e    # @id/more

    .line 21
    const/4 v6, 0x0

    .line 24
    const/4 v7, 0x0

    .line 25
    new-instance v10, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 26
    move-object v2, v10

    .line 28
    invoke-direct/range {v2 .. v9}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;-><init>(Lmiuix/appcompat/internal/view/menu/MenuBuilder;IIIILjava/lang/CharSequence;I)V

    .line 29
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 32
    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 34
    const v2, 0x7f04029d    # @attr/endActionMoreButtonIcon

    .line 37
    filled-new-array {v2}, [I

    .line 40
    move-result-object v2

    .line 43
    invoke-virtual {p1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 44
    move-result-object p1

    .line 47
    const/4 v2, 0x0

    .line 48
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 49
    move-result-object v3

    .line 52
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 53
    invoke-virtual {v10, v3}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 56
    new-instance p1, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter$$ExternalSyntheticLambda0;

    .line 59
    invoke-direct {p1, p0}, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter$$ExternalSyntheticLambda0;-><init>(Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;)V

    .line 61
    iput-object p1, v10, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 64
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 66
    iput-boolean v2, p1, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 68
    invoke-virtual {p0, v10, v1, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->getItemView(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 70
    move-result-object p1

    .line 73
    const v0, 0x7f0a061e    # @id/more

    .line 74
    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 77
    iput-object v10, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;->mMoreButtonItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 80
    iput-object p1, v10, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mView:Landroid/view/View;

    .line 82
    return-object p1
    .line 84
.end method

.method public final getDefaultMaxItemCount()I
    .locals 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mContext:Landroid/content/Context;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object p0

    .line 9
    const v0, 0x7f0b0005    # @integer/action_bar_end_menu_max_item_count '6'

    .line 10
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 13
    move-result p0

    .line 16
    return p0

    .line 17
    :cond_0
    const/4 p0, 0x5

    .line 18
    return p0
    .line 19
.end method

.method public final isConvertViewTypeAllowed(Landroid/view/View;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;->mMoreButtonItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 5
    const/4 v1, 0x1

    .line 7
    if-eqz p0, :cond_0

    .line 8
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mView:Landroid/view/View;

    .line 10
    if-ne p0, p1, :cond_0

    .line 12
    move p0, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move p0, v0

    .line 16
    :goto_0
    instance-of p1, p1, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuItemView;

    .line 17
    if-eqz p1, :cond_1

    .line 19
    if-nez p0, :cond_1

    .line 21
    move v0, v1

    .line 23
    :cond_1
    return v0
    .line 24
.end method

.method public final onSubMenuSelected(Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->hasVisibleItems()Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    new-instance v0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter$PopupSubMenu;

    .line 10
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mContext:Landroid/content/Context;

    .line 12
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 14
    invoke-direct {v0, p0, v1, p1, v2}, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter$PopupSubMenu;-><init>(Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;Landroid/view/View;)V

    .line 16
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->tryShow()Z

    .line 19
    const/4 p0, 0x1

    .line 22
    return p0
    .line 23
.end method
