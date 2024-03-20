.class public final Lmiuix/appcompat/internal/view/menu/MenuItemImpl;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/MenuItem;


# instance fields
.field public mActionView:Landroid/view/View;

.field public mBadgeDrawable:Lmiuix/appcompat/widget/BadgeDrawable;

.field public final mCategoryOrder:I

.field public mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field public mContentDescription:Ljava/lang/CharSequence;

.field public mFlags:I

.field public final mGroup:I

.field public mIconDrawable:Landroid/graphics/drawable/Drawable;

.field public mIconResId:I

.field public final mId:I

.field public mIntent:Landroid/content/Intent;

.field public mIsActionViewExpanded:Z

.field public mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

.field public mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field public final mOrdering:I

.field public mShortcutAlphabeticChar:C

.field public mShortcutNumericChar:C

.field public mShowAsAction:I

.field public mSubMenu:Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;

.field public mTitle:Ljava/lang/CharSequence;

.field public mTitleCondensed:Ljava/lang/CharSequence;

.field public mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/view/menu/MenuBuilder;IIIILjava/lang/CharSequence;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mIconResId:I

    .line 6
    const/16 v1, 0x10

    .line 8
    iput v1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 10
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mIsActionViewExpanded:Z

    .line 12
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 14
    iput p3, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mId:I

    .line 16
    iput p2, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mGroup:I

    .line 18
    iput p4, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mCategoryOrder:I

    .line 20
    iput p5, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mOrdering:I

    .line 22
    iput-object p6, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 24
    iput p7, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    .line 26
    return-void
    .line 28
.end method


# virtual methods
.method public final collapseActionView()Z
    .locals 1

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    .line 2
    and-int/lit8 v0, v0, 0x8

    .line 4
    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 8
    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 12
    invoke-virtual {v0, p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->collapseItemActionView(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)Z

    .line 14
    move-result p0

    .line 17
    if-eqz p0, :cond_1

    .line 18
    :cond_0
    const/4 p0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 p0, 0x0

    .line 22
    :goto_0
    return p0
    .line 23
.end method

.method public final expandActionView()Z
    .locals 1

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    .line 2
    and-int/lit8 v0, v0, 0x8

    .line 4
    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 8
    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 12
    invoke-virtual {v0, p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->expandItemActionView(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)Z

    .line 14
    move-result p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    const/4 p0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    :goto_0
    return p0
    .line 23
.end method

.method public final getActionProvider()Landroid/view/ActionProvider;
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    const-string v0, "Implementation should use getSupportActionProvider!"

    .line 4
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    throw p0
    .line 9
.end method

.method public final getActionView()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    return-object p0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    return-object p0
    .line 8
.end method

.method public final getAlphabeticShortcut()C
    .locals 0

    .line 1
    iget-char p0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    .line 2
    return p0
    .line 4
.end method

.method public final getContentDescription()Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mContentDescription:Ljava/lang/CharSequence;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getGroupId()I
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mGroup:I

    .line 2
    return p0
    .line 4
.end method

.method public final getIcon()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    return-object v0

    .line 6
    :cond_0
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mIconResId:I

    .line 7
    if-eqz v0, :cond_1

    .line 9
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 11
    iget-object v2, v1, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    .line 13
    iget-object v1, v1, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    .line 15
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 17
    move-result-object v1

    .line 20
    sget-object v3, Landroidx/core/content/res/ResourcesCompat;->sTempTypedValue:Ljava/lang/ThreadLocal;

    .line 21
    invoke-virtual {v2, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 23
    move-result-object v0

    .line 26
    const/4 v1, 0x0

    .line 27
    iput v1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mIconResId:I

    .line 28
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 30
    return-object v0

    .line 32
    :cond_1
    const/4 p0, 0x0

    .line 33
    return-object p0
    .line 34
.end method

.method public final getIntent()Landroid/content/Intent;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getItemId()I
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mId:I

    .line 2
    return p0
    .line 4
.end method

.method public final getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getNumericShortcut()C
    .locals 0

    .line 1
    iget-char p0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    .line 2
    return p0
    .line 4
.end method

.method public final getOrder()I
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mCategoryOrder:I

    .line 2
    return p0
    .line 4
.end method

.method public final getSubMenu()Landroid/view/SubMenu;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mSubMenu:Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getTitleCondensed()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 7
    :goto_0
    return-object v0
    .line 9
.end method

.method public final hasSubMenu()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mSubMenu:Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
    .line 9
.end method

.method public final isActionViewExpanded()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mIsActionViewExpanded:Z

    .line 2
    return p0
    .line 4
.end method

.method public final isCheckable()Z
    .locals 1

    .line 1
    iget p0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 2
    const/4 v0, 0x1

    .line 4
    and-int/2addr p0, v0

    .line 5
    if-ne p0, v0, :cond_0

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return v0
    .line 10
.end method

.method public final isChecked()Z
    .locals 1

    .line 1
    iget p0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 2
    const/4 v0, 0x2

    .line 4
    and-int/2addr p0, v0

    .line 5
    if-ne p0, v0, :cond_0

    .line 6
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
    .line 11
.end method

.method public final isEnabled()Z
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 2
    and-int/lit8 p0, p0, 0x10

    .line 4
    if-eqz p0, :cond_0

    .line 6
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
    .line 11
.end method

.method public final isVisible()Z
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 2
    and-int/lit8 p0, p0, 0x8

    .line 4
    if-nez p0, :cond_0

    .line 6
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
    .line 11
.end method

.method public final requiresActionButton()Z
    .locals 1

    .line 1
    iget p0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    .line 2
    const/4 v0, 0x2

    .line 4
    and-int/2addr p0, v0

    .line 5
    if-ne p0, v0, :cond_0

    .line 6
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
    .line 11
.end method

.method public final setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    const-string p1, "Implementation should use setSupportActionProvider!"

    .line 4
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    throw p0
    .line 9
.end method

.method public final setActionView(I)Landroid/view/MenuItem;
    .locals 3

    .line 8
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 9
    iget-object v0, v0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    .line 10
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 11
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 2
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mId:I

    if-lez v0, :cond_0

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 5
    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p1, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 7
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public final setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 1

    .line 1
    iget-char v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    .line 2
    if-ne v0, p1, :cond_0

    .line 4
    return-object p0

    .line 6
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    .line 7
    move-result p1

    .line 10
    iput-char p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    .line 11
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 13
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 16
    return-object p0
    .line 19
.end method

.method public final setCheckable(Z)Landroid/view/MenuItem;
    .locals 2

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 2
    and-int/lit8 v1, v0, -0x2

    .line 4
    or-int/2addr p1, v1

    .line 6
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 7
    if-eq v0, p1, :cond_0

    .line 9
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 11
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 14
    :cond_0
    return-object p0
    .line 17
.end method

.method public final setChecked(Z)Landroid/view/MenuItem;
    .locals 7

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 2
    and-int/lit8 v1, v0, 0x4

    .line 4
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x0

    .line 7
    if-eqz v1, :cond_6

    .line 8
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mGroup:I

    .line 15
    iget-object p1, p1, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object p1

    .line 22
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v1

    .line 26
    if-eqz v1, :cond_8

    .line 27
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v1

    .line 32
    check-cast v1, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 33
    iget v4, v1, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mGroup:I

    .line 35
    if-ne v4, v0, :cond_0

    .line 37
    iget v4, v1, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 39
    and-int/lit8 v4, v4, 0x4

    .line 41
    const/4 v5, 0x1

    .line 43
    if-eqz v4, :cond_1

    .line 44
    move v4, v5

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    move v4, v3

    .line 48
    :goto_1
    if-nez v4, :cond_2

    .line 49
    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->isCheckable()Z

    .line 52
    move-result v4

    .line 55
    if-nez v4, :cond_3

    .line 56
    goto :goto_0

    .line 58
    :cond_3
    if-ne v1, p0, :cond_4

    .line 59
    goto :goto_2

    .line 61
    :cond_4
    move v5, v3

    .line 62
    :goto_2
    iget v4, v1, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 63
    and-int/lit8 v6, v4, -0x3

    .line 65
    if-eqz v5, :cond_5

    .line 67
    move v5, v2

    .line 69
    goto :goto_3

    .line 70
    :cond_5
    move v5, v3

    .line 71
    :goto_3
    or-int/2addr v5, v6

    .line 72
    iput v5, v1, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 73
    if-eq v4, v5, :cond_0

    .line 75
    iget-object v1, v1, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 77
    invoke-virtual {v1, v3}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 79
    goto :goto_0

    .line 82
    :cond_6
    and-int/lit8 v1, v0, -0x3

    .line 83
    if-eqz p1, :cond_7

    .line 85
    goto :goto_4

    .line 87
    :cond_7
    move v2, v3

    .line 88
    :goto_4
    or-int p1, v2, v1

    .line 89
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 91
    if-eq v0, p1, :cond_8

    .line 93
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 95
    invoke-virtual {p1, v3}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 97
    :cond_8
    return-object p0
    .line 100
.end method

.method public final setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mContentDescription:Ljava/lang/CharSequence;

    .line 2
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 4
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 7
    return-object p0
    .line 10
.end method

.method public final setEnabled(Z)Landroid/view/MenuItem;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    iget p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 4
    or-int/lit8 p1, p1, 0x10

    .line 6
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    iget p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 11
    and-int/lit8 p1, p1, -0x11

    .line 13
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 15
    :goto_0
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 17
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 20
    return-object p0
    .line 23
.end method

.method public final setIcon(I)Landroid/view/MenuItem;
    .locals 1

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 5
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mIconResId:I

    .line 6
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mIconResId:I

    .line 2
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public final setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    .line 2
    return-object p0
    .line 4
.end method

.method public final setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 1

    .line 1
    iget-char v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    .line 2
    if-ne v0, p1, :cond_0

    .line 4
    return-object p0

    .line 6
    :cond_0
    iput-char p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    .line 7
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 9
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 12
    return-object p0
    .line 15
.end method

.method public final setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    const-string p1, "Implementation should use setSupportOnActionExpandListener!"

    .line 4
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    throw p0
    .line 9
.end method

.method public final setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 2
    return-object p0
    .line 4
.end method

.method public final setShortcut(CC)Landroid/view/MenuItem;
    .locals 0

    .line 1
    iput-char p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    .line 2
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    .line 4
    move-result p1

    .line 7
    iput-char p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    .line 8
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 10
    const/4 p2, 0x0

    .line 12
    invoke-virtual {p1, p2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 13
    return-object p0
    .line 16
.end method

.method public final setShowAsAction(I)V
    .locals 3

    .line 1
    and-int/lit8 v0, p1, 0x3

    .line 2
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    if-eq v0, v1, :cond_1

    .line 7
    const/4 v2, 0x2

    .line 9
    if-ne v0, v2, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 13
    const-string p1, "SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive."

    .line 15
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 17
    throw p0

    .line 20
    :cond_1
    :goto_0
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    .line 21
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 23
    iput-boolean v1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 25
    invoke-virtual {p0, v1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 27
    return-void
    .line 30
.end method

.method public final setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->setShowAsAction(I)V

    .line 2
    return-object p0
    .line 5
.end method

.method public final setTitle(I)Landroid/view/MenuItem;
    .locals 1

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 6
    iget-object v0, v0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mSubMenu:Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->setHeaderTitleInt(Ljava/lang/CharSequence;)V

    :cond_0
    return-object p0
.end method

.method public final setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    .line 2
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 4
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 7
    return-object p0
    .line 10
.end method

.method public final setVisible(Z)Landroid/view/MenuItem;
    .locals 3

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 2
    and-int/lit8 v1, v0, -0x9

    .line 4
    const/4 v2, 0x0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    move p1, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/16 p1, 0x8

    .line 11
    :goto_0
    or-int/2addr p1, v1

    .line 13
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 14
    const/4 v1, 0x1

    .line 16
    if-eq v0, p1, :cond_1

    .line 17
    move v2, v1

    .line 19
    :cond_1
    if-eqz v2, :cond_2

    .line 20
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 22
    iput-boolean v1, p1, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 24
    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 26
    :cond_2
    return-object p0
    .line 29
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 2
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method
