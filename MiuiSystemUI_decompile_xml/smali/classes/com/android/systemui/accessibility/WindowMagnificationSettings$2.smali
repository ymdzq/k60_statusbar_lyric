.class public final Lcom/android/systemui/accessibility/WindowMagnificationSettings$2;
.super Landroid/view/View$AccessibilityDelegate;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/accessibility/WindowMagnificationSettings;


# direct methods
.method public constructor <init>(Lcom/android/systemui/accessibility/WindowMagnificationSettings;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings$2;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationSettings;

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
    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 5
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings$2;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationSettings;

    .line 7
    iget-object v0, v0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mContext:Landroid/content/Context;

    .line 9
    const v1, 0x7f130060    # @string/accessibility_control_move_up 'Move up'

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 17
    const v1, 0x7f0a0024    # @id/accessibility_action_move_up

    .line 18
    invoke-direct {p1, v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 21
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 24
    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 27
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings$2;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationSettings;

    .line 29
    iget-object v0, v0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mContext:Landroid/content/Context;

    .line 31
    const v1, 0x7f13005d    # @string/accessibility_control_move_down 'Move down'

    .line 33
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 39
    const v1, 0x7f0a0021    # @id/accessibility_action_move_down

    .line 40
    invoke-direct {p1, v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 43
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 46
    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 49
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings$2;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationSettings;

    .line 51
    iget-object v0, v0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mContext:Landroid/content/Context;

    .line 53
    const v1, 0x7f13005e    # @string/accessibility_control_move_left 'Move left'

    .line 55
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 61
    const v1, 0x7f0a0022    # @id/accessibility_action_move_left

    .line 62
    invoke-direct {p1, v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 65
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 68
    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 71
    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings$2;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationSettings;

    .line 73
    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mContext:Landroid/content/Context;

    .line 75
    const v0, 0x7f13005f    # @string/accessibility_control_move_right 'Move right'

    .line 77
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 80
    move-result-object p0

    .line 83
    const v0, 0x7f0a0023    # @id/accessibility_action_move_right

    .line 84
    invoke-direct {p1, v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 87
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 90
    return-void
    .line 93
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings$2;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationSettings;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mWindowManager:Landroid/view/WindowManager;

    .line 4
    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    .line 6
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    .line 10
    move-result-object v0

    .line 13
    const/4 v1, 0x1

    .line 14
    const v2, 0x7f0a0024    # @id/accessibility_action_move_up

    .line 15
    const/4 v3, 0x0

    .line 18
    if-ne p2, v2, :cond_0

    .line 19
    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings$2;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationSettings;

    .line 21
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 23
    move-result v0

    .line 26
    neg-int v0, v0

    .line 27
    int-to-float v0, v0

    .line 28
    invoke-virtual {v2, v3, v0}, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->moveButton(FF)V

    .line 29
    goto :goto_0

    .line 32
    :cond_0
    const v2, 0x7f0a0021    # @id/accessibility_action_move_down

    .line 33
    if-ne p2, v2, :cond_1

    .line 36
    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings$2;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationSettings;

    .line 38
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 40
    move-result v0

    .line 43
    int-to-float v0, v0

    .line 44
    invoke-virtual {v2, v3, v0}, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->moveButton(FF)V

    .line 45
    goto :goto_0

    .line 48
    :cond_1
    const v2, 0x7f0a0022    # @id/accessibility_action_move_left

    .line 49
    if-ne p2, v2, :cond_2

    .line 52
    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings$2;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationSettings;

    .line 54
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 56
    move-result v0

    .line 59
    neg-int v0, v0

    .line 60
    int-to-float v0, v0

    .line 61
    invoke-virtual {v2, v0, v3}, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->moveButton(FF)V

    .line 62
    goto :goto_0

    .line 65
    :cond_2
    const v2, 0x7f0a0023    # @id/accessibility_action_move_right

    .line 66
    if-ne p2, v2, :cond_3

    .line 69
    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings$2;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationSettings;

    .line 71
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 73
    move-result v0

    .line 76
    int-to-float v0, v0

    .line 77
    invoke-virtual {v2, v0, v3}, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->moveButton(FF)V

    .line 78
    :goto_0
    move v0, v1

    .line 81
    goto :goto_1

    .line 82
    :cond_3
    const/4 v0, 0x0

    .line 83
    :goto_1
    if-eqz v0, :cond_4

    .line 84
    return v1

    .line 86
    :cond_4
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 87
    move-result p0

    .line 90
    return p0
    .line 91
.end method
