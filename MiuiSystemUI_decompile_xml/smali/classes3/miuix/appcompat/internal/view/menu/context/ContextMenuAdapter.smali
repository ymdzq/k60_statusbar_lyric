.class public final Lmiuix/appcompat/internal/view/menu/context/ContextMenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mAvailableItems:Ljava/util/ArrayList;

.field public final mInflater:Landroid/view/LayoutInflater;

.field public mLastCategorySystemOrderMenuItem:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/Menu;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 5
    move-result-object p1

    .line 8
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    .line 11
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuAdapter;->mAvailableItems:Ljava/util/ArrayList;

    .line 16
    if-eqz p2, :cond_0

    .line 18
    invoke-virtual {p0, p2, p1}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuAdapter;->buildMenuItems(Landroid/view/Menu;Ljava/util/ArrayList;)V

    .line 20
    :cond_0
    return-void
    .line 23
.end method


# virtual methods
.method public final buildMenuItems(Landroid/view/Menu;Ljava/util/ArrayList;)V
    .locals 7

    .line 1
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 2
    if-eqz p1, :cond_3

    .line 5
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    .line 7
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    move v2, v1

    .line 12
    :goto_0
    if-ge v2, v0, :cond_3

    .line 13
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    .line 15
    move-result-object v3

    .line 18
    invoke-interface {v3}, Landroid/view/MenuItem;->isVisible()Z

    .line 19
    move-result v4

    .line 22
    if-eqz v4, :cond_1

    .line 23
    invoke-interface {v3}, Landroid/view/MenuItem;->getOrder()I

    .line 25
    move-result v5

    .line 28
    const/high16 v6, 0x20000

    .line 29
    if-ne v5, v6, :cond_1

    .line 31
    iget-object v4, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuAdapter;->mLastCategorySystemOrderMenuItem:Landroid/view/MenuItem;

    .line 33
    if-nez v4, :cond_0

    .line 35
    iput-object v3, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuAdapter;->mLastCategorySystemOrderMenuItem:Landroid/view/MenuItem;

    .line 37
    move v4, v1

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 41
    const-string p1, "Only one menu item is allowed to have CATEGORY_SYSTEM order!"

    .line 43
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 45
    throw p0

    .line 48
    :cond_1
    :goto_1
    if-eqz v4, :cond_2

    .line 49
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 54
    goto :goto_0

    .line 56
    :cond_3
    return-void
    .line 57
.end method

.method public final bridge synthetic getCount()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuAdapter;->getCount$miuix$internal$widget$PopupMenuAdapter()I

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public final getCount$miuix$internal$widget$PopupMenuAdapter()I
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuAdapter;->mAvailableItems:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuAdapter;->mAvailableItems:Ljava/util/ArrayList;

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

.method public final getItemId(I)J
    .locals 0

    .line 1
    int-to-long p0, p1

    .line 2
    return-wide p0
    .line 3
.end method

.method public final bridge synthetic getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuAdapter;->getView$miuix$internal$widget$PopupMenuAdapter(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public final getView$miuix$internal$widget$PopupMenuAdapter(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const v1, 0x7f0a0957    # @id/tag_popup_menu_item

    .line 3
    if-nez p2, :cond_0

    .line 6
    iget-object p2, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 8
    const v2, 0x7f0d020c    # @layout/miuix_appcompat_popup_menu_item 'res/layout/miuix_appcompat_popup_menu_item.xml'

    .line 10
    invoke-virtual {p2, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 13
    move-result-object p2

    .line 16
    new-instance p3, Lmiuix/internal/widget/PopupMenuAdapter$ViewHolder;

    .line 17
    invoke-direct {p3}, Lmiuix/internal/widget/PopupMenuAdapter$ViewHolder;-><init>()V

    .line 19
    const v2, 0x1020006    # @android:id/icon

    .line 22
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    move-result-object v2

    .line 28
    check-cast v2, Landroid/widget/ImageView;

    .line 29
    iput-object v2, p3, Lmiuix/internal/widget/PopupMenuAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 31
    const v2, 0x1020014    # @android:id/text1

    .line 33
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    move-result-object v2

    .line 39
    check-cast v2, Landroid/widget/TextView;

    .line 40
    iput-object v2, p3, Lmiuix/internal/widget/PopupMenuAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 42
    invoke-virtual {p2, v1, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 44
    invoke-static {p2}, Lmiuix/internal/util/AnimHelper;->addPressAnimWithBg(Landroid/view/View;)V

    .line 47
    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuAdapter;->getCount$miuix$internal$widget$PopupMenuAdapter()I

    .line 50
    move-result p3

    .line 53
    invoke-static {p2, p1, p3}, Lmiuix/internal/util/TaggingDrawableUtil;->updateItemBackground(Landroid/view/View;II)V

    .line 54
    invoke-virtual {p2, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 57
    move-result-object p3

    .line 60
    if-eqz p3, :cond_2

    .line 61
    check-cast p3, Lmiuix/internal/widget/PopupMenuAdapter$ViewHolder;

    .line 63
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuAdapter;->mAvailableItems:Ljava/util/ArrayList;

    .line 65
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 67
    move-result-object p0

    .line 70
    check-cast p0, Landroid/view/MenuItem;

    .line 71
    invoke-interface {p0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 73
    move-result-object p1

    .line 76
    if-eqz p1, :cond_1

    .line 77
    iget-object p1, p3, Lmiuix/internal/widget/PopupMenuAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 79
    invoke-interface {p0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 81
    move-result-object v1

    .line 84
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    iget-object p1, p3, Lmiuix/internal/widget/PopupMenuAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 88
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 90
    goto :goto_0

    .line 93
    :cond_1
    iget-object p1, p3, Lmiuix/internal/widget/PopupMenuAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 94
    const/16 v0, 0x8

    .line 96
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 98
    :goto_0
    iget-object p1, p3, Lmiuix/internal/widget/PopupMenuAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 101
    invoke-interface {p0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    .line 103
    move-result-object p0

    .line 106
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    :cond_2
    return-object p2
    .line 110
.end method
