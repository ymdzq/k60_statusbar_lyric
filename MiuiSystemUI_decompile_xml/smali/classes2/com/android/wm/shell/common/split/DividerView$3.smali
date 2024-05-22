.class public final Lcom/android/wm/shell/common/split/DividerView$3;
.super Landroid/view/View$AccessibilityDelegate;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/common/split/DividerView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/split/DividerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerView$3;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    .line 2
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 8

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerView$3;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    .line 5
    iget-object v0, p1, Lcom/android/wm/shell/common/split/DividerView;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 7
    iget-object v0, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSnapAlgorithm:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;

    .line 9
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 11
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 15
    move-result-object p1

    .line 18
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 19
    const/4 v1, 0x2

    .line 21
    const/4 v2, 0x1

    .line 22
    const/4 v3, 0x0

    .line 23
    if-ne p1, v1, :cond_0

    .line 24
    move p1, v2

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move p1, v3

    .line 28
    :goto_0
    invoke-static {}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->getInstance()Lcom/android/wm/shell/common/split/SplitUtilsStub;

    .line 29
    move-result-object v1

    .line 32
    iget-object v4, p0, Lcom/android/wm/shell/common/split/DividerView$3;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    .line 33
    invoke-static {v4}, Lcom/android/wm/shell/common/split/DividerView;->access$000(Lcom/android/wm/shell/common/split/DividerView;)Landroid/content/Context;

    .line 35
    move-result-object v4

    .line 38
    invoke-virtual {v1, v4}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->getPrimarySplitSide(Landroid/content/Context;)I

    .line 39
    move-result v1

    .line 42
    const/4 v4, -0x1

    .line 43
    if-eq v1, v4, :cond_2

    .line 44
    if-eq v1, v2, :cond_3

    .line 46
    const/4 p1, 0x3

    .line 48
    if-ne v1, p1, :cond_1

    .line 49
    goto :goto_1

    .line 51
    :cond_1
    move v2, v3

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    move v2, p1

    .line 54
    :cond_3
    :goto_1
    const p1, 0x7f0a007c    # @id/action_move_tl_30

    .line 55
    const v1, 0x7f0a007b    # @id/action_move_rb_full

    .line 58
    const v3, 0x7f0a007d    # @id/action_move_tl_50

    .line 61
    const v4, 0x7f0a007e    # @id/action_move_tl_70

    .line 64
    const v5, 0x7f0a007f    # @id/action_move_tl_full

    .line 67
    if-eqz v2, :cond_7

    .line 70
    new-instance v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 72
    iget-object v6, p0, Lcom/android/wm/shell/common/split/DividerView$3;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    .line 74
    invoke-static {v6}, Lcom/android/wm/shell/common/split/DividerView;->access$100(Lcom/android/wm/shell/common/split/DividerView;)Landroid/content/Context;

    .line 76
    move-result-object v6

    .line 79
    const v7, 0x7f130038    # @string/accessibility_action_divider_left_full 'Left full screen'

    .line 80
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 83
    move-result-object v6

    .line 86
    invoke-direct {v2, v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 87
    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 90
    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->isFirstSplitTargetAvailable()Z

    .line 93
    move-result v2

    .line 96
    if-eqz v2, :cond_4

    .line 97
    new-instance v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 99
    iget-object v5, p0, Lcom/android/wm/shell/common/split/DividerView$3;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    .line 101
    invoke-static {v5}, Lcom/android/wm/shell/common/split/DividerView;->access$200(Lcom/android/wm/shell/common/split/DividerView;)Landroid/content/Context;

    .line 103
    move-result-object v5

    .line 106
    const v6, 0x7f130037    # @string/accessibility_action_divider_left_70 'Left 70%'

    .line 107
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 110
    move-result-object v5

    .line 113
    invoke-direct {v2, v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 114
    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 117
    :cond_4
    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->showMiddleSplitTargetForAccessibility()Z

    .line 120
    move-result v2

    .line 123
    if-eqz v2, :cond_5

    .line 124
    new-instance v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 126
    iget-object v4, p0, Lcom/android/wm/shell/common/split/DividerView$3;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    .line 128
    invoke-static {v4}, Lcom/android/wm/shell/common/split/DividerView;->access$300(Lcom/android/wm/shell/common/split/DividerView;)Landroid/content/Context;

    .line 130
    move-result-object v4

    .line 133
    const v5, 0x7f130036    # @string/accessibility_action_divider_left_50 'Left 50%'

    .line 134
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 137
    move-result-object v4

    .line 140
    invoke-direct {v2, v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 141
    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 144
    :cond_5
    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->isLastSplitTargetAvailable()Z

    .line 147
    move-result v0

    .line 150
    if-eqz v0, :cond_6

    .line 151
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 153
    iget-object v2, p0, Lcom/android/wm/shell/common/split/DividerView$3;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    .line 155
    invoke-static {v2}, Lcom/android/wm/shell/common/split/DividerView;->access$400(Lcom/android/wm/shell/common/split/DividerView;)Landroid/content/Context;

    .line 157
    move-result-object v2

    .line 160
    const v3, 0x7f130035    # @string/accessibility_action_divider_left_30 'Left 30%'

    .line 161
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 164
    move-result-object v2

    .line 167
    invoke-direct {v0, p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 168
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 171
    :cond_6
    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 174
    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerView$3;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    .line 176
    invoke-static {p0}, Lcom/android/wm/shell/common/split/DividerView;->access$500(Lcom/android/wm/shell/common/split/DividerView;)Landroid/content/Context;

    .line 178
    move-result-object p0

    .line 181
    const v0, 0x7f130039    # @string/accessibility_action_divider_right_full 'Right full screen'

    .line 182
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 185
    move-result-object p0

    .line 188
    invoke-direct {p1, v1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 189
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 192
    goto/16 :goto_2

    .line 195
    :cond_7
    new-instance v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 197
    iget-object v6, p0, Lcom/android/wm/shell/common/split/DividerView$3;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    .line 199
    invoke-static {v6}, Lcom/android/wm/shell/common/split/DividerView;->access$600(Lcom/android/wm/shell/common/split/DividerView;)Landroid/content/Context;

    .line 201
    move-result-object v6

    .line 204
    const v7, 0x7f13003d    # @string/accessibility_action_divider_top_full 'Top full screen'

    .line 205
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 208
    move-result-object v6

    .line 211
    invoke-direct {v2, v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 212
    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 215
    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->isFirstSplitTargetAvailable()Z

    .line 218
    move-result v2

    .line 221
    if-eqz v2, :cond_8

    .line 222
    new-instance v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 224
    iget-object v5, p0, Lcom/android/wm/shell/common/split/DividerView$3;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    .line 226
    invoke-static {v5}, Lcom/android/wm/shell/common/split/DividerView;->access$700(Lcom/android/wm/shell/common/split/DividerView;)Landroid/content/Context;

    .line 228
    move-result-object v5

    .line 231
    const v6, 0x7f13003c    # @string/accessibility_action_divider_top_70 'Top 70%'

    .line 232
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 235
    move-result-object v5

    .line 238
    invoke-direct {v2, v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 239
    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 242
    :cond_8
    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->showMiddleSplitTargetForAccessibility()Z

    .line 245
    move-result v2

    .line 248
    if-eqz v2, :cond_9

    .line 249
    new-instance v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 251
    iget-object v4, p0, Lcom/android/wm/shell/common/split/DividerView$3;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    .line 253
    invoke-static {v4}, Lcom/android/wm/shell/common/split/DividerView;->access$800(Lcom/android/wm/shell/common/split/DividerView;)Landroid/content/Context;

    .line 255
    move-result-object v4

    .line 258
    const v5, 0x7f13003b    # @string/accessibility_action_divider_top_50 'Top 50%'

    .line 259
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 262
    move-result-object v4

    .line 265
    invoke-direct {v2, v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 266
    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 269
    :cond_9
    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->isLastSplitTargetAvailable()Z

    .line 272
    move-result v0

    .line 275
    if-eqz v0, :cond_a

    .line 276
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 278
    iget-object v2, p0, Lcom/android/wm/shell/common/split/DividerView$3;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    .line 280
    invoke-static {v2}, Lcom/android/wm/shell/common/split/DividerView;->access$900(Lcom/android/wm/shell/common/split/DividerView;)Landroid/content/Context;

    .line 282
    move-result-object v2

    .line 285
    const v3, 0x7f13003a    # @string/accessibility_action_divider_top_30 'Top 30%'

    .line 286
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 289
    move-result-object v2

    .line 292
    invoke-direct {v0, p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 293
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 296
    :cond_a
    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 299
    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerView$3;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    .line 301
    invoke-static {p0}, Lcom/android/wm/shell/common/split/DividerView;->access$1000(Lcom/android/wm/shell/common/split/DividerView;)Landroid/content/Context;

    .line 303
    move-result-object p0

    .line 306
    const v0, 0x7f130034    # @string/accessibility_action_divider_bottom_full 'Bottom full screen'

    .line 307
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 310
    move-result-object p0

    .line 313
    invoke-direct {p1, v1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 314
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 317
    :goto_2
    return-void
    .line 320
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerView$3;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    .line 2
    iget-object v0, v0, Lcom/android/wm/shell/common/split/DividerView;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 4
    iget-object v1, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSnapAlgorithm:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;

    .line 6
    const v2, 0x7f0a007f    # @id/action_move_tl_full

    .line 8
    if-ne p2, v2, :cond_0

    .line 11
    iget-object v1, v1, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mDismissEndTarget:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    .line 13
    goto :goto_0

    .line 15
    :cond_0
    const v2, 0x7f0a007e    # @id/action_move_tl_70

    .line 16
    if-ne p2, v2, :cond_1

    .line 19
    iget-object v1, v1, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    .line 21
    goto :goto_0

    .line 23
    :cond_1
    const v2, 0x7f0a007d    # @id/action_move_tl_50

    .line 24
    if-ne p2, v2, :cond_2

    .line 27
    iget-object v1, v1, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mMiddleTarget:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    .line 29
    goto :goto_0

    .line 31
    :cond_2
    const v2, 0x7f0a007c    # @id/action_move_tl_30

    .line 32
    if-ne p2, v2, :cond_3

    .line 35
    iget-object v1, v1, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    .line 37
    goto :goto_0

    .line 39
    :cond_3
    const v2, 0x7f0a007b    # @id/action_move_rb_full

    .line 40
    if-ne p2, v2, :cond_4

    .line 43
    iget-object v1, v1, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mDismissStartTarget:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    .line 45
    goto :goto_0

    .line 47
    :cond_4
    const/4 v1, 0x0

    .line 48
    :goto_0
    if-eqz v1, :cond_5

    .line 49
    iget p0, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividePosition:I

    .line 51
    invoke-virtual {v0, p0, v1}, Lcom/android/wm/shell/common/split/SplitLayout;->snapToTarget(ILcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;)V

    .line 53
    const/4 p0, 0x1

    .line 56
    return p0

    .line 57
    :cond_5
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 58
    move-result p0

    .line 61
    return p0
    .line 62
.end method
