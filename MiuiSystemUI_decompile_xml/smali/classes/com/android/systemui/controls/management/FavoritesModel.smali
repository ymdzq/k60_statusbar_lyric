.class public final Lcom/android/systemui/controls/management/FavoritesModel;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/controls/management/ControlsModel;


# instance fields
.field public adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field public final componentName:Landroid/content/ComponentName;

.field public final customIconCache:Lcom/android/systemui/controls/CustomIconCache;

.field public dividerPosition:I

.field public final elements:Ljava/util/List;

.field public final favoritesModelCallback:Lcom/android/systemui/controls/management/ControlsEditingActivity$favoritesModelCallback$1;

.field public final itemTouchHelperCallback:Lcom/android/systemui/controls/management/FavoritesModel$itemTouchHelperCallback$1;

.field public modified:Z

.field public final moveHelper:Lcom/android/systemui/controls/management/FavoritesModel$moveHelper$1;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/CustomIconCache;Landroid/content/ComponentName;Ljava/util/List;Lcom/android/systemui/controls/management/ControlsEditingActivity$favoritesModelCallback$1;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/controls/management/FavoritesModel;->customIconCache:Lcom/android/systemui/controls/CustomIconCache;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/controls/management/FavoritesModel;->componentName:Landroid/content/ComponentName;

    .line 7
    iput-object p4, p0, Lcom/android/systemui/controls/management/FavoritesModel;->favoritesModelCallback:Lcom/android/systemui/controls/management/ControlsEditingActivity$favoritesModelCallback$1;

    .line 9
    new-instance p1, Lcom/android/systemui/controls/management/FavoritesModel$moveHelper$1;

    .line 11
    invoke-direct {p1, p0}, Lcom/android/systemui/controls/management/FavoritesModel$moveHelper$1;-><init>(Lcom/android/systemui/controls/management/FavoritesModel;)V

    .line 13
    iput-object p1, p0, Lcom/android/systemui/controls/management/FavoritesModel;->moveHelper:Lcom/android/systemui/controls/management/FavoritesModel$moveHelper$1;

    .line 16
    new-instance p1, Ljava/util/ArrayList;

    .line 18
    invoke-static {p3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    .line 20
    move-result p2

    .line 23
    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 24
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 27
    move-result-object p2

    .line 30
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    move-result p3

    .line 34
    if-eqz p3, :cond_0

    .line 35
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    move-result-object p3

    .line 40
    check-cast p3, Lcom/android/systemui/controls/controller/ControlInfo;

    .line 41
    new-instance p4, Lcom/android/systemui/controls/management/ControlInfoWrapper;

    .line 43
    iget-object v0, p0, Lcom/android/systemui/controls/management/FavoritesModel;->componentName:Landroid/content/ComponentName;

    .line 45
    new-instance v1, Lcom/android/systemui/controls/management/FavoritesModel$elements$1$1;

    .line 47
    iget-object v2, p0, Lcom/android/systemui/controls/management/FavoritesModel;->customIconCache:Lcom/android/systemui/controls/CustomIconCache;

    .line 49
    invoke-direct {v1, v2}, Lcom/android/systemui/controls/management/FavoritesModel$elements$1$1;-><init>(Lcom/android/systemui/controls/CustomIconCache;)V

    .line 51
    invoke-direct {p4, v0, p3, v1}, Lcom/android/systemui/controls/management/ControlInfoWrapper;-><init>(Landroid/content/ComponentName;Lcom/android/systemui/controls/controller/ControlInfo;Lkotlin/jvm/functions/Function2;)V

    .line 54
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    goto :goto_0

    .line 60
    :cond_0
    new-instance p2, Lcom/android/systemui/controls/management/DividerWrapper;

    .line 61
    invoke-direct {p2}, Lcom/android/systemui/controls/management/DividerWrapper;-><init>()V

    .line 63
    invoke-static {p2, p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/List;

    .line 66
    move-result-object p1

    .line 69
    iput-object p1, p0, Lcom/android/systemui/controls/management/FavoritesModel;->elements:Ljava/util/List;

    .line 70
    check-cast p1, Ljava/util/ArrayList;

    .line 72
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 74
    move-result p1

    .line 77
    add-int/lit8 p1, p1, -0x1

    .line 78
    iput p1, p0, Lcom/android/systemui/controls/management/FavoritesModel;->dividerPosition:I

    .line 80
    new-instance p1, Lcom/android/systemui/controls/management/FavoritesModel$itemTouchHelperCallback$1;

    .line 82
    invoke-direct {p1, p0}, Lcom/android/systemui/controls/management/FavoritesModel$itemTouchHelperCallback$1;-><init>(Lcom/android/systemui/controls/management/FavoritesModel;)V

    .line 84
    iput-object p1, p0, Lcom/android/systemui/controls/management/FavoritesModel;->itemTouchHelperCallback:Lcom/android/systemui/controls/management/FavoritesModel$itemTouchHelperCallback$1;

    .line 87
    return-void
    .line 89
.end method


# virtual methods
.method public final changeFavoriteStatus(Ljava/lang/String;Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controls/management/FavoritesModel;->elements:Ljava/util/List;

    .line 2
    move-object v1, v0

    .line 4
    check-cast v1, Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    move v3, v2

    .line 12
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v4

    .line 16
    const/4 v5, -0x1

    .line 17
    const/4 v6, 0x1

    .line 18
    if-eqz v4, :cond_2

    .line 19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v4

    .line 24
    check-cast v4, Lcom/android/systemui/controls/management/ElementWrapper;

    .line 25
    instance-of v7, v4, Lcom/android/systemui/controls/ControlInterface;

    .line 27
    if-eqz v7, :cond_0

    .line 29
    check-cast v4, Lcom/android/systemui/controls/ControlInterface;

    .line 31
    invoke-interface {v4}, Lcom/android/systemui/controls/ControlInterface;->getControlId()Ljava/lang/String;

    .line 33
    move-result-object v4

    .line 36
    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    move-result v4

    .line 40
    if-eqz v4, :cond_0

    .line 41
    move v4, v6

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    move v4, v2

    .line 45
    :goto_1
    if-eqz v4, :cond_1

    .line 46
    goto :goto_2

    .line 48
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 49
    goto :goto_0

    .line 51
    :cond_2
    move v3, v5

    .line 52
    :goto_2
    if-ne v3, v5, :cond_3

    .line 53
    return-void

    .line 55
    :cond_3
    iget p1, p0, Lcom/android/systemui/controls/management/FavoritesModel;->dividerPosition:I

    .line 56
    if-ge v3, p1, :cond_4

    .line 58
    if-nez p2, :cond_5

    .line 60
    :cond_4
    if-le v3, p1, :cond_6

    .line 62
    if-nez p2, :cond_6

    .line 64
    :cond_5
    return-void

    .line 66
    :cond_6
    if-eqz p2, :cond_7

    .line 67
    invoke-virtual {p0, v3, p1}, Lcom/android/systemui/controls/management/FavoritesModel;->onMoveItemInternal(II)V

    .line 69
    goto :goto_3

    .line 72
    :cond_7
    check-cast v0, Ljava/util/ArrayList;

    .line 73
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 75
    move-result p1

    .line 78
    sub-int/2addr p1, v6

    .line 79
    invoke-virtual {p0, v3, p1}, Lcom/android/systemui/controls/management/FavoritesModel;->onMoveItemInternal(II)V

    .line 80
    :goto_3
    return-void
    .line 83
.end method

.method public final getElements()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/management/FavoritesModel;->elements:Ljava/util/List;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getFavorites()Ljava/util/List;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controls/management/FavoritesModel;->elements:Ljava/util/List;

    .line 2
    iget p0, p0, Lcom/android/systemui/controls/management/FavoritesModel;->dividerPosition:I

    .line 4
    invoke-static {v0, p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 6
    move-result-object p0

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    invoke-static {p0}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    .line 12
    move-result v1

    .line 15
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object p0

    .line 22
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v1

    .line 32
    check-cast v1, Lcom/android/systemui/controls/management/ElementWrapper;

    .line 33
    check-cast v1, Lcom/android/systemui/controls/management/ControlInfoWrapper;

    .line 35
    iget-object v1, v1, Lcom/android/systemui/controls/management/ControlInfoWrapper;->controlInfo:Lcom/android/systemui/controls/controller/ControlInfo;

    .line 37
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    goto :goto_0

    .line 42
    :cond_0
    return-object v0
    .line 43
.end method

.method public final getMoveHelper()Lcom/android/systemui/controls/management/FavoritesModel$moveHelper$1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/management/FavoritesModel;->moveHelper:Lcom/android/systemui/controls/management/FavoritesModel$moveHelper$1;

    .line 2
    return-object p0
    .line 4
.end method

.method public final onMoveItemInternal(II)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/systemui/controls/management/FavoritesModel;->dividerPosition:I

    .line 2
    if-ne p1, v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/controls/management/FavoritesModel;->elements:Ljava/util/List;

    .line 7
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    if-ge p1, v0, :cond_1

    .line 11
    if-ge p2, v0, :cond_2

    .line 13
    :cond_1
    if-le p1, v0, :cond_b

    .line 15
    if-gt p2, v0, :cond_b

    .line 17
    :cond_2
    if-ge p1, v0, :cond_3

    .line 19
    if-lt p2, v0, :cond_3

    .line 21
    move-object v0, v1

    .line 23
    check-cast v0, Ljava/util/ArrayList;

    .line 24
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 29
    check-cast v0, Lcom/android/systemui/controls/management/ControlInfoWrapper;

    .line 30
    iput-boolean v3, v0, Lcom/android/systemui/controls/management/ControlInfoWrapper;->favorite:Z

    .line 32
    goto :goto_0

    .line 34
    :cond_3
    if-le p1, v0, :cond_4

    .line 35
    if-gt p2, v0, :cond_4

    .line 37
    move-object v0, v1

    .line 39
    check-cast v0, Ljava/util/ArrayList;

    .line 40
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 42
    move-result-object v0

    .line 45
    check-cast v0, Lcom/android/systemui/controls/management/ControlInfoWrapper;

    .line 46
    iput-boolean v2, v0, Lcom/android/systemui/controls/management/ControlInfoWrapper;->favorite:Z

    .line 48
    :cond_4
    :goto_0
    iget v0, p0, Lcom/android/systemui/controls/management/FavoritesModel;->dividerPosition:I

    .line 50
    if-ge p1, v0, :cond_6

    .line 52
    if-lt p2, v0, :cond_6

    .line 54
    add-int/lit8 v4, v0, -0x1

    .line 56
    iput v4, p0, Lcom/android/systemui/controls/management/FavoritesModel;->dividerPosition:I

    .line 58
    if-nez v4, :cond_5

    .line 60
    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/controls/management/FavoritesModel;->updateDividerNone(IZ)V

    .line 62
    move v3, v2

    .line 65
    :cond_5
    iget v4, p0, Lcom/android/systemui/controls/management/FavoritesModel;->dividerPosition:I

    .line 66
    move-object v5, v1

    .line 68
    check-cast v5, Ljava/util/ArrayList;

    .line 69
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 71
    move-result v5

    .line 74
    add-int/lit8 v5, v5, -0x2

    .line 75
    if-ne v4, v5, :cond_8

    .line 77
    move-object v3, v1

    .line 79
    check-cast v3, Ljava/util/ArrayList;

    .line 80
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 82
    move-result-object v3

    .line 85
    check-cast v3, Lcom/android/systemui/controls/management/DividerWrapper;

    .line 86
    iput-boolean v2, v3, Lcom/android/systemui/controls/management/DividerWrapper;->showDivider:Z

    .line 88
    goto :goto_2

    .line 90
    :cond_6
    if-le p1, v0, :cond_8

    .line 91
    if-gt p2, v0, :cond_8

    .line 93
    add-int/lit8 v4, v0, 0x1

    .line 95
    iput v4, p0, Lcom/android/systemui/controls/management/FavoritesModel;->dividerPosition:I

    .line 97
    if-ne v4, v2, :cond_7

    .line 99
    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/controls/management/FavoritesModel;->updateDividerNone(IZ)V

    .line 101
    move v4, v2

    .line 104
    goto :goto_1

    .line 105
    :cond_7
    move v4, v3

    .line 106
    :goto_1
    iget v5, p0, Lcom/android/systemui/controls/management/FavoritesModel;->dividerPosition:I

    .line 107
    move-object v6, v1

    .line 109
    check-cast v6, Ljava/util/ArrayList;

    .line 110
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 112
    move-result v6

    .line 115
    sub-int/2addr v6, v2

    .line 116
    if-ne v5, v6, :cond_9

    .line 117
    move-object v4, v1

    .line 119
    check-cast v4, Ljava/util/ArrayList;

    .line 120
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 122
    move-result-object v4

    .line 125
    check-cast v4, Lcom/android/systemui/controls/management/DividerWrapper;

    .line 126
    iput-boolean v3, v4, Lcom/android/systemui/controls/management/DividerWrapper;->showDivider:Z

    .line 128
    :goto_2
    move v4, v2

    .line 130
    goto :goto_3

    .line 131
    :cond_8
    move v4, v3

    .line 132
    :cond_9
    :goto_3
    if-eqz v4, :cond_a

    .line 133
    iget-object v3, p0, Lcom/android/systemui/controls/management/FavoritesModel;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 135
    if-eqz v3, :cond_a

    .line 137
    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 139
    :cond_a
    move v3, v2

    .line 142
    :cond_b
    if-ge p1, p2, :cond_c

    .line 143
    move v0, p1

    .line 145
    :goto_4
    if-ge v0, p2, :cond_d

    .line 146
    add-int/lit8 v4, v0, 0x1

    .line 148
    invoke-static {v1, v0, v4}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 150
    move v0, v4

    .line 153
    goto :goto_4

    .line 154
    :cond_c
    add-int/lit8 v0, p2, 0x1

    .line 155
    if-gt v0, p1, :cond_d

    .line 157
    move v4, p1

    .line 159
    :goto_5
    add-int/lit8 v5, v4, -0x1

    .line 160
    invoke-static {v1, v4, v5}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 162
    if-eq v4, v0, :cond_d

    .line 165
    move v4, v5

    .line 167
    goto :goto_5

    .line 168
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/controls/management/FavoritesModel;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 169
    if-eqz v0, :cond_e

    .line 171
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    .line 173
    :cond_e
    if-eqz v3, :cond_f

    .line 176
    iget-object p1, p0, Lcom/android/systemui/controls/management/FavoritesModel;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 178
    if-eqz p1, :cond_f

    .line 180
    new-instance v0, Ljava/lang/Object;

    .line 182
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 184
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    .line 187
    invoke-virtual {p1, p2, v2, v0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 189
    :cond_f
    iget-boolean p1, p0, Lcom/android/systemui/controls/management/FavoritesModel;->modified:Z

    .line 192
    if-nez p1, :cond_10

    .line 194
    iput-boolean v2, p0, Lcom/android/systemui/controls/management/FavoritesModel;->modified:Z

    .line 196
    iget-object p0, p0, Lcom/android/systemui/controls/management/FavoritesModel;->favoritesModelCallback:Lcom/android/systemui/controls/management/ControlsEditingActivity$favoritesModelCallback$1;

    .line 198
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/ControlsEditingActivity$favoritesModelCallback$1;->onFirstChange()V

    .line 200
    :cond_10
    return-void
    .line 203
.end method

.method public final updateDividerNone(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controls/management/FavoritesModel;->elements:Ljava/util/List;

    .line 2
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 9
    check-cast p1, Lcom/android/systemui/controls/management/DividerWrapper;

    .line 10
    iput-boolean p2, p1, Lcom/android/systemui/controls/management/DividerWrapper;->showNone:Z

    .line 12
    iget-object p0, p0, Lcom/android/systemui/controls/management/FavoritesModel;->favoritesModelCallback:Lcom/android/systemui/controls/management/ControlsEditingActivity$favoritesModelCallback$1;

    .line 14
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity$favoritesModelCallback$1;->this$0:Lcom/android/systemui/controls/management/ControlsEditingActivity;

    .line 16
    const/4 p1, 0x0

    .line 18
    if-eqz p2, :cond_1

    .line 19
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->subtitle:Landroid/widget/TextView;

    .line 21
    if-nez p0, :cond_0

    .line 23
    goto :goto_0

    .line 25
    :cond_0
    move-object p1, p0

    .line 26
    :goto_0
    sget p0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->$r8$clinit:I

    .line 27
    const p0, 0x7f130304    # @string/controls_favorite_removed 'All controls removed'

    .line 29
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(I)V

    .line 32
    goto :goto_2

    .line 35
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->subtitle:Landroid/widget/TextView;

    .line 36
    if-nez p0, :cond_2

    .line 38
    goto :goto_1

    .line 40
    :cond_2
    move-object p1, p0

    .line 41
    :goto_1
    sget p0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->$r8$clinit:I

    .line 42
    const p0, 0x7f130302    # @string/controls_favorite_rearrange 'Hold & drag to rearrange controls'

    .line 44
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(I)V

    .line 47
    :goto_2
    return-void
    .line 50
.end method
