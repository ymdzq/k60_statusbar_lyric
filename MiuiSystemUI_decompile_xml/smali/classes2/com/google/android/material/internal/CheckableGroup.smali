.class public final Lcom/google/android/material/internal/CheckableGroup;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final checkables:Ljava/util/Map;

.field public final checkedIds:Ljava/util/Set;

.field public onCheckedStateChangeListener:Lcom/google/android/material/chip/ChipGroup$1;

.field public selectionRequired:Z

.field public singleSelection:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    .line 5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/google/android/material/internal/CheckableGroup;->checkables:Ljava/util/Map;

    .line 10
    new-instance v0, Ljava/util/HashSet;

    .line 12
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/google/android/material/internal/CheckableGroup;->checkedIds:Ljava/util/Set;

    .line 17
    return-void
    .line 19
.end method


# virtual methods
.method public final checkInternal(Lcom/google/android/material/internal/MaterialCheckable;)Z
    .locals 5

    .line 1
    invoke-interface {p1}, Lcom/google/android/material/internal/MaterialCheckable;->getId()I

    .line 2
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/google/android/material/internal/CheckableGroup;->checkedIds:Ljava/util/Set;

    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v2

    .line 11
    move-object v3, v1

    .line 12
    check-cast v3, Ljava/util/HashSet;

    .line 13
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 15
    move-result v2

    .line 18
    const/4 v3, 0x0

    .line 19
    if-eqz v2, :cond_0

    .line 20
    return v3

    .line 22
    :cond_0
    iget-object v2, p0, Lcom/google/android/material/internal/CheckableGroup;->checkables:Ljava/util/Map;

    .line 23
    invoke-virtual {p0}, Lcom/google/android/material/internal/CheckableGroup;->getSingleCheckedId()I

    .line 25
    move-result v4

    .line 28
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    move-result-object v4

    .line 32
    check-cast v2, Ljava/util/HashMap;

    .line 33
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    move-result-object v2

    .line 38
    check-cast v2, Lcom/google/android/material/internal/MaterialCheckable;

    .line 39
    if-eqz v2, :cond_1

    .line 41
    invoke-virtual {p0, v2, v3}, Lcom/google/android/material/internal/CheckableGroup;->uncheckInternal(Lcom/google/android/material/internal/MaterialCheckable;Z)Z

    .line 43
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    move-result-object p0

    .line 49
    check-cast v1, Ljava/util/HashSet;

    .line 50
    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 52
    move-result p0

    .line 55
    invoke-interface {p1}, Landroid/widget/Checkable;->isChecked()Z

    .line 56
    move-result v0

    .line 59
    if-nez v0, :cond_2

    .line 60
    const/4 v0, 0x1

    .line 62
    invoke-interface {p1, v0}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 63
    :cond_2
    return p0
    .line 66
.end method

.method public final getCheckedIdsSortedByChildOrder(Landroid/view/ViewGroup;)Ljava/util/List;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    iget-object p0, p0, Lcom/google/android/material/internal/CheckableGroup;->checkedIds:Ljava/util/Set;

    .line 4
    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 6
    new-instance p0, Ljava/util/ArrayList;

    .line 9
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    const/4 v1, 0x0

    .line 14
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 15
    move-result v2

    .line 18
    if-ge v1, v2, :cond_1

    .line 19
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 21
    move-result-object v2

    .line 24
    instance-of v3, v2, Lcom/google/android/material/internal/MaterialCheckable;

    .line 25
    if-eqz v3, :cond_0

    .line 27
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 29
    move-result v3

    .line 32
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    move-result-object v3

    .line 36
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 37
    move-result v3

    .line 40
    if-eqz v3, :cond_0

    .line 41
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 43
    move-result v2

    .line 46
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    move-result-object v2

    .line 50
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 54
    goto :goto_0

    .line 56
    :cond_1
    return-object p0
    .line 57
.end method

.method public final getSingleCheckedId()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/internal/CheckableGroup;->singleSelection:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/google/android/material/internal/CheckableGroup;->checkedIds:Ljava/util/Set;

    .line 6
    move-object v0, p0

    .line 8
    check-cast v0, Ljava/util/HashSet;

    .line 9
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 11
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    check-cast p0, Ljava/util/HashSet;

    .line 17
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object p0

    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object p0

    .line 26
    check-cast p0, Ljava/lang/Integer;

    .line 27
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 29
    move-result p0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 p0, -0x1

    .line 34
    :goto_0
    return p0
    .line 35
.end method

.method public final onCheckedStateChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/CheckableGroup;->onCheckedStateChangeListener:Lcom/google/android/material/chip/ChipGroup$1;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    new-instance v1, Ljava/util/HashSet;

    .line 6
    iget-object p0, p0, Lcom/google/android/material/internal/CheckableGroup;->checkedIds:Ljava/util/Set;

    .line 8
    invoke-direct {v1, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 10
    iget-object p0, v0, Lcom/google/android/material/chip/ChipGroup$1;->this$0:Lcom/google/android/material/chip/ChipGroup;

    .line 13
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup;->onCheckedStateChangeListener:Lcom/google/android/material/chip/ChipGroup$OnCheckedStateChangeListener;

    .line 15
    if-eqz v0, :cond_1

    .line 17
    iget-object v1, p0, Lcom/google/android/material/chip/ChipGroup;->checkableGroup:Lcom/google/android/material/internal/CheckableGroup;

    .line 19
    invoke-virtual {v1, p0}, Lcom/google/android/material/internal/CheckableGroup;->getCheckedIdsSortedByChildOrder(Landroid/view/ViewGroup;)Ljava/util/List;

    .line 21
    check-cast v0, Lcom/google/android/material/chip/ChipGroup$1;

    .line 24
    iget-object p0, v0, Lcom/google/android/material/chip/ChipGroup$1;->this$0:Lcom/google/android/material/chip/ChipGroup;

    .line 26
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup;->checkableGroup:Lcom/google/android/material/internal/CheckableGroup;

    .line 28
    iget-boolean v0, v0, Lcom/google/android/material/internal/CheckableGroup;->singleSelection:Z

    .line 30
    if-nez v0, :cond_0

    .line 32
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->getCheckedChipId()I

    .line 35
    const/4 p0, 0x0

    .line 38
    throw p0

    .line 39
    :cond_1
    :goto_0
    return-void
    .line 40
.end method

.method public final uncheckInternal(Lcom/google/android/material/internal/MaterialCheckable;Z)Z
    .locals 4

    .line 1
    invoke-interface {p1}, Lcom/google/android/material/internal/MaterialCheckable;->getId()I

    .line 2
    move-result v0

    .line 5
    iget-object p0, p0, Lcom/google/android/material/internal/CheckableGroup;->checkedIds:Ljava/util/Set;

    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v1

    .line 11
    move-object v2, p0

    .line 12
    check-cast v2, Ljava/util/HashSet;

    .line 13
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 15
    move-result v1

    .line 18
    const/4 v2, 0x0

    .line 19
    if-nez v1, :cond_0

    .line 20
    return v2

    .line 22
    :cond_0
    if-eqz p2, :cond_1

    .line 23
    move-object p2, p0

    .line 25
    check-cast p2, Ljava/util/HashSet;

    .line 26
    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    .line 28
    move-result p2

    .line 31
    const/4 v1, 0x1

    .line 32
    if-ne p2, v1, :cond_1

    .line 33
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    move-result-object p2

    .line 38
    move-object v3, p0

    .line 39
    check-cast v3, Ljava/util/HashSet;

    .line 40
    invoke-virtual {v3, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 42
    move-result p2

    .line 45
    if-eqz p2, :cond_1

    .line 46
    invoke-interface {p1, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 48
    return v2

    .line 51
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    move-result-object p2

    .line 55
    check-cast p0, Ljava/util/HashSet;

    .line 56
    invoke-virtual {p0, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 58
    move-result p0

    .line 61
    invoke-interface {p1}, Landroid/widget/Checkable;->isChecked()Z

    .line 62
    move-result p2

    .line 65
    if-eqz p2, :cond_2

    .line 66
    invoke-interface {p1, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 68
    :cond_2
    return p0
    .line 71
.end method
