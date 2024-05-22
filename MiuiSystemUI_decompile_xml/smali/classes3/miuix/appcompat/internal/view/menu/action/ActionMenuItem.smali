.class public final Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/MenuItem;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mFlags:I

.field public mIconDrawable:Landroid/graphics/drawable/Drawable;

.field public final mId:I

.field public mIntent:Landroid/content/Intent;

.field public mShortcutAlphabeticChar:C

.field public mShortcutNumericChar:C

.field public mTitle:Ljava/lang/CharSequence;

.field public mTitleCondensed:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/CharSequence;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/16 v0, 0x10

    .line 5
    iput v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mFlags:I

    .line 7
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mContext:Landroid/content/Context;

    .line 9
    iput p2, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mId:I

    .line 11
    iput-object p3, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    .line 13
    return-void
    .line 15
.end method


# virtual methods
.method public final collapseActionView()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final expandActionView()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final getActionProvider()Landroid/view/ActionProvider;
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    throw p0
    .line 7
.end method

.method public final getActionView()Landroid/view/View;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public final getAlphabeticShortcut()C
    .locals 0

    .line 1
    iget-char p0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mShortcutAlphabeticChar:C

    .line 2
    return p0
    .line 4
.end method

.method public final getGroupId()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final getIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getIntent()Landroid/content/Intent;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mIntent:Landroid/content/Intent;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getItemId()I
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mId:I

    .line 2
    return p0
    .line 4
.end method

.method public final getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public final getNumericShortcut()C
    .locals 0

    .line 1
    iget-char p0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mShortcutNumericChar:C

    .line 2
    return p0
    .line 4
.end method

.method public final getOrder()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final getSubMenu()Landroid/view/SubMenu;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getTitleCondensed()Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mTitleCondensed:Ljava/lang/CharSequence;

    .line 2
    return-object p0
    .line 4
.end method

.method public final hasSubMenu()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final isActionViewExpanded()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final isCheckable()Z
    .locals 1

    .line 1
    iget p0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mFlags:I

    .line 2
    const/4 v0, 0x1

    .line 4
    and-int/2addr p0, v0

    .line 5
    if-eqz p0, :cond_0

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
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mFlags:I

    .line 2
    and-int/lit8 p0, p0, 0x2

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

.method public final isEnabled()Z
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mFlags:I

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
    iget p0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mFlags:I

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

.method public final setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    throw p0
    .line 7
.end method

.method public final setActionView(I)Landroid/view/MenuItem;
    .locals 0

    .line 2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 0

    .line 1
    iput-char p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mShortcutAlphabeticChar:C

    .line 2
    return-object p0
    .line 4
.end method

.method public final setCheckable(Z)Landroid/view/MenuItem;
    .locals 1

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mFlags:I

    .line 2
    and-int/lit8 v0, v0, -0x2

    .line 4
    or-int/2addr p1, v0

    .line 6
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mFlags:I

    .line 7
    return-object p0
    .line 9
.end method

.method public final setChecked(Z)Landroid/view/MenuItem;
    .locals 1

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mFlags:I

    .line 2
    and-int/lit8 v0, v0, -0x3

    .line 4
    if-eqz p1, :cond_0

    .line 6
    const/4 p1, 0x2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    or-int/2addr p1, v0

    .line 11
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mFlags:I

    .line 12
    return-object p0
    .line 14
.end method

.method public final setEnabled(Z)Landroid/view/MenuItem;
    .locals 1

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mFlags:I

    .line 2
    and-int/lit8 v0, v0, -0x11

    .line 4
    if-eqz p1, :cond_0

    .line 6
    const/16 p1, 0x10

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    or-int/2addr p1, v0

    .line 12
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mFlags:I

    .line 13
    return-object p0
    .line 15
.end method

.method public final setIcon(I)Landroid/view/MenuItem;
    .locals 1

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mIntent:Landroid/content/Intent;

    .line 2
    return-object p0
    .line 4
.end method

.method public final setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 0

    .line 1
    iput-char p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mShortcutNumericChar:C

    .line 2
    return-object p0
    .line 4
.end method

.method public final setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    throw p0
    .line 7
.end method

.method public final setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 0

    .line 1
    return-object p0
    .line 2
.end method

.method public final setShortcut(CC)Landroid/view/MenuItem;
    .locals 0

    .line 1
    iput-char p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mShortcutNumericChar:C

    .line 2
    iput-char p2, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mShortcutAlphabeticChar:C

    .line 4
    return-object p0
    .line 6
.end method

.method public final setShowAsAction(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 0

    .line 1
    return-object p0
    .line 2
.end method

.method public final setTitle(I)Landroid/view/MenuItem;
    .locals 1

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mTitleCondensed:Ljava/lang/CharSequence;

    .line 2
    return-object p0
    .line 4
.end method

.method public final setVisible(Z)Landroid/view/MenuItem;
    .locals 2

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mFlags:I

    .line 2
    const/16 v1, 0x8

    .line 4
    and-int/2addr v0, v1

    .line 6
    if-eqz p1, :cond_0

    .line 7
    const/4 v1, 0x0

    .line 9
    :cond_0
    or-int p1, v0, v1

    .line 10
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->mFlags:I

    .line 12
    return-object p0
    .line 14
.end method
