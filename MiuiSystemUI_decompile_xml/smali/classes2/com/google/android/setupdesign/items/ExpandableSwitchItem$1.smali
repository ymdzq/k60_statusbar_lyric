.class public final Lcom/google/android/setupdesign/items/ExpandableSwitchItem$1;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/google/android/setupdesign/items/ExpandableSwitchItem;


# direct methods
.method public constructor <init>(Lcom/google/android/setupdesign/items/ExpandableSwitchItem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem$1;->this$0:Lcom/google/android/setupdesign/items/ExpandableSwitchItem;

    .line 2
    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 2
    iget-object p0, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem$1;->this$0:Lcom/google/android/setupdesign/items/ExpandableSwitchItem;

    .line 5
    iget-boolean p0, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->isExpanded:Z

    .line 7
    if-eqz p0, :cond_0

    .line 9
    sget-object p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_COLLAPSE:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 11
    goto :goto_0

    .line 13
    :cond_0
    sget-object p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_EXPAND:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 14
    :goto_0
    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 16
    return-void
    .line 19
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .line 1
    const/high16 v0, 0x40000

    .line 2
    if-eq p2, v0, :cond_0

    .line 4
    const/high16 v0, 0x80000

    .line 6
    if-eq p2, v0, :cond_0

    .line 8
    invoke-super {p0, p1, p2, p3}, Landroidx/core/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 10
    move-result p0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget-object p0, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem$1;->this$0:Lcom/google/android/setupdesign/items/ExpandableSwitchItem;

    .line 15
    iget-boolean p1, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->isExpanded:Z

    .line 17
    xor-int/lit8 p2, p1, 0x1

    .line 19
    const/4 p3, 0x1

    .line 21
    if-ne p1, p2, :cond_1

    .line 22
    goto :goto_0

    .line 24
    :cond_1
    iput-boolean p2, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->isExpanded:Z

    .line 25
    const/4 p1, 0x0

    .line 27
    invoke-virtual {p0, p1, p3}, Lcom/google/android/setupdesign/items/AbstractItemHierarchy;->notifyItemRangeChanged(II)V

    .line 28
    :goto_0
    move p0, p3

    .line 31
    :goto_1
    return p0
    .line 32
.end method
