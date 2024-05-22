.class public Lmiuix/appcompat/internal/view/menu/MenuBuilder;
.super Lcom/android/internal/view/menu/MenuBuilder;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final sCategoryToOrder:[I


# instance fields
.field public final mActionItems:Ljava/util/ArrayList;

.field public mCallback:Lmiuix/appcompat/internal/view/menu/MenuBuilder$Callback;

.field public final mContext:Landroid/content/Context;

.field public mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field public mExpandedItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

.field public mHeaderIcon:Landroid/graphics/drawable/Drawable;

.field public mHeaderTitle:Ljava/lang/CharSequence;

.field public mHeaderView:Landroid/view/View;

.field public mIsActionItemsStale:Z

.field public mIsClosing:Z

.field public mIsVisibleItemsStale:Z

.field public final mItems:Ljava/util/ArrayList;

.field public mItemsChangedWhileDispatchPrevented:Z

.field public final mNonActionItems:Ljava/util/ArrayList;

.field public mOptionalIconsVisible:Z

.field public final mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public mPreventDispatchingItemsChanged:Z

.field public mQwertyMode:Z

.field public final mResources:Landroid/content/res/Resources;

.field public mShortcutsVisible:Z

.field public final mTempShortcutItemList:Ljava/util/ArrayList;

.field public final mVisibleItems:Ljava/util/ArrayList;

.field public final menuItemComparator:Lmiuix/appcompat/internal/view/menu/MenuBuilder$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_0

    .line 5
    sput-object v0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->sCategoryToOrder:[I

    .line 8
    return-void

    .line 10
    nop

    .line 11
    :array_0
    .array-data 4
        0x1
        0x4
        0x5
        0x3
        0x2
        0x0
    .end array-data
    .line 12
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/internal/view/menu/MenuBuilder;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 6
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 8
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mOptionalIconsVisible:Z

    .line 10
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mIsClosing:Z

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mTempShortcutItemList:Ljava/util/ArrayList;

    .line 19
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 21
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 23
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 26
    new-instance v0, Lmiuix/appcompat/internal/view/menu/MenuBuilder$1;

    .line 28
    invoke-direct {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder$1;-><init>()V

    .line 30
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->menuItemComparator:Lmiuix/appcompat/internal/view/menu/MenuBuilder$1;

    .line 33
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 37
    move-result-object p1

    .line 40
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    .line 41
    new-instance p1, Ljava/util/ArrayList;

    .line 43
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 45
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 48
    new-instance p1, Ljava/util/ArrayList;

    .line 50
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 52
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    .line 55
    const/4 p1, 0x1

    .line 57
    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    .line 60
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    .line 67
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 69
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    .line 72
    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 74
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->setShortcutsVisibleInner(Z)V

    .line 76
    return-void
    .line 79
.end method

.method public static getOrdering(I)I
    .locals 2

    .line 1
    const/high16 v0, -0x10000

    .line 2
    and-int/2addr v0, p0

    .line 4
    shr-int/lit8 v0, v0, 0x10

    .line 5
    if-ltz v0, :cond_0

    .line 7
    const/4 v1, 0x6

    .line 9
    if-ge v0, v1, :cond_0

    .line 10
    sget-object v1, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->sCategoryToOrder:[I

    .line 12
    aget v0, v1, v0

    .line 14
    shl-int/lit8 v0, v0, 0x10

    .line 16
    const v1, 0xffff

    .line 18
    and-int/2addr p0, v1

    .line 21
    or-int/2addr p0, v0

    .line 22
    return p0

    .line 23
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 24
    const-string v0, "order does not contain a valid category."

    .line 26
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 28
    throw p0
    .line 31
.end method

.method private removeItemAtInt(IZ)V
    .locals 1

    .line 1
    if-ltz p1, :cond_1

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 9
    if-lt p1, v0, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 15
    if-eqz p2, :cond_1

    .line 18
    const/4 p1, 0x1

    .line 20
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 21
    :cond_1
    :goto_0
    return-void
    .line 24
.end method

.method private setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz p5, :cond_0

    .line 5
    iput-object p5, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    .line 7
    iput-object v1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 9
    iput-object v1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 11
    goto :goto_2

    .line 13
    :cond_0
    if-lez p1, :cond_1

    .line 14
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 16
    move-result-object p1

    .line 19
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 20
    goto :goto_0

    .line 22
    :cond_1
    if-eqz p2, :cond_2

    .line 23
    iput-object p2, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 25
    :cond_2
    :goto_0
    if-lez p3, :cond_3

    .line 27
    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 29
    move-result-object p1

    .line 32
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 33
    goto :goto_1

    .line 35
    :cond_3
    if-eqz p4, :cond_4

    .line 36
    iput-object p4, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 38
    :cond_4
    :goto_1
    iput-object v1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    .line 40
    :goto_2
    const/4 p1, 0x0

    .line 42
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 43
    return-void
    .line 46
.end method

.method private setShortcutsVisibleInner(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    .line 4
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    move-result-object p1

    .line 9
    iget p1, p1, Landroid/content/res/Configuration;->keyboard:I

    .line 10
    const/4 v0, 0x1

    .line 12
    if-eq p1, v0, :cond_0

    .line 13
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    .line 15
    const v1, 0x7f050003    # @bool/abc_config_showMenuShortcutsWhenKeyboardPresent 'false'

    .line 17
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 20
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    :goto_0
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mShortcutsVisible:Z

    .line 28
    return-void
    .line 30
.end method


# virtual methods
.method public final add(I)Landroid/view/MenuItem;
    .locals 1

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    move-result-object p0

    return-object p0
.end method

.method public final add(IIII)Landroid/view/MenuItem;
    .locals 1

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    move-result-object p0

    return-object p0
.end method

.method public final add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    move-result-object p0

    return-object p0
.end method

.method public final add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0, v0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    move-result-object p0

    return-object p0
.end method

.method public final addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .locals 7

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p4, p5, p6, v1}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p4

    if-eqz p4, :cond_0

    .line 3
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    and-int/lit8 p7, p7, 0x1

    if-nez p7, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->removeGroup(I)V

    :cond_1
    :goto_1
    if-ge v1, v2, :cond_4

    .line 5
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Landroid/content/pm/ResolveInfo;

    .line 6
    new-instance v3, Landroid/content/Intent;

    .line 7
    iget v4, p7, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-gez v4, :cond_2

    move-object v4, p6

    goto :goto_2

    :cond_2
    aget-object v4, p5, v4

    :goto_2
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 8
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v6, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 9
    invoke-virtual {p7, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 10
    invoke-virtual {p0, p1, p2, p3, v4}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    move-result-object v4

    .line 11
    invoke-virtual {p7, v0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 12
    iput-object v3, v4, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    if-eqz p8, :cond_3

    .line 13
    iget p7, p7, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-ltz p7, :cond_3

    .line 14
    aput-object v4, p8, p7

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return v2
.end method

.method public final addInternal(IIILjava/lang/CharSequence;)Lmiuix/appcompat/internal/view/menu/MenuItemImpl;
    .locals 10

    .line 1
    invoke-static {p3}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getOrdering(I)I

    .line 2
    move-result v8

    .line 5
    new-instance v9, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 6
    const/4 v7, 0x0

    .line 8
    move-object v0, v9

    .line 9
    move-object v1, p0

    .line 10
    move v2, p1

    .line 11
    move v3, p2

    .line 12
    move v4, p3

    .line 13
    move v5, v8

    .line 14
    move-object v6, p4

    .line 15
    invoke-direct/range {v0 .. v7}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;-><init>(Lmiuix/appcompat/internal/view/menu/MenuBuilder;IIIILjava/lang/CharSequence;I)V

    .line 16
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 19
    if-eqz p1, :cond_0

    .line 21
    iput-object p1, v9, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 23
    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 25
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 27
    move-result p2

    .line 30
    :cond_1
    add-int/lit8 p2, p2, -0x1

    .line 31
    const/4 p3, 0x1

    .line 33
    if-ltz p2, :cond_2

    .line 34
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    move-result-object p4

    .line 39
    check-cast p4, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 40
    iget p4, p4, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mOrdering:I

    .line 42
    if-gt p4, v8, :cond_1

    .line 44
    add-int/2addr p2, p3

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    const/4 p2, 0x0

    .line 48
    :goto_0
    invoke-virtual {p1, p2, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 49
    invoke-virtual {p0, p3}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 52
    return-object v9
    .line 55
.end method

.method public final addMenuPresenter(Lmiuix/appcompat/internal/view/menu/MenuPresenter;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 4
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    .line 12
    invoke-interface {p1, v0, p0}, Lmiuix/appcompat/internal/view/menu/MenuPresenter;->initForMenu(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    .line 14
    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 18
    return-void
    .line 20
.end method

.method public final addSubMenu(I)Landroid/view/SubMenu;
    .locals 1

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p0

    return-object p0
.end method

.method public final addSubMenu(IIII)Landroid/view/SubMenu;
    .locals 1

    .line 8
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p0

    return-object p0
.end method

.method public final addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    move-result-object p1

    .line 4
    new-instance p2, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;

    iget-object p3, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-direct {p2, p3, p0, p1}, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;-><init>(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)V

    .line 5
    iput-object p2, p1, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mSubMenu:Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;

    .line 6
    iget-object p0, p1, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 7
    invoke-virtual {p2, p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->setHeaderTitleInt(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public final addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0, v0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p0

    return-object p0
.end method

.method public final changeMenuMode()V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mCallback:Lmiuix/appcompat/internal/view/menu/MenuBuilder$Callback;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public final clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mExpandedItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->collapseItemActionView(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)Z

    .line 6
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 11
    const/4 v0, 0x1

    .line 14
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 15
    return-void
    .line 18
.end method

.method public final clearAll()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 3
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->clear()V

    .line 5
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->clearHeader()V

    .line 8
    const/4 v1, 0x0

    .line 11
    iput-boolean v1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 12
    iput-boolean v1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 14
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 16
    return-void
    .line 19
.end method

.method public clearHeader()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 3
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 5
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    .line 7
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 10
    return-void
    .line 13
.end method

.method public close()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->closeInternal(Z)V

    .line 3
    return-void
    .line 6
.end method

.method public final closeInternal(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mIsClosing:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mIsClosing:Z

    .line 8
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object v0

    .line 15
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v1

    .line 19
    if-eqz v1, :cond_2

    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 25
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 26
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 28
    move-result-object v2

    .line 31
    check-cast v2, Lmiuix/appcompat/internal/view/menu/MenuPresenter;

    .line 32
    if-nez v2, :cond_1

    .line 34
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 36
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 38
    goto :goto_0

    .line 41
    :cond_1
    invoke-interface {v2, p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuPresenter;->onCloseMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V

    .line 42
    goto :goto_0

    .line 45
    :cond_2
    const/4 p1, 0x0

    .line 46
    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mIsClosing:Z

    .line 47
    return-void
    .line 49
.end method

.method public collapseItemActionView(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_4

    .line 9
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mExpandedItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 11
    if-eq v0, p1, :cond_0

    .line 13
    goto :goto_1

    .line 15
    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 16
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 19
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object v0

    .line 24
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result v2

    .line 28
    if-eqz v2, :cond_3

    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v2

    .line 34
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 35
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 37
    move-result-object v3

    .line 40
    check-cast v3, Lmiuix/appcompat/internal/view/menu/MenuPresenter;

    .line 41
    if-nez v3, :cond_2

    .line 43
    iget-object v3, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 45
    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 47
    goto :goto_0

    .line 50
    :cond_2
    invoke-interface {v3, p1}, Lmiuix/appcompat/internal/view/menu/MenuPresenter;->collapseItemActionView(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)Z

    .line 51
    move-result v1

    .line 54
    if-eqz v1, :cond_1

    .line 55
    :cond_3
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 57
    if-eqz v1, :cond_4

    .line 60
    const/4 p1, 0x0

    .line 62
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mExpandedItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 63
    :cond_4
    :goto_1
    return v1
    .line 65
.end method

.method public dispatchMenuItemSelected(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mCallback:Lmiuix/appcompat/internal/view/menu/MenuBuilder$Callback;

    .line 2
    const/4 p1, 0x0

    .line 4
    if-eqz p0, :cond_1

    .line 5
    check-cast p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;

    .line 7
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 9
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCallback:Landroid/view/Window$Callback;

    .line 11
    if-eqz p0, :cond_0

    .line 13
    const/4 v0, 0x6

    .line 15
    invoke-interface {p0, v0, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 16
    move-result p0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move p0, p1

    .line 21
    :goto_0
    if-eqz p0, :cond_1

    .line 22
    const/4 p1, 0x1

    .line 24
    :cond_1
    return p1
    .line 25
.end method

.method public expandItemActionView(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    return v1

    .line 11
    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 12
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 15
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v0

    .line 20
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v2

    .line 24
    if-eqz v2, :cond_3

    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v2

    .line 30
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 31
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 33
    move-result-object v3

    .line 36
    check-cast v3, Lmiuix/appcompat/internal/view/menu/MenuPresenter;

    .line 37
    if-nez v3, :cond_2

    .line 39
    iget-object v3, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 41
    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 43
    goto :goto_0

    .line 46
    :cond_2
    invoke-interface {v3, p1}, Lmiuix/appcompat/internal/view/menu/MenuPresenter;->expandItemActionView(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)Z

    .line 47
    move-result v1

    .line 50
    if-eqz v1, :cond_1

    .line 51
    :cond_3
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 53
    if-eqz v1, :cond_4

    .line 56
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mExpandedItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 58
    :cond_4
    return v1
    .line 60
.end method

.method public final findGroupIndex(I)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->findGroupIndex(II)I

    move-result p0

    return p0
.end method

.method public final findGroupIndex(II)I
    .locals 2

    .line 2
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->size()I

    move-result v0

    if-gez p2, :cond_0

    const/4 p2, 0x0

    :cond_0
    :goto_0
    if-ge p2, v0, :cond_2

    .line 3
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 4
    iget v1, v1, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mGroup:I

    if-ne v1, p1, :cond_1

    return p2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public final findItem(I)Landroid/view/MenuItem;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->size()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_2

    .line 7
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object v2

    .line 14
    check-cast v2, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 15
    iget v3, v2, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mId:I

    .line 17
    if-ne v3, p1, :cond_0

    .line 19
    return-object v2

    .line 21
    :cond_0
    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    .line 22
    move-result v3

    .line 25
    if-eqz v3, :cond_1

    .line 26
    iget-object v2, v2, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mSubMenu:Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;

    .line 28
    invoke-virtual {v2, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    .line 30
    move-result-object v2

    .line 33
    if-eqz v2, :cond_1

    .line 34
    return-object v2

    .line 36
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 37
    goto :goto_0

    .line 39
    :cond_2
    const/4 p0, 0x0

    .line 40
    return-object p0
    .line 41
.end method

.method public final findItemIndex(I)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->size()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_1

    .line 7
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object v2

    .line 14
    check-cast v2, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 15
    iget v2, v2, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mId:I

    .line 17
    if-ne v2, p1, :cond_0

    .line 19
    return v1

    .line 21
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 22
    goto :goto_0

    .line 24
    :cond_1
    const/4 p0, -0x1

    .line 25
    return p0
    .line 26
.end method

.method public final findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Lmiuix/appcompat/internal/view/menu/MenuItemImpl;
    .locals 8

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mTempShortcutItemList:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    invoke-virtual {p0, v0, p1, p2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 10
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v1, :cond_0

    .line 15
    return-object v2

    .line 17
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    .line 18
    move-result v1

    .line 21
    new-instance v3, Landroid/view/KeyCharacterMap$KeyData;

    .line 22
    invoke-direct {v3}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 24
    invoke-virtual {p2, v3}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    .line 27
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 30
    move-result p2

    .line 33
    const/4 v4, 0x1

    .line 34
    const/4 v5, 0x0

    .line 35
    if-ne p2, v4, :cond_1

    .line 36
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    move-result-object p0

    .line 41
    check-cast p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 42
    return-object p0

    .line 44
    :cond_1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->isQwertyMode()Z

    .line 45
    move-result p0

    .line 48
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 49
    move-result-object p2

    .line 52
    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    move-result v0

    .line 56
    if-eqz v0, :cond_7

    .line 57
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    move-result-object v0

    .line 62
    check-cast v0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 63
    if-eqz p0, :cond_3

    .line 65
    iget-char v4, v0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    .line 67
    goto :goto_0

    .line 69
    :cond_3
    iget-char v4, v0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    .line 70
    :goto_0
    iget-object v6, v3, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    .line 72
    aget-char v7, v6, v5

    .line 74
    if-ne v4, v7, :cond_4

    .line 76
    and-int/lit8 v7, v1, 0x2

    .line 78
    if-eqz v7, :cond_6

    .line 80
    :cond_4
    const/4 v7, 0x2

    .line 82
    aget-char v6, v6, v7

    .line 83
    if-ne v4, v6, :cond_5

    .line 85
    and-int/lit8 v6, v1, 0x2

    .line 87
    if-nez v6, :cond_6

    .line 89
    :cond_5
    if-eqz p0, :cond_2

    .line 91
    const/16 v6, 0x8

    .line 93
    if-ne v4, v6, :cond_2

    .line 95
    const/16 v4, 0x43

    .line 97
    if-ne p1, v4, :cond_2

    .line 99
    :cond_6
    return-object v0

    .line 101
    :cond_7
    return-object v2
    .line 102
.end method

.method final findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->isQwertyMode()Z

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getMetaState()I

    .line 6
    move-result v1

    .line 9
    new-instance v2, Landroid/view/KeyCharacterMap$KeyData;

    .line 10
    invoke-direct {v2}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 12
    invoke-virtual {p3, v2}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    .line 15
    move-result v3

    .line 18
    const/16 v4, 0x43

    .line 19
    if-nez v3, :cond_0

    .line 21
    if-eq p2, v4, :cond_0

    .line 23
    return-void

    .line 25
    :cond_0
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 26
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 28
    move-result-object p0

    .line 31
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    move-result v3

    .line 35
    if-eqz v3, :cond_5

    .line 36
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    move-result-object v3

    .line 41
    check-cast v3, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 42
    invoke-virtual {v3}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    .line 44
    move-result v5

    .line 47
    if-eqz v5, :cond_2

    .line 48
    iget-object v5, v3, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mSubMenu:Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;

    .line 50
    invoke-virtual {v5, p1, p2, p3}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V

    .line 52
    :cond_2
    if-eqz v0, :cond_3

    .line 55
    iget-char v5, v3, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    .line 57
    goto :goto_1

    .line 59
    :cond_3
    iget-char v5, v3, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    .line 60
    :goto_1
    and-int/lit8 v6, v1, 0x5

    .line 62
    if-nez v6, :cond_1

    .line 64
    if-eqz v5, :cond_1

    .line 66
    iget-object v6, v2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    .line 68
    const/4 v7, 0x0

    .line 70
    aget-char v7, v6, v7

    .line 71
    if-eq v5, v7, :cond_4

    .line 73
    const/4 v7, 0x2

    .line 75
    aget-char v6, v6, v7

    .line 76
    if-eq v5, v6, :cond_4

    .line 78
    if-eqz v0, :cond_1

    .line 80
    const/16 v6, 0x8

    .line 82
    if-ne v5, v6, :cond_1

    .line 84
    if-ne p2, v4, :cond_1

    .line 86
    :cond_4
    invoke-virtual {v3}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->isEnabled()Z

    .line 88
    move-result v5

    .line 91
    if-eqz v5, :cond_1

    .line 92
    move-object v5, p1

    .line 94
    check-cast v5, Ljava/util/ArrayList;

    .line 95
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    goto :goto_0

    .line 100
    :cond_5
    return-void
    .line 101
.end method

.method public final flagActionItems()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    move v2, v1

    .line 14
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v3

    .line 18
    if-eqz v3, :cond_2

    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v3

    .line 24
    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 25
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 27
    move-result-object v4

    .line 30
    check-cast v4, Lmiuix/appcompat/internal/view/menu/MenuPresenter;

    .line 31
    if-nez v4, :cond_1

    .line 33
    iget-object v4, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 35
    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 37
    goto :goto_0

    .line 40
    :cond_1
    invoke-interface {v4}, Lmiuix/appcompat/internal/view/menu/MenuPresenter;->flagActionItems()Z

    .line 41
    move-result v3

    .line 44
    or-int/2addr v2, v3

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    .line 47
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 49
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    .line 52
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 54
    if-eqz v2, :cond_5

    .line 57
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    .line 59
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 63
    move-result-object v0

    .line 66
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    move-result v2

    .line 70
    if-eqz v2, :cond_6

    .line 71
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    move-result-object v2

    .line 76
    check-cast v2, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 77
    iget v3, v2, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 79
    const/16 v4, 0x20

    .line 81
    and-int/2addr v3, v4

    .line 83
    if-ne v3, v4, :cond_3

    .line 84
    const/4 v3, 0x1

    .line 86
    goto :goto_2

    .line 87
    :cond_3
    move v3, v1

    .line 88
    :goto_2
    if-eqz v3, :cond_4

    .line 89
    iget-object v3, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    .line 91
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    goto :goto_1

    .line 96
    :cond_4
    iget-object v3, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    .line 97
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    goto :goto_1

    .line 102
    :cond_5
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    .line 103
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    .line 105
    move-result-object v2

    .line 108
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 109
    :cond_6
    iput-boolean v1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 112
    return-void
    .line 114
.end method

.method public final getActionItems()Ljava/util/ArrayList;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->flagActionItems()V

    .line 2
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    .line 5
    return-object p0
    .line 7
.end method

.method public getActionViewStatesKey()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "android:menu:actionviewstates"

    .line 2
    return-object p0
    .line 4
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getHeaderIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getHeaderTitle()Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getHeaderView()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getItem(I)Landroid/view/MenuItem;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Landroid/view/MenuItem;

    .line 8
    return-object p0
    .line 10
.end method

.method public final getNonActionItems()Ljava/util/ArrayList;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->flagActionItems()V

    .line 2
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    .line 5
    return-object p0
    .line 7
.end method

.method public getRootMenu()Lmiuix/appcompat/internal/view/menu/MenuBuilder;
    .locals 0

    .line 1
    return-object p0
    .line 2
.end method

.method public final getVisibleItems()Ljava/util/ArrayList;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    .line 6
    return-object p0

    .line 8
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 11
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v0

    .line 19
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v1

    .line 23
    if-eqz v1, :cond_2

    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 29
    check-cast v1, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 30
    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->isVisible()Z

    .line 32
    move-result v2

    .line 35
    if-eqz v2, :cond_1

    .line 36
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    .line 38
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    goto :goto_0

    .line 43
    :cond_2
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    .line 44
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->menuItemComparator:Lmiuix/appcompat/internal/view/menu/MenuBuilder$1;

    .line 46
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 48
    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 52
    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 55
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    .line 57
    return-object p0
    .line 59
.end method

.method public final hasVisibleItems()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->size()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_0
    if-ge v2, v0, :cond_1

    .line 8
    iget-object v3, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object v3

    .line 15
    check-cast v3, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 16
    invoke-virtual {v3}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->isVisible()Z

    .line 18
    move-result v3

    .line 21
    if-eqz v3, :cond_0

    .line 22
    const/4 p0, 0x1

    .line 24
    return p0

    .line 25
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 26
    goto :goto_0

    .line 28
    :cond_1
    return v1
    .line 29
.end method

.method isQwertyMode()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mQwertyMode:Z

    .line 2
    return p0
    .line 4
.end method

.method public final isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 2
    move-result-object p0

    .line 5
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

.method public isShortcutsVisible()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mShortcutsVisible:Z

    .line 2
    return p0
    .line 4
.end method

.method public final onItemsChanged(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 2
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_4

    .line 5
    if-eqz p1, :cond_0

    .line 7
    iput-boolean v1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 9
    iput-boolean v1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 11
    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 13
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 15
    move-result p1

    .line 18
    if-eqz p1, :cond_1

    .line 19
    goto :goto_1

    .line 21
    :cond_1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 22
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 25
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 27
    move-result-object p1

    .line 30
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    move-result v0

    .line 34
    if-eqz v0, :cond_3

    .line 35
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    move-result-object v0

    .line 40
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 41
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 43
    move-result-object v1

    .line 46
    check-cast v1, Lmiuix/appcompat/internal/view/menu/MenuPresenter;

    .line 47
    if-nez v1, :cond_2

    .line 49
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 51
    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 53
    goto :goto_0

    .line 56
    :cond_2
    invoke-interface {v1}, Lmiuix/appcompat/internal/view/menu/MenuPresenter;->updateMenuView()V

    .line 57
    goto :goto_0

    .line 60
    :cond_3
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 61
    goto :goto_1

    .line 64
    :cond_4
    iput-boolean v1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 65
    :goto_1
    return-void
    .line 67
.end method

.method public final performIdentifierAction(II)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    .line 2
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    .line 6
    move-result p0

    .line 9
    return p0
    .line 10
.end method

.method public final performItemAction(Landroid/view/MenuItem;I)Z
    .locals 5

    .line 1
    check-cast p1, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 2
    const/4 v0, 0x0

    .line 4
    if-eqz p1, :cond_f

    .line 5
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->isEnabled()Z

    .line 7
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    goto/16 :goto_6

    .line 13
    :cond_0
    iget-object v1, p1, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 15
    const/4 v2, 0x1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    invoke-interface {v1, p1}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    .line 20
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    goto :goto_0

    .line 26
    :cond_1
    iget-object v1, p1, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 27
    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getRootMenu()Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 29
    move-result-object v3

    .line 32
    invoke-virtual {v1, v3, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->dispatchMenuItemSelected(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    .line 33
    move-result v1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    goto :goto_0

    .line 39
    :cond_2
    iget-object v1, p1, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    .line 40
    if-eqz v1, :cond_3

    .line 42
    :try_start_0
    iget-object v3, p1, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 44
    iget-object v3, v3, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    .line 46
    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    move v1, v2

    .line 51
    goto :goto_1

    .line 52
    :catch_0
    move-exception v1

    .line 53
    const-string v3, "MenuItemImpl"

    .line 54
    const-string v4, "Can\'t find activity to handle intent; ignoring"

    .line 56
    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    :cond_3
    move v1, v0

    .line 61
    :goto_1
    iget v3, p1, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    .line 62
    and-int/lit8 v3, v3, 0x8

    .line 64
    if-eqz v3, :cond_4

    .line 66
    iget-object v3, p1, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 68
    if-eqz v3, :cond_4

    .line 70
    move v3, v2

    .line 72
    goto :goto_2

    .line 73
    :cond_4
    move v3, v0

    .line 74
    :goto_2
    if-eqz v3, :cond_6

    .line 75
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->expandActionView()Z

    .line 77
    move-result p1

    .line 80
    or-int/2addr p1, v1

    .line 81
    if-eqz p1, :cond_5

    .line 82
    invoke-virtual {p0, v2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->closeInternal(Z)V

    .line 84
    :cond_5
    :goto_3
    move v0, p1

    .line 87
    goto :goto_6

    .line 88
    :cond_6
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    .line 89
    move-result v3

    .line 92
    if-nez v3, :cond_8

    .line 93
    and-int/lit8 p1, p2, 0x1

    .line 95
    if-nez p1, :cond_7

    .line 97
    invoke-virtual {p0, v2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->closeInternal(Z)V

    .line 99
    :cond_7
    move v0, v1

    .line 102
    goto :goto_6

    .line 103
    :cond_8
    and-int/lit8 p2, p2, 0x4

    .line 104
    if-nez p2, :cond_9

    .line 106
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->closeInternal(Z)V

    .line 108
    :cond_9
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    .line 111
    move-result p2

    .line 114
    if-nez p2, :cond_a

    .line 115
    new-instance p2, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;

    .line 117
    iget-object v3, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    .line 119
    invoke-direct {p2, v3, p0, p1}, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;-><init>(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)V

    .line 121
    iput-object p2, p1, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mSubMenu:Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;

    .line 124
    iget-object v3, p1, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 126
    invoke-virtual {p2, v3}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->setHeaderTitleInt(Ljava/lang/CharSequence;)V

    .line 128
    :cond_a
    iget-object p1, p1, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mSubMenu:Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;

    .line 131
    iget-object p2, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 133
    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 135
    move-result p2

    .line 138
    if-eqz p2, :cond_b

    .line 139
    goto :goto_5

    .line 141
    :cond_b
    iget-object p2, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 142
    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 144
    move-result-object p2

    .line 147
    :cond_c
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 148
    move-result v3

    .line 151
    if-eqz v3, :cond_e

    .line 152
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 154
    move-result-object v3

    .line 157
    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 158
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 160
    move-result-object v4

    .line 163
    check-cast v4, Lmiuix/appcompat/internal/view/menu/MenuPresenter;

    .line 164
    if-nez v4, :cond_d

    .line 166
    iget-object v4, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 168
    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 170
    goto :goto_4

    .line 173
    :cond_d
    if-nez v0, :cond_c

    .line 174
    invoke-interface {v4, p1}, Lmiuix/appcompat/internal/view/menu/MenuPresenter;->onSubMenuSelected(Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;)Z

    .line 176
    move-result v0

    .line 179
    goto :goto_4

    .line 180
    :cond_e
    :goto_5
    or-int p1, v1, v0

    .line 181
    if-nez p1, :cond_5

    .line 183
    invoke-virtual {p0, v2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->closeInternal(Z)V

    .line 185
    goto :goto_3

    .line 188
    :cond_f
    :goto_6
    return v0
    .line 189
.end method

.method public final performShortcut(ILandroid/view/KeyEvent;I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 2
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0, p1, p3}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    .line 8
    move-result p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    and-int/lit8 p2, p3, 0x2

    .line 14
    if-eqz p2, :cond_1

    .line 16
    const/4 p2, 0x1

    .line 18
    invoke-virtual {p0, p2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->closeInternal(Z)V

    .line 19
    :cond_1
    return p1
    .line 22
.end method

.method public final removeGroup(I)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->findGroupIndex(II)I

    .line 3
    move-result v1

    .line 6
    if-ltz v1, :cond_1

    .line 7
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 11
    move-result v2

    .line 14
    sub-int/2addr v2, v1

    .line 15
    move v3, v0

    .line 16
    :goto_0
    add-int/lit8 v4, v3, 0x1

    .line 17
    if-ge v3, v2, :cond_0

    .line 19
    iget-object v3, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 21
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object v3

    .line 26
    check-cast v3, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 27
    iget v3, v3, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mGroup:I

    .line 29
    if-ne v3, p1, :cond_0

    .line 31
    invoke-direct {p0, v1, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->removeItemAtInt(IZ)V

    .line 33
    move v3, v4

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 p1, 0x1

    .line 38
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 39
    :cond_1
    return-void
    .line 42
.end method

.method public final removeItem(I)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->findItemIndex(I)I

    .line 2
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->removeItemAtInt(IZ)V

    .line 7
    return-void
    .line 10
.end method

.method public final removeItemAt(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->removeItemAtInt(IZ)V

    .line 3
    return-void
    .line 6
.end method

.method public final removeMenuPresenter(Lmiuix/appcompat/internal/view/menu/MenuPresenter;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object v0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v1

    .line 11
    if-eqz v1, :cond_2

    .line 12
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 17
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 18
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 20
    move-result-object v2

    .line 23
    check-cast v2, Lmiuix/appcompat/internal/view/menu/MenuPresenter;

    .line 24
    if-eqz v2, :cond_1

    .line 26
    if-ne v2, p1, :cond_0

    .line 28
    :cond_1
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 30
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 32
    goto :goto_0

    .line 35
    :cond_2
    return-void
    .line 36
.end method

.method public final restoreActionViewStates(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    if-nez p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getActionViewStatesKey()Ljava/lang/String;

    .line 5
    move-result-object v0

    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    .line 9
    move-result-object v0

    .line 12
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->size()I

    .line 13
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    :goto_0
    if-ge v2, v1, :cond_3

    .line 18
    invoke-virtual {p0, v2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    .line 20
    move-result-object v3

    .line 23
    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    .line 24
    move-result-object v4

    .line 27
    if-eqz v4, :cond_1

    .line 28
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    .line 30
    move-result v5

    .line 33
    const/4 v6, -0x1

    .line 34
    if-eq v5, v6, :cond_1

    .line 35
    invoke-virtual {v4, v0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 37
    :cond_1
    invoke-interface {v3}, Landroid/view/MenuItem;->hasSubMenu()Z

    .line 40
    move-result v4

    .line 43
    if-eqz v4, :cond_2

    .line 44
    invoke-interface {v3}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    .line 46
    move-result-object v3

    .line 49
    check-cast v3, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;

    .line 50
    invoke-virtual {v3, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->restoreActionViewStates(Landroid/os/Bundle;)V

    .line 52
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 55
    goto :goto_0

    .line 57
    :cond_3
    const-string v0, "android:menu:expandedactionview"

    .line 58
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 60
    move-result p1

    .line 63
    if-lez p1, :cond_4

    .line 64
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    .line 66
    move-result-object p0

    .line 69
    if-eqz p0, :cond_4

    .line 70
    invoke-interface {p0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 72
    :cond_4
    return-void
    .line 75
.end method

.method public final restorePresenterStates(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    const-string v0, "android:menu:presenters"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    .line 4
    move-result-object p1

    .line 7
    if-eqz p1, :cond_3

    .line 8
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 12
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    goto :goto_1

    .line 18
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 19
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object v0

    .line 24
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result v1

    .line 28
    if-eqz v1, :cond_3

    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v1

    .line 34
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 35
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 37
    move-result-object v2

    .line 40
    check-cast v2, Lmiuix/appcompat/internal/view/menu/MenuPresenter;

    .line 41
    if-nez v2, :cond_2

    .line 43
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 45
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 47
    goto :goto_0

    .line 50
    :cond_2
    invoke-interface {v2}, Lmiuix/appcompat/internal/view/menu/MenuPresenter;->getId()I

    .line 51
    move-result v1

    .line 54
    if-lez v1, :cond_1

    .line 55
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 57
    move-result-object v1

    .line 60
    check-cast v1, Landroid/os/Parcelable;

    .line 61
    if-eqz v1, :cond_1

    .line 63
    invoke-interface {v2, v1}, Lmiuix/appcompat/internal/view/menu/MenuPresenter;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 65
    goto :goto_0

    .line 68
    :cond_3
    :goto_1
    return-void
    .line 69
.end method

.method public final saveActionViewStates(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->size()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v0, :cond_3

    .line 8
    invoke-virtual {p0, v2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    .line 10
    move-result-object v3

    .line 13
    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    .line 14
    move-result-object v4

    .line 17
    if-eqz v4, :cond_1

    .line 18
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    .line 20
    move-result v5

    .line 23
    const/4 v6, -0x1

    .line 24
    if-eq v5, v6, :cond_1

    .line 25
    if-nez v1, :cond_0

    .line 27
    new-instance v1, Landroid/util/SparseArray;

    .line 29
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 31
    :cond_0
    invoke-virtual {v4, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 34
    invoke-interface {v3}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    .line 37
    move-result v4

    .line 40
    if-eqz v4, :cond_1

    .line 41
    const-string v4, "android:menu:expandedactionview"

    .line 43
    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    .line 45
    move-result v5

    .line 48
    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 49
    :cond_1
    invoke-interface {v3}, Landroid/view/MenuItem;->hasSubMenu()Z

    .line 52
    move-result v4

    .line 55
    if-eqz v4, :cond_2

    .line 56
    invoke-interface {v3}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    .line 58
    move-result-object v3

    .line 61
    check-cast v3, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;

    .line 62
    invoke-virtual {v3, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->saveActionViewStates(Landroid/os/Bundle;)V

    .line 64
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 67
    goto :goto_0

    .line 69
    :cond_3
    if-eqz v1, :cond_4

    .line 70
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getActionViewStatesKey()Ljava/lang/String;

    .line 72
    move-result-object p0

    .line 75
    invoke-virtual {p1, p0, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 76
    :cond_4
    return-void
    .line 79
.end method

.method public final savePresenterStates(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    goto :goto_1

    .line 10
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    .line 11
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 13
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 16
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object v1

    .line 21
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v2

    .line 25
    if-eqz v2, :cond_3

    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v2

    .line 31
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 32
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 34
    move-result-object v3

    .line 37
    check-cast v3, Lmiuix/appcompat/internal/view/menu/MenuPresenter;

    .line 38
    if-nez v3, :cond_2

    .line 40
    iget-object v3, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 42
    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 44
    goto :goto_0

    .line 47
    :cond_2
    invoke-interface {v3}, Lmiuix/appcompat/internal/view/menu/MenuPresenter;->getId()I

    .line 48
    move-result v2

    .line 51
    if-lez v2, :cond_1

    .line 52
    invoke-interface {v3}, Lmiuix/appcompat/internal/view/menu/MenuPresenter;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 54
    move-result-object v3

    .line 57
    if-eqz v3, :cond_1

    .line 58
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 60
    goto :goto_0

    .line 63
    :cond_3
    const-string p0, "android:menu:presenters"

    .line 64
    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 66
    :goto_1
    return-void
    .line 69
.end method

.method public setCallback(Lmiuix/appcompat/internal/view/menu/MenuBuilder$Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mCallback:Lmiuix/appcompat/internal/view/menu/MenuBuilder$Callback;

    .line 2
    return-void
    .line 4
.end method

.method public final setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 2
    return-void
    .line 4
.end method

.method public final setGroupCheckable(IZZ)V
    .locals 3

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 17
    check-cast v0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 18
    iget v1, v0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mGroup:I

    .line 20
    if-ne v1, p1, :cond_0

    .line 22
    iget v1, v0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 24
    and-int/lit8 v1, v1, -0x5

    .line 26
    if-eqz p3, :cond_1

    .line 28
    const/4 v2, 0x4

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    const/4 v2, 0x0

    .line 32
    :goto_1
    or-int/2addr v1, v2

    .line 33
    iput v1, v0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 34
    invoke-virtual {v0, p2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->setCheckable(Z)Landroid/view/MenuItem;

    .line 36
    goto :goto_0

    .line 39
    :cond_2
    return-void
    .line 40
.end method

.method public final setGroupEnabled(IZ)V
    .locals 2

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 17
    check-cast v0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 18
    iget v1, v0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mGroup:I

    .line 20
    if-ne v1, p1, :cond_0

    .line 22
    invoke-virtual {v0, p2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->setEnabled(Z)Landroid/view/MenuItem;

    .line 24
    goto :goto_0

    .line 27
    :cond_1
    return-void
    .line 28
.end method

.method public final setGroupVisible(IZ)V
    .locals 8

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v3

    .line 13
    const/4 v4, 0x1

    .line 14
    if-eqz v3, :cond_3

    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v3

    .line 20
    check-cast v3, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 21
    iget v5, v3, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mGroup:I

    .line 23
    if-ne v5, p1, :cond_0

    .line 25
    iget v5, v3, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 27
    and-int/lit8 v6, v5, -0x9

    .line 29
    if-eqz p2, :cond_1

    .line 31
    move v7, v1

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const/16 v7, 0x8

    .line 35
    :goto_1
    or-int/2addr v6, v7

    .line 37
    iput v6, v3, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 38
    if-eq v5, v6, :cond_2

    .line 40
    move v3, v4

    .line 42
    goto :goto_2

    .line 43
    :cond_2
    move v3, v1

    .line 44
    :goto_2
    if-eqz v3, :cond_0

    .line 45
    move v2, v4

    .line 47
    goto :goto_0

    .line 48
    :cond_3
    if-eqz v2, :cond_4

    .line 49
    invoke-virtual {p0, v4}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 51
    :cond_4
    return-void
    .line 54
.end method

.method public final setHeaderIconInt(I)V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    .line 2
    invoke-direct/range {v0 .. v5}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-void
.end method

.method public final setHeaderIconInt(Landroid/graphics/drawable/Drawable;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    .line 1
    invoke-direct/range {v0 .. v5}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-void
.end method

.method public final setHeaderTitleInt(I)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    .line 2
    invoke-direct/range {v0 .. v5}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-void
.end method

.method public final setHeaderTitleInt(Ljava/lang/CharSequence;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    .line 1
    invoke-direct/range {v0 .. v5}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-void
.end method

.method public final setHeaderViewInt(Landroid/view/View;)V
    .locals 6

    .line 1
    const/4 v1, 0x0

    .line 2
    const/4 v2, 0x0

    .line 3
    const/4 v3, 0x0

    .line 4
    const/4 v4, 0x0

    .line 5
    move-object v0, p0

    .line 6
    move-object v5, p1

    .line 7
    invoke-direct/range {v0 .. v5}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 8
    return-void
    .line 11
.end method

.method final setOptionalIconsVisible(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mOptionalIconsVisible:Z

    .line 2
    return-void
    .line 4
.end method

.method public setQwertyMode(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mQwertyMode:Z

    .line 2
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 5
    return-void
    .line 8
.end method

.method public setShortcutsVisible(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mShortcutsVisible:Z

    .line 2
    if-ne v0, p1, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->setShortcutsVisibleInner(Z)V

    .line 7
    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 11
    return-void
    .line 14
.end method

.method public final size()I
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final startDispatchingItemsChanged()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 3
    iget-boolean v1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 5
    if-eqz v1, :cond_0

    .line 7
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 9
    const/4 v0, 0x1

    .line 11
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 12
    :cond_0
    return-void
    .line 15
.end method

.method public final stopDispatchingItemsChanged()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 7
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 10
    :cond_0
    return-void
    .line 12
.end method
