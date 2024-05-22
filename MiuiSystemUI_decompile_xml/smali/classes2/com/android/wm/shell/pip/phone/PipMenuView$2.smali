.class public final Lcom/android/wm/shell/pip/phone/PipMenuView$2;
.super Landroid/view/View$AccessibilityDelegate;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/pip/phone/PipMenuView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/pip/phone/PipMenuView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView$2;->this$0:Lcom/android/wm/shell/pip/phone/PipMenuView;

    .line 2
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView$2;->this$0:Lcom/android/wm/shell/pip/phone/PipMenuView;

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 7
    move-result-object p0

    .line 10
    const p1, 0x7f1308e9    # @string/pip_menu_title 'Menu'

    .line 11
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 17
    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 18
    const/16 v0, 0x10

    .line 20
    invoke-direct {p1, v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 22
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 25
    return-void
    .line 28
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 3

    .line 1
    const/16 v0, 0x10

    .line 2
    if-ne p2, v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView$2;->this$0:Lcom/android/wm/shell/pip/phone/PipMenuView;

    .line 6
    iget v1, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuState:I

    .line 8
    const/4 v2, 0x1

    .line 10
    if-eq v1, v2, :cond_0

    .line 11
    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    .line 13
    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mListeners:Ljava/util/ArrayList;

    .line 15
    new-instance v1, Lcom/android/wm/shell/pip/phone/PhonePipMenuController$$ExternalSyntheticLambda2;

    .line 17
    invoke-direct {v1, v2}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController$$ExternalSyntheticLambda2;-><init>(I)V

    .line 19
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 22
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 25
    move-result p0

    .line 28
    return p0
    .line 29
.end method
