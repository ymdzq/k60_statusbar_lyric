.class public final Lcom/google/android/material/navigation/NavigationBarPresenter;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuPresenter;


# instance fields
.field public id:I

.field public menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

.field public updateSuspended:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->updateSuspended:Z

    .line 6
    return-void
    .line 8
.end method


# virtual methods
.method public final collapseItemActionView(Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final expandItemActionView(Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final flagActionItems()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final getId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->id:I

    .line 2
    return p0
    .line 4
.end method

.method public final initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    .line 2
    iput-object p2, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 4
    return-void
    .line 6
.end method

.method public final onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 7

    .line 1
    instance-of v0, p1, Lcom/google/android/material/navigation/NavigationBarPresenter$SavedState;

    .line 2
    if-eqz v0, :cond_6

    .line 4
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    .line 6
    check-cast p1, Lcom/google/android/material/navigation/NavigationBarPresenter$SavedState;

    .line 8
    iget v1, p1, Lcom/google/android/material/navigation/NavigationBarPresenter$SavedState;->selectedItemId:I

    .line 10
    iget-object v2, v0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 12
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    .line 14
    move-result v2

    .line 17
    const/4 v3, 0x0

    .line 18
    move v4, v3

    .line 19
    :goto_0
    if-ge v4, v2, :cond_1

    .line 20
    iget-object v5, v0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 22
    invoke-virtual {v5, v4}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    .line 24
    move-result-object v5

    .line 27
    invoke-interface {v5}, Landroid/view/MenuItem;->getItemId()I

    .line 28
    move-result v6

    .line 31
    if-ne v1, v6, :cond_0

    .line 32
    iput v1, v0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemId:I

    .line 34
    iput v4, v0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemPosition:I

    .line 36
    const/4 v0, 0x1

    .line 38
    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 39
    goto :goto_1

    .line 42
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 43
    goto :goto_0

    .line 45
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    .line 46
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 48
    move-result-object v0

    .line 51
    iget-object p1, p1, Lcom/google/android/material/navigation/NavigationBarPresenter$SavedState;->badgeSavedStates:Lcom/google/android/material/internal/ParcelableSparseArray;

    .line 52
    new-instance v1, Landroid/util/SparseArray;

    .line 54
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 56
    move-result v2

    .line 59
    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    .line 60
    move v2, v3

    .line 63
    :goto_2
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 64
    move-result v4

    .line 67
    if-ge v2, v4, :cond_3

    .line 68
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 70
    move-result v4

    .line 73
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 74
    move-result-object v5

    .line 77
    check-cast v5, Lcom/google/android/material/badge/BadgeState$State;

    .line 78
    if-eqz v5, :cond_2

    .line 80
    new-instance v6, Lcom/google/android/material/badge/BadgeDrawable;

    .line 82
    invoke-direct {v6, v0, v5}, Lcom/google/android/material/badge/BadgeDrawable;-><init>(Landroid/content/Context;Lcom/google/android/material/badge/BadgeState$State;)V

    .line 84
    invoke-virtual {v1, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 87
    add-int/lit8 v2, v2, 0x1

    .line 90
    goto :goto_2

    .line 92
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 93
    const-string p1, "BadgeDrawable\'s savedState cannot be null"

    .line 95
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 97
    throw p0

    .line 100
    :cond_3
    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    .line 101
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    move p1, v3

    .line 106
    :goto_3
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 107
    move-result v0

    .line 110
    if-ge p1, v0, :cond_5

    .line 111
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 113
    move-result v0

    .line 116
    iget-object v2, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->badgeDrawables:Landroid/util/SparseArray;

    .line 117
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 119
    move-result v2

    .line 122
    if-gez v2, :cond_4

    .line 123
    iget-object v2, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->badgeDrawables:Landroid/util/SparseArray;

    .line 125
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 127
    move-result-object v4

    .line 130
    check-cast v4, Lcom/google/android/material/badge/BadgeDrawable;

    .line 131
    invoke-virtual {v2, v0, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 133
    :cond_4
    add-int/lit8 p1, p1, 0x1

    .line 136
    goto :goto_3

    .line 138
    :cond_5
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 139
    if-eqz p1, :cond_6

    .line 141
    array-length v0, p1

    .line 143
    :goto_4
    if-ge v3, v0, :cond_6

    .line 144
    aget-object v1, p1, v3

    .line 146
    iget-object v2, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->badgeDrawables:Landroid/util/SparseArray;

    .line 148
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getId()I

    .line 150
    move-result v4

    .line 153
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 154
    move-result-object v2

    .line 157
    check-cast v2, Lcom/google/android/material/badge/BadgeDrawable;

    .line 158
    invoke-virtual {v1, v2}, Lcom/google/android/material/navigation/NavigationBarItemView;->setBadge(Lcom/google/android/material/badge/BadgeDrawable;)V

    .line 160
    add-int/lit8 v3, v3, 0x1

    .line 163
    goto :goto_4

    .line 165
    :cond_6
    return-void
    .line 166
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/material/navigation/NavigationBarPresenter$SavedState;

    .line 2
    invoke-direct {v0}, Lcom/google/android/material/navigation/NavigationBarPresenter$SavedState;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    .line 7
    invoke-virtual {v1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getSelectedItemId()I

    .line 9
    move-result v1

    .line 12
    iput v1, v0, Lcom/google/android/material/navigation/NavigationBarPresenter$SavedState;->selectedItemId:I

    .line 13
    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    .line 15
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getBadgeDrawables()Landroid/util/SparseArray;

    .line 17
    move-result-object p0

    .line 20
    new-instance v1, Lcom/google/android/material/internal/ParcelableSparseArray;

    .line 21
    invoke-direct {v1}, Lcom/google/android/material/internal/ParcelableSparseArray;-><init>()V

    .line 23
    const/4 v2, 0x0

    .line 26
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 27
    move-result v3

    .line 30
    if-ge v2, v3, :cond_1

    .line 31
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 33
    move-result v3

    .line 36
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 37
    move-result-object v4

    .line 40
    check-cast v4, Lcom/google/android/material/badge/BadgeDrawable;

    .line 41
    if-eqz v4, :cond_0

    .line 43
    iget-object v4, v4, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 45
    iget-object v4, v4, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    .line 47
    invoke-virtual {v1, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 49
    add-int/lit8 v2, v2, 0x1

    .line 52
    goto :goto_0

    .line 54
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 55
    const-string v0, "badgeDrawable cannot be null"

    .line 57
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 59
    throw p0

    .line 62
    :cond_1
    iput-object v1, v0, Lcom/google/android/material/navigation/NavigationBarPresenter$SavedState;->badgeSavedStates:Lcom/google/android/material/internal/ParcelableSparseArray;

    .line 63
    return-object v0
    .line 65
.end method

.method public final onSubMenuSelected(Landroidx/appcompat/view/menu/SubMenuBuilder;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final updateMenuView(Z)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->updateSuspended:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    if-eqz p1, :cond_1

    .line 7
    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    .line 9
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->buildMenuView()V

    .line 11
    goto/16 :goto_2

    .line 14
    :cond_1
    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    .line 16
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 18
    if-eqz p1, :cond_7

    .line 20
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 22
    if-nez v0, :cond_2

    .line 24
    goto/16 :goto_2

    .line 26
    :cond_2
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    .line 28
    move-result p1

    .line 31
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 32
    array-length v0, v0

    .line 34
    if-eq p1, v0, :cond_3

    .line 35
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->buildMenuView()V

    .line 37
    goto :goto_2

    .line 40
    :cond_3
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemId:I

    .line 41
    const/4 v1, 0x0

    .line 43
    move v2, v1

    .line 44
    :goto_0
    if-ge v2, p1, :cond_5

    .line 45
    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 47
    invoke-virtual {v3, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    .line 49
    move-result-object v3

    .line 52
    invoke-interface {v3}, Landroid/view/MenuItem;->isChecked()Z

    .line 53
    move-result v4

    .line 56
    if-eqz v4, :cond_4

    .line 57
    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    .line 59
    move-result v3

    .line 62
    iput v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemId:I

    .line 63
    iput v2, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemPosition:I

    .line 65
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 67
    goto :goto_0

    .line 69
    :cond_5
    iget v2, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemId:I

    .line 70
    if-eq v0, v2, :cond_6

    .line 72
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->set:Landroidx/transition/AutoTransition;

    .line 74
    if-eqz v0, :cond_6

    .line 76
    invoke-static {p0, v0}, Landroidx/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    .line 78
    :cond_6
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->labelVisibilityMode:I

    .line 81
    iget-object v2, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 83
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    .line 85
    move-result-object v2

    .line 88
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 89
    move-result v2

    .line 92
    invoke-static {v0, v2}, Lcom/google/android/material/navigation/NavigationBarMenuView;->isShifting(II)Z

    .line 93
    move-result v0

    .line 96
    move v2, v1

    .line 97
    :goto_1
    if-ge v2, p1, :cond_7

    .line 98
    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->presenter:Lcom/google/android/material/navigation/NavigationBarPresenter;

    .line 100
    const/4 v4, 0x1

    .line 102
    iput-boolean v4, v3, Lcom/google/android/material/navigation/NavigationBarPresenter;->updateSuspended:Z

    .line 103
    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 105
    aget-object v3, v3, v2

    .line 107
    iget v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->labelVisibilityMode:I

    .line 109
    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/NavigationBarItemView;->setLabelVisibilityMode(I)V

    .line 111
    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 114
    aget-object v3, v3, v2

    .line 116
    invoke-virtual {v3, v0}, Lcom/google/android/material/navigation/NavigationBarItemView;->setShifting(Z)V

    .line 118
    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 121
    aget-object v3, v3, v2

    .line 123
    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 125
    invoke-virtual {v4, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    .line 127
    move-result-object v4

    .line 130
    check-cast v4, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 131
    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/NavigationBarItemView;->initialize(Landroidx/appcompat/view/menu/MenuItemImpl;)V

    .line 133
    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->presenter:Lcom/google/android/material/navigation/NavigationBarPresenter;

    .line 136
    iput-boolean v1, v3, Lcom/google/android/material/navigation/NavigationBarPresenter;->updateSuspended:Z

    .line 138
    add-int/lit8 v2, v2, 0x1

    .line 140
    goto :goto_1

    .line 142
    :cond_7
    :goto_2
    return-void
    .line 143
.end method
