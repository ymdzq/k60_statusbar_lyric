.class public final Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;
.super Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mActionPageBackward:Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider$1;

.field public final mActionPageForward:Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider$1;

.field public mAdapterDataObserver:Landroidx/viewpager2/widget/ViewPager2$1;

.field public final synthetic this$0:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method public constructor <init>(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    .line 2
    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;-><init>()V

    .line 4
    new-instance p1, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider$1;

    .line 7
    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, p0, v0}, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider$1;-><init>(Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;I)V

    .line 10
    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->mActionPageForward:Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider$1;

    .line 13
    new-instance p1, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider$1;

    .line 15
    const/4 v0, 0x1

    .line 17
    invoke-direct {p1, p0, v0}, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider$1;-><init>(Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;I)V

    .line 18
    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->mActionPageBackward:Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider$1;

    .line 21
    return-void
    .line 23
.end method


# virtual methods
.method public final onInitialize(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 1
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 2
    const/4 v0, 0x2

    .line 4
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat$Api16Impl;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 5
    new-instance p1, Landroidx/viewpager2/widget/ViewPager2$1;

    .line 8
    const/4 v0, 0x1

    .line 10
    invoke-direct {p1, v0, p0}, Landroidx/viewpager2/widget/ViewPager2$1;-><init>(ILjava/lang/Object;)V

    .line 11
    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->mAdapterDataObserver:Landroidx/viewpager2/widget/ViewPager2$1;

    .line 14
    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    .line 16
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api16Impl;->getImportantForAccessibility(Landroid/view/View;)I

    .line 18
    move-result p1

    .line 21
    if-nez p1, :cond_0

    .line 22
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat$Api16Impl;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 24
    :cond_0
    return-void
    .line 27
.end method

.method public final updatePageAccessibilityActions()V
    .locals 10

    .line 1
    const v0, 0x1020048    # @android:id/accessibilityActionPageLeft

    .line 2
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    .line 5
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->removeActionWithId(ILandroid/view/View;)V

    .line 7
    const/4 v2, 0x0

    .line 10
    invoke-static {v2, v1}, Landroidx/core/view/ViewCompat;->notifyViewAccessibilityStateChangedIfNeeded(ILandroid/view/View;)V

    .line 11
    const v3, 0x1020049    # @android:id/accessibilityActionPageRight

    .line 14
    invoke-static {v3, v1}, Landroidx/core/view/ViewCompat;->removeActionWithId(ILandroid/view/View;)V

    .line 17
    invoke-static {v2, v1}, Landroidx/core/view/ViewCompat;->notifyViewAccessibilityStateChangedIfNeeded(ILandroid/view/View;)V

    .line 20
    const v4, 0x1020046    # @android:id/accessibilityActionPageUp

    .line 23
    invoke-static {v4, v1}, Landroidx/core/view/ViewCompat;->removeActionWithId(ILandroid/view/View;)V

    .line 26
    invoke-static {v2, v1}, Landroidx/core/view/ViewCompat;->notifyViewAccessibilityStateChangedIfNeeded(ILandroid/view/View;)V

    .line 29
    const v5, 0x1020047    # @android:id/accessibilityActionPageDown

    .line 32
    invoke-static {v5, v1}, Landroidx/core/view/ViewCompat;->removeActionWithId(ILandroid/view/View;)V

    .line 35
    invoke-static {v2, v1}, Landroidx/core/view/ViewCompat;->notifyViewAccessibilityStateChangedIfNeeded(ILandroid/view/View;)V

    .line 38
    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 41
    move-result-object v6

    .line 44
    if-nez v6, :cond_0

    .line 45
    return-void

    .line 47
    :cond_0
    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 48
    move-result-object v6

    .line 51
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 52
    move-result v6

    .line 55
    if-nez v6, :cond_1

    .line 56
    return-void

    .line 58
    :cond_1
    iget-boolean v7, v1, Landroidx/viewpager2/widget/ViewPager2;->mUserInputEnabled:Z

    .line 59
    if-nez v7, :cond_2

    .line 61
    return-void

    .line 63
    :cond_2
    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getOrientation()I

    .line 64
    move-result v7

    .line 67
    iget-object v8, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->mActionPageBackward:Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider$1;

    .line 68
    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->mActionPageForward:Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider$1;

    .line 70
    const/4 v9, 0x0

    .line 72
    if-nez v7, :cond_7

    .line 73
    iget-object v4, v1, Landroidx/viewpager2/widget/ViewPager2;->mLayoutManager:Landroidx/viewpager2/widget/ViewPager2$LinearLayoutManagerImpl;

    .line 75
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    .line 77
    move-result v4

    .line 80
    const/4 v5, 0x1

    .line 81
    if-ne v4, v5, :cond_3

    .line 82
    move v2, v5

    .line 84
    :cond_3
    if-eqz v2, :cond_4

    .line 85
    move v4, v0

    .line 87
    goto :goto_0

    .line 88
    :cond_4
    move v4, v3

    .line 89
    :goto_0
    if-eqz v2, :cond_5

    .line 90
    move v0, v3

    .line 92
    :cond_5
    iget v2, v1, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItem:I

    .line 93
    add-int/lit8 v6, v6, -0x1

    .line 95
    if-ge v2, v6, :cond_6

    .line 97
    new-instance v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 99
    invoke-direct {v2, v4, v9}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    .line 101
    invoke-static {v1, v2, v9, p0}, Landroidx/core/view/ViewCompat;->replaceAccessibilityAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Ljava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V

    .line 104
    :cond_6
    iget p0, v1, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItem:I

    .line 107
    if-lez p0, :cond_9

    .line 109
    new-instance p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 111
    invoke-direct {p0, v0, v9}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    .line 113
    invoke-static {v1, p0, v9, v8}, Landroidx/core/view/ViewCompat;->replaceAccessibilityAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Ljava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V

    .line 116
    goto :goto_1

    .line 119
    :cond_7
    iget v0, v1, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItem:I

    .line 120
    add-int/lit8 v6, v6, -0x1

    .line 122
    if-ge v0, v6, :cond_8

    .line 124
    new-instance v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 126
    invoke-direct {v0, v5, v9}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    .line 128
    invoke-static {v1, v0, v9, p0}, Landroidx/core/view/ViewCompat;->replaceAccessibilityAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Ljava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V

    .line 131
    :cond_8
    iget p0, v1, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItem:I

    .line 134
    if-lez p0, :cond_9

    .line 136
    new-instance p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 138
    invoke-direct {p0, v4, v9}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    .line 140
    invoke-static {v1, p0, v9, v8}, Landroidx/core/view/ViewCompat;->replaceAccessibilityAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Ljava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V

    .line 143
    :cond_9
    :goto_1
    return-void
    .line 146
.end method
