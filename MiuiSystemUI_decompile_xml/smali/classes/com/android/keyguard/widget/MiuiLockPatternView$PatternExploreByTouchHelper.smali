.class public final Lcom/android/keyguard/widget/MiuiLockPatternView$PatternExploreByTouchHelper;
.super Lcom/android/internal/widget/ExploreByTouchHelper;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mItems:Landroid/util/SparseArray;

.field public final mTempRect:Landroid/graphics/Rect;

.field public final synthetic this$0:Lcom/android/keyguard/widget/MiuiLockPatternView;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/widget/MiuiLockPatternView;Landroid/view/View;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/keyguard/widget/MiuiLockPatternView;

    .line 2
    invoke-direct {p0, p2}, Lcom/android/internal/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    .line 4
    new-instance p1, Landroid/graphics/Rect;

    .line 7
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$PatternExploreByTouchHelper;->mTempRect:Landroid/graphics/Rect;

    .line 12
    new-instance p1, Landroid/util/SparseArray;

    .line 14
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$PatternExploreByTouchHelper;->mItems:Landroid/util/SparseArray;

    .line 19
    const/4 p1, 0x1

    .line 21
    :goto_0
    const/16 p2, 0xa

    .line 22
    if-ge p1, p2, :cond_0

    .line 24
    iget-object p2, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$PatternExploreByTouchHelper;->mItems:Landroid/util/SparseArray;

    .line 26
    new-instance v0, Lcom/android/keyguard/widget/MiuiLockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;

    .line 28
    invoke-virtual {p0, p1}, Lcom/android/keyguard/widget/MiuiLockPatternView$PatternExploreByTouchHelper;->getTextForVirtualView(I)Ljava/lang/CharSequence;

    .line 30
    move-result-object v1

    .line 33
    invoke-direct {v0, v1}, Lcom/android/keyguard/widget/MiuiLockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;-><init>(Ljava/lang/CharSequence;)V

    .line 34
    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 37
    add-int/lit8 p1, p1, 0x1

    .line 40
    goto :goto_0

    .line 42
    :cond_0
    return-void
    .line 43
.end method


# virtual methods
.method public final getTextForVirtualView(I)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/keyguard/widget/MiuiLockPatternView;

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object p0

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object p1

    .line 11
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 15
    const v0, 0x7f1306a5    # @string/lockscreen_access_pattern_cell_added_verbose 'Cell %1$s added'

    .line 16
    invoke-virtual {p0, v0, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 22
    return-object p0
    .line 23
.end method

.method public final getVirtualViewAt(FF)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/keyguard/widget/MiuiLockPatternView;

    .line 2
    sget v1, Lcom/android/keyguard/widget/MiuiLockPatternView;->$r8$clinit:I

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/widget/MiuiLockPatternView;->detectCellHit(FF)Lcom/android/keyguard/widget/MiuiLockPatternView$Cell;

    .line 6
    move-result-object p1

    .line 9
    const/high16 p2, -0x80000000

    .line 10
    if-nez p1, :cond_0

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/keyguard/widget/MiuiLockPatternView;

    .line 15
    iget-object p0, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mPatternDrawLookup:[[Z

    .line 17
    iget v0, p1, Lcom/android/keyguard/widget/MiuiLockPatternView$Cell;->row:I

    .line 19
    aget-object p0, p0, v0

    .line 21
    iget p1, p1, Lcom/android/keyguard/widget/MiuiLockPatternView$Cell;->column:I

    .line 23
    aget-boolean p0, p0, p1

    .line 25
    mul-int/lit8 v0, v0, 0x3

    .line 27
    add-int/2addr v0, p1

    .line 29
    add-int/lit8 v0, v0, 0x1

    .line 30
    if-eqz p0, :cond_1

    .line 32
    move p2, v0

    .line 34
    :cond_1
    :goto_0
    return p2
    .line 35
.end method

.method public final getVisibleVirtualViews(Landroid/util/IntArray;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/keyguard/widget/MiuiLockPatternView;

    .line 2
    iget-boolean p0, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mPatternInProgress:Z

    .line 4
    if-nez p0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    const/4 p0, 0x1

    .line 9
    :goto_0
    const/16 v0, 0xa

    .line 10
    if-ge p0, v0, :cond_1

    .line 12
    invoke-virtual {p1, p0}, Landroid/util/IntArray;->add(I)V

    .line 14
    add-int/lit8 p0, p0, 0x1

    .line 17
    goto :goto_0

    .line 19
    :cond_1
    return-void
    .line 20
.end method

.method public final onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 0

    .line 1
    const/16 p3, 0x10

    .line 2
    if-eq p2, p3, :cond_0

    .line 4
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ExploreByTouchHelper;->invalidateVirtualView(I)V

    .line 8
    const/4 p2, 0x1

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 12
    return p2
    .line 15
.end method

.method public final onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/ExploreByTouchHelper;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    iget-object p0, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/keyguard/widget/MiuiLockPatternView;

    .line 5
    iget-boolean p1, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mPatternInProgress:Z

    .line 7
    if-nez p1, :cond_0

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    move-result-object p0

    .line 14
    const p1, 0x1040558    # @android:string/mediasize_japanese_hagaki

    .line 15
    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 18
    move-result-object p0

    .line 21
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 22
    :cond_0
    return-void
    .line 25
.end method

.method public final onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$PatternExploreByTouchHelper;->mItems:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/keyguard/widget/MiuiLockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;

    .line 8
    if-eqz p0, :cond_0

    .line 10
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    .line 12
    move-result-object p1

    .line 15
    iget-object p0, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;->description:Ljava/lang/CharSequence;

    .line 16
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    :cond_0
    return-void
    .line 21
.end method

.method public final onPopulateNodeForVirtualView(ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/keyguard/widget/MiuiLockPatternView$PatternExploreByTouchHelper;->getTextForVirtualView(I)Ljava/lang/CharSequence;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/keyguard/widget/MiuiLockPatternView$PatternExploreByTouchHelper;->getTextForVirtualView(I)Ljava/lang/CharSequence;

    .line 9
    move-result-object v0

    .line 12
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v0, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/keyguard/widget/MiuiLockPatternView;

    .line 16
    iget-boolean v0, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mPatternInProgress:Z

    .line 18
    const/4 v1, 0x3

    .line 20
    if-eqz v0, :cond_2

    .line 21
    const/4 v0, 0x1

    .line 23
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    .line 24
    const/4 v2, 0x0

    .line 27
    const/high16 v3, -0x80000000

    .line 28
    if-eq p1, v3, :cond_0

    .line 30
    add-int/lit8 v4, p1, -0x1

    .line 32
    div-int/lit8 v5, v4, 0x3

    .line 34
    rem-int/2addr v4, v1

    .line 36
    if-ge v5, v1, :cond_0

    .line 37
    iget-object v6, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/keyguard/widget/MiuiLockPatternView;

    .line 39
    iget-object v6, v6, Lcom/android/keyguard/widget/MiuiLockPatternView;->mPatternDrawLookup:[[Z

    .line 41
    aget-object v5, v6, v5

    .line 43
    aget-boolean v4, v5, v4

    .line 45
    xor-int/2addr v4, v0

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    move v4, v2

    .line 49
    :goto_0
    if-eqz v4, :cond_2

    .line 50
    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 52
    invoke-virtual {p2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 54
    if-eq p1, v3, :cond_1

    .line 57
    add-int/lit8 v3, p1, -0x1

    .line 59
    div-int/lit8 v4, v3, 0x3

    .line 61
    rem-int/2addr v3, v1

    .line 63
    if-ge v4, v1, :cond_1

    .line 64
    iget-object v2, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/keyguard/widget/MiuiLockPatternView;

    .line 66
    iget-object v2, v2, Lcom/android/keyguard/widget/MiuiLockPatternView;->mPatternDrawLookup:[[Z

    .line 68
    aget-object v2, v2, v4

    .line 70
    aget-boolean v2, v2, v3

    .line 72
    xor-int/2addr v2, v0

    .line 74
    :cond_1
    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 75
    :cond_2
    add-int/lit8 p1, p1, -0x1

    .line 78
    iget-object v0, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$PatternExploreByTouchHelper;->mTempRect:Landroid/graphics/Rect;

    .line 80
    div-int/lit8 v2, p1, 0x3

    .line 82
    rem-int/2addr p1, v1

    .line 84
    iget-object v1, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/keyguard/widget/MiuiLockPatternView;

    .line 85
    sget v3, Lcom/android/keyguard/widget/MiuiLockPatternView;->$r8$clinit:I

    .line 87
    invoke-virtual {v1, p1}, Lcom/android/keyguard/widget/MiuiLockPatternView;->getCenterXForColumn(I)F

    .line 89
    move-result p1

    .line 92
    iget-object v1, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/keyguard/widget/MiuiLockPatternView;

    .line 93
    invoke-virtual {v1, v2}, Lcom/android/keyguard/widget/MiuiLockPatternView;->getCenterYForRow(I)F

    .line 95
    move-result v1

    .line 98
    iget-object p0, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/keyguard/widget/MiuiLockPatternView;

    .line 99
    iget p0, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mDotHitRadius:F

    .line 101
    sub-float v2, p1, p0

    .line 103
    float-to-int v2, v2

    .line 105
    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 106
    add-float/2addr p1, p0

    .line 108
    float-to-int p1, p1

    .line 109
    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 110
    sub-float p1, v1, p0

    .line 112
    float-to-int p1, p1

    .line 114
    iput p1, v0, Landroid/graphics/Rect;->top:I

    .line 115
    add-float/2addr v1, p0

    .line 117
    float-to-int p0, v1

    .line 118
    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    .line 119
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 121
    return-void
    .line 124
.end method
