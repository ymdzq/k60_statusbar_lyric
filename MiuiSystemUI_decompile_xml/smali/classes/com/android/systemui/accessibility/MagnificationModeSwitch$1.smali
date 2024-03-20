.class public final Lcom/android/systemui/accessibility/MagnificationModeSwitch$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/accessibility/MagnificationModeSwitch;


# direct methods
.method public constructor <init>(Lcom/android/systemui/accessibility/MagnificationModeSwitch;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch$1;->this$0:Lcom/android/systemui/accessibility/MagnificationModeSwitch;

    .line 2
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    iget-object p1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch$1;->this$0:Lcom/android/systemui/accessibility/MagnificationModeSwitch;

    .line 5
    iget v0, p1, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mMagnificationMode:I

    .line 7
    const/4 v1, 0x2

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    const v0, 0x7f1306c6    # @string/magnification_mode_switch_state_window 'Magnify part of screen'

    .line 12
    goto :goto_0

    .line 15
    :cond_0
    const v0, 0x7f1306c5    # @string/magnification_mode_switch_state_full_screen 'Magnify full screen'

    .line 16
    :goto_0
    iget-object p1, p1, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mContext:Landroid/content/Context;

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 21
    move-result-object p1

    .line 24
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 28
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setStateDescription(Ljava/lang/CharSequence;)V

    .line 29
    iget-object p1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch$1;->this$0:Lcom/android/systemui/accessibility/MagnificationModeSwitch;

    .line 32
    iget-object p1, p1, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mContext:Landroid/content/Context;

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 36
    move-result-object p1

    .line 39
    const v0, 0x7f1306c4    # @string/magnification_mode_switch_description 'Magnification switch'

    .line 40
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 43
    move-result-object p1

    .line 46
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 47
    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 50
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 52
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    .line 54
    move-result v0

    .line 57
    iget-object v1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch$1;->this$0:Lcom/android/systemui/accessibility/MagnificationModeSwitch;

    .line 58
    iget-object v1, v1, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mContext:Landroid/content/Context;

    .line 60
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 62
    move-result-object v1

    .line 65
    const v2, 0x7f1306c7    # @string/magnification_open_settings_click_label 'Open magnification settings'

    .line 66
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 69
    move-result-object v1

    .line 72
    invoke-direct {p1, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 73
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 76
    const/4 p1, 0x1

    .line 79
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 80
    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 83
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch$1;->this$0:Lcom/android/systemui/accessibility/MagnificationModeSwitch;

    .line 85
    iget-object v0, v0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mContext:Landroid/content/Context;

    .line 87
    const v1, 0x7f130060    # @string/accessibility_control_move_up 'Move up'

    .line 89
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 92
    move-result-object v0

    .line 95
    const v1, 0x7f0a0024    # @id/accessibility_action_move_up

    .line 96
    invoke-direct {p1, v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 99
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 102
    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 105
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch$1;->this$0:Lcom/android/systemui/accessibility/MagnificationModeSwitch;

    .line 107
    iget-object v0, v0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mContext:Landroid/content/Context;

    .line 109
    const v1, 0x7f13005d    # @string/accessibility_control_move_down 'Move down'

    .line 111
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 114
    move-result-object v0

    .line 117
    const v1, 0x7f0a0021    # @id/accessibility_action_move_down

    .line 118
    invoke-direct {p1, v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 121
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 124
    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 127
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch$1;->this$0:Lcom/android/systemui/accessibility/MagnificationModeSwitch;

    .line 129
    iget-object v0, v0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mContext:Landroid/content/Context;

    .line 131
    const v1, 0x7f13005e    # @string/accessibility_control_move_left 'Move left'

    .line 133
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 136
    move-result-object v0

    .line 139
    const v1, 0x7f0a0022    # @id/accessibility_action_move_left

    .line 140
    invoke-direct {p1, v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 143
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 146
    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 149
    iget-object p0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch$1;->this$0:Lcom/android/systemui/accessibility/MagnificationModeSwitch;

    .line 151
    iget-object p0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mContext:Landroid/content/Context;

    .line 153
    const v0, 0x7f13005f    # @string/accessibility_control_move_right 'Move right'

    .line 155
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 158
    move-result-object p0

    .line 161
    const v0, 0x7f0a0023    # @id/accessibility_action_move_right

    .line 162
    invoke-direct {p1, v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 165
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 168
    return-void
    .line 171
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch$1;->this$0:Lcom/android/systemui/accessibility/MagnificationModeSwitch;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mWindowManager:Landroid/view/WindowManager;

    .line 4
    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    .line 6
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    .line 10
    move-result-object v0

    .line 13
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 14
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    .line 16
    move-result v1

    .line 19
    const/4 v2, 0x1

    .line 20
    if-ne p2, v1, :cond_0

    .line 21
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch$1;->this$0:Lcom/android/systemui/accessibility/MagnificationModeSwitch;

    .line 23
    invoke-virtual {v0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->removeButton()V

    .line 25
    iget-object v1, v0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mClickListener:Lcom/android/systemui/accessibility/MagnificationModeSwitch$ClickListener;

    .line 28
    iget-object v0, v0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mContext:Landroid/content/Context;

    .line 30
    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    .line 32
    move-result v0

    .line 35
    invoke-interface {v1, v0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch$ClickListener;->onClick(I)V

    .line 36
    goto :goto_0

    .line 39
    :cond_0
    const v1, 0x7f0a0024    # @id/accessibility_action_move_up

    .line 40
    const/4 v3, 0x0

    .line 43
    if-ne p2, v1, :cond_1

    .line 44
    iget-object v1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch$1;->this$0:Lcom/android/systemui/accessibility/MagnificationModeSwitch;

    .line 46
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 48
    move-result v0

    .line 51
    neg-int v0, v0

    .line 52
    int-to-float v0, v0

    .line 53
    invoke-virtual {v1, v3, v0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->moveButton(FF)V

    .line 54
    goto :goto_0

    .line 57
    :cond_1
    const v1, 0x7f0a0021    # @id/accessibility_action_move_down

    .line 58
    if-ne p2, v1, :cond_2

    .line 61
    iget-object v1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch$1;->this$0:Lcom/android/systemui/accessibility/MagnificationModeSwitch;

    .line 63
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 65
    move-result v0

    .line 68
    int-to-float v0, v0

    .line 69
    invoke-virtual {v1, v3, v0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->moveButton(FF)V

    .line 70
    goto :goto_0

    .line 73
    :cond_2
    const v1, 0x7f0a0022    # @id/accessibility_action_move_left

    .line 74
    if-ne p2, v1, :cond_3

    .line 77
    iget-object v1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch$1;->this$0:Lcom/android/systemui/accessibility/MagnificationModeSwitch;

    .line 79
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 81
    move-result v0

    .line 84
    neg-int v0, v0

    .line 85
    int-to-float v0, v0

    .line 86
    invoke-virtual {v1, v0, v3}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->moveButton(FF)V

    .line 87
    goto :goto_0

    .line 90
    :cond_3
    const v1, 0x7f0a0023    # @id/accessibility_action_move_right

    .line 91
    if-ne p2, v1, :cond_4

    .line 94
    iget-object v1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch$1;->this$0:Lcom/android/systemui/accessibility/MagnificationModeSwitch;

    .line 96
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 98
    move-result v0

    .line 101
    int-to-float v0, v0

    .line 102
    invoke-virtual {v1, v0, v3}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->moveButton(FF)V

    .line 103
    :goto_0
    move v0, v2

    .line 106
    goto :goto_1

    .line 107
    :cond_4
    const/4 v0, 0x0

    .line 108
    :goto_1
    if-eqz v0, :cond_5

    .line 109
    return v2

    .line 111
    :cond_5
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 112
    move-result p0

    .line 115
    return p0
    .line 116
.end method
