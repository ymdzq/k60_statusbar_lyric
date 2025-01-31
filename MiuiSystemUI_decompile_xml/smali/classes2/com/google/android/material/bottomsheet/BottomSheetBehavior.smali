.class public Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public activePointerId:I

.field public final backgroundTint:Landroid/content/res/ColorStateList;

.field public final callbacks:Ljava/util/ArrayList;

.field public childHeight:I

.field public collapsedOffset:I

.field public final dragCallback:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;

.field public draggable:Z

.field public final elevation:F

.field public expandHalfwayActionId:I

.field public expandedOffset:I

.field public fitToContents:Z

.field public fitToContentsOffset:I

.field public gestureInsetBottom:I

.field public gestureInsetBottomIgnored:Z

.field public halfExpandedOffset:I

.field public halfExpandedRatio:F

.field public final hideFriction:F

.field public hideable:Z

.field public ignoreEvents:Z

.field public importantForAccessibilityMap:Ljava/util/Map;

.field public initialY:I

.field public insetBottom:I

.field public insetTop:I

.field public interpolatorAnimator:Landroid/animation/ValueAnimator;

.field public isShapeExpanded:Z

.field public lastNestedScrollDy:I

.field public final marginLeftSystemWindowInsets:Z

.field public final marginRightSystemWindowInsets:Z

.field public final marginTopSystemWindowInsets:Z

.field public materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field public maxHeight:I

.field public maxWidth:I

.field public final maximumVelocity:F

.field public nestedScrolled:Z

.field public nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

.field public final paddingBottomSystemWindowInsets:Z

.field public final paddingLeftSystemWindowInsets:Z

.field public final paddingRightSystemWindowInsets:Z

.field public final paddingTopSystemWindowInsets:Z

.field public parentHeight:I

.field public parentWidth:I

.field public peekHeight:I

.field public peekHeightAuto:Z

.field public final peekHeightGestureInsetBuffer:I

.field public peekHeightMin:I

.field public saveFlags:I

.field public final shapeAppearanceModelDefault:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field public skipCollapsed:Z

.field public state:I

.field public final stateSettlingTracker:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$StateSettlingTracker;

.field public touchingScrollingChild:Z

.field public velocityTracker:Landroid/view/VelocityTracker;

.field public viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

.field public viewRef:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->saveFlags:I

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    const/4 v1, -0x1

    .line 4
    iput v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->maxWidth:I

    .line 5
    iput v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->maxHeight:I

    .line 6
    new-instance v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$StateSettlingTracker;

    invoke-direct {v2, p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$StateSettlingTracker;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    iput-object v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->stateSettlingTracker:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$StateSettlingTracker;

    const/high16 v2, 0x3f000000    # 0.5f

    .line 7
    iput v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedRatio:F

    const/high16 v2, -0x40800000    # -1.0f

    .line 8
    iput v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->elevation:F

    .line 9
    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->draggable:Z

    const/4 v0, 0x4

    .line 10
    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    const v0, 0x3dcccccd    # 0.1f

    .line 11
    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideFriction:F

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    .line 13
    iput v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->expandHalfwayActionId:I

    .line 14
    new-instance v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;

    invoke-direct {v0, p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->dragCallback:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11

    .line 15
    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->saveFlags:I

    const/4 v1, 0x1

    .line 17
    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    const/4 v2, -0x1

    .line 18
    iput v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->maxWidth:I

    .line 19
    iput v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->maxHeight:I

    .line 20
    new-instance v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$StateSettlingTracker;

    invoke-direct {v3, p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$StateSettlingTracker;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    iput-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->stateSettlingTracker:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$StateSettlingTracker;

    const/high16 v3, 0x3f000000    # 0.5f

    .line 21
    iput v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedRatio:F

    const/high16 v4, -0x40800000    # -1.0f

    .line 22
    iput v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->elevation:F

    .line 23
    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->draggable:Z

    const/4 v5, 0x4

    .line 24
    iput v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    const v6, 0x3dcccccd    # 0.1f

    .line 25
    iput v6, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideFriction:F

    .line 26
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    .line 27
    iput v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->expandHalfwayActionId:I

    .line 28
    new-instance v6, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;

    invoke-direct {v6, p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    iput-object v6, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->dragCallback:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070cbc    # @dimen/mtrl_min_touch_target_size '48.0dp'

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightGestureInsetBuffer:I

    .line 30
    sget-object v6, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout:[I

    invoke-virtual {p1, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    const/4 v7, 0x3

    .line 31
    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 32
    invoke-static {p1, v6, v7}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->backgroundTint:Landroid/content/res/ColorStateList;

    :cond_0
    const/16 v8, 0x14

    .line 33
    invoke-virtual {v6, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_1

    const v8, 0x7f0400e9    # @attr/bottomSheetStyle

    const v9, 0x7f1406a3    # @style/Widget.Design.BottomSheet.Modal

    .line 34
    invoke-static {p1, p2, v8, v9}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object p2

    .line 35
    new-instance v8, Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-direct {v8, p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)V

    .line 36
    iput-object v8, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->shapeAppearanceModelDefault:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 37
    :cond_1
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->shapeAppearanceModelDefault:Lcom/google/android/material/shape/ShapeAppearanceModel;

    if-nez p2, :cond_2

    goto :goto_0

    .line 38
    :cond_2
    new-instance v8, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v8, p2}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    iput-object v8, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 39
    invoke-virtual {v8, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Landroid/content/Context;)V

    .line 40
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->backgroundTint:Landroid/content/res/ColorStateList;

    if-eqz p2, :cond_3

    .line 41
    iget-object v8, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v8, p2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 42
    :cond_3
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    const v9, 0x1010031    # @android:attr/colorBackground

    invoke-virtual {v8, v9, p2, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 44
    iget-object v8, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget p2, p2, Landroid/util/TypedValue;->data:I

    invoke-virtual {v8, p2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setTint(I)V

    :goto_0
    const/4 p2, 0x2

    new-array v8, p2, [F

    .line 45
    fill-array-data v8, :array_0

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->interpolatorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v9, 0x1f4

    .line 46
    invoke-virtual {v8, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 47
    iget-object v8, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->interpolatorAnimator:Landroid/animation/ValueAnimator;

    new-instance v9, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;

    invoke-direct {v9, p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    invoke-virtual {v8, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 48
    invoke-virtual {v6, p2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->elevation:F

    .line 49
    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 50
    invoke-virtual {v6, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    .line 51
    iput p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->maxWidth:I

    .line 52
    :cond_4
    invoke-virtual {v6, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 53
    invoke-virtual {v6, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    .line 54
    iput p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->maxHeight:I

    :cond_5
    const/16 p2, 0x9

    .line 55
    invoke-virtual {v6, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 56
    iget v4, v4, Landroid/util/TypedValue;->data:I

    if-ne v4, v2, :cond_6

    .line 57
    invoke-virtual {p0, v4}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setPeekHeight(I)V

    goto :goto_1

    .line 58
    :cond_6
    invoke-virtual {v6, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    .line 59
    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setPeekHeight(I)V

    :goto_1
    const/16 p2, 0x8

    .line 60
    invoke-virtual {v6, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setHideable(Z)V

    const/16 p2, 0xc

    .line 61
    invoke-virtual {v6, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 62
    iput-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->gestureInsetBottomIgnored:Z

    const/4 p2, 0x6

    .line 63
    invoke-virtual {v6, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 64
    iget-boolean v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    if-ne v4, v2, :cond_7

    goto :goto_3

    .line 65
    :cond_7
    iput-boolean v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    .line 66
    iget-object v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_8

    .line 67
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->calculateCollapsedOffset()V

    .line 68
    :cond_8
    iget-boolean v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    if-eqz v2, :cond_9

    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    if-ne v2, p2, :cond_9

    goto :goto_2

    :cond_9
    iget v7, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    :goto_2
    invoke-virtual {p0, v7}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    .line 69
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updateAccessibilityActions$1()V

    :goto_3
    const/16 p2, 0xb

    .line 70
    invoke-virtual {v6, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 71
    iput-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->skipCollapsed:Z

    .line 72
    invoke-virtual {v6, v5, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 73
    iput-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->draggable:Z

    const/16 p2, 0xa

    .line 74
    invoke-virtual {v6, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 75
    iput p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->saveFlags:I

    const/4 p2, 0x7

    .line 76
    invoke-virtual {v6, p2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    const/4 v2, 0x0

    cmpg-float v2, p2, v2

    if-lez v2, :cond_e

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, p2, v2

    if-gez v3, :cond_e

    .line 77
    iput p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedRatio:F

    .line 78
    iget-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_a

    .line 79
    iget v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    int-to-float v3, v3

    sub-float/2addr v2, p2

    mul-float/2addr v2, v3

    float-to-int p2, v2

    iput p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    :cond_a
    const/4 p2, 0x5

    .line 80
    invoke-virtual {v6, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    const-string v3, "offset must be greater than or equal to 0"

    const/16 v4, 0x10

    if-eqz v2, :cond_c

    .line 81
    iget v5, v2, Landroid/util/TypedValue;->type:I

    if-ne v5, v4, :cond_c

    .line 82
    iget p2, v2, Landroid/util/TypedValue;->data:I

    if-ltz p2, :cond_b

    .line 83
    iput p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->expandedOffset:I

    goto :goto_4

    .line 84
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 85
    :cond_c
    invoke-virtual {v6, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    if-ltz p2, :cond_d

    .line 86
    iput p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->expandedOffset:I

    .line 87
    :goto_4
    invoke-virtual {v6, v4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->paddingBottomSystemWindowInsets:Z

    const/16 p2, 0x11

    .line 88
    invoke-virtual {v6, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->paddingLeftSystemWindowInsets:Z

    const/16 p2, 0x12

    .line 89
    invoke-virtual {v6, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->paddingRightSystemWindowInsets:Z

    const/16 p2, 0x13

    .line 90
    invoke-virtual {v6, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->paddingTopSystemWindowInsets:Z

    const/16 p2, 0xd

    .line 91
    invoke-virtual {v6, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->marginLeftSystemWindowInsets:Z

    const/16 p2, 0xe

    .line 92
    invoke-virtual {v6, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->marginRightSystemWindowInsets:Z

    const/16 p2, 0xf

    .line 93
    invoke-virtual {v6, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->marginTopSystemWindowInsets:Z

    .line 94
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 95
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 96
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->maximumVelocity:F

    return-void

    .line 97
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 98
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ratio must be a float value between 0 and 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static from(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    move-result-object p0

    .line 5
    instance-of v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 6
    if-eqz v0, :cond_1

    .line 8
    check-cast p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 10
    iget-object p0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 12
    instance-of v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 14
    if-eqz v0, :cond_0

    .line 16
    check-cast p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 18
    return-object p0

    .line 20
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 21
    const-string v0, "The view is not associated with BottomSheetBehavior"

    .line 23
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    throw p0

    .line 28
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 29
    const-string v0, "The view is not a child of CoordinatorLayout"

    .line 31
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 33
    throw p0
    .line 36
.end method

.method public static getChildMeasureSpec(IIII)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 2
    move-result p0

    .line 5
    const/4 p1, -0x1

    .line 6
    if-ne p2, p1, :cond_0

    .line 7
    return p0

    .line 9
    :cond_0
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 10
    move-result p1

    .line 13
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 14
    move-result p0

    .line 17
    const/high16 p3, 0x40000000    # 2.0f

    .line 18
    if-eq p1, p3, :cond_2

    .line 20
    if-nez p0, :cond_1

    .line 22
    goto :goto_0

    .line 24
    :cond_1
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    .line 25
    move-result p2

    .line 28
    :goto_0
    const/high16 p0, -0x80000000

    .line 29
    invoke-static {p2, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 31
    move-result p0

    .line 34
    return p0

    .line 35
    :cond_2
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    .line 36
    move-result p0

    .line 39
    invoke-static {p0, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 40
    move-result p0

    .line 43
    return p0
    .line 44
.end method


# virtual methods
.method public final calculateCollapsedOffset()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->calculatePeekHeight()I

    .line 2
    move-result v0

    .line 5
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    .line 6
    if-eqz v1, :cond_0

    .line 8
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    .line 10
    sub-int/2addr v1, v0

    .line 12
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContentsOffset:I

    .line 13
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 15
    move-result v0

    .line 18
    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    .line 19
    goto :goto_0

    .line 21
    :cond_0
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    .line 22
    sub-int/2addr v1, v0

    .line 24
    iput v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    .line 25
    :goto_0
    return-void
    .line 27
.end method

.method public final calculatePeekHeight()I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightAuto:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightMin:I

    .line 6
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    .line 8
    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentWidth:I

    .line 10
    mul-int/lit8 v2, v2, 0x9

    .line 12
    div-int/lit8 v2, v2, 0x10

    .line 14
    sub-int/2addr v1, v2

    .line 16
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 17
    move-result v0

    .line 20
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->childHeight:I

    .line 21
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 23
    move-result v0

    .line 26
    iget p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->insetBottom:I

    .line 27
    :goto_0
    add-int/2addr v0, p0

    .line 29
    return v0

    .line 30
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->gestureInsetBottomIgnored:Z

    .line 31
    if-nez v0, :cond_1

    .line 33
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->paddingBottomSystemWindowInsets:Z

    .line 35
    if-nez v0, :cond_1

    .line 37
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->gestureInsetBottom:I

    .line 39
    if-lez v0, :cond_1

    .line 41
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeight:I

    .line 43
    iget p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightGestureInsetBuffer:I

    .line 45
    add-int/2addr v0, p0

    .line 47
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 48
    move-result p0

    .line 51
    return p0

    .line 52
    :cond_1
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeight:I

    .line 53
    iget p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->insetBottom:I

    .line 55
    goto :goto_0
    .line 57
.end method

.method public disableShapeAnimations()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->interpolatorAnimator:Landroid/animation/ValueAnimator;

    .line 3
    return-void
    .line 5
.end method

.method public final dispatchOnSlide(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/View;

    .line 8
    if-eqz v0, :cond_2

    .line 10
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 14
    move-result v2

    .line 17
    if-nez v2, :cond_2

    .line 18
    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    .line 20
    if-gt p1, v2, :cond_1

    .line 22
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    .line 24
    move-result p1

    .line 27
    if-ne v2, p1, :cond_0

    .line 28
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    .line 31
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 34
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 35
    move-result p1

    .line 38
    if-ge p0, p1, :cond_2

    .line 39
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 41
    move-result-object p1

    .line 44
    check-cast p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    .line 45
    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;->onSlide(Landroid/view/View;)V

    .line 47
    add-int/lit8 p0, p0, 0x1

    .line 50
    goto :goto_1

    .line 52
    :cond_2
    return-void
    .line 53
.end method

.method public findScrollingChild(Landroid/view/View;)Landroid/view/View;
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-object v1

    .line 9
    :cond_0
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 10
    invoke-static {p1}, Landroidx/core/view/ViewCompat$Api21Impl;->isNestedScrollingEnabled(Landroid/view/View;)Z

    .line 12
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    return-object p1

    .line 18
    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup;

    .line 19
    if-eqz v0, :cond_3

    .line 21
    check-cast p1, Landroid/view/ViewGroup;

    .line 23
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 25
    move-result v0

    .line 28
    const/4 v2, 0x0

    .line 29
    :goto_0
    if-ge v2, v0, :cond_3

    .line 30
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 32
    move-result-object v3

    .line 35
    invoke-virtual {p0, v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->findScrollingChild(Landroid/view/View;)Landroid/view/View;

    .line 36
    move-result-object v3

    .line 39
    if-eqz v3, :cond_2

    .line 40
    return-object v3

    .line 42
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 43
    goto :goto_0

    .line 45
    :cond_3
    return-object v1
    .line 46
.end method

.method public final getExpandedOffset()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContentsOffset:I

    .line 6
    goto :goto_1

    .line 8
    :cond_0
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->expandedOffset:I

    .line 9
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->paddingTopSystemWindowInsets:Z

    .line 11
    if-eqz v1, :cond_1

    .line 13
    const/4 p0, 0x0

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    iget p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->insetTop:I

    .line 17
    :goto_0
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    .line 19
    move-result p0

    .line 22
    :goto_1
    return p0
    .line 23
.end method

.method public getPeekHeightMin()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightMin:I

    .line 2
    return p0
    .line 4
.end method

.method public final getTopOffsetForState(I)I
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    if-eq p1, v0, :cond_3

    .line 3
    const/4 v0, 0x4

    .line 5
    if-eq p1, v0, :cond_2

    .line 6
    const/4 v0, 0x5

    .line 8
    if-eq p1, v0, :cond_1

    .line 9
    const/4 v0, 0x6

    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    iget p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    .line 14
    return p0

    .line 16
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 17
    const-string v0, "Invalid state to get top offset: "

    .line 19
    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 24
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    throw p0

    .line 28
    :cond_1
    iget p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    .line 29
    return p0

    .line 31
    :cond_2
    iget p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    .line 32
    return p0

    .line 34
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    .line 35
    move-result p0

    .line 38
    return p0
    .line 39
.end method

.method public final onAttachedToLayoutParams(Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    .line 3
    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 5
    return-void
    .line 7
.end method

.method public final onDetachedFromLayoutParams()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    .line 3
    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 5
    return-void
    .line 7
.end method

.method public final onInterceptTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_c

    .line 8
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->draggable:Z

    .line 10
    if-nez v0, :cond_0

    .line 12
    goto/16 :goto_3

    .line 14
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 16
    move-result v0

    .line 19
    const/4 v3, 0x0

    .line 20
    const/4 v4, -0x1

    .line 21
    if-nez v0, :cond_1

    .line 22
    iput v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->activePointerId:I

    .line 24
    iget-object v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    .line 26
    if-eqz v5, :cond_1

    .line 28
    invoke-virtual {v5}, Landroid/view/VelocityTracker;->recycle()V

    .line 30
    iput-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    .line 33
    :cond_1
    iget-object v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    .line 35
    if-nez v5, :cond_2

    .line 37
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 39
    move-result-object v5

    .line 42
    iput-object v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    .line 43
    :cond_2
    iget-object v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    .line 45
    invoke-virtual {v5, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 47
    const/4 v5, 0x2

    .line 50
    if-eqz v0, :cond_4

    .line 51
    if-eq v0, v2, :cond_3

    .line 53
    const/4 p2, 0x3

    .line 55
    if-eq v0, p2, :cond_3

    .line 56
    goto :goto_2

    .line 58
    :cond_3
    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->touchingScrollingChild:Z

    .line 59
    iput v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->activePointerId:I

    .line 61
    iget-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ignoreEvents:Z

    .line 63
    if-eqz p2, :cond_8

    .line 65
    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ignoreEvents:Z

    .line 67
    return v1

    .line 69
    :cond_4
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    .line 70
    move-result v6

    .line 73
    float-to-int v6, v6

    .line 74
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    .line 75
    move-result v7

    .line 78
    float-to-int v7, v7

    .line 79
    iput v7, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->initialY:I

    .line 80
    iget v7, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    .line 82
    if-eq v7, v5, :cond_6

    .line 84
    iget-object v7, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    .line 86
    if-eqz v7, :cond_5

    .line 88
    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 90
    move-result-object v7

    .line 93
    check-cast v7, Landroid/view/View;

    .line 94
    goto :goto_0

    .line 96
    :cond_5
    move-object v7, v3

    .line 97
    :goto_0
    if-eqz v7, :cond_6

    .line 98
    iget v8, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->initialY:I

    .line 100
    invoke-virtual {p1, v7, v6, v8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    .line 102
    move-result v7

    .line 105
    if-eqz v7, :cond_6

    .line 106
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 108
    move-result v7

    .line 111
    invoke-virtual {p3, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 112
    move-result v7

    .line 115
    iput v7, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->activePointerId:I

    .line 116
    iput-boolean v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->touchingScrollingChild:Z

    .line 118
    :cond_6
    iget v7, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->activePointerId:I

    .line 120
    if-ne v7, v4, :cond_7

    .line 122
    iget v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->initialY:I

    .line 124
    invoke-virtual {p1, p2, v6, v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    .line 126
    move-result p2

    .line 129
    if-nez p2, :cond_7

    .line 130
    move p2, v2

    .line 132
    goto :goto_1

    .line 133
    :cond_7
    move p2, v1

    .line 134
    :goto_1
    iput-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ignoreEvents:Z

    .line 135
    :cond_8
    :goto_2
    iget-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ignoreEvents:Z

    .line 137
    if-nez p2, :cond_9

    .line 139
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 141
    if-eqz p2, :cond_9

    .line 143
    invoke-virtual {p2, p3}, Landroidx/customview/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 145
    move-result p2

    .line 148
    if-eqz p2, :cond_9

    .line 149
    return v2

    .line 151
    :cond_9
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    .line 152
    if-eqz p2, :cond_a

    .line 154
    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 156
    move-result-object p2

    .line 159
    move-object v3, p2

    .line 160
    check-cast v3, Landroid/view/View;

    .line 161
    :cond_a
    if-ne v0, v5, :cond_b

    .line 163
    if-eqz v3, :cond_b

    .line 165
    iget-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ignoreEvents:Z

    .line 167
    if-nez p2, :cond_b

    .line 169
    iget p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    .line 171
    if-eq p2, v2, :cond_b

    .line 173
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    .line 175
    move-result p2

    .line 178
    float-to-int p2, p2

    .line 179
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    .line 180
    move-result v0

    .line 183
    float-to-int v0, v0

    .line 184
    invoke-virtual {p1, v3, p2, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    .line 185
    move-result p1

    .line 188
    if-nez p1, :cond_b

    .line 189
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 191
    if-eqz p1, :cond_b

    .line 193
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->initialY:I

    .line 195
    int-to-float p1, p1

    .line 197
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    .line 198
    move-result p2

    .line 201
    sub-float/2addr p1, p2

    .line 202
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 203
    move-result p1

    .line 206
    iget-object p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 207
    iget p0, p0, Landroidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    .line 209
    int-to-float p0, p0

    .line 211
    cmpl-float p0, p1, p0

    .line 212
    if-lez p0, :cond_b

    .line 214
    move v1, v2

    .line 216
    :cond_b
    return v1

    .line 217
    :cond_c
    :goto_3
    iput-boolean v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ignoreEvents:Z

    .line 218
    return v1
    .line 220
.end method

.method public final onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 7

    .line 1
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 2
    invoke-static {p1}, Landroidx/core/view/ViewCompat$Api16Impl;->getFitsSystemWindows(Landroid/view/View;)Z

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    invoke-static {p2}, Landroidx/core/view/ViewCompat$Api16Impl;->getFitsSystemWindows(Landroid/view/View;)Z

    .line 11
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    invoke-virtual {p2, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    .line 20
    const/high16 v2, 0x3f800000    # 1.0f

    .line 22
    const/4 v3, 0x3

    .line 24
    const/4 v4, 0x0

    .line 25
    if-nez v0, :cond_8

    .line 26
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 28
    move-result-object v0

    .line 31
    const v5, 0x7f070294    # @dimen/design_bottom_sheet_peek_height_min '64.0dp'

    .line 32
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 35
    move-result v0

    .line 38
    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightMin:I

    .line 39
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->gestureInsetBottomIgnored:Z

    .line 41
    if-nez v0, :cond_1

    .line 43
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightAuto:Z

    .line 45
    if-nez v0, :cond_1

    .line 47
    move v0, v1

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    move v0, v4

    .line 51
    :goto_0
    iget-boolean v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->paddingBottomSystemWindowInsets:Z

    .line 52
    if-nez v5, :cond_2

    .line 54
    iget-boolean v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->paddingLeftSystemWindowInsets:Z

    .line 56
    if-nez v5, :cond_2

    .line 58
    iget-boolean v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->paddingRightSystemWindowInsets:Z

    .line 60
    if-nez v5, :cond_2

    .line 62
    iget-boolean v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->marginLeftSystemWindowInsets:Z

    .line 64
    if-nez v5, :cond_2

    .line 66
    iget-boolean v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->marginRightSystemWindowInsets:Z

    .line 68
    if-nez v5, :cond_2

    .line 70
    iget-boolean v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->marginTopSystemWindowInsets:Z

    .line 72
    if-nez v5, :cond_2

    .line 74
    if-nez v0, :cond_2

    .line 76
    goto :goto_1

    .line 78
    :cond_2
    new-instance v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;

    .line 79
    invoke-direct {v5, p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Z)V

    .line 81
    invoke-static {p2, v5}, Lcom/google/android/material/internal/ViewUtils;->doOnApplyWindowInsets(Landroid/view/View;Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;)V

    .line 84
    :goto_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 87
    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 89
    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    .line 92
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 94
    if-eqz v0, :cond_6

    .line 96
    invoke-static {p2, v0}, Landroidx/core/view/ViewCompat$Api16Impl;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 98
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 101
    iget v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->elevation:F

    .line 103
    const/high16 v6, -0x40800000    # -1.0f

    .line 105
    cmpl-float v6, v5, v6

    .line 107
    if-nez v6, :cond_3

    .line 109
    invoke-static {p2}, Landroidx/core/view/ViewCompat$Api21Impl;->getElevation(Landroid/view/View;)F

    .line 111
    move-result v5

    .line 114
    :cond_3
    invoke-virtual {v0, v5}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    .line 115
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    .line 118
    if-ne v0, v3, :cond_4

    .line 120
    move v0, v1

    .line 122
    goto :goto_2

    .line 123
    :cond_4
    move v0, v4

    .line 124
    :goto_2
    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->isShapeExpanded:Z

    .line 125
    iget-object v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 127
    if-eqz v0, :cond_5

    .line 129
    const/4 v0, 0x0

    .line 131
    goto :goto_3

    .line 132
    :cond_5
    move v0, v2

    .line 133
    :goto_3
    invoke-virtual {v5, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setInterpolation(F)V

    .line 134
    goto :goto_4

    .line 137
    :cond_6
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->backgroundTint:Landroid/content/res/ColorStateList;

    .line 138
    if-eqz v0, :cond_7

    .line 140
    invoke-static {p2, v0}, Landroidx/core/view/ViewCompat$Api21Impl;->setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 142
    :cond_7
    :goto_4
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updateAccessibilityActions$1()V

    .line 145
    invoke-static {p2}, Landroidx/core/view/ViewCompat$Api16Impl;->getImportantForAccessibility(Landroid/view/View;)I

    .line 148
    move-result v0

    .line 151
    if-nez v0, :cond_8

    .line 152
    invoke-static {p2, v1}, Landroidx/core/view/ViewCompat$Api16Impl;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 154
    :cond_8
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 157
    if-nez v0, :cond_9

    .line 159
    new-instance v0, Landroidx/customview/widget/ViewDragHelper;

    .line 161
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 163
    move-result-object v5

    .line 166
    iget-object v6, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->dragCallback:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;

    .line 167
    invoke-direct {v0, v5, p1, v6}, Landroidx/customview/widget/ViewDragHelper;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroidx/customview/widget/ViewDragHelper$Callback;)V

    .line 169
    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 172
    :cond_9
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 174
    move-result v0

    .line 177
    invoke-virtual {p1, p3, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onLayoutChild(ILandroid/view/View;)V

    .line 178
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    .line 181
    move-result p3

    .line 184
    iput p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentWidth:I

    .line 185
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    .line 187
    move-result p1

    .line 190
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    .line 191
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 193
    move-result p1

    .line 196
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->childHeight:I

    .line 197
    iget p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    .line 199
    sub-int p1, p3, p1

    .line 201
    iget v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->insetTop:I

    .line 203
    if-ge p1, v5, :cond_b

    .line 205
    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->paddingTopSystemWindowInsets:Z

    .line 207
    if-eqz p1, :cond_a

    .line 209
    iput p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->childHeight:I

    .line 211
    goto :goto_5

    .line 213
    :cond_a
    sub-int p1, p3, v5

    .line 214
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->childHeight:I

    .line 216
    :cond_b
    :goto_5
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->childHeight:I

    .line 218
    sub-int/2addr p3, p1

    .line 220
    invoke-static {v4, p3}, Ljava/lang/Math;->max(II)I

    .line 221
    move-result p1

    .line 224
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContentsOffset:I

    .line 225
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    .line 227
    int-to-float p1, p1

    .line 229
    iget p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedRatio:F

    .line 230
    sub-float/2addr v2, p3

    .line 232
    mul-float/2addr v2, p1

    .line 233
    float-to-int p1, v2

    .line 234
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    .line 235
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->calculateCollapsedOffset()V

    .line 237
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    .line 240
    if-ne p1, v3, :cond_c

    .line 242
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    .line 244
    move-result p1

    .line 247
    invoke-virtual {p2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 248
    goto :goto_6

    .line 251
    :cond_c
    const/4 p3, 0x6

    .line 252
    if-ne p1, p3, :cond_d

    .line 253
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    .line 255
    invoke-virtual {p2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 257
    goto :goto_6

    .line 260
    :cond_d
    iget-boolean p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    .line 261
    if-eqz p3, :cond_e

    .line 263
    const/4 p3, 0x5

    .line 265
    if-ne p1, p3, :cond_e

    .line 266
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    .line 268
    invoke-virtual {p2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 270
    goto :goto_6

    .line 273
    :cond_e
    const/4 p3, 0x4

    .line 274
    if-ne p1, p3, :cond_f

    .line 275
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    .line 277
    invoke-virtual {p2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 279
    goto :goto_6

    .line 282
    :cond_f
    if-eq p1, v1, :cond_10

    .line 283
    const/4 p3, 0x2

    .line 285
    if-ne p1, p3, :cond_11

    .line 286
    :cond_10
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 288
    move-result p1

    .line 291
    sub-int/2addr v0, p1

    .line 292
    invoke-virtual {p2, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 293
    :cond_11
    :goto_6
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 296
    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->findScrollingChild(Landroid/view/View;)Landroid/view/View;

    .line 298
    move-result-object p3

    .line 301
    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 302
    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    .line 305
    :goto_7
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    .line 307
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 309
    move-result p3

    .line 312
    if-ge v4, p3, :cond_12

    .line 313
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 315
    move-result-object p1

    .line 318
    check-cast p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    .line 319
    invoke-virtual {p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;->onLayout(Landroid/view/View;)V

    .line 321
    add-int/lit8 v4, v4, 0x1

    .line 324
    goto :goto_7

    .line 326
    :cond_12
    return v1
    .line 327
.end method

.method public final onMeasureChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)Z
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    move-result-object v0

    .line 5
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 6
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 8
    move-result v1

    .line 11
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 12
    move-result v2

    .line 15
    add-int/2addr v2, v1

    .line 16
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 17
    add-int/2addr v2, v1

    .line 19
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 20
    add-int/2addr v2, v1

    .line 22
    add-int/2addr v2, p4

    .line 23
    iget p4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->maxWidth:I

    .line 24
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 26
    invoke-static {p3, v2, p4, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getChildMeasureSpec(IIII)I

    .line 28
    move-result p3

    .line 31
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 32
    move-result p4

    .line 35
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 36
    move-result p1

    .line 39
    add-int/2addr p1, p4

    .line 40
    iget p4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 41
    add-int/2addr p1, p4

    .line 43
    iget p4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 44
    add-int/2addr p1, p4

    .line 46
    add-int/lit8 p1, p1, 0x0

    .line 47
    iget p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->maxHeight:I

    .line 49
    iget p4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 51
    invoke-static {p5, p1, p0, p4}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getChildMeasureSpec(IIII)I

    .line 53
    move-result p0

    .line 56
    invoke-virtual {p2, p3, p0}, Landroid/view/View;->measure(II)V

    .line 57
    const/4 p0, 0x1

    .line 60
    return p0
    .line 61
.end method

.method public final onNestedPreFling(Landroid/view/View;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 9
    if-ne p1, v0, :cond_1

    .line 10
    iget p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    .line 12
    const/4 p1, 0x3

    .line 14
    if-ne p0, p1, :cond_0

    .line 15
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x1

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 20
    :goto_1
    return p0
    .line 21
.end method

.method public final onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V
    .locals 1

    .line 1
    const/4 p1, 0x1

    .line 2
    if-ne p7, p1, :cond_0

    .line 3
    return-void

    .line 5
    :cond_0
    iget-object p4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    .line 6
    if-eqz p4, :cond_1

    .line 8
    invoke-virtual {p4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 10
    move-result-object p4

    .line 13
    check-cast p4, Landroid/view/View;

    .line 14
    goto :goto_0

    .line 16
    :cond_1
    const/4 p4, 0x0

    .line 17
    :goto_0
    if-eq p3, p4, :cond_2

    .line 18
    return-void

    .line 20
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 21
    move-result p4

    .line 24
    sub-int p7, p4, p5

    .line 25
    if-lez p5, :cond_5

    .line 27
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    .line 29
    move-result p3

    .line 32
    if-ge p7, p3, :cond_3

    .line 33
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    .line 35
    move-result p3

    .line 38
    sub-int/2addr p4, p3

    .line 39
    aput p4, p6, p1

    .line 40
    neg-int p3, p4

    .line 42
    sget-object p4, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 43
    invoke-virtual {p2, p3}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 45
    const/4 p3, 0x3

    .line 48
    invoke-virtual {p0, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    .line 49
    goto :goto_2

    .line 52
    :cond_3
    iget-boolean p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->draggable:Z

    .line 53
    if-nez p3, :cond_4

    .line 55
    return-void

    .line 57
    :cond_4
    aput p5, p6, p1

    .line 58
    neg-int p3, p5

    .line 60
    sget-object p4, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 61
    invoke-virtual {p2, p3}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 63
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    .line 66
    goto :goto_2

    .line 69
    :cond_5
    if-gez p5, :cond_9

    .line 70
    const/4 v0, -0x1

    .line 72
    invoke-virtual {p3, v0}, Landroid/view/View;->canScrollVertically(I)Z

    .line 73
    move-result p3

    .line 76
    if-nez p3, :cond_9

    .line 77
    iget p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    .line 79
    if-le p7, p3, :cond_7

    .line 81
    iget-boolean p7, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    .line 83
    if-eqz p7, :cond_6

    .line 85
    goto :goto_1

    .line 87
    :cond_6
    sub-int/2addr p4, p3

    .line 88
    aput p4, p6, p1

    .line 89
    neg-int p3, p4

    .line 91
    sget-object p4, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 92
    invoke-virtual {p2, p3}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 94
    const/4 p3, 0x4

    .line 97
    invoke-virtual {p0, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    .line 98
    goto :goto_2

    .line 101
    :cond_7
    :goto_1
    iget-boolean p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->draggable:Z

    .line 102
    if-nez p3, :cond_8

    .line 104
    return-void

    .line 106
    :cond_8
    aput p5, p6, p1

    .line 107
    neg-int p3, p5

    .line 109
    sget-object p4, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 110
    invoke-virtual {p2, p3}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 112
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    .line 115
    :cond_9
    :goto_2
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 118
    move-result p2

    .line 121
    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->dispatchOnSlide(I)V

    .line 122
    iput p5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->lastNestedScrollDy:I

    .line 125
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->nestedScrolled:Z

    .line 127
    return-void
    .line 129
.end method

.method public final onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III[I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onRestoreInstanceState(Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 5

    .line 1
    check-cast p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;

    .line 2
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->saveFlags:I

    .line 4
    const/4 v0, 0x4

    .line 6
    const/4 v1, 0x2

    .line 7
    const/4 v2, 0x1

    .line 8
    if-nez p1, :cond_0

    .line 9
    goto :goto_0

    .line 11
    :cond_0
    const/4 v3, -0x1

    .line 12
    if-eq p1, v3, :cond_1

    .line 13
    and-int/lit8 v4, p1, 0x1

    .line 15
    if-ne v4, v2, :cond_2

    .line 17
    :cond_1
    iget v4, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->peekHeight:I

    .line 19
    iput v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeight:I

    .line 21
    :cond_2
    if-eq p1, v3, :cond_3

    .line 23
    and-int/lit8 v4, p1, 0x2

    .line 25
    if-ne v4, v1, :cond_4

    .line 27
    :cond_3
    iget-boolean v4, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->fitToContents:Z

    .line 29
    iput-boolean v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    .line 31
    :cond_4
    if-eq p1, v3, :cond_5

    .line 33
    and-int/lit8 v4, p1, 0x4

    .line 35
    if-ne v4, v0, :cond_6

    .line 37
    :cond_5
    iget-boolean v4, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->hideable:Z

    .line 39
    iput-boolean v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    .line 41
    :cond_6
    if-eq p1, v3, :cond_7

    .line 43
    const/16 v3, 0x8

    .line 45
    and-int/2addr p1, v3

    .line 47
    if-ne p1, v3, :cond_8

    .line 48
    :cond_7
    iget-boolean p1, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->skipCollapsed:Z

    .line 50
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->skipCollapsed:Z

    .line 52
    :cond_8
    :goto_0
    iget p1, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->state:I

    .line 54
    if-eq p1, v2, :cond_a

    .line 56
    if-ne p1, v1, :cond_9

    .line 58
    goto :goto_1

    .line 60
    :cond_9
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    .line 61
    goto :goto_2

    .line 63
    :cond_a
    :goto_1
    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    .line 64
    :goto_2
    return-void
.end method

.method public final onSaveInstanceState(Landroid/view/View;)Landroid/os/Parcelable;
    .locals 1

    .line 1
    new-instance p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;

    .line 2
    sget-object v0, Landroid/view/View$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    .line 4
    invoke-direct {p1, v0, p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;-><init>(Landroid/os/Parcelable;Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    .line 6
    return-object p1
    .line 9
.end method

.method public final onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->lastNestedScrollDy:I

    .line 3
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->nestedScrolled:Z

    .line 5
    and-int/lit8 p0, p5, 0x2

    .line 7
    if-eqz p0, :cond_0

    .line 9
    const/4 p1, 0x1

    .line 11
    :cond_0
    return p1
    .line 12
.end method

.method public final onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 2
    move-result p1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    .line 6
    move-result p4

    .line 9
    const/4 v0, 0x3

    .line 10
    if-ne p1, p4, :cond_0

    .line 11
    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    .line 13
    return-void

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    .line 17
    if-eqz p1, :cond_d

    .line 19
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 21
    move-result-object p1

    .line 24
    if-ne p3, p1, :cond_d

    .line 25
    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->nestedScrolled:Z

    .line 27
    if-nez p1, :cond_1

    .line 29
    goto/16 :goto_4

    .line 31
    :cond_1
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->lastNestedScrollDy:I

    .line 33
    if-lez p1, :cond_3

    .line 35
    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    .line 37
    if-eqz p1, :cond_2

    .line 39
    goto/16 :goto_3

    .line 41
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 43
    move-result p1

    .line 46
    iget p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    .line 47
    if-le p1, p3, :cond_c

    .line 49
    goto/16 :goto_1

    .line 51
    :cond_3
    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    .line 53
    if-eqz p1, :cond_5

    .line 55
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    .line 57
    if-nez p1, :cond_4

    .line 59
    const/4 p1, 0x0

    .line 61
    goto :goto_0

    .line 62
    :cond_4
    const/16 p3, 0x3e8

    .line 63
    iget p4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->maximumVelocity:F

    .line 65
    invoke-virtual {p1, p3, p4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 67
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    .line 70
    iget p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->activePointerId:I

    .line 72
    invoke-virtual {p1, p3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    .line 74
    move-result p1

    .line 77
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->shouldHide(FLandroid/view/View;)Z

    .line 78
    move-result p1

    .line 81
    if-eqz p1, :cond_5

    .line 82
    const/4 v0, 0x5

    .line 84
    goto :goto_3

    .line 85
    :cond_5
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->lastNestedScrollDy:I

    .line 86
    if-nez p1, :cond_8

    .line 88
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 90
    move-result p1

    .line 93
    iget-boolean p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    .line 94
    if-eqz p3, :cond_6

    .line 96
    iget p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContentsOffset:I

    .line 98
    sub-int p3, p1, p3

    .line 100
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 102
    move-result p3

    .line 105
    iget p4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    .line 106
    sub-int/2addr p1, p4

    .line 108
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 109
    move-result p1

    .line 112
    if-ge p3, p1, :cond_b

    .line 113
    goto :goto_3

    .line 115
    :cond_6
    iget p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    .line 116
    if-ge p1, p3, :cond_7

    .line 118
    iget p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    .line 120
    sub-int p3, p1, p3

    .line 122
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 124
    move-result p3

    .line 127
    if-ge p1, p3, :cond_a

    .line 128
    goto :goto_3

    .line 130
    :cond_7
    sub-int p3, p1, p3

    .line 131
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 133
    move-result p3

    .line 136
    iget p4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    .line 137
    sub-int/2addr p1, p4

    .line 139
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 140
    move-result p1

    .line 143
    if-ge p3, p1, :cond_b

    .line 144
    goto :goto_1

    .line 146
    :cond_8
    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    .line 147
    if-eqz p1, :cond_9

    .line 149
    goto :goto_2

    .line 151
    :cond_9
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 152
    move-result p1

    .line 155
    iget p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    .line 156
    sub-int p3, p1, p3

    .line 158
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 160
    move-result p3

    .line 163
    iget p4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    .line 164
    sub-int/2addr p1, p4

    .line 166
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 167
    move-result p1

    .line 170
    if-ge p3, p1, :cond_b

    .line 171
    :cond_a
    :goto_1
    const/4 v0, 0x6

    .line 173
    goto :goto_3

    .line 174
    :cond_b
    :goto_2
    const/4 v0, 0x4

    .line 175
    :cond_c
    :goto_3
    const/4 p1, 0x0

    .line 176
    invoke-virtual {p0, v0, p2, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->startSettling(ILandroid/view/View;Z)V

    .line 177
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->nestedScrolled:Z

    .line 180
    :cond_d
    :goto_4
    return-void
    .line 182
.end method

.method public final onTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    .line 2
    move-result p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 7
    return v0

    .line 9
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 10
    move-result p1

    .line 13
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    .line 14
    const/4 v2, 0x1

    .line 16
    if-ne v1, v2, :cond_1

    .line 17
    if-nez p1, :cond_1

    .line 19
    return v2

    .line 21
    :cond_1
    iget-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 22
    if-eqz v3, :cond_3

    .line 24
    iget-boolean v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->draggable:Z

    .line 26
    if-nez v4, :cond_2

    .line 28
    if-ne v1, v2, :cond_3

    .line 30
    :cond_2
    move v1, v2

    .line 32
    goto :goto_0

    .line 33
    :cond_3
    move v1, v0

    .line 34
    :goto_0
    if-eqz v1, :cond_4

    .line 35
    invoke-virtual {v3, p3}, Landroidx/customview/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 37
    :cond_4
    if-nez p1, :cond_5

    .line 40
    const/4 v1, -0x1

    .line 42
    iput v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->activePointerId:I

    .line 43
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    .line 45
    if-eqz v1, :cond_5

    .line 47
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 49
    const/4 v1, 0x0

    .line 52
    iput-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    .line 53
    :cond_5
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    .line 55
    if-nez v1, :cond_6

    .line 57
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 59
    move-result-object v1

    .line 62
    iput-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    .line 63
    :cond_6
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    .line 65
    invoke-virtual {v1, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 67
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 70
    if-eqz v1, :cond_8

    .line 72
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->draggable:Z

    .line 74
    if-nez v1, :cond_7

    .line 76
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    .line 78
    if-ne v1, v2, :cond_8

    .line 80
    :cond_7
    move v0, v2

    .line 82
    :cond_8
    if-eqz v0, :cond_9

    .line 83
    const/4 v0, 0x2

    .line 85
    if-ne p1, v0, :cond_9

    .line 86
    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ignoreEvents:Z

    .line 88
    if-nez p1, :cond_9

    .line 90
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->initialY:I

    .line 92
    int-to-float p1, p1

    .line 94
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    .line 95
    move-result v0

    .line 98
    sub-float/2addr p1, v0

    .line 99
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 100
    move-result p1

    .line 103
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 104
    iget v1, v0, Landroidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    .line 106
    int-to-float v1, v1

    .line 108
    cmpl-float p1, p1, v1

    .line 109
    if-lez p1, :cond_9

    .line 111
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 113
    move-result p1

    .line 116
    invoke-virtual {p3, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 117
    move-result p1

    .line 120
    invoke-virtual {v0, p1, p2}, Landroidx/customview/widget/ViewDragHelper;->captureChildView(ILandroid/view/View;)V

    .line 121
    :cond_9
    iget-boolean p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ignoreEvents:Z

    .line 124
    xor-int/2addr p0, v2

    .line 126
    return p0
    .line 127
.end method

.method public final setHideable(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    .line 2
    if-eq v0, p1, :cond_1

    .line 4
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    .line 6
    if-nez p1, :cond_0

    .line 8
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    .line 10
    const/4 v0, 0x5

    .line 12
    if-ne p1, v0, :cond_0

    .line 13
    const/4 p1, 0x4

    .line 15
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updateAccessibilityActions$1()V

    .line 19
    :cond_1
    return-void
    .line 22
.end method

.method public final setPeekHeight(I)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, -0x1

    .line 3
    const/4 v2, 0x1

    .line 4
    if-ne p1, v1, :cond_0

    .line 5
    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightAuto:Z

    .line 7
    if-nez p1, :cond_2

    .line 9
    iput-boolean v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightAuto:Z

    .line 11
    goto :goto_0

    .line 13
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightAuto:Z

    .line 14
    if-nez v1, :cond_1

    .line 16
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeight:I

    .line 18
    if-eq v1, p1, :cond_2

    .line 20
    :cond_1
    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightAuto:Z

    .line 22
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 24
    move-result p1

    .line 27
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeight:I

    .line 28
    :goto_0
    move v0, v2

    .line 30
    :cond_2
    if-eqz v0, :cond_3

    .line 31
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updatePeekHeight()V

    .line 33
    :cond_3
    return-void
    .line 36
.end method

.method public final setState(I)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_7

    .line 3
    const/4 v1, 0x2

    .line 5
    if-ne p1, v1, :cond_0

    .line 6
    goto :goto_4

    .line 8
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    .line 9
    if-nez v1, :cond_1

    .line 11
    const/4 v1, 0x5

    .line 13
    if-ne p1, v1, :cond_1

    .line 14
    const-string p0, "Cannot set state: "

    .line 16
    const-string v0, "BottomSheetBehavior"

    .line 18
    invoke-static {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 20
    return-void

    .line 23
    :cond_1
    const/4 v1, 0x6

    .line 24
    if-ne p1, v1, :cond_2

    .line 25
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    .line 27
    if-eqz v1, :cond_2

    .line 29
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getTopOffsetForState(I)I

    .line 31
    move-result v1

    .line 34
    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContentsOffset:I

    .line 35
    if-gt v1, v2, :cond_2

    .line 37
    const/4 v1, 0x3

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    move v1, p1

    .line 41
    :goto_0
    iget-object v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    .line 42
    if-eqz v2, :cond_6

    .line 44
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 46
    move-result-object v2

    .line 49
    if-nez v2, :cond_3

    .line 50
    goto :goto_2

    .line 52
    :cond_3
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    .line 53
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 55
    move-result-object p1

    .line 58
    check-cast p1, Landroid/view/View;

    .line 59
    new-instance v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;

    .line 61
    invoke-direct {v2, p0, p1, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Landroid/view/View;I)V

    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 66
    move-result-object p0

    .line 69
    if-eqz p0, :cond_4

    .line 70
    invoke-interface {p0}, Landroid/view/ViewParent;->isLayoutRequested()Z

    .line 72
    move-result p0

    .line 75
    if-eqz p0, :cond_4

    .line 76
    sget-object p0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 78
    invoke-static {p1}, Landroidx/core/view/ViewCompat$Api19Impl;->isAttachedToWindow(Landroid/view/View;)Z

    .line 80
    move-result p0

    .line 83
    if-eqz p0, :cond_4

    .line 84
    goto :goto_1

    .line 86
    :cond_4
    const/4 v0, 0x0

    .line 87
    :goto_1
    if-eqz v0, :cond_5

    .line 88
    invoke-virtual {p1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 90
    goto :goto_3

    .line 93
    :cond_5
    invoke-virtual {v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;->run()V

    .line 94
    goto :goto_3

    .line 97
    :cond_6
    :goto_2
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    .line 98
    :goto_3
    return-void

    .line 101
    :cond_7
    :goto_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    .line 104
    const-string v2, "STATE_"

    .line 106
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    if-ne p1, v0, :cond_8

    .line 111
    const-string p1, "DRAGGING"

    .line 113
    goto :goto_5

    .line 115
    :cond_8
    const-string p1, "SETTLING"

    .line 116
    :goto_5
    const-string v0, " should not be set externally."

    .line 118
    invoke-static {v1, p1, v0}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 120
    move-result-object p1

    .line 123
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 124
    throw p0
    .line 127
.end method

.method public final setStateInternal(I)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    .line 2
    if-ne v0, p1, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    .line 7
    const/4 v0, 0x3

    .line 9
    const/4 v1, 0x4

    .line 10
    iget-object v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    .line 11
    if-nez v2, :cond_1

    .line 13
    return-void

    .line 15
    :cond_1
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 16
    move-result-object v2

    .line 19
    check-cast v2, Landroid/view/View;

    .line 20
    if-nez v2, :cond_2

    .line 22
    return-void

    .line 24
    :cond_2
    const/4 v3, 0x0

    .line 25
    if-ne p1, v0, :cond_3

    .line 26
    const/4 v0, 0x1

    .line 28
    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updateImportantForAccessibility(Z)V

    .line 29
    goto :goto_0

    .line 32
    :cond_3
    const/4 v0, 0x6

    .line 33
    if-eq p1, v0, :cond_4

    .line 34
    const/4 v0, 0x5

    .line 36
    if-eq p1, v0, :cond_4

    .line 37
    if-ne p1, v1, :cond_5

    .line 39
    :cond_4
    invoke-virtual {p0, v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updateImportantForAccessibility(Z)V

    .line 41
    :cond_5
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updateDrawableForTargetState(I)V

    .line 44
    :goto_1
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    .line 47
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 49
    move-result v1

    .line 52
    if-ge v3, v1, :cond_6

    .line 53
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 55
    move-result-object v0

    .line 58
    check-cast v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    .line 59
    invoke-virtual {v0, p1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;->onStateChanged(ILandroid/view/View;)V

    .line 61
    add-int/lit8 v3, v3, 0x1

    .line 64
    goto :goto_1

    .line 66
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updateAccessibilityActions$1()V

    .line 67
    return-void
    .line 70
.end method

.method public final shouldHide(FLandroid/view/View;)Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->skipCollapsed:Z

    .line 2
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    return v1

    .line 7
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 8
    move-result v0

    .line 11
    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    .line 12
    const/4 v3, 0x0

    .line 14
    if-ge v0, v2, :cond_1

    .line 15
    return v3

    .line 17
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->calculatePeekHeight()I

    .line 18
    move-result v0

    .line 21
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 22
    move-result p2

    .line 25
    int-to-float p2, p2

    .line 26
    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideFriction:F

    .line 27
    mul-float/2addr p1, v2

    .line 29
    add-float/2addr p1, p2

    .line 30
    iget p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    .line 31
    int-to-float p0, p0

    .line 33
    sub-float/2addr p1, p0

    .line 34
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 35
    move-result p0

    .line 38
    int-to-float p1, v0

    .line 39
    div-float/2addr p0, p1

    .line 40
    const/high16 p1, 0x3f000000    # 0.5f

    .line 41
    cmpl-float p0, p0, p1

    .line 43
    if-lez p0, :cond_2

    .line 45
    goto :goto_0

    .line 47
    :cond_2
    move v1, v3

    .line 48
    :goto_0
    return v1
    .line 49
.end method

.method public final startSettling(ILandroid/view/View;Z)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getTopOffsetForState(I)I

    .line 2
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 6
    if-eqz v1, :cond_1

    .line 8
    if-eqz p3, :cond_0

    .line 10
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    .line 12
    move-result p2

    .line 15
    invoke-virtual {v1, p2, v0}, Landroidx/customview/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    .line 16
    move-result p2

    .line 19
    if-eqz p2, :cond_1

    .line 20
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    .line 23
    move-result p3

    .line 26
    invoke-virtual {v1, p2, p3, v0}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    .line 27
    move-result p2

    .line 30
    if-eqz p2, :cond_1

    .line 31
    :goto_0
    const/4 p2, 0x1

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const/4 p2, 0x0

    .line 35
    :goto_1
    if-eqz p2, :cond_2

    .line 36
    const/4 p2, 0x2

    .line 38
    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    .line 39
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updateDrawableForTargetState(I)V

    .line 42
    iget-object p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->stateSettlingTracker:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$StateSettlingTracker;

    .line 45
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$StateSettlingTracker;->continueSettlingToState(I)V

    .line 47
    goto :goto_2

    .line 50
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    .line 51
    :goto_2
    return-void
    .line 54
.end method

.method public final updateAccessibilityActions$1()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 10
    check-cast v0, Landroid/view/View;

    .line 11
    if-nez v0, :cond_1

    .line 13
    return-void

    .line 15
    :cond_1
    const/high16 v1, 0x80000

    .line 16
    invoke-static {v1, v0}, Landroidx/core/view/ViewCompat;->removeActionWithId(ILandroid/view/View;)V

    .line 18
    const/4 v1, 0x0

    .line 21
    invoke-static {v1, v0}, Landroidx/core/view/ViewCompat;->notifyViewAccessibilityStateChangedIfNeeded(ILandroid/view/View;)V

    .line 22
    const/high16 v2, 0x40000

    .line 25
    invoke-static {v2, v0}, Landroidx/core/view/ViewCompat;->removeActionWithId(ILandroid/view/View;)V

    .line 27
    invoke-static {v1, v0}, Landroidx/core/view/ViewCompat;->notifyViewAccessibilityStateChangedIfNeeded(ILandroid/view/View;)V

    .line 30
    const/high16 v2, 0x100000

    .line 33
    invoke-static {v2, v0}, Landroidx/core/view/ViewCompat;->removeActionWithId(ILandroid/view/View;)V

    .line 35
    invoke-static {v1, v0}, Landroidx/core/view/ViewCompat;->notifyViewAccessibilityStateChangedIfNeeded(ILandroid/view/View;)V

    .line 38
    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->expandHalfwayActionId:I

    .line 41
    const/4 v3, -0x1

    .line 43
    if-eq v2, v3, :cond_2

    .line 44
    invoke-static {v2, v0}, Landroidx/core/view/ViewCompat;->removeActionWithId(ILandroid/view/View;)V

    .line 46
    invoke-static {v1, v0}, Landroidx/core/view/ViewCompat;->notifyViewAccessibilityStateChangedIfNeeded(ILandroid/view/View;)V

    .line 49
    :cond_2
    iget-boolean v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    .line 52
    const/4 v4, 0x0

    .line 54
    const/4 v5, 0x6

    .line 55
    if-nez v2, :cond_d

    .line 56
    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    .line 58
    if-eq v2, v5, :cond_d

    .line 60
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 62
    move-result-object v2

    .line 65
    const v6, 0x7f130213    # @string/bottomsheet_action_expand_halfway 'Expand halfway'

    .line 66
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 69
    move-result-object v10

    .line 72
    new-instance v11, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$5;

    .line 73
    invoke-direct {v11, p0, v5}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$5;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;I)V

    .line 75
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getActionList(Landroid/view/View;)Ljava/util/List;

    .line 78
    move-result-object v2

    .line 81
    move v6, v1

    .line 82
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 83
    move-result v7

    .line 86
    if-ge v6, v7, :cond_4

    .line 87
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 89
    move-result-object v7

    .line 92
    check-cast v7, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 93
    iget-object v7, v7, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->mAction:Ljava/lang/Object;

    .line 95
    check-cast v7, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 97
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getLabel()Ljava/lang/CharSequence;

    .line 99
    move-result-object v7

    .line 102
    invoke-static {v10, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 103
    move-result v7

    .line 106
    if-eqz v7, :cond_3

    .line 107
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 109
    move-result-object v2

    .line 112
    check-cast v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 113
    invoke-virtual {v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    .line 115
    move-result v2

    .line 118
    goto :goto_4

    .line 119
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 120
    goto :goto_0

    .line 122
    :cond_4
    move v7, v1

    .line 123
    move v6, v3

    .line 124
    :goto_1
    sget-object v8, Landroidx/core/view/ViewCompat;->ACCESSIBILITY_ACTIONS_RESOURCE_IDS:[I

    .line 125
    array-length v9, v8

    .line 127
    if-ge v7, v9, :cond_8

    .line 128
    if-ne v6, v3, :cond_8

    .line 130
    aget v8, v8, v7

    .line 132
    const/4 v9, 0x1

    .line 134
    move v12, v1

    .line 135
    move v13, v9

    .line 136
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 137
    move-result v14

    .line 140
    if-ge v12, v14, :cond_6

    .line 141
    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 143
    move-result-object v14

    .line 146
    check-cast v14, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 147
    invoke-virtual {v14}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    .line 149
    move-result v14

    .line 152
    if-eq v14, v8, :cond_5

    .line 153
    move v14, v9

    .line 155
    goto :goto_3

    .line 156
    :cond_5
    move v14, v1

    .line 157
    :goto_3
    and-int/2addr v13, v14

    .line 158
    add-int/lit8 v12, v12, 0x1

    .line 159
    goto :goto_2

    .line 161
    :cond_6
    if-eqz v13, :cond_7

    .line 162
    move v6, v8

    .line 164
    :cond_7
    add-int/lit8 v7, v7, 0x1

    .line 165
    goto :goto_1

    .line 167
    :cond_8
    move v2, v6

    .line 168
    :goto_4
    if-eq v2, v3, :cond_c

    .line 169
    new-instance v3, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 171
    const/4 v8, 0x0

    .line 173
    const/4 v12, 0x0

    .line 174
    move-object v7, v3

    .line 175
    move v9, v2

    .line 176
    invoke-direct/range {v7 .. v12}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(Ljava/lang/Object;ILjava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;Ljava/lang/Class;)V

    .line 177
    invoke-static {v0}, Landroidx/core/view/ViewCompat$Api29Impl;->getAccessibilityDelegate(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    .line 180
    move-result-object v6

    .line 183
    if-nez v6, :cond_9

    .line 184
    move-object v6, v4

    .line 186
    goto :goto_5

    .line 187
    :cond_9
    instance-of v7, v6, Landroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;

    .line 188
    if-eqz v7, :cond_a

    .line 190
    check-cast v6, Landroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;

    .line 192
    iget-object v6, v6, Landroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;->mCompat:Landroidx/core/view/AccessibilityDelegateCompat;

    .line 194
    goto :goto_5

    .line 196
    :cond_a
    new-instance v7, Landroidx/core/view/AccessibilityDelegateCompat;

    .line 197
    invoke-direct {v7, v6}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>(Landroid/view/View$AccessibilityDelegate;)V

    .line 199
    move-object v6, v7

    .line 202
    :goto_5
    if-nez v6, :cond_b

    .line 203
    new-instance v6, Landroidx/core/view/AccessibilityDelegateCompat;

    .line 205
    invoke-direct {v6}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    .line 207
    :cond_b
    invoke-static {v0, v6}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 210
    invoke-virtual {v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    .line 213
    move-result v6

    .line 216
    invoke-static {v6, v0}, Landroidx/core/view/ViewCompat;->removeActionWithId(ILandroid/view/View;)V

    .line 217
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getActionList(Landroid/view/View;)Ljava/util/List;

    .line 220
    move-result-object v6

    .line 223
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    invoke-static {v1, v0}, Landroidx/core/view/ViewCompat;->notifyViewAccessibilityStateChangedIfNeeded(ILandroid/view/View;)V

    .line 227
    :cond_c
    iput v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->expandHalfwayActionId:I

    .line 230
    :cond_d
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    .line 232
    if-eqz v1, :cond_e

    .line 234
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    .line 236
    const/4 v2, 0x5

    .line 238
    if-eq v1, v2, :cond_e

    .line 239
    sget-object v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_DISMISS:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 241
    new-instance v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$5;

    .line 243
    invoke-direct {v3, p0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$5;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;I)V

    .line 245
    invoke-static {v0, v1, v4, v3}, Landroidx/core/view/ViewCompat;->replaceAccessibilityAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Ljava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V

    .line 248
    :cond_e
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    .line 251
    const/4 v2, 0x4

    .line 253
    const/4 v3, 0x3

    .line 254
    if-eq v1, v3, :cond_12

    .line 255
    if-eq v1, v2, :cond_10

    .line 257
    if-eq v1, v5, :cond_f

    .line 259
    goto :goto_6

    .line 261
    :cond_f
    sget-object v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_COLLAPSE:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 262
    new-instance v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$5;

    .line 264
    invoke-direct {v5, p0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$5;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;I)V

    .line 266
    invoke-static {v0, v1, v4, v5}, Landroidx/core/view/ViewCompat;->replaceAccessibilityAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Ljava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V

    .line 269
    sget-object v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_EXPAND:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 272
    new-instance v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$5;

    .line 274
    invoke-direct {v2, p0, v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$5;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;I)V

    .line 276
    invoke-static {v0, v1, v4, v2}, Landroidx/core/view/ViewCompat;->replaceAccessibilityAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Ljava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V

    .line 279
    goto :goto_6

    .line 282
    :cond_10
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    .line 283
    if-eqz v1, :cond_11

    .line 285
    move v5, v3

    .line 287
    :cond_11
    sget-object v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_EXPAND:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 288
    new-instance v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$5;

    .line 290
    invoke-direct {v2, p0, v5}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$5;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;I)V

    .line 292
    invoke-static {v0, v1, v4, v2}, Landroidx/core/view/ViewCompat;->replaceAccessibilityAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Ljava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V

    .line 295
    goto :goto_6

    .line 298
    :cond_12
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    .line 299
    if-eqz v1, :cond_13

    .line 301
    move v5, v2

    .line 303
    :cond_13
    sget-object v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_COLLAPSE:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 304
    new-instance v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$5;

    .line 306
    invoke-direct {v2, p0, v5}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$5;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;I)V

    .line 308
    invoke-static {v0, v1, v4, v2}, Landroidx/core/view/ViewCompat;->replaceAccessibilityAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Ljava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V

    .line 311
    :goto_6
    return-void
    .line 314
.end method

.method public final updateDrawableForTargetState(I)V
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    return-void

    .line 5
    :cond_0
    const/4 v1, 0x3

    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    if-ne p1, v1, :cond_1

    .line 9
    move p1, v2

    .line 11
    goto :goto_0

    .line 12
    :cond_1
    move p1, v3

    .line 13
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->isShapeExpanded:Z

    .line 14
    if-eq v1, p1, :cond_4

    .line 16
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->isShapeExpanded:Z

    .line 18
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 20
    if-eqz v1, :cond_4

    .line 22
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->interpolatorAnimator:Landroid/animation/ValueAnimator;

    .line 24
    if-eqz v1, :cond_4

    .line 26
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 28
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    iget-object p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->interpolatorAnimator:Landroid/animation/ValueAnimator;

    .line 34
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->reverse()V

    .line 36
    goto :goto_2

    .line 39
    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    .line 40
    if-eqz p1, :cond_3

    .line 42
    const/4 p1, 0x0

    .line 44
    goto :goto_1

    .line 45
    :cond_3
    move p1, v1

    .line 46
    :goto_1
    sub-float/2addr v1, p1

    .line 47
    iget-object v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->interpolatorAnimator:Landroid/animation/ValueAnimator;

    .line 48
    new-array v0, v0, [F

    .line 50
    aput v1, v0, v3

    .line 52
    aput p1, v0, v2

    .line 54
    invoke-virtual {v4, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 56
    iget-object p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->interpolatorAnimator:Landroid/animation/ValueAnimator;

    .line 59
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 61
    :cond_4
    :goto_2
    return-void
    .line 64
.end method

.method public final updateImportantForAccessibility(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 10
    check-cast v0, Landroid/view/View;

    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 13
    move-result-object v0

    .line 16
    instance-of v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 17
    if-nez v1, :cond_1

    .line 19
    return-void

    .line 21
    :cond_1
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 22
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 24
    move-result v1

    .line 27
    if-eqz p1, :cond_3

    .line 28
    iget-object v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    .line 30
    if-nez v2, :cond_2

    .line 32
    new-instance v2, Ljava/util/HashMap;

    .line 34
    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 36
    iput-object v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    .line 39
    goto :goto_0

    .line 41
    :cond_2
    return-void

    .line 42
    :cond_3
    :goto_0
    const/4 v2, 0x0

    .line 43
    :goto_1
    if-ge v2, v1, :cond_6

    .line 44
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 46
    move-result-object v3

    .line 49
    iget-object v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    .line 50
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 52
    move-result-object v4

    .line 55
    if-ne v3, v4, :cond_4

    .line 56
    goto :goto_2

    .line 58
    :cond_4
    if-eqz p1, :cond_5

    .line 59
    iget-object v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    .line 61
    invoke-virtual {v3}, Landroid/view/View;->getImportantForAccessibility()I

    .line 63
    move-result v5

    .line 66
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    move-result-object v5

    .line 70
    check-cast v4, Ljava/util/HashMap;

    .line 71
    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 76
    goto :goto_1

    .line 78
    :cond_6
    if-nez p1, :cond_7

    .line 79
    const/4 p1, 0x0

    .line 81
    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    .line 82
    :cond_7
    return-void
    .line 84
.end method

.method public final updatePeekHeight()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->calculateCollapsedOffset()V

    .line 6
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    .line 9
    const/4 v1, 0x4

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    iget-object p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    .line 14
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 16
    move-result-object p0

    .line 19
    check-cast p0, Landroid/view/View;

    .line 20
    if-eqz p0, :cond_0

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 24
    :cond_0
    return-void
    .line 27
.end method
