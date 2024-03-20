.class public final Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# instance fields
.field public onHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field public final synthetic this$0:Lcom/google/android/material/chip/ChipGroup;


# direct methods
.method public constructor <init>(Lcom/google/android/material/chip/ChipGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/google/android/material/chip/ChipGroup;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/google/android/material/chip/ChipGroup;

    .line 2
    if-ne p1, v0, :cond_2

    .line 4
    instance-of v0, p2, Lcom/google/android/material/chip/Chip;

    .line 6
    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 10
    move-result v0

    .line 13
    const/4 v1, -0x1

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 17
    invoke-static {}, Landroidx/core/view/ViewCompat$Api17Impl;->generateViewId()I

    .line 19
    move-result v0

    .line 22
    invoke-virtual {p2, v0}, Landroid/view/View;->setId(I)V

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/google/android/material/chip/ChipGroup;

    .line 26
    iget-object v0, v0, Lcom/google/android/material/chip/ChipGroup;->checkableGroup:Lcom/google/android/material/internal/CheckableGroup;

    .line 28
    move-object v1, p2

    .line 30
    check-cast v1, Lcom/google/android/material/chip/Chip;

    .line 31
    iget-object v2, v0, Lcom/google/android/material/internal/CheckableGroup;->checkables:Ljava/util/Map;

    .line 33
    invoke-interface {v1}, Lcom/google/android/material/internal/MaterialCheckable;->getId()I

    .line 35
    move-result v3

    .line 38
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    move-result-object v3

    .line 42
    check-cast v2, Ljava/util/HashMap;

    .line 43
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-interface {v1}, Landroid/widget/Checkable;->isChecked()Z

    .line 48
    move-result v2

    .line 51
    if-eqz v2, :cond_1

    .line 52
    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/CheckableGroup;->checkInternal(Lcom/google/android/material/internal/MaterialCheckable;)Z

    .line 54
    :cond_1
    new-instance v2, Lcom/google/android/material/internal/CheckableGroup$1;

    .line 57
    invoke-direct {v2, v0}, Lcom/google/android/material/internal/CheckableGroup$1;-><init>(Lcom/google/android/material/internal/CheckableGroup;)V

    .line 59
    invoke-interface {v1, v2}, Lcom/google/android/material/internal/MaterialCheckable;->setInternalOnCheckedChangeListener(Lcom/google/android/material/internal/MaterialCheckable$OnCheckedChangeListener;)V

    .line 62
    :cond_2
    iget-object p0, p0, Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;->onHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 65
    if-eqz p0, :cond_3

    .line 67
    invoke-interface {p0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 69
    :cond_3
    return-void
    .line 72
.end method

.method public final onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/google/android/material/chip/ChipGroup;

    .line 2
    if-ne p1, v0, :cond_0

    .line 4
    instance-of v1, p2, Lcom/google/android/material/chip/Chip;

    .line 6
    if-eqz v1, :cond_0

    .line 8
    iget-object v0, v0, Lcom/google/android/material/chip/ChipGroup;->checkableGroup:Lcom/google/android/material/internal/CheckableGroup;

    .line 10
    move-object v1, p2

    .line 12
    check-cast v1, Lcom/google/android/material/chip/Chip;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    const/4 v2, 0x0

    .line 18
    invoke-interface {v1, v2}, Lcom/google/android/material/internal/MaterialCheckable;->setInternalOnCheckedChangeListener(Lcom/google/android/material/internal/MaterialCheckable$OnCheckedChangeListener;)V

    .line 19
    iget-object v2, v0, Lcom/google/android/material/internal/CheckableGroup;->checkables:Ljava/util/Map;

    .line 22
    invoke-interface {v1}, Lcom/google/android/material/internal/MaterialCheckable;->getId()I

    .line 24
    move-result v3

    .line 27
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    move-result-object v3

    .line 31
    check-cast v2, Ljava/util/HashMap;

    .line 32
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v0, v0, Lcom/google/android/material/internal/CheckableGroup;->checkedIds:Ljava/util/Set;

    .line 37
    invoke-interface {v1}, Lcom/google/android/material/internal/MaterialCheckable;->getId()I

    .line 39
    move-result v1

    .line 42
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    move-result-object v1

    .line 46
    check-cast v0, Ljava/util/HashSet;

    .line 47
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 49
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;->onHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 52
    if-eqz p0, :cond_1

    .line 54
    invoke-interface {p0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 56
    :cond_1
    return-void
    .line 59
.end method
