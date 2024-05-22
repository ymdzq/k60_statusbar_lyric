.class public final Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/accessibility/WindowMagnificationController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

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
    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 5
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 7
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    .line 9
    move-result v0

    .line 12
    iget-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    .line 13
    iget-object v1, v1, Lcom/android/systemui/accessibility/WindowMagnificationController;->mContext:Landroid/content/Context;

    .line 15
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    move-result-object v1

    .line 20
    const v2, 0x7f1306c7    # @string/magnification_open_settings_click_label 'Open magnification settings'

    .line 21
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 27
    invoke-direct {p1, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 28
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 31
    const/4 p1, 0x1

    .line 34
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 35
    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 38
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    .line 40
    iget-object v0, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mContext:Landroid/content/Context;

    .line 42
    const v1, 0x7f130062    # @string/accessibility_control_zoom_in 'Zoom in'

    .line 44
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 50
    const v1, 0x7f0a0027    # @id/accessibility_action_zoom_in

    .line 51
    invoke-direct {p1, v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 54
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 57
    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 60
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    .line 62
    iget-object v0, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mContext:Landroid/content/Context;

    .line 64
    const v1, 0x7f130063    # @string/accessibility_control_zoom_out 'Zoom out'

    .line 66
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 69
    move-result-object v0

    .line 72
    const v1, 0x7f0a0028    # @id/accessibility_action_zoom_out

    .line 73
    invoke-direct {p1, v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 76
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 79
    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 82
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    .line 84
    iget-object v0, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mContext:Landroid/content/Context;

    .line 86
    const v1, 0x7f130060    # @string/accessibility_control_move_up 'Move up'

    .line 88
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 91
    move-result-object v0

    .line 94
    const v1, 0x7f0a0024    # @id/accessibility_action_move_up

    .line 95
    invoke-direct {p1, v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 98
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 101
    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 104
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    .line 106
    iget-object v0, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mContext:Landroid/content/Context;

    .line 108
    const v1, 0x7f13005d    # @string/accessibility_control_move_down 'Move down'

    .line 110
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 113
    move-result-object v0

    .line 116
    const v1, 0x7f0a0021    # @id/accessibility_action_move_down

    .line 117
    invoke-direct {p1, v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 120
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 123
    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 126
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    .line 128
    iget-object v0, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mContext:Landroid/content/Context;

    .line 130
    const v1, 0x7f13005e    # @string/accessibility_control_move_left 'Move left'

    .line 132
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 135
    move-result-object v0

    .line 138
    const v1, 0x7f0a0022    # @id/accessibility_action_move_left

    .line 139
    invoke-direct {p1, v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 142
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 145
    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 148
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    .line 150
    iget-object v0, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mContext:Landroid/content/Context;

    .line 152
    const v1, 0x7f13005f    # @string/accessibility_control_move_right 'Move right'

    .line 154
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 157
    move-result-object v0

    .line 160
    const v1, 0x7f0a0023    # @id/accessibility_action_move_right

    .line 161
    invoke-direct {p1, v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 164
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 167
    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    .line 170
    iget-object p1, p1, Lcom/android/systemui/accessibility/WindowMagnificationController;->mContext:Landroid/content/Context;

    .line 172
    const v0, 0x7f1306c8    # @string/magnification_window_title 'Magnification Window'

    .line 174
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 177
    move-result-object p1

    .line 180
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 181
    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    .line 184
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->isActivated()Z

    .line 186
    move-result p1

    .line 189
    if-eqz p1, :cond_0

    .line 190
    iget p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mScale:F

    .line 192
    goto :goto_0

    .line 194
    :cond_0
    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 195
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/accessibility/WindowMagnificationController;->formatStateDescription(F)Ljava/lang/CharSequence;

    .line 197
    move-result-object p0

    .line 200
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setStateDescription(Ljava/lang/CharSequence;)V

    .line 201
    return-void
    .line 204
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 7

    .line 1
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 2
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    .line 4
    move-result v0

    .line 7
    const-string v1, "WindowMagnificationConnectionImpl"

    .line 8
    const/4 v2, 0x1

    .line 10
    if-ne p2, v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    .line 13
    iget-object v3, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mDragView:Landroid/widget/ImageView;

    .line 15
    invoke-virtual {v0, v3}, Lcom/android/systemui/accessibility/WindowMagnificationController;->handleSingleTap(Landroid/view/View;)V

    .line 17
    goto/16 :goto_0

    .line 20
    :cond_0
    const-string v0, "Failed to inform performing scale action"

    .line 22
    const v3, 0x7f0a0027    # @id/accessibility_action_zoom_in

    .line 24
    const/high16 v4, 0x3f800000    # 1.0f

    .line 27
    if-ne p2, v3, :cond_1

    .line 29
    iget-object v3, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    .line 31
    iget v5, v3, Lcom/android/systemui/accessibility/WindowMagnificationController;->mScale:F

    .line 33
    add-float/2addr v5, v4

    .line 35
    iget-object v4, v3, Lcom/android/systemui/accessibility/WindowMagnificationController;->mWindowMagnifierCallback:Lcom/android/systemui/accessibility/WindowMagnifierCallback;

    .line 36
    iget v3, v3, Lcom/android/systemui/accessibility/WindowMagnificationController;->mDisplayId:I

    .line 38
    sget-object v6, Lcom/android/systemui/accessibility/WindowMagnificationController;->A11Y_ACTION_SCALE_RANGE:Landroid/util/Range;

    .line 40
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 42
    move-result-object v5

    .line 45
    invoke-virtual {v6, v5}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    .line 46
    move-result-object v5

    .line 49
    check-cast v5, Ljava/lang/Float;

    .line 50
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    .line 52
    move-result v5

    .line 55
    check-cast v4, Lcom/android/systemui/accessibility/WindowMagnification$2;

    .line 56
    iget-object v4, v4, Lcom/android/systemui/accessibility/WindowMagnification$2;->this$0:Lcom/android/systemui/accessibility/WindowMagnification;

    .line 58
    iget-object v4, v4, Lcom/android/systemui/accessibility/WindowMagnification;->mWindowMagnificationConnectionImpl:Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;

    .line 60
    if-eqz v4, :cond_6

    .line 62
    iget-object v4, v4, Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;->mConnectionCallback:Landroid/view/accessibility/IWindowMagnificationConnectionCallback;

    .line 64
    if-eqz v4, :cond_6

    .line 66
    :try_start_0
    invoke-interface {v4, v3, v5}, Landroid/view/accessibility/IWindowMagnificationConnectionCallback;->onPerformScaleAction(IF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    goto/16 :goto_0

    .line 71
    :catch_0
    move-exception v3

    .line 73
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    goto/16 :goto_0

    .line 77
    :cond_1
    const v3, 0x7f0a0028    # @id/accessibility_action_zoom_out

    .line 79
    if-ne p2, v3, :cond_2

    .line 82
    iget-object v3, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    .line 84
    iget v5, v3, Lcom/android/systemui/accessibility/WindowMagnificationController;->mScale:F

    .line 86
    sub-float/2addr v5, v4

    .line 88
    iget-object v4, v3, Lcom/android/systemui/accessibility/WindowMagnificationController;->mWindowMagnifierCallback:Lcom/android/systemui/accessibility/WindowMagnifierCallback;

    .line 89
    iget v3, v3, Lcom/android/systemui/accessibility/WindowMagnificationController;->mDisplayId:I

    .line 91
    sget-object v6, Lcom/android/systemui/accessibility/WindowMagnificationController;->A11Y_ACTION_SCALE_RANGE:Landroid/util/Range;

    .line 93
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 95
    move-result-object v5

    .line 98
    invoke-virtual {v6, v5}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    .line 99
    move-result-object v5

    .line 102
    check-cast v5, Ljava/lang/Float;

    .line 103
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    .line 105
    move-result v5

    .line 108
    check-cast v4, Lcom/android/systemui/accessibility/WindowMagnification$2;

    .line 109
    iget-object v4, v4, Lcom/android/systemui/accessibility/WindowMagnification$2;->this$0:Lcom/android/systemui/accessibility/WindowMagnification;

    .line 111
    iget-object v4, v4, Lcom/android/systemui/accessibility/WindowMagnification;->mWindowMagnificationConnectionImpl:Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;

    .line 113
    if-eqz v4, :cond_6

    .line 115
    iget-object v4, v4, Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;->mConnectionCallback:Landroid/view/accessibility/IWindowMagnificationConnectionCallback;

    .line 117
    if-eqz v4, :cond_6

    .line 119
    :try_start_1
    invoke-interface {v4, v3, v5}, Landroid/view/accessibility/IWindowMagnificationConnectionCallback;->onPerformScaleAction(IF)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 121
    goto :goto_0

    .line 124
    :catch_1
    move-exception v3

    .line 125
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    goto :goto_0

    .line 129
    :cond_2
    const v0, 0x7f0a0024    # @id/accessibility_action_move_up

    .line 130
    const/4 v3, 0x0

    .line 133
    if-ne p2, v0, :cond_3

    .line 134
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    .line 136
    iget-object v4, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mSourceBounds:Landroid/graphics/Rect;

    .line 138
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 140
    move-result v4

    .line 143
    neg-int v4, v4

    .line 144
    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/accessibility/WindowMagnificationController;->move(II)V

    .line 145
    goto :goto_0

    .line 148
    :cond_3
    const v0, 0x7f0a0021    # @id/accessibility_action_move_down

    .line 149
    if-ne p2, v0, :cond_4

    .line 152
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    .line 154
    iget-object v4, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mSourceBounds:Landroid/graphics/Rect;

    .line 156
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 158
    move-result v4

    .line 161
    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/accessibility/WindowMagnificationController;->move(II)V

    .line 162
    goto :goto_0

    .line 165
    :cond_4
    const v0, 0x7f0a0022    # @id/accessibility_action_move_left

    .line 166
    if-ne p2, v0, :cond_5

    .line 169
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    .line 171
    iget-object v4, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mSourceBounds:Landroid/graphics/Rect;

    .line 173
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 175
    move-result v4

    .line 178
    neg-int v4, v4

    .line 179
    invoke-virtual {v0, v4, v3}, Lcom/android/systemui/accessibility/WindowMagnificationController;->move(II)V

    .line 180
    goto :goto_0

    .line 183
    :cond_5
    const v0, 0x7f0a0023    # @id/accessibility_action_move_right

    .line 184
    if-ne p2, v0, :cond_8

    .line 187
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    .line 189
    iget-object v4, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mSourceBounds:Landroid/graphics/Rect;

    .line 191
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 193
    move-result v4

    .line 196
    invoke-virtual {v0, v4, v3}, Lcom/android/systemui/accessibility/WindowMagnificationController;->move(II)V

    .line 197
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    .line 200
    iget-object v3, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mWindowMagnifierCallback:Lcom/android/systemui/accessibility/WindowMagnifierCallback;

    .line 202
    iget v0, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mDisplayId:I

    .line 204
    check-cast v3, Lcom/android/systemui/accessibility/WindowMagnification$2;

    .line 206
    iget-object v3, v3, Lcom/android/systemui/accessibility/WindowMagnification$2;->this$0:Lcom/android/systemui/accessibility/WindowMagnification;

    .line 208
    iget-object v3, v3, Lcom/android/systemui/accessibility/WindowMagnification;->mWindowMagnificationConnectionImpl:Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;

    .line 210
    if-eqz v3, :cond_7

    .line 212
    iget-object v3, v3, Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;->mConnectionCallback:Landroid/view/accessibility/IWindowMagnificationConnectionCallback;

    .line 214
    if-eqz v3, :cond_7

    .line 216
    :try_start_2
    invoke-interface {v3, v0}, Landroid/view/accessibility/IWindowMagnificationConnectionCallback;->onAccessibilityActionPerformed(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 218
    goto :goto_1

    .line 221
    :catch_2
    move-exception v0

    .line 222
    const-string v3, "Failed to inform an accessibility action is already performed"

    .line 223
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 225
    :cond_7
    :goto_1
    move v3, v2

    .line 228
    :cond_8
    if-eqz v3, :cond_9

    .line 229
    return v2

    .line 231
    :cond_9
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 232
    move-result p0

    .line 235
    return p0
    .line 236
.end method
