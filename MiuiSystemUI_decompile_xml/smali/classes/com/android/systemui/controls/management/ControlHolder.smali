.class public final Lcom/android/systemui/controls/management/ControlHolder;
.super Lcom/android/systemui/controls/management/Holder;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final accessibilityDelegate:Lcom/android/systemui/controls/management/ControlHolderAccessibilityDelegate;

.field public final favorite:Landroid/widget/CheckBox;

.field public final favoriteCallback:Lkotlin/jvm/functions/Function2;

.field public final favoriteStateDescription:Ljava/lang/String;

.field public final icon:Landroid/widget/ImageView;

.field public final moveHelper:Lcom/android/systemui/controls/management/FavoritesModel$moveHelper$1;

.field public final notFavoriteStateDescription:Ljava/lang/String;

.field public final removed:Landroid/widget/TextView;

.field public final subtitle:Landroid/widget/TextView;

.field public final title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/systemui/controls/management/FavoritesModel$moveHelper$1;Lkotlin/jvm/functions/Function2;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/controls/management/Holder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/android/systemui/controls/management/ControlHolder;->moveHelper:Lcom/android/systemui/controls/management/FavoritesModel$moveHelper$1;

    .line 5
    iput-object p3, p0, Lcom/android/systemui/controls/management/ControlHolder;->favoriteCallback:Lkotlin/jvm/functions/Function2;

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    move-result-object p3

    .line 12
    const v0, 0x7f13005a    # @string/accessibility_control_favorite 'Favorited'

    .line 13
    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 16
    move-result-object p3

    .line 19
    iput-object p3, p0, Lcom/android/systemui/controls/management/ControlHolder;->favoriteStateDescription:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 22
    move-result-object p3

    .line 25
    const v0, 0x7f130061    # @string/accessibility_control_not_favorite 'Unfavorited'

    .line 26
    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 29
    move-result-object p3

    .line 32
    iput-object p3, p0, Lcom/android/systemui/controls/management/ControlHolder;->notFavoriteStateDescription:Ljava/lang/String;

    .line 33
    const p3, 0x7f0a0412    # @id/icon

    .line 35
    invoke-virtual {p1, p3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 38
    move-result-object p3

    .line 41
    check-cast p3, Landroid/widget/ImageView;

    .line 42
    iput-object p3, p0, Lcom/android/systemui/controls/management/ControlHolder;->icon:Landroid/widget/ImageView;

    .line 44
    const p3, 0x7f0a09a2    # @id/id_0x7f0a09a2

    .line 46
    invoke-virtual {p1, p3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 49
    move-result-object p3

    .line 52
    check-cast p3, Landroid/widget/TextView;

    .line 53
    iput-object p3, p0, Lcom/android/systemui/controls/management/ControlHolder;->title:Landroid/widget/TextView;

    .line 55
    const p3, 0x7f0a08ff    # @id/subtitle

    .line 57
    invoke-virtual {p1, p3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 60
    move-result-object p3

    .line 63
    check-cast p3, Landroid/widget/TextView;

    .line 64
    iput-object p3, p0, Lcom/android/systemui/controls/management/ControlHolder;->subtitle:Landroid/widget/TextView;

    .line 66
    const p3, 0x7f0a08dc    # @id/status

    .line 68
    invoke-virtual {p1, p3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 71
    move-result-object p3

    .line 74
    check-cast p3, Landroid/widget/TextView;

    .line 75
    iput-object p3, p0, Lcom/android/systemui/controls/management/ControlHolder;->removed:Landroid/widget/TextView;

    .line 77
    const p3, 0x7f0a0356    # @id/favorite

    .line 79
    invoke-virtual {p1, p3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 82
    move-result-object p3

    .line 85
    check-cast p3, Landroid/widget/CheckBox;

    .line 86
    const/4 v0, 0x0

    .line 88
    invoke-virtual {p3, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 89
    iput-object p3, p0, Lcom/android/systemui/controls/management/ControlHolder;->favorite:Landroid/widget/CheckBox;

    .line 92
    new-instance p3, Lcom/android/systemui/controls/management/ControlHolderAccessibilityDelegate;

    .line 94
    new-instance v0, Lcom/android/systemui/controls/management/ControlHolder$accessibilityDelegate$1;

    .line 96
    invoke-direct {v0, p0}, Lcom/android/systemui/controls/management/ControlHolder$accessibilityDelegate$1;-><init>(Ljava/lang/Object;)V

    .line 98
    new-instance v1, Lcom/android/systemui/controls/management/ControlHolder$accessibilityDelegate$2;

    .line 101
    invoke-direct {v1, p0}, Lcom/android/systemui/controls/management/ControlHolder$accessibilityDelegate$2;-><init>(Ljava/lang/Object;)V

    .line 103
    invoke-direct {p3, v0, v1, p2}, Lcom/android/systemui/controls/management/ControlHolderAccessibilityDelegate;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lcom/android/systemui/controls/management/FavoritesModel$moveHelper$1;)V

    .line 106
    iput-object p3, p0, Lcom/android/systemui/controls/management/ControlHolder;->accessibilityDelegate:Lcom/android/systemui/controls/management/ControlHolderAccessibilityDelegate;

    .line 109
    invoke-static {p1, p3}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 111
    return-void
    .line 114
.end method


# virtual methods
.method public final bindData(Lcom/android/systemui/controls/management/ElementWrapper;)V
    .locals 6

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lcom/android/systemui/controls/ControlInterface;

    .line 3
    invoke-interface {v0}, Lcom/android/systemui/controls/ControlInterface;->getComponent()Landroid/content/ComponentName;

    .line 5
    move-result-object v1

    .line 8
    invoke-interface {v0}, Lcom/android/systemui/controls/ControlInterface;->getDeviceType()I

    .line 9
    move-result v2

    .line 12
    sget-object v3, Lcom/android/systemui/controls/ui/RenderInfo;->iconMap:Landroid/util/SparseArray;

    .line 13
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 15
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    move-result-object v4

    .line 20
    const/4 v5, 0x0

    .line 21
    invoke-static {v4, v1, v2, v5}, Lcom/android/systemui/controls/ui/RenderInfo$Companion;->lookup(Landroid/content/Context;Landroid/content/ComponentName;II)Lcom/android/systemui/controls/ui/RenderInfo;

    .line 22
    move-result-object v1

    .line 25
    iget-object v2, p0, Lcom/android/systemui/controls/management/ControlHolder;->title:Landroid/widget/TextView;

    .line 26
    invoke-interface {v0}, Lcom/android/systemui/controls/ControlInterface;->getTitle()Ljava/lang/CharSequence;

    .line 28
    move-result-object v4

    .line 31
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object v2, p0, Lcom/android/systemui/controls/management/ControlHolder;->subtitle:Landroid/widget/TextView;

    .line 35
    invoke-interface {v0}, Lcom/android/systemui/controls/ControlInterface;->getSubtitle()Ljava/lang/CharSequence;

    .line 37
    move-result-object v4

    .line 40
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    invoke-interface {v0}, Lcom/android/systemui/controls/ControlInterface;->getFavorite()Z

    .line 44
    move-result v2

    .line 47
    invoke-virtual {p0, v2}, Lcom/android/systemui/controls/management/ControlHolder;->updateFavorite(Z)V

    .line 48
    invoke-interface {v0}, Lcom/android/systemui/controls/ControlInterface;->getRemoved()Z

    .line 51
    move-result v2

    .line 54
    if-eqz v2, :cond_0

    .line 55
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 57
    move-result-object v2

    .line 60
    const v4, 0x7f13032a    # @string/controls_removed 'Removed'

    .line 61
    invoke-virtual {v2, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 64
    move-result-object v2

    .line 67
    goto :goto_0

    .line 68
    :cond_0
    const-string v2, ""

    .line 69
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/controls/management/ControlHolder;->removed:Landroid/widget/TextView;

    .line 71
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    new-instance v2, Lcom/android/systemui/controls/management/ControlHolder$bindData$1;

    .line 76
    invoke-direct {v2, p0, p1}, Lcom/android/systemui/controls/management/ControlHolder$bindData$1;-><init>(Lcom/android/systemui/controls/management/ControlHolder;Lcom/android/systemui/controls/management/ElementWrapper;)V

    .line 78
    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 84
    move-result-object p1

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 88
    move-result-object v2

    .line 91
    iget v3, v1, Lcom/android/systemui/controls/ui/RenderInfo;->foreground:I

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 94
    move-result-object p1

    .line 97
    invoke-virtual {v2, v3, p1}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    .line 98
    move-result-object p1

    .line 101
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlHolder;->icon:Landroid/widget/ImageView;

    .line 102
    const/4 v2, 0x0

    .line 104
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 105
    invoke-interface {v0}, Lcom/android/systemui/controls/ControlInterface;->getCustomIcon()Landroid/graphics/drawable/Icon;

    .line 108
    move-result-object v3

    .line 111
    if-eqz v3, :cond_1

    .line 112
    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 114
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 117
    :cond_1
    if-nez v2, :cond_2

    .line 119
    iget-object v1, v1, Lcom/android/systemui/controls/ui/RenderInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 121
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    invoke-interface {v0}, Lcom/android/systemui/controls/ControlInterface;->getDeviceType()I

    .line 126
    move-result v0

    .line 129
    const/16 v1, 0x34

    .line 130
    if-eq v0, v1, :cond_2

    .line 132
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 134
    :cond_2
    return-void
    .line 137
.end method

.method public final stateDescription(Z)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlHolder;->notFavoriteStateDescription:Ljava/lang/String;

    .line 4
    return-object p0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/controls/management/ControlHolder;->moveHelper:Lcom/android/systemui/controls/management/FavoritesModel$moveHelper$1;

    .line 7
    if-nez p1, :cond_1

    .line 9
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlHolder;->favoriteStateDescription:Ljava/lang/String;

    .line 11
    return-object p0

    .line 13
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 14
    move-result p1

    .line 17
    add-int/lit8 p1, p1, 0x1

    .line 18
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 22
    move-result-object p0

    .line 25
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object p1

    .line 29
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 30
    move-result-object p1

    .line 33
    const v0, 0x7f13005b    # @string/accessibility_control_favorite_position 'Favorited, position %d'

    .line 34
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    move-result-object p0

    .line 40
    return-object p0
    .line 41
.end method

.method public final updateFavorite(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlHolder;->favorite:Landroid/widget/CheckBox;

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 4
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlHolder;->accessibilityDelegate:Lcom/android/systemui/controls/management/ControlHolderAccessibilityDelegate;

    .line 7
    iput-boolean p1, v0, Lcom/android/systemui/controls/management/ControlHolderAccessibilityDelegate;->isFavorite:Z

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/management/ControlHolder;->stateDescription(Z)Ljava/lang/CharSequence;

    .line 11
    move-result-object p1

    .line 14
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 15
    invoke-virtual {p0, p1}, Landroid/view/View;->setStateDescription(Ljava/lang/CharSequence;)V

    .line 17
    return-void
    .line 20
.end method
