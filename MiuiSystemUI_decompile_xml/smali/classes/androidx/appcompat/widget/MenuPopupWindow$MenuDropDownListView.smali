.class public Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;
.super Landroidx/appcompat/widget/DropDownListView;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mAdvanceKey:I

.field public mHoverListener:Landroidx/appcompat/widget/MenuItemHoverListener;

.field public mHoveredMenuItem:Landroidx/appcompat/view/menu/MenuItemImpl;

.field public final mRetreatKey:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/DropDownListView;-><init>(Landroid/content/Context;Z)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 5
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 9
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 13
    move-result p1

    .line 16
    const/16 p2, 0x15

    .line 17
    const/16 v0, 0x16

    .line 19
    const/4 v1, 0x1

    .line 21
    if-ne v1, p1, :cond_0

    .line 22
    iput p2, p0, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->mAdvanceKey:I

    .line 24
    iput v0, p0, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->mRetreatKey:I

    .line 26
    goto :goto_0

    .line 28
    :cond_0
    iput v0, p0, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->mAdvanceKey:I

    .line 29
    iput p2, p0, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->mRetreatKey:I

    .line 31
    :goto_0
    return-void
    .line 33
.end method


# virtual methods
.method public final onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->mHoverListener:Landroidx/appcompat/widget/MenuItemHoverListener;

    .line 2
    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 6
    move-result-object v0

    .line 9
    instance-of v1, v0, Landroid/widget/HeaderViewListAdapter;

    .line 10
    if-eqz v1, :cond_0

    .line 12
    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    .line 14
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    .line 16
    move-result v1

    .line 19
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    .line 20
    move-result-object v0

    .line 23
    check-cast v0, Landroidx/appcompat/view/menu/MenuAdapter;

    .line 24
    goto :goto_0

    .line 26
    :cond_0
    check-cast v0, Landroidx/appcompat/view/menu/MenuAdapter;

    .line 27
    const/4 v1, 0x0

    .line 29
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 30
    move-result v2

    .line 33
    const/16 v3, 0xa

    .line 34
    if-eq v2, v3, :cond_1

    .line 36
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 38
    move-result v2

    .line 41
    float-to-int v2, v2

    .line 42
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 43
    move-result v3

    .line 46
    float-to-int v3, v3

    .line 47
    invoke-virtual {p0, v2, v3}, Landroid/widget/ListView;->pointToPosition(II)I

    .line 48
    move-result v2

    .line 51
    const/4 v3, -0x1

    .line 52
    if-eq v2, v3, :cond_1

    .line 53
    sub-int/2addr v2, v1

    .line 55
    if-ltz v2, :cond_1

    .line 56
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuAdapter;->getCount()I

    .line 58
    move-result v1

    .line 61
    if-ge v2, v1, :cond_1

    .line 62
    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/MenuAdapter;->getItem(I)Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 64
    move-result-object v1

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    const/4 v1, 0x0

    .line 69
    :goto_1
    iget-object v2, p0, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->mHoveredMenuItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 70
    if-eq v2, v1, :cond_3

    .line 72
    iget-object v0, v0, Landroidx/appcompat/view/menu/MenuAdapter;->mAdapterMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 74
    if-eqz v2, :cond_2

    .line 76
    iget-object v3, p0, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->mHoverListener:Landroidx/appcompat/widget/MenuItemHoverListener;

    .line 78
    invoke-interface {v3, v0, v2}, Landroidx/appcompat/widget/MenuItemHoverListener;->onItemHoverExit(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)V

    .line 80
    :cond_2
    iput-object v1, p0, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->mHoveredMenuItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 83
    if-eqz v1, :cond_3

    .line 85
    iget-object v2, p0, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->mHoverListener:Landroidx/appcompat/widget/MenuItemHoverListener;

    .line 87
    invoke-interface {v2, v0, v1}, Landroidx/appcompat/widget/MenuItemHoverListener;->onItemHoverEnter(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)V

    .line 89
    :cond_3
    invoke-super {p0, p1}, Landroidx/appcompat/widget/DropDownListView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    .line 92
    move-result p0

    .line 95
    return p0
    .line 96
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    .line 2
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/appcompat/view/menu/ListMenuItemView;

    .line 6
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_1

    .line 9
    iget v2, p0, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->mAdvanceKey:I

    .line 11
    if-ne p1, v2, :cond_1

    .line 13
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isEnabled()Z

    .line 15
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ListMenuItemView;->getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 21
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->hasSubMenu()Z

    .line 25
    move-result p1

    .line 28
    if-eqz p1, :cond_0

    .line 29
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    .line 31
    move-result p1

    .line 34
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedItemId()J

    .line 35
    move-result-wide v2

    .line 38
    invoke-virtual {p0, v0, p1, v2, v3}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 39
    :cond_0
    return v1

    .line 42
    :cond_1
    if-eqz v0, :cond_3

    .line 43
    iget v0, p0, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->mRetreatKey:I

    .line 45
    if-ne p1, v0, :cond_3

    .line 47
    const/4 p1, -0x1

    .line 49
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setSelection(I)V

    .line 50
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 53
    move-result-object p0

    .line 56
    instance-of p1, p0, Landroid/widget/HeaderViewListAdapter;

    .line 57
    if-eqz p1, :cond_2

    .line 59
    check-cast p0, Landroid/widget/HeaderViewListAdapter;

    .line 61
    invoke-virtual {p0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    .line 63
    move-result-object p0

    .line 66
    check-cast p0, Landroidx/appcompat/view/menu/MenuAdapter;

    .line 67
    goto :goto_0

    .line 69
    :cond_2
    check-cast p0, Landroidx/appcompat/view/menu/MenuAdapter;

    .line 70
    :goto_0
    iget-object p0, p0, Landroidx/appcompat/view/menu/MenuAdapter;->mAdapterMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 72
    const/4 p1, 0x0

    .line 74
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->close(Z)V

    .line 75
    return v1

    .line 78
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 79
    move-result p0

    .line 82
    return p0
    .line 83
.end method

.method public setHoverListener(Landroidx/appcompat/widget/MenuItemHoverListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->mHoverListener:Landroidx/appcompat/widget/MenuItemHoverListener;

    .line 2
    return-void
    .line 4
.end method

.method public bridge synthetic setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/DropDownListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2
    return-void
    .line 5
.end method
