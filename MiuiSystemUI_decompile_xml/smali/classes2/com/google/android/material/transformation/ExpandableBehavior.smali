.class public abstract Lcom/google/android/material/transformation/ExpandableBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public currentState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/material/transformation/ExpandableBehavior;->currentState:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/google/android/material/transformation/ExpandableBehavior;->currentState:I

    return-void
.end method


# virtual methods
.method public abstract layoutDependsOn(Landroid/view/View;Landroid/view/View;)Z
.end method

.method public final onDependentViewChanged(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 4

    .line 1
    check-cast p3, Lcom/google/android/material/expandable/ExpandableWidget;

    .line 2
    move-object p1, p3

    .line 4
    check-cast p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 5
    iget-object p1, p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->expandableWidgetHelper:Lcom/google/android/material/expandable/ExpandableWidgetHelper;

    .line 7
    iget-boolean p1, p1, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->expanded:Z

    .line 9
    const/4 v0, 0x2

    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x1

    .line 13
    if-eqz p1, :cond_2

    .line 14
    iget v3, p0, Lcom/google/android/material/transformation/ExpandableBehavior;->currentState:I

    .line 16
    if-eqz v3, :cond_1

    .line 18
    if-ne v3, v0, :cond_0

    .line 20
    goto :goto_0

    .line 22
    :cond_0
    move v3, v1

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    move v3, v2

    .line 25
    goto :goto_1

    .line 26
    :cond_2
    iget v3, p0, Lcom/google/android/material/transformation/ExpandableBehavior;->currentState:I

    .line 27
    if-ne v3, v2, :cond_0

    .line 29
    goto :goto_0

    .line 31
    :goto_1
    if-eqz v3, :cond_4

    .line 32
    if-eqz p1, :cond_3

    .line 34
    move v0, v2

    .line 36
    :cond_3
    iput v0, p0, Lcom/google/android/material/transformation/ExpandableBehavior;->currentState:I

    .line 37
    check-cast p3, Landroid/view/View;

    .line 39
    invoke-virtual {p0, p3, p2, p1, v2}, Lcom/google/android/material/transformation/ExpandableBehavior;->onExpandedStateChange(Landroid/view/View;Landroid/view/View;ZZ)V

    .line 41
    return v2

    .line 44
    :cond_4
    return v1
    .line 45
.end method

.method public abstract onExpandedStateChange(Landroid/view/View;Landroid/view/View;ZZ)V
.end method

.method public final onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 4

    .line 1
    sget-object p3, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 2
    invoke-static {p2}, Landroidx/core/view/ViewCompat$Api19Impl;->isLaidOut(Landroid/view/View;)Z

    .line 4
    move-result p3

    .line 7
    const/4 v0, 0x0

    .line 8
    if-nez p3, :cond_6

    .line 9
    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    .line 11
    move-result-object p1

    .line 14
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 15
    move-result p3

    .line 18
    move v1, v0

    .line 19
    :goto_0
    if-ge v1, p3, :cond_1

    .line 20
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object v2

    .line 25
    check-cast v2, Landroid/view/View;

    .line 26
    invoke-virtual {p0, p2, v2}, Lcom/google/android/material/transformation/ExpandableBehavior;->layoutDependsOn(Landroid/view/View;Landroid/view/View;)Z

    .line 28
    move-result v3

    .line 31
    if-eqz v3, :cond_0

    .line 32
    check-cast v2, Lcom/google/android/material/expandable/ExpandableWidget;

    .line 34
    goto :goto_1

    .line 36
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 37
    goto :goto_0

    .line 39
    :cond_1
    const/4 v2, 0x0

    .line 40
    :goto_1
    if-eqz v2, :cond_6

    .line 41
    move-object p1, v2

    .line 43
    check-cast p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 44
    iget-object p1, p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->expandableWidgetHelper:Lcom/google/android/material/expandable/ExpandableWidgetHelper;

    .line 46
    iget-boolean p1, p1, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->expanded:Z

    .line 48
    const/4 p3, 0x2

    .line 50
    const/4 v1, 0x1

    .line 51
    if-eqz p1, :cond_4

    .line 52
    iget v3, p0, Lcom/google/android/material/transformation/ExpandableBehavior;->currentState:I

    .line 54
    if-eqz v3, :cond_3

    .line 56
    if-ne v3, p3, :cond_2

    .line 58
    goto :goto_2

    .line 60
    :cond_2
    move v3, v0

    .line 61
    goto :goto_3

    .line 62
    :cond_3
    :goto_2
    move v3, v1

    .line 63
    goto :goto_3

    .line 64
    :cond_4
    iget v3, p0, Lcom/google/android/material/transformation/ExpandableBehavior;->currentState:I

    .line 65
    if-ne v3, v1, :cond_2

    .line 67
    goto :goto_2

    .line 69
    :goto_3
    if-eqz v3, :cond_6

    .line 70
    if-eqz p1, :cond_5

    .line 72
    move p3, v1

    .line 74
    :cond_5
    iput p3, p0, Lcom/google/android/material/transformation/ExpandableBehavior;->currentState:I

    .line 75
    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 77
    move-result-object p1

    .line 80
    new-instance v1, Lcom/google/android/material/transformation/ExpandableBehavior$1;

    .line 81
    invoke-direct {v1, p0, p2, p3, v2}, Lcom/google/android/material/transformation/ExpandableBehavior$1;-><init>(Lcom/google/android/material/transformation/ExpandableBehavior;Landroid/view/View;ILcom/google/android/material/expandable/ExpandableWidget;)V

    .line 83
    invoke-virtual {p1, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 86
    :cond_6
    return v0
    .line 89
.end method
