.class public Lcom/google/android/material/transformation/FabTransformationSheetBehavior;
.super Lcom/google/android/material/transformation/FabTransformationBehavior;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public importantForAccessibilityMap:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/transformation/FabTransformationBehavior;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/transformation/FabTransformationBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final onCreateMotionSpec(Landroid/content/Context;Z)Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    const p0, 0x7f020036    # @animator/mtrl_fab_transformation_sheet_expand_spec 'res/animator/mtrl_fab_transformation_sheet_expand_spec.xml'

    .line 4
    goto :goto_0

    .line 7
    :cond_0
    const p0, 0x7f020035    # @animator/mtrl_fab_transformation_sheet_collapse_spec 'res/animator/mtrl_fab_transformation_sheet_collapse_spec.xml'

    .line 8
    :goto_0
    new-instance p2, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;

    .line 11
    invoke-direct {p2}, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;-><init>()V

    .line 13
    invoke-static {p0, p1}, Lcom/google/android/material/animation/MotionSpec;->createFromResource(ILandroid/content/Context;)Lcom/google/android/material/animation/MotionSpec;

    .line 16
    move-result-object p0

    .line 19
    iput-object p0, p2, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    .line 20
    new-instance p0, Lcom/google/android/material/animation/Positioning;

    .line 22
    invoke-direct {p0}, Lcom/google/android/material/animation/Positioning;-><init>()V

    .line 24
    iput-object p0, p2, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->positioning:Lcom/google/android/material/animation/Positioning;

    .line 27
    return-object p2
    .line 29
.end method

.method public final onExpandedStateChange(Landroid/view/View;Landroid/view/View;ZZ)V
    .locals 7

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 2
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 6
    if-nez v1, :cond_0

    .line 8
    goto/16 :goto_3

    .line 10
    :cond_0
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 12
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 14
    move-result v1

    .line 17
    if-eqz p3, :cond_1

    .line 18
    new-instance v2, Ljava/util/HashMap;

    .line 20
    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 22
    iput-object v2, p0, Lcom/google/android/material/transformation/FabTransformationSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    .line 25
    :cond_1
    const/4 v2, 0x0

    .line 27
    move v3, v2

    .line 28
    :goto_0
    if-ge v3, v1, :cond_6

    .line 29
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 31
    move-result-object v4

    .line 34
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 35
    move-result-object v5

    .line 38
    instance-of v5, v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 39
    if-eqz v5, :cond_2

    .line 41
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 43
    move-result-object v5

    .line 46
    check-cast v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 47
    iget-object v5, v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 49
    instance-of v5, v5, Lcom/google/android/material/transformation/FabTransformationScrimBehavior;

    .line 51
    if-eqz v5, :cond_2

    .line 53
    const/4 v5, 0x1

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    move v5, v2

    .line 57
    :goto_1
    if-eq v4, p2, :cond_5

    .line 58
    if-eqz v5, :cond_3

    .line 60
    goto :goto_2

    .line 62
    :cond_3
    if-nez p3, :cond_4

    .line 63
    iget-object v5, p0, Lcom/google/android/material/transformation/FabTransformationSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    .line 65
    if-eqz v5, :cond_5

    .line 67
    check-cast v5, Ljava/util/HashMap;

    .line 69
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 71
    move-result v5

    .line 74
    if-eqz v5, :cond_5

    .line 75
    iget-object v5, p0, Lcom/google/android/material/transformation/FabTransformationSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    .line 77
    check-cast v5, Ljava/util/HashMap;

    .line 79
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    move-result-object v5

    .line 84
    check-cast v5, Ljava/lang/Integer;

    .line 85
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 87
    move-result v5

    .line 90
    sget-object v6, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 91
    invoke-static {v4, v5}, Landroidx/core/view/ViewCompat$Api16Impl;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 93
    goto :goto_2

    .line 96
    :cond_4
    iget-object v5, p0, Lcom/google/android/material/transformation/FabTransformationSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    .line 97
    invoke-virtual {v4}, Landroid/view/View;->getImportantForAccessibility()I

    .line 99
    move-result v6

    .line 102
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    move-result-object v6

    .line 106
    check-cast v5, Ljava/util/HashMap;

    .line 107
    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v5, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 112
    const/4 v5, 0x4

    .line 114
    invoke-static {v4, v5}, Landroidx/core/view/ViewCompat$Api16Impl;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 115
    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 118
    goto :goto_0

    .line 120
    :cond_6
    if-nez p3, :cond_7

    .line 121
    const/4 v0, 0x0

    .line 123
    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    .line 124
    :cond_7
    :goto_3
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;->onExpandedStateChange(Landroid/view/View;Landroid/view/View;ZZ)V

    .line 126
    return-void
    .line 129
.end method
