.class Landroidx/viewpager/widget/OriginalViewPager$MyAccessibilityDelegate;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "OriginalViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager/widget/OriginalViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAccessibilityDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/viewpager/widget/OriginalViewPager;


# direct methods
.method constructor <init>(Landroidx/viewpager/widget/OriginalViewPager;)V
    .locals 0

    .line 3073
    iput-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager$MyAccessibilityDelegate;->this$0:Landroidx/viewpager/widget/OriginalViewPager;

    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method

.method private canScroll()Z
    .locals 1

    .line 3123
    iget-object p0, p0, Landroidx/viewpager/widget/OriginalViewPager$MyAccessibilityDelegate;->this$0:Landroidx/viewpager/widget/OriginalViewPager;

    iget-object p0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 3077
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 3078
    const-class p1, Landroidx/viewpager/widget/OriginalViewPager;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 3079
    invoke-direct {p0}, Landroidx/viewpager/widget/OriginalViewPager$MyAccessibilityDelegate;->canScroll()Z

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 3080
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result p1

    const/16 v0, 0x1000

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager$MyAccessibilityDelegate;->this$0:Landroidx/viewpager/widget/OriginalViewPager;

    iget-object p1, p1, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz p1, :cond_0

    .line 3081
    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 3082
    iget-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager$MyAccessibilityDelegate;->this$0:Landroidx/viewpager/widget/OriginalViewPager;

    iget p1, p1, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 3083
    iget-object p0, p0, Landroidx/viewpager/widget/OriginalViewPager$MyAccessibilityDelegate;->this$0:Landroidx/viewpager/widget/OriginalViewPager;

    iget p0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1

    .line 3089
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 3090
    const-class p1, Landroidx/viewpager/widget/OriginalViewPager;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 3091
    invoke-direct {p0}, Landroidx/viewpager/widget/OriginalViewPager$MyAccessibilityDelegate;->canScroll()Z

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 3092
    iget-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager$MyAccessibilityDelegate;->this$0:Landroidx/viewpager/widget/OriginalViewPager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/OriginalViewPager;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x1000

    .line 3093
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 3095
    :cond_0
    iget-object p0, p0, Landroidx/viewpager/widget/OriginalViewPager$MyAccessibilityDelegate;->this$0:Landroidx/viewpager/widget/OriginalViewPager;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/OriginalViewPager;->canScrollHorizontally(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x2000

    .line 3096
    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    :cond_1
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .line 3102
    invoke-super {p0, p1, p2, p3}, Landroidx/core/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_0

    return p3

    :cond_0
    const/16 p1, 0x1000

    const/4 v0, 0x0

    if-eq p2, p1, :cond_3

    const/16 p1, 0x2000

    if-eq p2, p1, :cond_1

    return v0

    .line 3113
    :cond_1
    iget-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager$MyAccessibilityDelegate;->this$0:Landroidx/viewpager/widget/OriginalViewPager;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/OriginalViewPager;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3114
    iget-object p0, p0, Landroidx/viewpager/widget/OriginalViewPager$MyAccessibilityDelegate;->this$0:Landroidx/viewpager/widget/OriginalViewPager;

    iget p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    sub-int/2addr p1, p3

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/OriginalViewPager;->setCurrentItem(I)V

    return p3

    :cond_2
    return v0

    .line 3107
    :cond_3
    iget-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager$MyAccessibilityDelegate;->this$0:Landroidx/viewpager/widget/OriginalViewPager;

    invoke-virtual {p1, p3}, Landroidx/viewpager/widget/OriginalViewPager;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 3108
    iget-object p0, p0, Landroidx/viewpager/widget/OriginalViewPager$MyAccessibilityDelegate;->this$0:Landroidx/viewpager/widget/OriginalViewPager;

    iget p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    add-int/2addr p1, p3

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/OriginalViewPager;->setCurrentItem(I)V

    return p3

    :cond_4
    return v0
.end method
