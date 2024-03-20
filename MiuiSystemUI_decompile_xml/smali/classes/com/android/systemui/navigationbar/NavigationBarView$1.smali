.class public final Lcom/android/systemui/navigationbar/NavigationBarView$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mToggleOverviewAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

.field public final synthetic this$0:Lcom/android/systemui/navigationbar/NavigationBarView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/NavigationBarView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView$1;->this$0:Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 2
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView$1;->mToggleOverviewAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 5
    if-nez p1, :cond_0

    .line 7
    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 9
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView$1;->this$0:Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 11
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 13
    move-result-object v0

    .line 16
    const v1, 0x7f130a19    # @string/quick_step_accessibility_toggle_overview 'Toggle Overview'

    .line 17
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 23
    const v1, 0x7f0a0090    # @id/action_toggle_overview

    .line 24
    invoke-direct {p1, v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 27
    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView$1;->mToggleOverviewAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 30
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView$1;->mToggleOverviewAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 32
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 34
    return-void
    .line 37
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .line 1
    const v0, 0x7f0a0090    # @id/action_toggle_overview

    .line 2
    if-ne p2, v0, :cond_0

    .line 5
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView$1;->this$0:Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 7
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRecentsOptional:Ljava/util/Optional;

    .line 9
    new-instance p1, Lcom/android/systemui/navigationbar/NavigationBarView$1$$ExternalSyntheticLambda0;

    .line 11
    invoke-direct {p1}, Lcom/android/systemui/navigationbar/NavigationBarView$1$$ExternalSyntheticLambda0;-><init>()V

    .line 13
    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 16
    const/4 p0, 0x1

    .line 19
    return p0

    .line 20
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 21
    move-result p0

    .line 24
    return p0
    .line 25
.end method
