.class public Landroidx/coordinatorlayout/widget/CoordinatorLayout;
.super Landroid/view/ViewGroup;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroidx/core/view/NestedScrollingParent2;
.implements Landroidx/core/view/NestedScrollingParent3;


# static fields
.field public static final CONSTRUCTOR_PARAMS:[Ljava/lang/Class;

.field public static final TOP_SORTED_CHILDREN_COMPARATOR:Landroidx/coordinatorlayout/widget/CoordinatorLayout$ViewElevationComparator;

.field public static final WIDGET_PACKAGE_NAME:Ljava/lang/String;

.field public static final sConstructors:Ljava/lang/ThreadLocal;

.field public static final sRectPool:Landroidx/core/util/Pools$SynchronizedPool;


# instance fields
.field public mApplyWindowInsetsListener:Landroidx/coordinatorlayout/widget/CoordinatorLayout$1;

.field public final mBehaviorConsumed:[I

.field public mBehaviorTouchView:Landroid/view/View;

.field public final mChildDag:Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;

.field public final mDependencySortedChildren:Ljava/util/List;

.field public mDisallowInterceptReset:Z

.field public mDrawStatusBarBackground:Z

.field public mIsAttachedToWindow:Z

.field public final mKeylines:[I

.field public mLastInsets:Landroidx/core/view/WindowInsetsCompat;

.field public mNeedsPreDrawListener:Z

.field public final mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

.field public mNestedScrollingTarget:Landroid/view/View;

.field public final mNestedScrollingV2ConsumedCompat:[I

.field public mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field public mOnPreDrawListener:Landroidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;

.field public mStatusBarBackground:Landroid/graphics/drawable/Drawable;

.field public final mTempList1:Ljava/util/List;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    .line 4
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    sput-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->WIDGET_PACKAGE_NAME:Ljava/lang/String;

    .line 16
    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$ViewElevationComparator;

    .line 18
    invoke-direct {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$ViewElevationComparator;-><init>()V

    .line 20
    sput-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->TOP_SORTED_CHILDREN_COMPARATOR:Landroidx/coordinatorlayout/widget/CoordinatorLayout$ViewElevationComparator;

    .line 23
    const-class v0, Landroid/content/Context;

    .line 25
    const-class v1, Landroid/util/AttributeSet;

    .line 27
    filled-new-array {v0, v1}, [Ljava/lang/Class;

    .line 29
    move-result-object v0

    .line 32
    sput-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->CONSTRUCTOR_PARAMS:[Ljava/lang/Class;

    .line 33
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 35
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 37
    sput-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->sConstructors:Ljava/lang/ThreadLocal;

    .line 40
    new-instance v0, Landroidx/core/util/Pools$SynchronizedPool;

    .line 42
    const/16 v1, 0xc

    .line 44
    invoke-direct {v0, v1}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    .line 46
    sput-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->sRectPool:Landroidx/core/util/Pools$SynchronizedPool;

    .line 49
    return-void
    .line 51
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f0401f8    # @attr/coordinatorLayoutStyle

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    .line 5
    new-instance v0, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    invoke-direct {v0}, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;-><init>()V

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mChildDag:Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mTempList1:Ljava/util/List;

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 7
    iput-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorConsumed:[I

    new-array v0, v0, [I

    .line 8
    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNestedScrollingV2ConsumedCompat:[I

    .line 9
    new-instance v0, Landroidx/core/view/NestedScrollingParentHelper;

    invoke-direct {v0}, Landroidx/core/view/NestedScrollingParentHelper;-><init>()V

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    .line 10
    sget-object v3, Landroidx/coordinatorlayout/R$styleable;->CoordinatorLayout:[I

    const/4 v0, 0x0

    if-nez p3, :cond_0

    const v1, 0x7f14087a    # @style/Widget.Support.CoordinatorLayout

    .line 11
    invoke-virtual {p1, p2, v3, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p1, p2, v3, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    :goto_0
    move-object v8, v1

    if-nez p3, :cond_1

    const/4 v6, 0x0

    const v7, 0x7f14087a    # @style/Widget.Support.CoordinatorLayout

    .line 13
    sget-object p3, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, v8

    .line 14
    invoke-static/range {v1 .. v7}, Landroidx/core/view/ViewCompat$Api29Impl;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    .line 15
    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, v8

    move v6, p3

    .line 16
    invoke-static/range {v1 .. v7}, Landroidx/core/view/ViewCompat$Api29Impl;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 17
    :goto_1
    invoke-virtual {v8, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eqz p2, :cond_2

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 19
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p2

    iput-object p2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mKeylines:[I

    .line 20
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 21
    array-length p2, p2

    :goto_2
    if-ge v0, p2, :cond_2

    .line 22
    iget-object p3, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mKeylines:[I

    aget v1, p3, v0

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    aput v1, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x1

    .line 23
    invoke-virtual {v8, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 24
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 25
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setupForInsets()V

    .line 26
    new-instance p2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$HierarchyChangeListener;

    invoke-direct {p2, p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$HierarchyChangeListener;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V

    invoke-super {p0, p2}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 27
    sget-object p2, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 28
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api16Impl;->getImportantForAccessibility(Landroid/view/View;)I

    move-result p2

    if-nez p2, :cond_3

    .line 29
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api16Impl;->setImportantForAccessibility(Landroid/view/View;I)V

    :cond_3
    return-void
.end method

.method public static acquireTempRect()Landroid/graphics/Rect;
    .locals 1

    .line 1
    sget-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->sRectPool:Landroidx/core/util/Pools$SynchronizedPool;

    .line 2
    invoke-virtual {v0}, Landroidx/core/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Landroid/graphics/Rect;

    .line 8
    if-nez v0, :cond_0

    .line 10
    new-instance v0, Landroid/graphics/Rect;

    .line 12
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 14
    :cond_0
    return-object v0
    .line 17
.end method

.method public static getDesiredAnchoredChildRectWithoutConstraints(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;II)V
    .locals 6

    .line 1
    iget v0, p3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 2
    if-nez v0, :cond_0

    .line 4
    const/16 v0, 0x11

    .line 6
    :cond_0
    invoke-static {v0, p0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 8
    move-result v0

    .line 11
    iget p3, p3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    .line 12
    and-int/lit8 v1, p3, 0x7

    .line 14
    if-nez v1, :cond_1

    .line 16
    const v1, 0x800003

    .line 18
    or-int/2addr p3, v1

    .line 21
    :cond_1
    and-int/lit8 v1, p3, 0x70

    .line 22
    if-nez v1, :cond_2

    .line 24
    or-int/lit8 p3, p3, 0x30

    .line 26
    :cond_2
    invoke-static {p3, p0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 28
    move-result p0

    .line 31
    and-int/lit8 p3, v0, 0x7

    .line 32
    and-int/lit8 v0, v0, 0x70

    .line 34
    and-int/lit8 v1, p0, 0x7

    .line 36
    and-int/lit8 p0, p0, 0x70

    .line 38
    const/4 v2, 0x5

    .line 40
    const/4 v3, 0x1

    .line 41
    if-eq v1, v3, :cond_4

    .line 42
    if-eq v1, v2, :cond_3

    .line 44
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 46
    goto :goto_0

    .line 48
    :cond_3
    iget v1, p1, Landroid/graphics/Rect;->right:I

    .line 49
    goto :goto_0

    .line 51
    :cond_4
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 52
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 54
    move-result v4

    .line 57
    div-int/lit8 v4, v4, 0x2

    .line 58
    add-int/2addr v1, v4

    .line 60
    :goto_0
    const/16 v4, 0x50

    .line 61
    const/16 v5, 0x10

    .line 63
    if-eq p0, v5, :cond_6

    .line 65
    if-eq p0, v4, :cond_5

    .line 67
    iget p0, p1, Landroid/graphics/Rect;->top:I

    .line 69
    goto :goto_1

    .line 71
    :cond_5
    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    .line 72
    goto :goto_1

    .line 74
    :cond_6
    iget p0, p1, Landroid/graphics/Rect;->top:I

    .line 75
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 77
    move-result p1

    .line 80
    div-int/lit8 p1, p1, 0x2

    .line 81
    add-int/2addr p0, p1

    .line 83
    :goto_1
    if-eq p3, v3, :cond_7

    .line 84
    if-eq p3, v2, :cond_8

    .line 86
    sub-int/2addr v1, p4

    .line 88
    goto :goto_2

    .line 89
    :cond_7
    div-int/lit8 p1, p4, 0x2

    .line 90
    sub-int/2addr v1, p1

    .line 92
    :cond_8
    :goto_2
    if-eq v0, v5, :cond_9

    .line 93
    if-eq v0, v4, :cond_a

    .line 95
    sub-int/2addr p0, p5

    .line 97
    goto :goto_3

    .line 98
    :cond_9
    div-int/lit8 p1, p5, 0x2

    .line 99
    sub-int/2addr p0, p1

    .line 101
    :cond_a
    :goto_3
    add-int/2addr p4, v1

    .line 102
    add-int/2addr p5, p0

    .line 103
    invoke-virtual {p2, v1, p0, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 104
    return-void
    .line 107
.end method

.method public static getResolvedLayoutParams(Landroid/view/View;)Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 6
    iget-boolean v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 8
    if-nez v1, :cond_4

    .line 10
    instance-of v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$AttachedBehavior;

    .line 12
    const-string v2, "CoordinatorLayout"

    .line 14
    const/4 v3, 0x1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    check-cast p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$AttachedBehavior;

    .line 19
    invoke-interface {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$AttachedBehavior;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 21
    move-result-object p0

    .line 24
    if-nez p0, :cond_0

    .line 25
    const-string v1, "Attached behavior class is null"

    .line 27
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_0
    invoke-virtual {v0, p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;)V

    .line 32
    iput-boolean v3, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 35
    goto :goto_2

    .line 37
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    move-result-object p0

    .line 41
    const/4 v1, 0x0

    .line 42
    :goto_0
    if-eqz p0, :cond_2

    .line 43
    const-class v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$DefaultBehavior;

    .line 45
    invoke-virtual {p0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 47
    move-result-object v1

    .line 50
    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$DefaultBehavior;

    .line 51
    if-nez v1, :cond_2

    .line 53
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 55
    move-result-object p0

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    if-eqz v1, :cond_3

    .line 60
    :try_start_0
    invoke-interface {v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$DefaultBehavior;->value()Ljava/lang/Class;

    .line 62
    move-result-object p0

    .line 65
    const/4 v4, 0x0

    .line 66
    new-array v5, v4, [Ljava/lang/Class;

    .line 67
    invoke-virtual {p0, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 69
    move-result-object p0

    .line 72
    new-array v4, v4, [Ljava/lang/Object;

    .line 73
    invoke-virtual {p0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    move-result-object p0

    .line 78
    check-cast p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 79
    invoke-virtual {v0, p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    goto :goto_1

    .line 84
    :catch_0
    move-exception p0

    .line 85
    new-instance v4, Ljava/lang/StringBuilder;

    .line 86
    const-string v5, "Default behavior class "

    .line 88
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-interface {v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$DefaultBehavior;->value()Ljava/lang/Class;

    .line 93
    move-result-object v1

    .line 96
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 97
    move-result-object v1

    .line 100
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    const-string v1, " could not be instantiated. Did you forget a default constructor?"

    .line 104
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    move-result-object v1

    .line 112
    invoke-static {v2, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    :cond_3
    :goto_1
    iput-boolean v3, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 116
    :cond_4
    :goto_2
    return-object v0
    .line 118
.end method

.method public static setInsetOffsetX(ILandroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 6
    iget v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetX:I

    .line 8
    if-eq v1, p0, :cond_0

    .line 10
    sub-int v1, p0, v1

    .line 12
    sget-object v2, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 14
    invoke-virtual {p1, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 16
    iput p0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetX:I

    .line 19
    :cond_0
    return-void
    .line 21
.end method

.method public static setInsetOffsetY(ILandroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 6
    iget v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetY:I

    .line 8
    if-eq v1, p0, :cond_0

    .line 10
    sub-int v1, p0, v1

    .line 12
    sget-object v2, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 14
    invoke-virtual {p1, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 16
    iput p0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetY:I

    .line 19
    :cond_0
    return-void
    .line 21
.end method


# virtual methods
.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    .line 6
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
    .line 15
.end method

.method public final constrainChildRect(Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;Landroid/graphics/Rect;II)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    .line 6
    move-result v1

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 10
    move-result v2

    .line 13
    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 14
    add-int/2addr v2, v3

    .line 16
    iget v3, p2, Landroid/graphics/Rect;->left:I

    .line 17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 19
    move-result v4

    .line 22
    sub-int/2addr v0, v4

    .line 23
    sub-int/2addr v0, p3

    .line 24
    iget v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 25
    sub-int/2addr v0, v4

    .line 27
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    .line 28
    move-result v0

    .line 31
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 32
    move-result v0

    .line 35
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 36
    move-result v2

    .line 39
    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 40
    add-int/2addr v2, v3

    .line 42
    iget v3, p2, Landroid/graphics/Rect;->top:I

    .line 43
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 45
    move-result p0

    .line 48
    sub-int/2addr v1, p0

    .line 49
    sub-int/2addr v1, p4

    .line 50
    iget p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 51
    sub-int/2addr v1, p0

    .line 53
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    .line 54
    move-result p0

    .line 57
    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    .line 58
    move-result p0

    .line 61
    add-int/2addr p3, v0

    .line 62
    add-int/2addr p4, p0

    .line 63
    invoke-virtual {p2, v0, p0, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 64
    return-void
    .line 67
.end method

.method public final dispatchDependentViewsChanged(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mChildDag:Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    .line 2
    iget-object v0, v0, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->mGraph:Landroidx/collection/SimpleArrayMap;

    .line 4
    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 9
    check-cast v0, Ljava/util/ArrayList;

    .line 10
    if-eqz v0, :cond_1

    .line 12
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 14
    move-result v1

    .line 17
    if-nez v1, :cond_1

    .line 18
    const/4 v1, 0x0

    .line 20
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 21
    move-result v2

    .line 24
    if-ge v1, v2, :cond_1

    .line 25
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object v2

    .line 30
    check-cast v2, Landroid/view/View;

    .line 31
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 33
    move-result-object v3

    .line 36
    check-cast v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 37
    iget-object v3, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 39
    if-eqz v3, :cond_0

    .line 41
    invoke-virtual {v3, p0, v2, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onDependentViewChanged(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    .line 43
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 46
    goto :goto_0

    .line 48
    :cond_1
    return-void
    .line 49
.end method

.method public final drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 6
    iget-object v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 8
    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 15
    move-result p0

    .line 18
    return p0
    .line 19
.end method

.method public final drawableStateChanged()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDrawableState()[I

    .line 5
    move-result-object v0

    .line 8
    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 9
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_0

    .line 12
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 14
    move-result v3

    .line 17
    if-eqz v3, :cond_0

    .line 18
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 20
    move-result v0

    .line 23
    or-int/2addr v2, v0

    .line 24
    :cond_0
    if-eqz v2, :cond_1

    .line 25
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 27
    :cond_1
    return-void
    .line 30
.end method

.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    new-instance p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 2
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;-><init>()V

    .line 4
    return-object p0
    .line 7
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 2
    instance-of p0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    if-eqz p0, :cond_0

    .line 3
    new-instance p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    invoke-direct {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;)V

    goto :goto_0

    .line 4
    :cond_0
    instance-of p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p0, :cond_1

    .line 5
    new-instance p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    .line 6
    :cond_1
    new-instance p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    invoke-direct {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-object p0
.end method

.method public final getChildRect(Landroid/view/View;Landroid/graphics/Rect;Z)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 8
    move-result v0

    .line 11
    const/16 v1, 0x8

    .line 12
    if-ne v0, v1, :cond_0

    .line 14
    goto :goto_1

    .line 16
    :cond_0
    if-eqz p3, :cond_1

    .line 17
    invoke-virtual {p0, p2, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDescendantRect(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 19
    goto :goto_0

    .line 22
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 23
    move-result p0

    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 27
    move-result p3

    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 31
    move-result v0

    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 35
    move-result p1

    .line 38
    invoke-virtual {p2, p0, p3, v0, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 39
    :goto_0
    return-void

    .line 42
    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 43
    return-void
    .line 46
.end method

.method public final getDependencies(Landroid/view/View;)Ljava/util/List;
    .locals 4

    .line 1
    iget-object p0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mChildDag:Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    .line 2
    iget-object p0, p0, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->mGraph:Landroidx/collection/SimpleArrayMap;

    .line 4
    iget v0, p0, Landroidx/collection/SimpleArrayMap;->size:I

    .line 6
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v0, :cond_2

    .line 10
    invoke-virtual {p0, v2}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 12
    move-result-object v3

    .line 15
    check-cast v3, Ljava/util/ArrayList;

    .line 16
    if-eqz v3, :cond_1

    .line 18
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 20
    move-result v3

    .line 23
    if-eqz v3, :cond_1

    .line 24
    if-nez v1, :cond_0

    .line 26
    new-instance v1, Ljava/util/ArrayList;

    .line 28
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    :cond_0
    invoke-virtual {p0, v2}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 33
    move-result-object v3

    .line 36
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 40
    goto :goto_0

    .line 42
    :cond_2
    if-nez v1, :cond_3

    .line 43
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 45
    move-result-object v1

    .line 48
    :cond_3
    return-object v1
    .line 49
.end method

.method public final getDependencySortedChildren()Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->prepareChildren()V

    .line 2
    iget-object p0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    .line 5
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 7
    move-result-object p0

    .line 10
    return-object p0
    .line 11
.end method

.method public final getDescendantRect(Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 3

    .line 1
    sget-object v0, Landroidx/coordinatorlayout/widget/ViewGroupUtils;->sMatrix:Ljava/lang/ThreadLocal;

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 4
    move-result v0

    .line 7
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 8
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 13
    sget-object v0, Landroidx/coordinatorlayout/widget/ViewGroupUtils;->sMatrix:Ljava/lang/ThreadLocal;

    .line 16
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 21
    check-cast v1, Landroid/graphics/Matrix;

    .line 22
    if-nez v1, :cond_0

    .line 24
    new-instance v1, Landroid/graphics/Matrix;

    .line 26
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 31
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 35
    :goto_0
    invoke-static {p0, p2, v1}, Landroidx/coordinatorlayout/widget/ViewGroupUtils;->offsetDescendantMatrix(Landroid/view/ViewParent;Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 38
    sget-object p0, Landroidx/coordinatorlayout/widget/ViewGroupUtils;->sRectF:Ljava/lang/ThreadLocal;

    .line 41
    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 43
    move-result-object p2

    .line 46
    check-cast p2, Landroid/graphics/RectF;

    .line 47
    if-nez p2, :cond_1

    .line 49
    new-instance p2, Landroid/graphics/RectF;

    .line 51
    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    .line 53
    invoke-virtual {p0, p2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 56
    :cond_1
    invoke-virtual {p2, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 59
    invoke-virtual {v1, p2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 62
    iget p0, p2, Landroid/graphics/RectF;->left:F

    .line 65
    const/high16 v0, 0x3f000000    # 0.5f

    .line 67
    add-float/2addr p0, v0

    .line 69
    float-to-int p0, p0

    .line 70
    iget v1, p2, Landroid/graphics/RectF;->top:F

    .line 71
    add-float/2addr v1, v0

    .line 73
    float-to-int v1, v1

    .line 74
    iget v2, p2, Landroid/graphics/RectF;->right:F

    .line 75
    add-float/2addr v2, v0

    .line 77
    float-to-int v2, v2

    .line 78
    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    .line 79
    add-float/2addr p2, v0

    .line 81
    float-to-int p2, p2

    .line 82
    invoke-virtual {p1, p0, v1, v2, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 83
    return-void
    .line 86
.end method

.method public final getKeyline(I)I
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mKeylines:[I

    .line 2
    const/4 v1, 0x0

    .line 4
    const-string v2, "CoordinatorLayout"

    .line 5
    if-nez v0, :cond_0

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    const-string v3, "No keylines defined for "

    .line 11
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    const-string p0, " - attempted index lookup "

    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object p0

    .line 30
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    return v1

    .line 34
    :cond_0
    if-ltz p1, :cond_2

    .line 35
    array-length v3, v0

    .line 37
    if-lt p1, v3, :cond_1

    .line 38
    goto :goto_0

    .line 40
    :cond_1
    aget p0, v0, p1

    .line 41
    return p0

    .line 43
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    const-string v3, "Keyline index "

    .line 46
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    const-string p1, " out of range for "

    .line 54
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object p0

    .line 65
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return v1
    .line 69
.end method

.method public final getLastWindowInsets()Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 2
    return-object p0
    .line 4
.end method

.method public getNestedScrollAxes()I
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    .line 2
    iget v0, p0, Landroidx/core/view/NestedScrollingParentHelper;->mNestedScrollAxesTouch:I

    .line 4
    iget p0, p0, Landroidx/core/view/NestedScrollingParentHelper;->mNestedScrollAxesNonTouch:I

    .line 6
    or-int/2addr p0, v0

    .line 8
    return p0
    .line 9
.end method

.method public getStatusBarBackground()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 2
    return-object p0
    .line 4
.end method

.method public getSuggestedMinimumHeight()I
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 6
    move-result v1

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 10
    move-result p0

    .line 13
    add-int/2addr p0, v1

    .line 14
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    .line 15
    move-result p0

    .line 18
    return p0
    .line 19
.end method

.method public getSuggestedMinimumWidth()I
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 6
    move-result v1

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 10
    move-result p0

    .line 13
    add-int/2addr p0, v1

    .line 14
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    .line 15
    move-result p0

    .line 18
    return p0
    .line 19
.end method

.method public final isPointInChildBounds(Landroid/view/View;II)Z
    .locals 1

    .line 1
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDescendantRect(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 6
    :try_start_0
    invoke-virtual {v0, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    .line 9
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 13
    sget-object p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->sRectPool:Landroidx/core/util/Pools$SynchronizedPool;

    .line 16
    invoke-virtual {p1, v0}, Landroidx/core/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 18
    return p0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 23
    sget-object p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->sRectPool:Landroidx/core/util/Pools$SynchronizedPool;

    .line 26
    invoke-virtual {p1, v0}, Landroidx/core/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 28
    throw p0
    .line 31
.end method

.method public final onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->resetTouchBehaviors()V

    .line 5
    iget-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    .line 8
    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mOnPreDrawListener:Landroidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;

    .line 12
    if-nez v0, :cond_0

    .line 14
    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;

    .line 16
    invoke-direct {v0, p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V

    .line 18
    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mOnPreDrawListener:Landroidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;

    .line 21
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 23
    move-result-object v0

    .line 26
    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mOnPreDrawListener:Landroidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;

    .line 27
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 29
    :cond_1
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 32
    if-nez v0, :cond_2

    .line 34
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 36
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api16Impl;->getFitsSystemWindows(Landroid/view/View;)Z

    .line 38
    move-result v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api20Impl;->requestApplyInsets(Landroid/view/View;)V

    .line 44
    :cond_2
    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mIsAttachedToWindow:Z

    .line 48
    return-void
    .line 50
.end method

.method public final onChildViewsChanged(I)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    move/from16 v1, p1

    .line 4
    sget-object v2, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 6
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat$Api17Impl;->getLayoutDirection(Landroid/view/View;)I

    .line 8
    move-result v2

    .line 11
    iget-object v3, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    .line 12
    check-cast v3, Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 16
    move-result v9

    .line 19
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    .line 20
    move-result-object v10

    .line 23
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    .line 24
    move-result-object v11

    .line 27
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    .line 28
    move-result-object v12

    .line 31
    const/4 v14, 0x0

    .line 32
    :goto_0
    if-ge v14, v9, :cond_20

    .line 33
    iget-object v3, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    .line 35
    check-cast v3, Ljava/util/ArrayList;

    .line 37
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    move-result-object v3

    .line 42
    move-object v15, v3

    .line 43
    check-cast v15, Landroid/view/View;

    .line 44
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 46
    move-result-object v3

    .line 49
    move-object v8, v3

    .line 50
    check-cast v8, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 51
    if-nez v1, :cond_1

    .line 53
    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    .line 55
    move-result v3

    .line 58
    const/16 v4, 0x8

    .line 59
    if-ne v3, v4, :cond_1

    .line 61
    move v4, v9

    .line 63
    move-object v5, v12

    .line 64
    move/from16 v18, v14

    .line 65
    :cond_0
    :goto_1
    const/4 v9, 0x0

    .line 67
    goto/16 :goto_11

    .line 68
    :cond_1
    const/4 v7, 0x0

    .line 70
    :goto_2
    if-ge v7, v14, :cond_8

    .line 71
    iget-object v3, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    .line 73
    check-cast v3, Ljava/util/ArrayList;

    .line 75
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 77
    move-result-object v3

    .line 80
    check-cast v3, Landroid/view/View;

    .line 81
    iget-object v4, v8, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    .line 83
    if-ne v4, v3, :cond_7

    .line 85
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 87
    move-result-object v3

    .line 90
    move-object v5, v3

    .line 91
    check-cast v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 92
    iget-object v3, v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 94
    if-eqz v3, :cond_7

    .line 96
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    .line 98
    move-result-object v4

    .line 101
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    .line 102
    move-result-object v3

    .line 105
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    .line 106
    move-result-object v13

    .line 109
    iget-object v6, v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 110
    invoke-virtual {v0, v4, v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDescendantRect(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 112
    const/4 v6, 0x0

    .line 115
    invoke-virtual {v0, v15, v3, v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildRect(Landroid/view/View;Landroid/graphics/Rect;Z)V

    .line 116
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    .line 119
    move-result v6

    .line 122
    move/from16 v17, v9

    .line 123
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    .line 125
    move-result v9

    .line 128
    move/from16 v18, v14

    .line 129
    move-object v14, v3

    .line 131
    move v3, v2

    .line 132
    move-object/from16 v19, v4

    .line 133
    move-object/from16 v20, v5

    .line 135
    move-object v5, v13

    .line 137
    move/from16 v16, v6

    .line 138
    move-object/from16 v21, v12

    .line 140
    const/4 v12, 0x1

    .line 142
    move-object/from16 v6, v20

    .line 143
    move/from16 v22, v7

    .line 145
    move/from16 v7, v16

    .line 147
    move-object/from16 v23, v8

    .line 149
    move v8, v9

    .line 151
    invoke-static/range {v3 .. v8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDesiredAnchoredChildRectWithoutConstraints(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;II)V

    .line 152
    iget v3, v13, Landroid/graphics/Rect;->left:I

    .line 155
    iget v4, v14, Landroid/graphics/Rect;->left:I

    .line 157
    if-ne v3, v4, :cond_3

    .line 159
    iget v3, v13, Landroid/graphics/Rect;->top:I

    .line 161
    iget v4, v14, Landroid/graphics/Rect;->top:I

    .line 163
    if-eq v3, v4, :cond_2

    .line 165
    goto :goto_3

    .line 167
    :cond_2
    move/from16 v4, v16

    .line 168
    move-object/from16 v3, v20

    .line 170
    const/4 v6, 0x0

    .line 172
    goto :goto_4

    .line 173
    :cond_3
    :goto_3
    move v6, v12

    .line 174
    move/from16 v4, v16

    .line 175
    move-object/from16 v3, v20

    .line 177
    :goto_4
    invoke-virtual {v0, v3, v13, v4, v9}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->constrainChildRect(Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;Landroid/graphics/Rect;II)V

    .line 179
    iget v4, v13, Landroid/graphics/Rect;->left:I

    .line 182
    iget v5, v14, Landroid/graphics/Rect;->left:I

    .line 184
    sub-int/2addr v4, v5

    .line 186
    iget v5, v13, Landroid/graphics/Rect;->top:I

    .line 187
    iget v7, v14, Landroid/graphics/Rect;->top:I

    .line 189
    sub-int/2addr v5, v7

    .line 191
    if-eqz v4, :cond_4

    .line 192
    sget-object v7, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 194
    invoke-virtual {v15, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 196
    :cond_4
    if-eqz v5, :cond_5

    .line 199
    sget-object v4, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 201
    invoke-virtual {v15, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 203
    :cond_5
    if-eqz v6, :cond_6

    .line 206
    iget-object v4, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 208
    if-eqz v4, :cond_6

    .line 210
    iget-object v3, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 212
    invoke-virtual {v4, v0, v15, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onDependentViewChanged(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    .line 214
    :cond_6
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->setEmpty()V

    .line 217
    sget-object v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->sRectPool:Landroidx/core/util/Pools$SynchronizedPool;

    .line 220
    move-object/from16 v4, v19

    .line 222
    invoke-virtual {v3, v4}, Landroidx/core/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 224
    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    .line 227
    invoke-virtual {v3, v14}, Landroidx/core/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 230
    invoke-virtual {v13}, Landroid/graphics/Rect;->setEmpty()V

    .line 233
    invoke-virtual {v3, v13}, Landroidx/core/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 236
    goto :goto_5

    .line 239
    :cond_7
    move/from16 v22, v7

    .line 240
    move-object/from16 v23, v8

    .line 242
    move/from16 v17, v9

    .line 244
    move-object/from16 v21, v12

    .line 246
    move/from16 v18, v14

    .line 248
    :goto_5
    add-int/lit8 v7, v22, 0x1

    .line 250
    move/from16 v9, v17

    .line 252
    move/from16 v14, v18

    .line 254
    move-object/from16 v12, v21

    .line 256
    move-object/from16 v8, v23

    .line 258
    goto/16 :goto_2

    .line 260
    :cond_8
    move-object/from16 v23, v8

    .line 262
    move/from16 v17, v9

    .line 264
    move-object/from16 v21, v12

    .line 266
    move/from16 v18, v14

    .line 268
    const/4 v12, 0x1

    .line 270
    invoke-virtual {v0, v15, v11, v12}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildRect(Landroid/view/View;Landroid/graphics/Rect;Z)V

    .line 271
    move-object/from16 v3, v23

    .line 274
    iget v4, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    .line 276
    const/16 v5, 0x30

    .line 278
    const/16 v6, 0x50

    .line 280
    const/4 v7, 0x3

    .line 282
    const/4 v8, 0x5

    .line 283
    if-eqz v4, :cond_d

    .line 284
    invoke-virtual {v11}, Landroid/graphics/Rect;->isEmpty()Z

    .line 286
    move-result v4

    .line 289
    if-nez v4, :cond_d

    .line 290
    iget v4, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    .line 292
    invoke-static {v4, v2}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 294
    move-result v4

    .line 297
    and-int/lit8 v9, v4, 0x70

    .line 298
    if-eq v9, v5, :cond_a

    .line 300
    if-eq v9, v6, :cond_9

    .line 302
    goto :goto_6

    .line 304
    :cond_9
    iget v9, v10, Landroid/graphics/Rect;->bottom:I

    .line 305
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    .line 307
    move-result v13

    .line 310
    iget v14, v11, Landroid/graphics/Rect;->top:I

    .line 311
    sub-int/2addr v13, v14

    .line 313
    invoke-static {v9, v13}, Ljava/lang/Math;->max(II)I

    .line 314
    move-result v9

    .line 317
    iput v9, v10, Landroid/graphics/Rect;->bottom:I

    .line 318
    goto :goto_6

    .line 320
    :cond_a
    iget v9, v10, Landroid/graphics/Rect;->top:I

    .line 321
    iget v13, v11, Landroid/graphics/Rect;->bottom:I

    .line 323
    invoke-static {v9, v13}, Ljava/lang/Math;->max(II)I

    .line 325
    move-result v9

    .line 328
    iput v9, v10, Landroid/graphics/Rect;->top:I

    .line 329
    :goto_6
    and-int/lit8 v4, v4, 0x7

    .line 331
    if-eq v4, v7, :cond_c

    .line 333
    if-eq v4, v8, :cond_b

    .line 335
    goto :goto_7

    .line 337
    :cond_b
    iget v4, v10, Landroid/graphics/Rect;->right:I

    .line 338
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    .line 340
    move-result v9

    .line 343
    iget v13, v11, Landroid/graphics/Rect;->left:I

    .line 344
    sub-int/2addr v9, v13

    .line 346
    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    .line 347
    move-result v4

    .line 350
    iput v4, v10, Landroid/graphics/Rect;->right:I

    .line 351
    goto :goto_7

    .line 353
    :cond_c
    iget v4, v10, Landroid/graphics/Rect;->left:I

    .line 354
    iget v9, v11, Landroid/graphics/Rect;->right:I

    .line 356
    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    .line 358
    move-result v4

    .line 361
    iput v4, v10, Landroid/graphics/Rect;->left:I

    .line 362
    :cond_d
    :goto_7
    iget v3, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    .line 364
    if-eqz v3, :cond_19

    .line 366
    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    .line 368
    move-result v3

    .line 371
    if-nez v3, :cond_19

    .line 372
    sget-object v3, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 374
    invoke-static {v15}, Landroidx/core/view/ViewCompat$Api19Impl;->isLaidOut(Landroid/view/View;)Z

    .line 376
    move-result v3

    .line 379
    if-nez v3, :cond_e

    .line 380
    goto/16 :goto_c

    .line 382
    :cond_e
    invoke-virtual {v15}, Landroid/view/View;->getWidth()I

    .line 384
    move-result v3

    .line 387
    if-lez v3, :cond_19

    .line 388
    invoke-virtual {v15}, Landroid/view/View;->getHeight()I

    .line 390
    move-result v3

    .line 393
    if-gtz v3, :cond_f

    .line 394
    goto/16 :goto_c

    .line 396
    :cond_f
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 398
    move-result-object v3

    .line 401
    check-cast v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 402
    iget-object v4, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 404
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    .line 406
    move-result-object v9

    .line 409
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    .line 410
    move-result-object v13

    .line 413
    invoke-virtual {v15}, Landroid/view/View;->getLeft()I

    .line 414
    move-result v14

    .line 417
    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    .line 418
    move-result v12

    .line 421
    invoke-virtual {v15}, Landroid/view/View;->getRight()I

    .line 422
    move-result v8

    .line 425
    invoke-virtual {v15}, Landroid/view/View;->getBottom()I

    .line 426
    move-result v7

    .line 429
    invoke-virtual {v13, v14, v12, v8, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 430
    if-eqz v4, :cond_11

    .line 433
    invoke-virtual {v4, v15, v9}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->getInsetDodgeRect(Landroid/view/View;Landroid/graphics/Rect;)Z

    .line 435
    move-result v4

    .line 438
    if-eqz v4, :cond_11

    .line 439
    invoke-virtual {v13, v9}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    .line 441
    move-result v4

    .line 444
    if-eqz v4, :cond_10

    .line 445
    goto :goto_8

    .line 447
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 448
    new-instance v1, Ljava/lang/StringBuilder;

    .line 450
    const-string v2, "Rect should be within the child\'s bounds. Rect:"

    .line 452
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 454
    invoke-virtual {v9}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    .line 457
    move-result-object v2

    .line 460
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    const-string v2, " | Bounds:"

    .line 464
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    invoke-virtual {v13}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    .line 469
    move-result-object v2

    .line 472
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 476
    move-result-object v1

    .line 479
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 480
    throw v0

    .line 483
    :cond_11
    invoke-virtual {v9, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 484
    :goto_8
    invoke-virtual {v13}, Landroid/graphics/Rect;->setEmpty()V

    .line 487
    sget-object v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->sRectPool:Landroidx/core/util/Pools$SynchronizedPool;

    .line 490
    invoke-virtual {v4, v13}, Landroidx/core/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 492
    invoke-virtual {v9}, Landroid/graphics/Rect;->isEmpty()Z

    .line 495
    move-result v7

    .line 498
    if-eqz v7, :cond_12

    .line 499
    invoke-virtual {v9}, Landroid/graphics/Rect;->setEmpty()V

    .line 501
    invoke-virtual {v4, v9}, Landroidx/core/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 504
    goto/16 :goto_c

    .line 507
    :cond_12
    iget v7, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    .line 509
    invoke-static {v7, v2}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 511
    move-result v7

    .line 514
    and-int/lit8 v8, v7, 0x30

    .line 515
    if-ne v8, v5, :cond_13

    .line 517
    iget v5, v9, Landroid/graphics/Rect;->top:I

    .line 519
    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 521
    sub-int/2addr v5, v8

    .line 523
    iget v8, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetY:I

    .line 524
    sub-int/2addr v5, v8

    .line 526
    iget v8, v10, Landroid/graphics/Rect;->top:I

    .line 527
    if-ge v5, v8, :cond_13

    .line 529
    sub-int/2addr v8, v5

    .line 531
    invoke-static {v8, v15}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setInsetOffsetY(ILandroid/view/View;)V

    .line 532
    const/4 v5, 0x1

    .line 535
    goto :goto_9

    .line 536
    :cond_13
    const/4 v5, 0x0

    .line 537
    :goto_9
    and-int/lit8 v8, v7, 0x50

    .line 538
    if-ne v8, v6, :cond_14

    .line 540
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    .line 542
    move-result v6

    .line 545
    iget v8, v9, Landroid/graphics/Rect;->bottom:I

    .line 546
    sub-int/2addr v6, v8

    .line 548
    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 549
    sub-int/2addr v6, v8

    .line 551
    iget v8, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetY:I

    .line 552
    add-int/2addr v6, v8

    .line 554
    iget v8, v10, Landroid/graphics/Rect;->bottom:I

    .line 555
    if-ge v6, v8, :cond_14

    .line 557
    sub-int/2addr v6, v8

    .line 559
    invoke-static {v6, v15}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setInsetOffsetY(ILandroid/view/View;)V

    .line 560
    const/4 v6, 0x1

    .line 563
    goto :goto_a

    .line 564
    :cond_14
    move v6, v5

    .line 565
    :goto_a
    if-nez v6, :cond_15

    .line 566
    const/4 v5, 0x0

    .line 568
    invoke-static {v5, v15}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setInsetOffsetY(ILandroid/view/View;)V

    .line 569
    :cond_15
    and-int/lit8 v5, v7, 0x3

    .line 572
    const/4 v6, 0x3

    .line 574
    if-ne v5, v6, :cond_16

    .line 575
    iget v5, v9, Landroid/graphics/Rect;->left:I

    .line 577
    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 579
    sub-int/2addr v5, v6

    .line 581
    iget v6, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetX:I

    .line 582
    sub-int/2addr v5, v6

    .line 584
    iget v6, v10, Landroid/graphics/Rect;->left:I

    .line 585
    if-ge v5, v6, :cond_16

    .line 587
    sub-int/2addr v6, v5

    .line 589
    invoke-static {v6, v15}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setInsetOffsetX(ILandroid/view/View;)V

    .line 590
    const/4 v6, 0x1

    .line 593
    goto :goto_b

    .line 594
    :cond_16
    const/4 v6, 0x0

    .line 595
    :goto_b
    and-int/lit8 v5, v7, 0x5

    .line 596
    const/4 v7, 0x5

    .line 598
    if-ne v5, v7, :cond_17

    .line 599
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    .line 601
    move-result v5

    .line 604
    iget v7, v9, Landroid/graphics/Rect;->right:I

    .line 605
    sub-int/2addr v5, v7

    .line 607
    iget v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 608
    sub-int/2addr v5, v7

    .line 610
    iget v3, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetX:I

    .line 611
    add-int/2addr v5, v3

    .line 613
    iget v3, v10, Landroid/graphics/Rect;->right:I

    .line 614
    if-ge v5, v3, :cond_17

    .line 616
    sub-int/2addr v5, v3

    .line 618
    invoke-static {v5, v15}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setInsetOffsetX(ILandroid/view/View;)V

    .line 619
    const/4 v6, 0x1

    .line 622
    :cond_17
    if-nez v6, :cond_18

    .line 623
    const/4 v3, 0x0

    .line 625
    invoke-static {v3, v15}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setInsetOffsetX(ILandroid/view/View;)V

    .line 626
    :cond_18
    invoke-virtual {v9}, Landroid/graphics/Rect;->setEmpty()V

    .line 629
    invoke-virtual {v4, v9}, Landroidx/core/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 632
    :cond_19
    :goto_c
    const/4 v3, 0x2

    .line 635
    if-eq v1, v3, :cond_1b

    .line 636
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 638
    move-result-object v4

    .line 641
    check-cast v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 642
    iget-object v4, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    .line 644
    move-object/from16 v5, v21

    .line 646
    invoke-virtual {v5, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 648
    invoke-virtual {v5, v11}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 651
    move-result v4

    .line 654
    if-eqz v4, :cond_1a

    .line 655
    move/from16 v4, v17

    .line 657
    goto/16 :goto_1

    .line 659
    :cond_1a
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 661
    move-result-object v4

    .line 664
    check-cast v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 665
    iget-object v4, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    .line 667
    invoke-virtual {v4, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 669
    goto :goto_d

    .line 672
    :cond_1b
    move-object/from16 v5, v21

    .line 673
    :goto_d
    add-int/lit8 v14, v18, 0x1

    .line 675
    move/from16 v4, v17

    .line 677
    :goto_e
    if-ge v14, v4, :cond_0

    .line 679
    iget-object v6, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    .line 681
    check-cast v6, Ljava/util/ArrayList;

    .line 683
    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 685
    move-result-object v6

    .line 688
    check-cast v6, Landroid/view/View;

    .line 689
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 691
    move-result-object v7

    .line 694
    check-cast v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 695
    iget-object v8, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 697
    if-eqz v8, :cond_1e

    .line 699
    invoke-virtual {v8, v6, v15}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->layoutDependsOn(Landroid/view/View;Landroid/view/View;)Z

    .line 701
    move-result v9

    .line 704
    if-eqz v9, :cond_1e

    .line 705
    if-nez v1, :cond_1c

    .line 707
    iget-boolean v9, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mDidChangeAfterNestedScroll:Z

    .line 709
    if-eqz v9, :cond_1c

    .line 711
    const/4 v9, 0x0

    .line 713
    iput-boolean v9, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mDidChangeAfterNestedScroll:Z

    .line 714
    const/4 v8, 0x1

    .line 716
    goto :goto_10

    .line 717
    :cond_1c
    const/4 v9, 0x0

    .line 718
    if-eq v1, v3, :cond_1d

    .line 719
    invoke-virtual {v8, v0, v6, v15}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onDependentViewChanged(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    .line 721
    move-result v6

    .line 724
    goto :goto_f

    .line 725
    :cond_1d
    invoke-virtual {v8, v0, v15}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onDependentViewRemoved(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V

    .line 726
    const/4 v6, 0x1

    .line 729
    :goto_f
    const/4 v8, 0x1

    .line 730
    if-ne v1, v8, :cond_1f

    .line 731
    iput-boolean v6, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mDidChangeAfterNestedScroll:Z

    .line 733
    goto :goto_10

    .line 735
    :cond_1e
    const/4 v8, 0x1

    .line 736
    const/4 v9, 0x0

    .line 737
    :cond_1f
    :goto_10
    add-int/lit8 v14, v14, 0x1

    .line 738
    goto :goto_e

    .line 740
    :goto_11
    add-int/lit8 v14, v18, 0x1

    .line 741
    move v9, v4

    .line 743
    move-object v12, v5

    .line 744
    goto/16 :goto_0

    .line 745
    :cond_20
    move-object v5, v12

    .line 747
    invoke-virtual {v10}, Landroid/graphics/Rect;->setEmpty()V

    .line 748
    sget-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->sRectPool:Landroidx/core/util/Pools$SynchronizedPool;

    .line 751
    invoke-virtual {v0, v10}, Landroidx/core/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 753
    invoke-virtual {v11}, Landroid/graphics/Rect;->setEmpty()V

    .line 756
    invoke-virtual {v0, v11}, Landroidx/core/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 759
    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    .line 762
    invoke-virtual {v0, v5}, Landroidx/core/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 765
    return-void
    .line 768
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->resetTouchBehaviors()V

    .line 5
    iget-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    .line 8
    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mOnPreDrawListener:Landroidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;

    .line 12
    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 16
    move-result-object v0

    .line 19
    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mOnPreDrawListener:Landroidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;

    .line 20
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 22
    :cond_0
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNestedScrollingTarget:Landroid/view/View;

    .line 25
    if-eqz v0, :cond_1

    .line 27
    invoke-virtual {p0, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onStopNestedScroll(Landroid/view/View;)V

    .line 29
    :cond_1
    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mIsAttachedToWindow:Z

    .line 33
    return-void
    .line 35
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDrawStatusBarBackground:Z

    .line 5
    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 9
    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 13
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    .line 18
    move-result v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v0, v1

    .line 23
    :goto_0
    if-lez v0, :cond_1

    .line 24
    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 26
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    .line 28
    move-result v3

    .line 31
    invoke-virtual {v2, v1, v1, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 32
    iget-object p0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 35
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 37
    :cond_1
    return-void
    .line 40
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->resetTouchBehaviors()V

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p0, p1, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->performIntercept(Landroid/view/MotionEvent;I)Z

    .line 12
    move-result p1

    .line 15
    const/4 v1, 0x1

    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    const/4 v1, 0x3

    .line 19
    if-ne v0, v1, :cond_2

    .line 20
    :cond_1
    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    .line 23
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->resetTouchBehaviors()V

    .line 25
    :cond_2
    return p1
    .line 28
.end method

.method public final onLayout(ZIIII)V
    .locals 1

    .line 1
    sget-object p1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 2
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api17Impl;->getLayoutDirection(Landroid/view/View;)I

    .line 4
    move-result p1

    .line 7
    iget-object p2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    .line 8
    check-cast p2, Ljava/util/ArrayList;

    .line 10
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 12
    move-result p2

    .line 15
    const/4 p3, 0x0

    .line 16
    :goto_0
    if-ge p3, p2, :cond_3

    .line 17
    iget-object p4, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    .line 19
    check-cast p4, Ljava/util/ArrayList;

    .line 21
    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object p4

    .line 26
    check-cast p4, Landroid/view/View;

    .line 27
    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    .line 29
    move-result p5

    .line 32
    const/16 v0, 0x8

    .line 33
    if-ne p5, v0, :cond_0

    .line 35
    goto :goto_1

    .line 37
    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 38
    move-result-object p5

    .line 41
    check-cast p5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 42
    iget-object p5, p5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 44
    if-eqz p5, :cond_1

    .line 46
    invoke-virtual {p5, p0, p4, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z

    .line 48
    move-result p5

    .line 51
    if-nez p5, :cond_2

    .line 52
    :cond_1
    invoke-virtual {p0, p1, p4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onLayoutChild(ILandroid/view/View;)V

    .line 54
    :cond_2
    :goto_1
    add-int/lit8 p3, p3, 0x1

    .line 57
    goto :goto_0

    .line 59
    :cond_3
    return-void
    .line 60
.end method

.method public final onLayoutChild(ILandroid/view/View;)V
    .locals 11

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 6
    iget-object v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 8
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    if-nez v1, :cond_0

    .line 12
    iget v4, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    .line 14
    const/4 v5, -0x1

    .line 16
    if-eq v4, v5, :cond_0

    .line 17
    move v4, v2

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v4, v3

    .line 21
    :goto_0
    if-nez v4, :cond_c

    .line 22
    if-eqz v1, :cond_1

    .line 24
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    .line 26
    move-result-object v0

    .line 29
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    .line 30
    move-result-object v2

    .line 33
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDescendantRect(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 34
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 37
    move-result-object v1

    .line 40
    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 41
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    .line 43
    move-result v3

    .line 46
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 47
    move-result v4

    .line 50
    move v5, p1

    .line 51
    move-object v6, v0

    .line 52
    move-object v7, v2

    .line 53
    move-object v8, v1

    .line 54
    move v9, v3

    .line 55
    move v10, v4

    .line 56
    invoke-static/range {v5 .. v10}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDesiredAnchoredChildRectWithoutConstraints(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;II)V

    .line 57
    invoke-virtual {p0, v1, v2, v3, v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->constrainChildRect(Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;Landroid/graphics/Rect;II)V

    .line 60
    iget p0, v2, Landroid/graphics/Rect;->left:I

    .line 63
    iget p1, v2, Landroid/graphics/Rect;->top:I

    .line 65
    iget v1, v2, Landroid/graphics/Rect;->right:I

    .line 67
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 69
    invoke-virtual {p2, p0, p1, v1, v3}, Landroid/view/View;->layout(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 74
    sget-object p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->sRectPool:Landroidx/core/util/Pools$SynchronizedPool;

    .line 77
    invoke-virtual {p0, v0}, Landroidx/core/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 79
    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 82
    invoke-virtual {p0, v2}, Landroidx/core/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 85
    goto/16 :goto_3

    .line 88
    :catchall_0
    move-exception p0

    .line 90
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 91
    sget-object p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->sRectPool:Landroidx/core/util/Pools$SynchronizedPool;

    .line 94
    invoke-virtual {p1, v0}, Landroidx/core/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 96
    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 99
    invoke-virtual {p1, v2}, Landroidx/core/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 102
    throw p0

    .line 105
    :cond_1
    iget v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->keyline:I

    .line 106
    if-ltz v0, :cond_8

    .line 108
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 110
    move-result-object v1

    .line 113
    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 114
    iget v4, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 116
    if-nez v4, :cond_2

    .line 118
    const v4, 0x800035

    .line 120
    :cond_2
    invoke-static {v4, p1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 123
    move-result v4

    .line 126
    and-int/lit8 v5, v4, 0x7

    .line 127
    and-int/lit8 v4, v4, 0x70

    .line 129
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    .line 131
    move-result v6

    .line 134
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    .line 135
    move-result v7

    .line 138
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    .line 139
    move-result v8

    .line 142
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 143
    move-result v9

    .line 146
    if-ne p1, v2, :cond_3

    .line 147
    sub-int v0, v6, v0

    .line 149
    :cond_3
    invoke-virtual {p0, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getKeyline(I)I

    .line 151
    move-result p1

    .line 154
    sub-int/2addr p1, v8

    .line 155
    if-eq v5, v2, :cond_5

    .line 156
    const/4 v0, 0x5

    .line 158
    if-eq v5, v0, :cond_4

    .line 159
    goto :goto_1

    .line 161
    :cond_4
    add-int/2addr p1, v8

    .line 162
    goto :goto_1

    .line 163
    :cond_5
    div-int/lit8 v0, v8, 0x2

    .line 164
    add-int/2addr p1, v0

    .line 166
    :goto_1
    const/16 v0, 0x10

    .line 167
    if-eq v4, v0, :cond_7

    .line 169
    const/16 v0, 0x50

    .line 171
    if-eq v4, v0, :cond_6

    .line 173
    goto :goto_2

    .line 175
    :cond_6
    add-int/lit8 v3, v9, 0x0

    .line 176
    goto :goto_2

    .line 178
    :cond_7
    div-int/lit8 v0, v9, 0x2

    .line 179
    add-int/2addr v3, v0

    .line 181
    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 182
    move-result v0

    .line 185
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 186
    add-int/2addr v0, v2

    .line 188
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 189
    move-result v2

    .line 192
    sub-int/2addr v6, v2

    .line 193
    sub-int/2addr v6, v8

    .line 194
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 195
    sub-int/2addr v6, v2

    .line 197
    invoke-static {p1, v6}, Ljava/lang/Math;->min(II)I

    .line 198
    move-result p1

    .line 201
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 202
    move-result p1

    .line 205
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 206
    move-result v0

    .line 209
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 210
    add-int/2addr v0, v2

    .line 212
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 213
    move-result p0

    .line 216
    sub-int/2addr v7, p0

    .line 217
    sub-int/2addr v7, v9

    .line 218
    iget p0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 219
    sub-int/2addr v7, p0

    .line 221
    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    .line 222
    move-result p0

    .line 225
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    .line 226
    move-result p0

    .line 229
    add-int/2addr v8, p1

    .line 230
    add-int/2addr v9, p0

    .line 231
    invoke-virtual {p2, p1, p0, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 232
    goto/16 :goto_3

    .line 235
    :cond_8
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 237
    move-result-object v0

    .line 240
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 241
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    .line 243
    move-result-object v7

    .line 246
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 247
    move-result v1

    .line 250
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 251
    add-int/2addr v1, v2

    .line 253
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 254
    move-result v2

    .line 257
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 258
    add-int/2addr v2, v3

    .line 260
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    .line 261
    move-result v3

    .line 264
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 265
    move-result v4

    .line 268
    sub-int/2addr v3, v4

    .line 269
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 270
    sub-int/2addr v3, v4

    .line 272
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    .line 273
    move-result v4

    .line 276
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 277
    move-result v5

    .line 280
    sub-int/2addr v4, v5

    .line 281
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 282
    sub-int/2addr v4, v5

    .line 284
    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 285
    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 288
    if-eqz v1, :cond_9

    .line 290
    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 292
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api16Impl;->getFitsSystemWindows(Landroid/view/View;)Z

    .line 294
    move-result v1

    .line 297
    if-eqz v1, :cond_9

    .line 298
    invoke-static {p2}, Landroidx/core/view/ViewCompat$Api16Impl;->getFitsSystemWindows(Landroid/view/View;)Z

    .line 300
    move-result v1

    .line 303
    if-nez v1, :cond_9

    .line 304
    iget v1, v7, Landroid/graphics/Rect;->left:I

    .line 306
    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 308
    invoke-virtual {v2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    .line 310
    move-result v2

    .line 313
    add-int/2addr v2, v1

    .line 314
    iput v2, v7, Landroid/graphics/Rect;->left:I

    .line 315
    iget v1, v7, Landroid/graphics/Rect;->top:I

    .line 317
    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 319
    invoke-virtual {v2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    .line 321
    move-result v2

    .line 324
    add-int/2addr v2, v1

    .line 325
    iput v2, v7, Landroid/graphics/Rect;->top:I

    .line 326
    iget v1, v7, Landroid/graphics/Rect;->right:I

    .line 328
    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 330
    invoke-virtual {v2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    .line 332
    move-result v2

    .line 335
    sub-int/2addr v1, v2

    .line 336
    iput v1, v7, Landroid/graphics/Rect;->right:I

    .line 337
    iget v1, v7, Landroid/graphics/Rect;->bottom:I

    .line 339
    iget-object p0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 341
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    .line 343
    move-result p0

    .line 346
    sub-int/2addr v1, p0

    .line 347
    iput v1, v7, Landroid/graphics/Rect;->bottom:I

    .line 348
    :cond_9
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    .line 350
    move-result-object p0

    .line 353
    iget v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 354
    and-int/lit8 v1, v0, 0x7

    .line 356
    if-nez v1, :cond_a

    .line 358
    const v1, 0x800003

    .line 360
    or-int/2addr v0, v1

    .line 363
    :cond_a
    and-int/lit8 v1, v0, 0x70

    .line 364
    if-nez v1, :cond_b

    .line 366
    or-int/lit8 v0, v0, 0x30

    .line 368
    :cond_b
    move v1, v0

    .line 370
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    .line 371
    move-result v2

    .line 374
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 375
    move-result v3

    .line 378
    move-object v4, v7

    .line 379
    move-object v5, p0

    .line 380
    move v6, p1

    .line 381
    invoke-static/range {v1 .. v6}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 382
    iget p1, p0, Landroid/graphics/Rect;->left:I

    .line 385
    iget v0, p0, Landroid/graphics/Rect;->top:I

    .line 387
    iget v1, p0, Landroid/graphics/Rect;->right:I

    .line 389
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    .line 391
    invoke-virtual {p2, p1, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 393
    invoke-virtual {v7}, Landroid/graphics/Rect;->setEmpty()V

    .line 396
    sget-object p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->sRectPool:Landroidx/core/util/Pools$SynchronizedPool;

    .line 399
    invoke-virtual {p1, v7}, Landroidx/core/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 401
    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    .line 404
    invoke-virtual {p1, p0}, Landroidx/core/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 407
    :goto_3
    return-void

    .line 410
    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 411
    const-string p1, "An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete."

    .line 413
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 415
    throw p0
    .line 418
.end method

.method public final onMeasure(II)V
    .locals 30

    .line 1
    move-object/from16 v6, p0

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->prepareChildren()V

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 7
    move-result v0

    .line 10
    const/4 v7, 0x0

    .line 11
    move v1, v7

    .line 12
    :goto_0
    const/4 v2, 0x1

    .line 13
    if-ge v1, v0, :cond_3

    .line 14
    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 16
    move-result-object v3

    .line 19
    iget-object v4, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mChildDag:Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    .line 20
    iget-object v4, v4, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->mGraph:Landroidx/collection/SimpleArrayMap;

    .line 22
    iget v5, v4, Landroidx/collection/SimpleArrayMap;->size:I

    .line 24
    move v8, v7

    .line 26
    :goto_1
    if-ge v8, v5, :cond_1

    .line 27
    invoke-virtual {v4, v8}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 29
    move-result-object v9

    .line 32
    check-cast v9, Ljava/util/ArrayList;

    .line 33
    if-eqz v9, :cond_0

    .line 35
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 37
    move-result v9

    .line 40
    if-eqz v9, :cond_0

    .line 41
    move v3, v2

    .line 43
    goto :goto_2

    .line 44
    :cond_0
    add-int/lit8 v8, v8, 0x1

    .line 45
    goto :goto_1

    .line 47
    :cond_1
    move v3, v7

    .line 48
    :goto_2
    if-eqz v3, :cond_2

    .line 49
    move v0, v2

    .line 51
    goto :goto_3

    .line 52
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 53
    goto :goto_0

    .line 55
    :cond_3
    move v0, v7

    .line 56
    :goto_3
    iget-boolean v1, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    .line 57
    if-eq v0, v1, :cond_8

    .line 59
    if-eqz v0, :cond_6

    .line 61
    iget-boolean v0, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mIsAttachedToWindow:Z

    .line 63
    if-eqz v0, :cond_5

    .line 65
    iget-object v0, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mOnPreDrawListener:Landroidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;

    .line 67
    if-nez v0, :cond_4

    .line 69
    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;

    .line 71
    invoke-direct {v0, v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V

    .line 73
    iput-object v0, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mOnPreDrawListener:Landroidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;

    .line 76
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 78
    move-result-object v0

    .line 81
    iget-object v1, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mOnPreDrawListener:Landroidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;

    .line 82
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 84
    :cond_5
    iput-boolean v2, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    .line 87
    goto :goto_4

    .line 89
    :cond_6
    iget-boolean v0, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mIsAttachedToWindow:Z

    .line 90
    if-eqz v0, :cond_7

    .line 92
    iget-object v0, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mOnPreDrawListener:Landroidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;

    .line 94
    if-eqz v0, :cond_7

    .line 96
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 98
    move-result-object v0

    .line 101
    iget-object v1, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mOnPreDrawListener:Landroidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;

    .line 102
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 104
    :cond_7
    iput-boolean v7, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    .line 107
    :cond_8
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 109
    move-result v8

    .line 112
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 113
    move-result v0

    .line 116
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 117
    move-result v9

    .line 120
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 121
    move-result v1

    .line 124
    sget-object v3, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 125
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat$Api17Impl;->getLayoutDirection(Landroid/view/View;)I

    .line 127
    move-result v10

    .line 130
    if-ne v10, v2, :cond_9

    .line 131
    move v11, v2

    .line 133
    goto :goto_5

    .line 134
    :cond_9
    move v11, v7

    .line 135
    :goto_5
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 136
    move-result v12

    .line 139
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 140
    move-result v13

    .line 143
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 144
    move-result v14

    .line 147
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 148
    move-result v15

    .line 151
    add-int v16, v8, v9

    .line 152
    add-int v17, v0, v1

    .line 154
    invoke-virtual/range {p0 .. p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getSuggestedMinimumWidth()I

    .line 156
    move-result v0

    .line 159
    invoke-virtual/range {p0 .. p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getSuggestedMinimumHeight()I

    .line 160
    move-result v1

    .line 163
    iget-object v3, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 164
    if-eqz v3, :cond_a

    .line 166
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat$Api16Impl;->getFitsSystemWindows(Landroid/view/View;)Z

    .line 168
    move-result v3

    .line 171
    if-eqz v3, :cond_a

    .line 172
    move/from16 v18, v2

    .line 174
    goto :goto_6

    .line 176
    :cond_a
    move/from16 v18, v7

    .line 177
    :goto_6
    iget-object v2, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    .line 179
    check-cast v2, Ljava/util/ArrayList;

    .line 181
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 183
    move-result v5

    .line 186
    move v4, v0

    .line 187
    move v3, v1

    .line 188
    move v1, v7

    .line 189
    move v2, v1

    .line 190
    :goto_7
    if-ge v2, v5, :cond_17

    .line 191
    iget-object v0, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    .line 193
    check-cast v0, Ljava/util/ArrayList;

    .line 195
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 197
    move-result-object v0

    .line 200
    move-object/from16 v19, v0

    .line 201
    check-cast v19, Landroid/view/View;

    .line 203
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getVisibility()I

    .line 205
    move-result v0

    .line 208
    const/16 v7, 0x8

    .line 209
    if-ne v0, v7, :cond_b

    .line 211
    move/from16 v21, v2

    .line 213
    move/from16 v28, v5

    .line 215
    move/from16 v22, v8

    .line 217
    move/from16 v26, v9

    .line 219
    move/from16 v27, v10

    .line 221
    const/16 v23, 0x0

    .line 223
    goto/16 :goto_d

    .line 225
    :cond_b
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 227
    move-result-object v0

    .line 230
    move-object v7, v0

    .line 231
    check-cast v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 232
    iget v0, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->keyline:I

    .line 234
    if-ltz v0, :cond_13

    .line 236
    if-eqz v12, :cond_13

    .line 238
    invoke-virtual {v6, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getKeyline(I)I

    .line 240
    move-result v0

    .line 243
    move/from16 v21, v1

    .line 244
    iget v1, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 246
    if-nez v1, :cond_c

    .line 248
    const v1, 0x800035

    .line 250
    :cond_c
    invoke-static {v1, v10}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 253
    move-result v1

    .line 256
    and-int/lit8 v1, v1, 0x7

    .line 257
    move/from16 v22, v2

    .line 259
    const/4 v2, 0x3

    .line 261
    if-ne v1, v2, :cond_d

    .line 262
    if-eqz v11, :cond_e

    .line 264
    :cond_d
    const/4 v2, 0x5

    .line 266
    if-ne v1, v2, :cond_f

    .line 267
    if-eqz v11, :cond_f

    .line 269
    :cond_e
    sub-int v1, v13, v9

    .line 271
    sub-int/2addr v1, v0

    .line 273
    const/4 v0, 0x0

    .line 274
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 275
    move-result v1

    .line 278
    move v2, v0

    .line 279
    move/from16 v20, v1

    .line 280
    goto :goto_a

    .line 282
    :cond_f
    if-ne v1, v2, :cond_10

    .line 283
    if-eqz v11, :cond_11

    .line 285
    :cond_10
    const/4 v2, 0x3

    .line 287
    if-ne v1, v2, :cond_12

    .line 288
    if-eqz v11, :cond_12

    .line 290
    :cond_11
    sub-int/2addr v0, v8

    .line 292
    const/4 v2, 0x0

    .line 293
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 294
    move-result v0

    .line 297
    move/from16 v20, v0

    .line 298
    goto :goto_a

    .line 300
    :cond_12
    :goto_8
    const/4 v2, 0x0

    .line 301
    goto :goto_9

    .line 302
    :cond_13
    move/from16 v21, v1

    .line 303
    move/from16 v22, v2

    .line 305
    goto :goto_8

    .line 307
    :goto_9
    move/from16 v20, v2

    .line 308
    :goto_a
    if-eqz v18, :cond_14

    .line 310
    invoke-static/range {v19 .. v19}, Landroidx/core/view/ViewCompat$Api16Impl;->getFitsSystemWindows(Landroid/view/View;)Z

    .line 312
    move-result v0

    .line 315
    if-nez v0, :cond_14

    .line 316
    iget-object v0, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 318
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    .line 320
    move-result v0

    .line 323
    iget-object v1, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 324
    invoke-virtual {v1}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    .line 326
    move-result v1

    .line 329
    add-int/2addr v1, v0

    .line 330
    iget-object v0, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 331
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    .line 333
    move-result v0

    .line 336
    iget-object v2, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 337
    invoke-virtual {v2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    .line 339
    move-result v2

    .line 342
    add-int/2addr v2, v0

    .line 343
    sub-int v0, v13, v1

    .line 344
    invoke-static {v0, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 346
    move-result v0

    .line 349
    sub-int v1, v15, v2

    .line 350
    invoke-static {v1, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 352
    move-result v1

    .line 355
    move/from16 v24, v0

    .line 356
    move/from16 v25, v1

    .line 358
    goto :goto_b

    .line 360
    :cond_14
    move/from16 v24, p1

    .line 361
    move/from16 v25, p2

    .line 363
    :goto_b
    iget-object v0, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 365
    if-eqz v0, :cond_15

    .line 367
    move/from16 v2, v21

    .line 369
    move-object/from16 v1, p0

    .line 371
    move/from16 v21, v22

    .line 373
    const/16 v23, 0x0

    .line 375
    move/from16 v22, v8

    .line 377
    move v8, v2

    .line 379
    move-object/from16 v2, v19

    .line 380
    move/from16 v26, v9

    .line 382
    move v9, v3

    .line 384
    move/from16 v3, v24

    .line 385
    move/from16 v27, v10

    .line 387
    move v10, v4

    .line 389
    move/from16 v4, v20

    .line 390
    move/from16 v28, v5

    .line 392
    move/from16 v5, v25

    .line 394
    invoke-virtual/range {v0 .. v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onMeasureChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)Z

    .line 396
    move-result v0

    .line 399
    if-nez v0, :cond_16

    .line 400
    goto :goto_c

    .line 402
    :cond_15
    move/from16 v28, v5

    .line 403
    move/from16 v26, v9

    .line 405
    move/from16 v27, v10

    .line 407
    const/16 v23, 0x0

    .line 409
    move v9, v3

    .line 411
    move v10, v4

    .line 412
    move/from16 v29, v22

    .line 413
    move/from16 v22, v8

    .line 415
    move/from16 v8, v21

    .line 417
    move/from16 v21, v29

    .line 419
    :goto_c
    const/4 v5, 0x0

    .line 421
    move-object/from16 v0, p0

    .line 422
    move-object/from16 v1, v19

    .line 424
    move/from16 v2, v24

    .line 426
    move/from16 v3, v20

    .line 428
    move/from16 v4, v25

    .line 430
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 432
    :cond_16
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredWidth()I

    .line 435
    move-result v0

    .line 438
    add-int v0, v0, v16

    .line 439
    iget v1, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 441
    add-int/2addr v0, v1

    .line 443
    iget v1, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 444
    add-int/2addr v0, v1

    .line 446
    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    .line 447
    move-result v0

    .line 450
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredHeight()I

    .line 451
    move-result v1

    .line 454
    add-int v1, v1, v17

    .line 455
    iget v2, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 457
    add-int/2addr v1, v2

    .line 459
    iget v2, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 460
    add-int/2addr v1, v2

    .line 462
    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    .line 463
    move-result v1

    .line 466
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredState()I

    .line 467
    move-result v2

    .line 470
    invoke-static {v8, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 471
    move-result v2

    .line 474
    move v4, v0

    .line 475
    move v3, v1

    .line 476
    move v1, v2

    .line 477
    :goto_d
    add-int/lit8 v2, v21, 0x1

    .line 478
    move/from16 v8, v22

    .line 480
    move/from16 v7, v23

    .line 482
    move/from16 v9, v26

    .line 484
    move/from16 v10, v27

    .line 486
    move/from16 v5, v28

    .line 488
    goto/16 :goto_7

    .line 490
    :cond_17
    move v8, v1

    .line 492
    move v9, v3

    .line 493
    move v10, v4

    .line 494
    const/high16 v0, -0x1000000

    .line 495
    and-int/2addr v0, v8

    .line 497
    move/from16 v1, p1

    .line 498
    invoke-static {v10, v1, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 500
    move-result v0

    .line 503
    shl-int/lit8 v1, v8, 0x10

    .line 504
    move/from16 v2, p2

    .line 506
    invoke-static {v9, v2, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 508
    move-result v1

    .line 511
    invoke-virtual {v6, v0, v1}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 512
    return-void
    .line 515
.end method

.method public final onMeasureChild(Landroid/view/View;III)V
    .locals 6

    .line 1
    const/4 v5, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move v2, p2

    .line 5
    move v3, p3

    .line 6
    move v4, p4

    .line 7
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 8
    return-void
    .line 11
.end method

.method public final onNestedFling(Landroid/view/View;FFZ)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    move-result p1

    .line 5
    const/4 p2, 0x0

    .line 6
    move p3, p2

    .line 7
    :goto_0
    if-ge p3, p1, :cond_2

    .line 8
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 10
    move-result-object p4

    .line 13
    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    .line 14
    move-result v0

    .line 17
    const/16 v1, 0x8

    .line 18
    if-ne v0, v1, :cond_0

    .line 20
    goto :goto_1

    .line 22
    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 23
    move-result-object p4

    .line 26
    check-cast p4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 27
    invoke-virtual {p4, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted(I)Z

    .line 29
    move-result v0

    .line 32
    if-nez v0, :cond_1

    .line 33
    goto :goto_1

    .line 35
    :cond_1
    iget-object p4, p4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 36
    :goto_1
    add-int/lit8 p3, p3, 0x1

    .line 38
    goto :goto_0

    .line 40
    :cond_2
    return p2
    .line 41
.end method

.method public final onNestedPreFling(Landroid/view/View;FF)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    move-result p2

    .line 5
    const/4 p3, 0x0

    .line 6
    move v0, p3

    .line 7
    move v1, v0

    .line 8
    :goto_0
    if-ge v0, p2, :cond_3

    .line 9
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 11
    move-result-object v2

    .line 14
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 15
    move-result v3

    .line 18
    const/16 v4, 0x8

    .line 19
    if-ne v3, v4, :cond_0

    .line 21
    goto :goto_1

    .line 23
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 24
    move-result-object v2

    .line 27
    check-cast v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 28
    invoke-virtual {v2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted(I)Z

    .line 30
    move-result v3

    .line 33
    if-nez v3, :cond_1

    .line 34
    goto :goto_1

    .line 36
    :cond_1
    iget-object v2, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 37
    if-eqz v2, :cond_2

    .line 39
    invoke-virtual {v2, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onNestedPreFling(Landroid/view/View;)Z

    .line 41
    move-result v2

    .line 44
    or-int/2addr v1, v2

    .line 45
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 46
    goto :goto_0

    .line 48
    :cond_3
    return v1
    .line 49
.end method

.method public final onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onNestedPreScroll(Landroid/view/View;II[II)V

    return-void
.end method

.method public final onNestedPreScroll(Landroid/view/View;II[II)V
    .locals 16

    move-object/from16 v8, p0

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    const/4 v10, 0x0

    move v0, v10

    move v11, v0

    move v12, v11

    move v13, v12

    :goto_0
    const/4 v14, 0x1

    if-ge v11, v9, :cond_5

    .line 3
    invoke-virtual {v8, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-ne v1, v3, :cond_0

    move/from16 v15, p5

    goto :goto_3

    .line 5
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    move/from16 v15, p5

    .line 6
    invoke-virtual {v1, v15}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted(I)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_3

    .line 7
    :cond_1
    iget-object v1, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    if-eqz v1, :cond_4

    .line 8
    iget-object v6, v8, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorConsumed:[I

    aput v10, v6, v10

    .line 9
    aput v10, v6, v14

    move-object v0, v1

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p5

    .line 10
    invoke-virtual/range {v0 .. v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V

    if-lez p2, :cond_2

    .line 11
    iget-object v0, v8, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorConsumed:[I

    aget v0, v0, v10

    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    .line 12
    :cond_2
    iget-object v0, v8, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorConsumed:[I

    aget v0, v0, v10

    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_1
    move v12, v0

    if-lez p3, :cond_3

    .line 13
    iget-object v0, v8, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorConsumed:[I

    aget v0, v0, v14

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_2

    .line 14
    :cond_3
    iget-object v0, v8, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorConsumed:[I

    aget v0, v0, v14

    invoke-static {v13, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_2
    move v13, v0

    move v0, v14

    :cond_4
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 15
    :cond_5
    aput v12, p4, v10

    .line 16
    aput v13, p4, v14

    if-eqz v0, :cond_6

    .line 17
    invoke-virtual {v8, v14}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onChildViewsChanged(I)V

    :cond_6
    return-void
.end method

.method public final onNestedScroll(Landroid/view/View;IIII)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 1
    invoke-virtual/range {v0 .. v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onNestedScroll(Landroid/view/View;IIIII)V

    return-void
.end method

.method public final onNestedScroll(Landroid/view/View;IIIII)V
    .locals 8

    const/4 v6, 0x0

    .line 2
    iget-object v7, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNestedScrollingV2ConsumedCompat:[I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onNestedScroll(Landroid/view/View;IIIII[I)V

    return-void
.end method

.method public final onNestedScroll(Landroid/view/View;IIIII[I)V
    .locals 15

    move-object v7, p0

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    const/4 v9, 0x0

    move v0, v9

    move v10, v0

    move v11, v10

    move v12, v11

    :goto_0
    const/4 v13, 0x1

    if-ge v10, v8, :cond_5

    .line 4
    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-ne v1, v3, :cond_0

    move/from16 v14, p6

    goto :goto_3

    .line 6
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    move/from16 v14, p6

    .line 7
    invoke-virtual {v1, v14}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted(I)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_3

    .line 8
    :cond_1
    iget-object v1, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    if-eqz v1, :cond_4

    .line 9
    iget-object v6, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorConsumed:[I

    aput v9, v6, v9

    .line 10
    aput v9, v6, v13

    move-object v0, v1

    move-object v1, p0

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    .line 11
    invoke-virtual/range {v0 .. v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III[I)V

    if-lez p4, :cond_2

    .line 12
    iget-object v0, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorConsumed:[I

    aget v0, v0, v9

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    .line 13
    :cond_2
    iget-object v0, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorConsumed:[I

    aget v0, v0, v9

    invoke-static {v11, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_1
    move v11, v0

    if-lez p5, :cond_3

    .line 14
    iget-object v0, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorConsumed:[I

    aget v0, v0, v13

    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_2

    .line 15
    :cond_3
    iget-object v0, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorConsumed:[I

    aget v0, v0, v13

    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_2
    move v12, v0

    move v0, v13

    :cond_4
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 16
    :cond_5
    aget v1, p7, v9

    add-int/2addr v1, v11

    aput v1, p7, v9

    .line 17
    aget v1, p7, v13

    add-int/2addr v1, v12

    aput v1, p7, v13

    if-eqz v0, :cond_6

    .line 18
    invoke-virtual {p0, v13}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onChildViewsChanged(I)V

    :cond_6
    return-void
.end method

.method public final onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    return-void
.end method

.method public final onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .locals 0

    .line 2
    iget-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {p1, p3, p4}, Landroidx/core/view/NestedScrollingParentHelper;->onNestedScrollAccepted(II)V

    .line 3
    iput-object p2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNestedScrollingTarget:Landroid/view/View;

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    .line 5
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 6
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 6

    .line 1
    instance-of v0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 6
    return-void

    .line 9
    :cond_0
    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;

    .line 10
    iget-object v0, p1, Landroidx/customview/view/AbsSavedState;->mSuperState:Landroid/os/Parcelable;

    .line 12
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 14
    iget-object p1, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;->behaviorStates:Landroid/util/SparseArray;

    .line 17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 19
    move-result v0

    .line 22
    const/4 v1, 0x0

    .line 23
    :goto_0
    if-ge v1, v0, :cond_2

    .line 24
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 26
    move-result-object v2

    .line 29
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 30
    move-result v3

    .line 33
    invoke-static {v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getResolvedLayoutParams(Landroid/view/View;)Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 34
    move-result-object v4

    .line 37
    iget-object v4, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 38
    const/4 v5, -0x1

    .line 40
    if-eq v3, v5, :cond_1

    .line 41
    if-eqz v4, :cond_1

    .line 43
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 45
    move-result-object v3

    .line 48
    check-cast v3, Landroid/os/Parcelable;

    .line 49
    if-eqz v3, :cond_1

    .line 51
    invoke-virtual {v4, v2, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onRestoreInstanceState(Landroid/view/View;Landroid/os/Parcelable;)V

    .line 53
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 56
    goto :goto_0

    .line 58
    :cond_2
    return-void
    .line 59
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 8

    .line 1
    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;

    .line 2
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 4
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 8
    new-instance v1, Landroid/util/SparseArray;

    .line 11
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 16
    move-result v2

    .line 19
    const/4 v3, 0x0

    .line 20
    :goto_0
    if-ge v3, v2, :cond_1

    .line 21
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 23
    move-result-object v4

    .line 26
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    .line 27
    move-result v5

    .line 30
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 31
    move-result-object v6

    .line 34
    check-cast v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 35
    iget-object v6, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 37
    const/4 v7, -0x1

    .line 39
    if-eq v5, v7, :cond_0

    .line 40
    if-eqz v6, :cond_0

    .line 42
    invoke-virtual {v6, v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onSaveInstanceState(Landroid/view/View;)Landroid/os/Parcelable;

    .line 44
    move-result-object v4

    .line 47
    if-eqz v4, :cond_0

    .line 48
    invoke-virtual {v1, v5, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 50
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 53
    goto :goto_0

    .line 55
    :cond_1
    iput-object v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;->behaviorStates:Landroid/util/SparseArray;

    .line 56
    return-object v0
    .line 58
.end method

.method public final onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z

    move-result p0

    return p0
.end method

.method public final onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .locals 15

    move/from16 v7, p4

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    const/4 v9, 0x0

    move v10, v9

    move v11, v10

    :goto_0
    if-ge v10, v8, :cond_6

    move-object v12, p0

    .line 3
    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 6
    iget-object v0, v13, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    const/4 v14, 0x1

    if-eqz v0, :cond_3

    move-object v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    .line 7
    invoke-virtual/range {v0 .. v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z

    move-result v0

    or-int/2addr v11, v0

    if-eqz v7, :cond_2

    if-eq v7, v14, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    iput-boolean v0, v13, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mDidAcceptNestedScrollNonTouch:Z

    goto :goto_1

    .line 9
    :cond_2
    iput-boolean v0, v13, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mDidAcceptNestedScrollTouch:Z

    goto :goto_1

    :cond_3
    if-eqz v7, :cond_5

    if-eq v7, v14, :cond_4

    goto :goto_1

    .line 10
    :cond_4
    iput-boolean v9, v13, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mDidAcceptNestedScrollNonTouch:Z

    goto :goto_1

    .line 11
    :cond_5
    iput-boolean v9, v13, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mDidAcceptNestedScrollTouch:Z

    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_6
    return v11
.end method

.method public final onStopNestedScroll(ILandroid/view/View;)V
    .locals 7

    .line 2
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 3
    iput v1, v0, Landroidx/core/view/NestedScrollingParentHelper;->mNestedScrollAxesNonTouch:I

    goto :goto_0

    .line 4
    :cond_0
    iput v1, v0, Landroidx/core/view/NestedScrollingParentHelper;->mNestedScrollAxesTouch:I

    .line 5
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v3, v1

    :goto_1
    if-ge v3, v0, :cond_5

    .line 6
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 7
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 8
    invoke-virtual {v5, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted(I)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_3

    .line 9
    :cond_1
    iget-object v6, v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    if-eqz v6, :cond_2

    .line 10
    invoke-virtual {v6, p0, v4, p2, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V

    :cond_2
    if-eqz p1, :cond_4

    if-eq p1, v2, :cond_3

    goto :goto_2

    .line 11
    :cond_3
    iput-boolean v1, v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mDidAcceptNestedScrollNonTouch:Z

    goto :goto_2

    .line 12
    :cond_4
    iput-boolean v1, v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mDidAcceptNestedScrollTouch:Z

    .line 13
    :goto_2
    iput-boolean v1, v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mDidChangeAfterNestedScroll:Z

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNestedScrollingTarget:Landroid/view/View;

    return-void
.end method

.method public final onStopNestedScroll(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onStopNestedScroll(ILandroid/view/View;)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    move-result v0

    .line 5
    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    .line 6
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v1, :cond_1

    .line 10
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 12
    move-result-object v1

    .line 15
    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 16
    iget-object v1, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 18
    if-eqz v1, :cond_0

    .line 20
    iget-object v4, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    .line 22
    invoke-virtual {v1, p0, v4, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 24
    move-result v1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v1, v3

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {p0, p1, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->performIntercept(Landroid/view/MotionEvent;I)Z

    .line 31
    move-result v1

    .line 34
    if-eqz v0, :cond_2

    .line 35
    if-eqz v1, :cond_2

    .line 37
    move v3, v2

    .line 39
    :cond_2
    :goto_0
    iget-object v4, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    .line 40
    const/4 v5, 0x3

    .line 42
    if-eqz v4, :cond_4

    .line 43
    if-ne v0, v5, :cond_3

    .line 45
    goto :goto_1

    .line 47
    :cond_3
    if-eqz v3, :cond_5

    .line 48
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 50
    move-result-object p1

    .line 53
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->setAction(I)V

    .line 54
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 57
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 60
    goto :goto_2

    .line 63
    :cond_4
    :goto_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 64
    move-result p1

    .line 67
    or-int/2addr v1, p1

    .line 68
    :cond_5
    :goto_2
    if-eq v0, v2, :cond_6

    .line 69
    if-ne v0, v5, :cond_7

    .line 71
    :cond_6
    const/4 p1, 0x0

    .line 73
    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    .line 74
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->resetTouchBehaviors()V

    .line 76
    :cond_7
    return v1
    .line 79
.end method

.method public final performEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;Landroid/view/View;Landroid/view/MotionEvent;I)Z
    .locals 1

    .line 1
    if-eqz p4, :cond_1

    .line 2
    const/4 v0, 0x1

    .line 4
    if-ne p4, v0, :cond_0

    .line 5
    invoke-virtual {p1, p0, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 7
    move-result p0

    .line 10
    return p0

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 12
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 14
    throw p0

    .line 17
    :cond_1
    invoke-virtual {p1, p0, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onInterceptTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 18
    move-result p0

    .line 21
    return p0
    .line 22
.end method

.method public final performIntercept(Landroid/view/MotionEvent;I)Z
    .locals 13

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    move-result v0

    .line 5
    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mTempList1:Ljava/util/List;

    .line 6
    check-cast v1, Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    .line 13
    move-result v2

    .line 16
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 17
    move-result v3

    .line 20
    add-int/lit8 v4, v3, -0x1

    .line 21
    :goto_0
    if-ltz v4, :cond_1

    .line 23
    if-eqz v2, :cond_0

    .line 25
    invoke-virtual {p0, v3, v4}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    .line 27
    move-result v5

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    move v5, v4

    .line 32
    :goto_1
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 33
    move-result-object v5

    .line 36
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    add-int/lit8 v4, v4, -0x1

    .line 40
    goto :goto_0

    .line 42
    :cond_1
    sget-object v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->TOP_SORTED_CHILDREN_COMPARATOR:Landroidx/coordinatorlayout/widget/CoordinatorLayout$ViewElevationComparator;

    .line 43
    if-eqz v2, :cond_2

    .line 45
    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 47
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 50
    move-result v2

    .line 53
    const/4 v3, 0x0

    .line 54
    const/4 v4, 0x0

    .line 55
    move v5, v3

    .line 56
    move v6, v5

    .line 57
    move v7, v6

    .line 58
    :goto_2
    if-ge v5, v2, :cond_d

    .line 59
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 61
    move-result-object v8

    .line 64
    check-cast v8, Landroid/view/View;

    .line 65
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 67
    move-result-object v9

    .line 70
    check-cast v9, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 71
    iget-object v10, v9, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 73
    const/4 v11, 0x3

    .line 75
    if-nez v6, :cond_3

    .line 76
    if-eqz v7, :cond_5

    .line 78
    :cond_3
    if-eqz v0, :cond_5

    .line 80
    if-eqz v10, :cond_c

    .line 82
    if-nez v4, :cond_4

    .line 84
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 86
    move-result-object v4

    .line 89
    invoke-virtual {v4, v11}, Landroid/view/MotionEvent;->setAction(I)V

    .line 90
    :cond_4
    invoke-virtual {p0, v10, v8, v4, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->performEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;Landroid/view/View;Landroid/view/MotionEvent;I)Z

    .line 93
    goto :goto_6

    .line 96
    :cond_5
    const/4 v12, 0x1

    .line 97
    if-nez v7, :cond_8

    .line 98
    if-nez v6, :cond_8

    .line 100
    if-eqz v10, :cond_8

    .line 102
    invoke-virtual {p0, v10, v8, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->performEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;Landroid/view/View;Landroid/view/MotionEvent;I)Z

    .line 104
    move-result v6

    .line 107
    if-eqz v6, :cond_8

    .line 108
    iput-object v8, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    .line 110
    if-eq v0, v11, :cond_8

    .line 112
    if-eq v0, v12, :cond_8

    .line 114
    move v7, v3

    .line 116
    :goto_3
    if-ge v7, v5, :cond_8

    .line 117
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 119
    move-result-object v8

    .line 122
    check-cast v8, Landroid/view/View;

    .line 123
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 125
    move-result-object v10

    .line 128
    check-cast v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 129
    iget-object v10, v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 131
    if-eqz v10, :cond_7

    .line 133
    if-nez v4, :cond_6

    .line 135
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 137
    move-result-object v4

    .line 140
    invoke-virtual {v4, v11}, Landroid/view/MotionEvent;->setAction(I)V

    .line 141
    :cond_6
    invoke-virtual {p0, v10, v8, v4, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->performEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;Landroid/view/View;Landroid/view/MotionEvent;I)Z

    .line 144
    :cond_7
    add-int/lit8 v7, v7, 0x1

    .line 147
    goto :goto_3

    .line 149
    :cond_8
    iget-object v7, v9, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 150
    if-nez v7, :cond_9

    .line 152
    iput-boolean v3, v9, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mDidBlockInteraction:Z

    .line 154
    :cond_9
    iget-boolean v7, v9, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mDidBlockInteraction:Z

    .line 156
    if-eqz v7, :cond_a

    .line 158
    move v8, v12

    .line 160
    goto :goto_4

    .line 161
    :cond_a
    or-int/lit8 v8, v7, 0x0

    .line 162
    iput-boolean v8, v9, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mDidBlockInteraction:Z

    .line 164
    :goto_4
    if-eqz v8, :cond_b

    .line 166
    if-nez v7, :cond_b

    .line 168
    move v7, v12

    .line 170
    goto :goto_5

    .line 171
    :cond_b
    move v7, v3

    .line 172
    :goto_5
    if-eqz v8, :cond_c

    .line 173
    if-nez v7, :cond_c

    .line 175
    goto :goto_7

    .line 177
    :cond_c
    :goto_6
    add-int/lit8 v5, v5, 0x1

    .line 178
    goto :goto_2

    .line 180
    :cond_d
    :goto_7
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 181
    if-eqz v4, :cond_e

    .line 184
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 186
    :cond_e
    return v6
    .line 189
.end method

.method public final prepareChildren()V
    .locals 12

    .line 1
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    .line 2
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mChildDag:Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    .line 9
    iget-object v1, v0, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->mGraph:Landroidx/collection/SimpleArrayMap;

    .line 11
    iget v2, v1, Landroidx/collection/SimpleArrayMap;->size:I

    .line 13
    const/4 v3, 0x0

    .line 15
    move v4, v3

    .line 16
    :goto_0
    if-ge v4, v2, :cond_1

    .line 17
    invoke-virtual {v1, v4}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 19
    move-result-object v5

    .line 22
    check-cast v5, Ljava/util/ArrayList;

    .line 23
    if-eqz v5, :cond_0

    .line 25
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 27
    iget-object v6, v0, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->mListPool:Landroidx/core/util/Pools$SimplePool;

    .line 30
    invoke-virtual {v6, v5}, Landroidx/core/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    .line 32
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 35
    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {v1}, Landroidx/collection/SimpleArrayMap;->clear()V

    .line 38
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 41
    move-result v0

    .line 44
    move v1, v3

    .line 45
    :goto_1
    if-ge v1, v0, :cond_1d

    .line 46
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 48
    move-result-object v2

    .line 51
    invoke-static {v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getResolvedLayoutParams(Landroid/view/View;)Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 52
    move-result-object v4

    .line 55
    iget v5, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    .line 56
    const/4 v6, -0x1

    .line 58
    const/4 v7, 0x0

    .line 59
    const/4 v8, 0x1

    .line 60
    if-ne v5, v6, :cond_2

    .line 61
    iput-object v7, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    .line 63
    iput-object v7, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 65
    goto/16 :goto_7

    .line 67
    :cond_2
    iget-object v5, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 69
    if-eqz v5, :cond_8

    .line 71
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    .line 73
    move-result v5

    .line 76
    iget v6, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    .line 77
    if-eq v5, v6, :cond_3

    .line 79
    goto :goto_4

    .line 81
    :cond_3
    iget-object v5, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 82
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 84
    move-result-object v6

    .line 87
    :goto_2
    if-eq v6, p0, :cond_7

    .line 88
    if-eqz v6, :cond_6

    .line 90
    if-ne v6, v2, :cond_4

    .line 92
    goto :goto_3

    .line 94
    :cond_4
    instance-of v9, v6, Landroid/view/View;

    .line 95
    if-eqz v9, :cond_5

    .line 97
    move-object v5, v6

    .line 99
    check-cast v5, Landroid/view/View;

    .line 100
    :cond_5
    invoke-interface {v6}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 102
    move-result-object v6

    .line 105
    goto :goto_2

    .line 106
    :cond_6
    :goto_3
    iput-object v7, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    .line 107
    iput-object v7, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 109
    :goto_4
    move v5, v3

    .line 111
    goto :goto_5

    .line 112
    :cond_7
    iput-object v5, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    .line 113
    move v5, v8

    .line 115
    :goto_5
    if-nez v5, :cond_10

    .line 116
    :cond_8
    iget v5, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    .line 118
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 120
    move-result-object v5

    .line 123
    iput-object v5, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 124
    if-eqz v5, :cond_f

    .line 126
    if-ne v5, p0, :cond_a

    .line 128
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    .line 130
    move-result v5

    .line 133
    if-eqz v5, :cond_9

    .line 134
    iput-object v7, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    .line 136
    iput-object v7, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 138
    goto :goto_7

    .line 140
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 141
    const-string v0, "View can not be anchored to the the parent CoordinatorLayout"

    .line 143
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 145
    throw p0

    .line 148
    :cond_a
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 149
    move-result-object v6

    .line 152
    :goto_6
    if-eq v6, p0, :cond_e

    .line 153
    if-eqz v6, :cond_e

    .line 155
    if-ne v6, v2, :cond_c

    .line 157
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    .line 159
    move-result v5

    .line 162
    if-eqz v5, :cond_b

    .line 163
    iput-object v7, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    .line 165
    iput-object v7, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 167
    goto :goto_7

    .line 169
    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 170
    const-string v0, "Anchor must not be a descendant of the anchored view"

    .line 172
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 174
    throw p0

    .line 177
    :cond_c
    instance-of v9, v6, Landroid/view/View;

    .line 178
    if-eqz v9, :cond_d

    .line 180
    move-object v5, v6

    .line 182
    check-cast v5, Landroid/view/View;

    .line 183
    :cond_d
    invoke-interface {v6}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 185
    move-result-object v6

    .line 188
    goto :goto_6

    .line 189
    :cond_e
    iput-object v5, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    .line 190
    goto :goto_7

    .line 192
    :cond_f
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    .line 193
    move-result v5

    .line 196
    if-eqz v5, :cond_1c

    .line 197
    iput-object v7, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    .line 199
    iput-object v7, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 201
    :cond_10
    :goto_7
    iget-object v5, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mChildDag:Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    .line 203
    iget-object v5, v5, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->mGraph:Landroidx/collection/SimpleArrayMap;

    .line 205
    invoke-virtual {v5, v2}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 207
    move-result v6

    .line 210
    if-nez v6, :cond_11

    .line 211
    invoke-virtual {v5, v2, v7}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    :cond_11
    move v5, v3

    .line 216
    :goto_8
    if-ge v5, v0, :cond_1b

    .line 217
    if-ne v5, v1, :cond_12

    .line 219
    goto/16 :goto_c

    .line 221
    :cond_12
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 223
    move-result-object v6

    .line 226
    iget-object v9, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    .line 227
    if-eq v6, v9, :cond_15

    .line 229
    sget-object v9, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 231
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api17Impl;->getLayoutDirection(Landroid/view/View;)I

    .line 233
    move-result v9

    .line 236
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 237
    move-result-object v10

    .line 240
    check-cast v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 241
    iget v10, v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    .line 243
    invoke-static {v10, v9}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 245
    move-result v10

    .line 248
    if-eqz v10, :cond_13

    .line 249
    iget v11, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    .line 251
    invoke-static {v11, v9}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 253
    move-result v9

    .line 256
    and-int/2addr v9, v10

    .line 257
    if-ne v9, v10, :cond_13

    .line 258
    move v9, v8

    .line 260
    goto :goto_9

    .line 261
    :cond_13
    move v9, v3

    .line 262
    :goto_9
    if-nez v9, :cond_15

    .line 263
    iget-object v9, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 265
    if-eqz v9, :cond_14

    .line 267
    invoke-virtual {v9, v2, v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->layoutDependsOn(Landroid/view/View;Landroid/view/View;)Z

    .line 269
    move-result v9

    .line 272
    if-eqz v9, :cond_14

    .line 273
    goto :goto_a

    .line 275
    :cond_14
    move v9, v3

    .line 276
    goto :goto_b

    .line 277
    :cond_15
    :goto_a
    move v9, v8

    .line 278
    :goto_b
    if-eqz v9, :cond_1a

    .line 279
    iget-object v9, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mChildDag:Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    .line 281
    iget-object v9, v9, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->mGraph:Landroidx/collection/SimpleArrayMap;

    .line 283
    invoke-virtual {v9, v6}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 285
    move-result v9

    .line 288
    if-nez v9, :cond_16

    .line 289
    iget-object v9, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mChildDag:Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    .line 291
    iget-object v9, v9, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->mGraph:Landroidx/collection/SimpleArrayMap;

    .line 293
    invoke-virtual {v9, v6}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 295
    move-result v10

    .line 298
    if-nez v10, :cond_16

    .line 299
    invoke-virtual {v9, v6, v7}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    :cond_16
    iget-object v9, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mChildDag:Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    .line 304
    iget-object v10, v9, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->mGraph:Landroidx/collection/SimpleArrayMap;

    .line 306
    invoke-virtual {v10, v6}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 308
    move-result v11

    .line 311
    if-eqz v11, :cond_19

    .line 312
    invoke-virtual {v10, v2}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 314
    move-result v11

    .line 317
    if-eqz v11, :cond_19

    .line 318
    invoke-virtual {v10, v6}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    move-result-object v11

    .line 323
    check-cast v11, Ljava/util/ArrayList;

    .line 324
    if-nez v11, :cond_18

    .line 326
    iget-object v9, v9, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->mListPool:Landroidx/core/util/Pools$SimplePool;

    .line 328
    invoke-virtual {v9}, Landroidx/core/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    .line 330
    move-result-object v9

    .line 333
    check-cast v9, Ljava/util/ArrayList;

    .line 334
    if-nez v9, :cond_17

    .line 336
    new-instance v9, Ljava/util/ArrayList;

    .line 338
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 340
    :cond_17
    move-object v11, v9

    .line 343
    invoke-virtual {v10, v6, v11}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    :cond_18
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    goto :goto_c

    .line 350
    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 351
    const-string v0, "All nodes must be present in the graph before being added as an edge"

    .line 353
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 355
    throw p0

    .line 358
    :cond_1a
    :goto_c
    add-int/lit8 v5, v5, 0x1

    .line 359
    goto/16 :goto_8

    .line 361
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    .line 363
    goto/16 :goto_1

    .line 365
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 367
    new-instance v1, Ljava/lang/StringBuilder;

    .line 369
    const-string v3, "Could not find CoordinatorLayout descendant view with id "

    .line 371
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 373
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 376
    move-result-object p0

    .line 379
    iget v3, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    .line 380
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 382
    move-result-object p0

    .line 385
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    const-string p0, " to anchor view "

    .line 389
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 394
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 397
    move-result-object p0

    .line 400
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 401
    throw v0

    .line 404
    :cond_1d
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    .line 405
    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mChildDag:Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    .line 407
    iget-object v2, v1, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->mSortResult:Ljava/util/ArrayList;

    .line 409
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 411
    iget-object v4, v1, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->mSortTmpMarked:Ljava/util/HashSet;

    .line 414
    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 416
    iget-object v5, v1, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->mGraph:Landroidx/collection/SimpleArrayMap;

    .line 419
    iget v6, v5, Landroidx/collection/SimpleArrayMap;->size:I

    .line 421
    :goto_d
    if-ge v3, v6, :cond_1e

    .line 423
    invoke-virtual {v5, v3}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 425
    move-result-object v7

    .line 428
    invoke-virtual {v1, v7, v2, v4}, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->dfs(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    .line 429
    add-int/lit8 v3, v3, 0x1

    .line 432
    goto :goto_d

    .line 434
    :cond_1e
    check-cast v0, Ljava/util/ArrayList;

    .line 435
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 437
    iget-object p0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    .line 440
    invoke-static {p0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 442
    return-void
    .line 445
.end method

.method public final requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 6
    iget-object v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 8
    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onRequestChildRectangleOnScreen(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;Z)Z

    .line 12
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    .line 20
    move-result p0

    .line 23
    return p0
    .line 24
.end method

.method public final requestDisallowInterceptTouchEvent(Z)V
    .locals 12

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 2
    if-eqz p1, :cond_4

    .line 5
    iget-boolean p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDisallowInterceptReset:Z

    .line 7
    if-nez p1, :cond_4

    .line 9
    iget-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    .line 11
    if-nez p1, :cond_3

    .line 13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 15
    move-result p1

    .line 18
    const/4 v0, 0x0

    .line 19
    const/4 v1, 0x0

    .line 20
    :goto_0
    if-ge v1, p1, :cond_2

    .line 21
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 23
    move-result-object v2

    .line 26
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 27
    move-result-object v3

    .line 30
    check-cast v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 31
    iget-object v3, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 33
    if-eqz v3, :cond_1

    .line 35
    if-nez v0, :cond_0

    .line 37
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 39
    move-result-wide v6

    .line 42
    const/4 v8, 0x3

    .line 43
    const/4 v9, 0x0

    .line 44
    const/4 v10, 0x0

    .line 45
    const/4 v11, 0x0

    .line 46
    move-wide v4, v6

    .line 47
    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 48
    move-result-object v0

    .line 51
    :cond_0
    invoke-virtual {v3, p0, v2, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onInterceptTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 52
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 55
    goto :goto_0

    .line 57
    :cond_2
    if-eqz v0, :cond_3

    .line 58
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 60
    :cond_3
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->resetTouchBehaviors()V

    .line 63
    const/4 p1, 0x1

    .line 66
    iput-boolean p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDisallowInterceptReset:Z

    .line 67
    :cond_4
    return-void
    .line 69
.end method

.method public final resetTouchBehaviors()V
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    move-result-object v0

    .line 9
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 10
    iget-object v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 12
    if-eqz v0, :cond_0

    .line 14
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 16
    move-result-wide v3

    .line 19
    const/4 v5, 0x3

    .line 20
    const/4 v6, 0x0

    .line 21
    const/4 v7, 0x0

    .line 22
    const/4 v8, 0x0

    .line 23
    move-wide v1, v3

    .line 24
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 25
    move-result-object v1

    .line 28
    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    .line 29
    invoke-virtual {v0, p0, v2, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 31
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    .line 38
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 40
    move-result v0

    .line 43
    const/4 v1, 0x0

    .line 44
    move v2, v1

    .line 45
    :goto_0
    if-ge v2, v0, :cond_2

    .line 46
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 48
    move-result-object v3

    .line 51
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 52
    move-result-object v3

    .line 55
    check-cast v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 56
    iput-boolean v1, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mDidBlockInteraction:Z

    .line 58
    add-int/lit8 v2, v2, 0x1

    .line 60
    goto :goto_0

    .line 62
    :cond_2
    iput-boolean v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDisallowInterceptReset:Z

    .line 63
    return-void
    .line 65
.end method

.method public setFitsSystemWindows(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setFitsSystemWindows(Z)V

    .line 2
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setupForInsets()V

    .line 5
    return-void
    .line 8
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 2
    return-void
    .line 4
.end method

.method public setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 2
    if-eq v0, p1, :cond_5

    .line 4
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 9
    :cond_0
    if-eqz p1, :cond_1

    .line 12
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 14
    move-result-object v1

    .line 17
    :cond_1
    iput-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 18
    if-eqz v1, :cond_4

    .line 20
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 22
    move-result p1

    .line 25
    if-eqz p1, :cond_2

    .line 26
    iget-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 28
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDrawableState()[I

    .line 30
    move-result-object v0

    .line 33
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 34
    :cond_2
    iget-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 37
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 39
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api17Impl;->getLayoutDirection(Landroid/view/View;)I

    .line 41
    move-result v0

    .line 44
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 45
    iget-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 48
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    .line 50
    move-result v0

    .line 53
    const/4 v1, 0x0

    .line 54
    if-nez v0, :cond_3

    .line 55
    const/4 v0, 0x1

    .line 57
    goto :goto_0

    .line 58
    :cond_3
    move v0, v1

    .line 59
    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 60
    iget-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 63
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 65
    :cond_4
    sget-object p1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 68
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api16Impl;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 70
    :cond_5
    return-void
    .line 73
.end method

.method public setStatusBarBackgroundColor(I)V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 2
    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 4
    invoke-virtual {p0, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V

    .line 7
    return-void
    .line 10
.end method

.method public setStatusBarBackgroundResource(I)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 7
    sget-object v1, Landroidx/core/app/ActivityCompat;->sLock:Ljava/lang/Object;

    .line 8
    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 10
    move-result-object p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V

    .line 16
    return-void
    .line 19
.end method

.method public setVisibility(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2
    const/4 v0, 0x0

    .line 5
    if-nez p1, :cond_0

    .line 6
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move p1, v0

    .line 10
    :goto_0
    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 11
    if-eqz v1, :cond_1

    .line 13
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 15
    move-result v1

    .line 18
    if-eq v1, p1, :cond_1

    .line 19
    iget-object p0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 21
    invoke-virtual {p0, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 23
    :cond_1
    return-void
    .line 26
.end method

.method public final setupForInsets()V
    .locals 1

    .line 1
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 2
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api16Impl;->getFitsSystemWindows(Landroid/view/View;)Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mApplyWindowInsetsListener:Landroidx/coordinatorlayout/widget/CoordinatorLayout$1;

    .line 10
    if-nez v0, :cond_0

    .line 12
    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$1;

    .line 14
    invoke-direct {v0, p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$1;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V

    .line 16
    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mApplyWindowInsetsListener:Landroidx/coordinatorlayout/widget/CoordinatorLayout$1;

    .line 19
    :cond_0
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mApplyWindowInsetsListener:Landroidx/coordinatorlayout/widget/CoordinatorLayout$1;

    .line 21
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat$Api21Impl;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 23
    const/16 v0, 0x500

    .line 26
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    .line 28
    goto :goto_0

    .line 31
    :cond_1
    const/4 v0, 0x0

    .line 32
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat$Api21Impl;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 33
    :goto_0
    return-void
    .line 36
.end method

.method public final verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    iget-object p0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 8
    if-ne p1, p0, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 15
    :goto_1
    return p0
    .line 16
.end method
