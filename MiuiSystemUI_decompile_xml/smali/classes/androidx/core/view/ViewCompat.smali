.class public abstract Landroidx/core/view/ViewCompat;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final ACCESSIBILITY_ACTIONS_RESOURCE_IDS:[I

.field public static final NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR:Landroidx/core/view/ViewCompat$$ExternalSyntheticLambda0;

.field public static final sAccessibilityPaneVisibilityManager:Landroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;

.field public static sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 5
    const/4 v0, 0x0

    .line 8
    sput-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 9
    const/16 v0, 0x20

    .line 11
    new-array v0, v0, [I

    .line 13
    fill-array-data v0, :array_0

    .line 15
    sput-object v0, Landroidx/core/view/ViewCompat;->ACCESSIBILITY_ACTIONS_RESOURCE_IDS:[I

    .line 18
    new-instance v0, Landroidx/core/view/ViewCompat$$ExternalSyntheticLambda0;

    .line 20
    invoke-direct {v0}, Landroidx/core/view/ViewCompat$$ExternalSyntheticLambda0;-><init>()V

    .line 22
    sput-object v0, Landroidx/core/view/ViewCompat;->NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR:Landroidx/core/view/ViewCompat$$ExternalSyntheticLambda0;

    .line 25
    new-instance v0, Landroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;

    .line 27
    invoke-direct {v0}, Landroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;-><init>()V

    .line 29
    sput-object v0, Landroidx/core/view/ViewCompat;->sAccessibilityPaneVisibilityManager:Landroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;

    .line 32
    return-void

    .line 34
    nop

    .line 35
    :array_0
    .array-data 4
        0x7f0a002a    # @id/accessibility_custom_action_0
        0x7f0a002b    # @id/accessibility_custom_action_1
        0x7f0a0036    # @id/accessibility_custom_action_2
        0x7f0a0041    # @id/accessibility_custom_action_3
        0x7f0a0044    # @id/accessibility_custom_action_4
        0x7f0a0045    # @id/accessibility_custom_action_5
        0x7f0a0046    # @id/accessibility_custom_action_6
        0x7f0a0047    # @id/accessibility_custom_action_7
        0x7f0a0048    # @id/accessibility_custom_action_8
        0x7f0a0049    # @id/accessibility_custom_action_9
        0x7f0a002c    # @id/accessibility_custom_action_10
        0x7f0a002d    # @id/accessibility_custom_action_11
        0x7f0a002e    # @id/accessibility_custom_action_12
        0x7f0a002f    # @id/accessibility_custom_action_13
        0x7f0a0030    # @id/accessibility_custom_action_14
        0x7f0a0031    # @id/accessibility_custom_action_15
        0x7f0a0032    # @id/accessibility_custom_action_16
        0x7f0a0033    # @id/accessibility_custom_action_17
        0x7f0a0034    # @id/accessibility_custom_action_18
        0x7f0a0035    # @id/accessibility_custom_action_19
        0x7f0a0037    # @id/accessibility_custom_action_20
        0x7f0a0038    # @id/accessibility_custom_action_21
        0x7f0a0039    # @id/accessibility_custom_action_22
        0x7f0a003a    # @id/accessibility_custom_action_23
        0x7f0a003b    # @id/accessibility_custom_action_24
        0x7f0a003c    # @id/accessibility_custom_action_25
        0x7f0a003d    # @id/accessibility_custom_action_26
        0x7f0a003e    # @id/accessibility_custom_action_27
        0x7f0a003f    # @id/accessibility_custom_action_28
        0x7f0a0040    # @id/accessibility_custom_action_29
        0x7f0a0042    # @id/accessibility_custom_action_30
        0x7f0a0043    # @id/accessibility_custom_action_31
    .end array-data
    .line 36
.end method

.method public static animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 2

    .line 1
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 2
    if-nez v0, :cond_0

    .line 4
    new-instance v0, Ljava/util/WeakHashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 8
    sput-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 11
    :cond_0
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 13
    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 18
    check-cast v0, Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 19
    if-nez v0, :cond_1

    .line 21
    new-instance v0, Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 23
    invoke-direct {v0, p0}, Landroidx/core/view/ViewPropertyAnimatorCompat;-><init>(Landroid/view/View;)V

    .line 25
    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 28
    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    :cond_1
    return-object v0
    .line 33
.end method

.method public static dispatchApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsets()Landroid/view/WindowInsets;

    .line 2
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat$Api20Impl;->dispatchApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 8
    move-result-object v1

    .line 11
    invoke-virtual {v1, v0}, Landroid/view/WindowInsets;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    invoke-static {p0, v1}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/View;Landroid/view/WindowInsets;)Landroidx/core/view/WindowInsetsCompat;

    .line 18
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_0
    return-object p1
    .line 23
.end method

.method public static getActionList(Landroid/view/View;)Ljava/util/List;
    .locals 2

    .line 1
    const v0, 0x7f0a0943    # @id/tag_accessibility_actions

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 5
    move-result-object v1

    .line 8
    check-cast v1, Ljava/util/ArrayList;

    .line 9
    if-nez v1, :cond_0

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 18
    :cond_0
    return-object v1
    .line 21
.end method

.method public static notifyViewAccessibilityStateChangedIfNeeded(ILandroid/view/View;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    move-result-object v0

    .line 5
    const-string v1, "accessibility"

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 12
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 14
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    return-void

    .line 20
    :cond_0
    new-instance v1, Landroidx/core/view/ViewCompat$1;

    .line 21
    const v3, 0x7f0a0946    # @id/tag_accessibility_pane_title

    .line 23
    const-class v4, Ljava/lang/CharSequence;

    .line 26
    const/16 v5, 0x8

    .line 28
    const/16 v6, 0x1c

    .line 30
    const/4 v7, 0x1

    .line 32
    move-object v2, v1

    .line 33
    invoke-direct/range {v2 .. v7}, Landroidx/core/view/ViewCompat$1;-><init>(ILjava/lang/Class;III)V

    .line 34
    invoke-virtual {v1, p1}, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->get(Landroid/view/View;)Ljava/lang/Object;

    .line 37
    move-result-object v1

    .line 40
    check-cast v1, Ljava/lang/CharSequence;

    .line 41
    const/4 v2, 0x1

    .line 43
    if-eqz v1, :cond_1

    .line 44
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    .line 46
    move-result v1

    .line 49
    if-eqz v1, :cond_1

    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getWindowVisibility()I

    .line 52
    move-result v1

    .line 55
    if-nez v1, :cond_1

    .line 56
    move v1, v2

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    const/4 v1, 0x0

    .line 60
    :goto_0
    invoke-static {p1}, Landroidx/core/view/ViewCompat$Api19Impl;->getAccessibilityLiveRegion(Landroid/view/View;)I

    .line 61
    move-result v3

    .line 64
    const/16 v4, 0x20

    .line 65
    if-nez v3, :cond_4

    .line 67
    if-eqz v1, :cond_2

    .line 69
    goto :goto_1

    .line 71
    :cond_2
    if-ne p0, v4, :cond_3

    .line 72
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    .line 74
    move-result-object v1

    .line 77
    invoke-virtual {p1, v1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 78
    invoke-virtual {v1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 81
    invoke-static {v1, p0}, Landroidx/core/view/ViewCompat$Api19Impl;->setContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 84
    invoke-virtual {v1, p1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    .line 87
    invoke-virtual {p1, v1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 90
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    .line 93
    move-result-object p0

    .line 96
    new-instance v8, Landroidx/core/view/ViewCompat$1;

    .line 97
    const v3, 0x7f0a0946    # @id/tag_accessibility_pane_title

    .line 99
    const-class v4, Ljava/lang/CharSequence;

    .line 102
    const/16 v5, 0x8

    .line 104
    const/16 v6, 0x1c

    .line 106
    const/4 v7, 0x1

    .line 108
    move-object v2, v8

    .line 109
    invoke-direct/range {v2 .. v7}, Landroidx/core/view/ViewCompat$1;-><init>(ILjava/lang/Class;III)V

    .line 110
    invoke-virtual {v8, p1}, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->get(Landroid/view/View;)Ljava/lang/Object;

    .line 113
    move-result-object p1

    .line 116
    check-cast p1, Ljava/lang/CharSequence;

    .line 117
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 122
    goto/16 :goto_5

    .line 125
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 127
    move-result-object v0

    .line 130
    if-eqz v0, :cond_9

    .line 131
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 133
    move-result-object v0

    .line 136
    :try_start_0
    invoke-static {v0, p1, p1, p0}, Landroidx/core/view/ViewCompat$Api19Impl;->notifySubtreeAccessibilityStateChanged(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    goto/16 :goto_5

    .line 140
    :catch_0
    move-exception p0

    .line 142
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 143
    move-result-object p1

    .line 146
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    move-result-object p1

    .line 150
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 151
    move-result-object p1

    .line 154
    const-string v0, " does not fully implement ViewParent"

    .line 155
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 157
    move-result-object p1

    .line 160
    const-string v0, "ViewCompat"

    .line 161
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    goto :goto_5

    .line 166
    :cond_4
    :goto_1
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    .line 167
    move-result-object v0

    .line 170
    if-eqz v1, :cond_5

    .line 171
    goto :goto_2

    .line 173
    :cond_5
    const/16 v4, 0x800

    .line 174
    :goto_2
    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 176
    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat$Api19Impl;->setContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 179
    if-eqz v1, :cond_8

    .line 182
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    .line 184
    move-result-object p0

    .line 187
    new-instance v1, Landroidx/core/view/ViewCompat$1;

    .line 188
    const v4, 0x7f0a0946    # @id/tag_accessibility_pane_title

    .line 190
    const-class v5, Ljava/lang/CharSequence;

    .line 193
    const/16 v6, 0x8

    .line 195
    const/16 v7, 0x1c

    .line 197
    const/4 v8, 0x1

    .line 199
    move-object v3, v1

    .line 200
    invoke-direct/range {v3 .. v8}, Landroidx/core/view/ViewCompat$1;-><init>(ILjava/lang/Class;III)V

    .line 201
    invoke-virtual {v1, p1}, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->get(Landroid/view/View;)Ljava/lang/Object;

    .line 204
    move-result-object v1

    .line 207
    check-cast v1, Ljava/lang/CharSequence;

    .line 208
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    invoke-static {p1}, Landroidx/core/view/ViewCompat$Api16Impl;->getImportantForAccessibility(Landroid/view/View;)I

    .line 213
    move-result p0

    .line 216
    if-nez p0, :cond_6

    .line 217
    invoke-static {p1, v2}, Landroidx/core/view/ViewCompat$Api16Impl;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 219
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 222
    move-result-object p0

    .line 225
    :goto_3
    instance-of v1, p0, Landroid/view/View;

    .line 226
    if-eqz v1, :cond_8

    .line 228
    move-object v1, p0

    .line 230
    check-cast v1, Landroid/view/View;

    .line 231
    invoke-static {v1}, Landroidx/core/view/ViewCompat$Api16Impl;->getImportantForAccessibility(Landroid/view/View;)I

    .line 233
    move-result v1

    .line 236
    const/4 v2, 0x4

    .line 237
    if-ne v1, v2, :cond_7

    .line 238
    const/4 p0, 0x2

    .line 240
    invoke-static {p1, p0}, Landroidx/core/view/ViewCompat$Api16Impl;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 241
    goto :goto_4

    .line 244
    :cond_7
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 245
    move-result-object p0

    .line 248
    goto :goto_3

    .line 249
    :cond_8
    :goto_4
    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 250
    :cond_9
    :goto_5
    return-void
    .line 253
.end method

.method public static onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsets()Landroid/view/WindowInsets;

    .line 2
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat$Api20Impl;->onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 8
    move-result-object v1

    .line 11
    invoke-virtual {v1, v0}, Landroid/view/WindowInsets;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    invoke-static {p0, v1}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/View;Landroid/view/WindowInsets;)Landroidx/core/view/WindowInsetsCompat;

    .line 18
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_0
    return-object p1
    .line 23
.end method

.method public static removeActionWithId(ILandroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getActionList(Landroid/view/View;)Ljava/util/List;

    .line 2
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 7
    move-result v1

    .line 10
    if-ge v0, v1, :cond_1

    .line 11
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    move-result-object v1

    .line 16
    check-cast v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 17
    invoke-virtual {v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    .line 19
    move-result v1

    .line 22
    if-ne v1, p0, :cond_0

    .line 23
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 25
    goto :goto_1

    .line 28
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 29
    goto :goto_0

    .line 31
    :cond_1
    :goto_1
    return-void
    .line 32
.end method

.method public static replaceAccessibilityAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Ljava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p3, :cond_0

    .line 3
    if-nez p2, :cond_0

    .line 5
    invoke-virtual {p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    .line 7
    move-result p1

    .line 10
    invoke-static {p1, p0}, Landroidx/core/view/ViewCompat;->removeActionWithId(ILandroid/view/View;)V

    .line 11
    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat;->notifyViewAccessibilityStateChangedIfNeeded(ILandroid/view/View;)V

    .line 14
    goto :goto_1

    .line 17
    :cond_0
    new-instance v7, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 18
    const/4 v2, 0x0

    .line 20
    iget v3, p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->mId:I

    .line 21
    iget-object v6, p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->mViewCommandArgumentClass:Ljava/lang/Class;

    .line 23
    move-object v1, v7

    .line 25
    move-object v4, p2

    .line 26
    move-object v5, p3

    .line 27
    invoke-direct/range {v1 .. v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(Ljava/lang/Object;ILjava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;Ljava/lang/Class;)V

    .line 28
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api29Impl;->getAccessibilityDelegate(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    .line 31
    move-result-object p1

    .line 34
    if-nez p1, :cond_1

    .line 35
    const/4 p1, 0x0

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    instance-of p2, p1, Landroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;

    .line 39
    if-eqz p2, :cond_2

    .line 41
    check-cast p1, Landroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;

    .line 43
    iget-object p1, p1, Landroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;->mCompat:Landroidx/core/view/AccessibilityDelegateCompat;

    .line 45
    goto :goto_0

    .line 47
    :cond_2
    new-instance p2, Landroidx/core/view/AccessibilityDelegateCompat;

    .line 48
    invoke-direct {p2, p1}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>(Landroid/view/View$AccessibilityDelegate;)V

    .line 50
    move-object p1, p2

    .line 53
    :goto_0
    if-nez p1, :cond_3

    .line 54
    new-instance p1, Landroidx/core/view/AccessibilityDelegateCompat;

    .line 56
    invoke-direct {p1}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    .line 58
    :cond_3
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 61
    invoke-virtual {v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    .line 64
    move-result p1

    .line 67
    invoke-static {p1, p0}, Landroidx/core/view/ViewCompat;->removeActionWithId(ILandroid/view/View;)V

    .line 68
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getActionList(Landroid/view/View;)Ljava/util/List;

    .line 71
    move-result-object p1

    .line 74
    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat;->notifyViewAccessibilityStateChangedIfNeeded(ILandroid/view/View;)V

    .line 78
    :goto_1
    return-void
    .line 81
.end method

.method public static setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api29Impl;->getAccessibilityDelegate(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    .line 4
    move-result-object v0

    .line 7
    instance-of v0, v0, Landroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;

    .line 8
    if-eqz v0, :cond_0

    .line 10
    new-instance p1, Landroidx/core/view/AccessibilityDelegateCompat;

    .line 12
    invoke-direct {p1}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    .line 14
    :cond_0
    if-nez p1, :cond_1

    .line 17
    const/4 p1, 0x0

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual {p1}, Landroidx/core/view/AccessibilityDelegateCompat;->getBridge()Landroid/view/View$AccessibilityDelegate;

    .line 21
    move-result-object p1

    .line 24
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 25
    return-void
    .line 28
.end method

.method public static setAccessibilityPaneTitle(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 7

    .line 1
    new-instance v6, Landroidx/core/view/ViewCompat$1;

    .line 2
    const v1, 0x7f0a0946    # @id/tag_accessibility_pane_title

    .line 4
    const-class v2, Ljava/lang/CharSequence;

    .line 7
    const/16 v3, 0x8

    .line 9
    const/16 v4, 0x1c

    .line 11
    const/4 v5, 0x1

    .line 13
    move-object v0, v6

    .line 14
    invoke-direct/range {v0 .. v5}, Landroidx/core/view/ViewCompat$1;-><init>(ILjava/lang/Class;III)V

    .line 15
    invoke-virtual {v6, p0, p1}, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->set(Landroid/view/View;Ljava/lang/Object;)V

    .line 18
    sget-object v0, Landroidx/core/view/ViewCompat;->sAccessibilityPaneVisibilityManager:Landroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;

    .line 21
    if-eqz p1, :cond_1

    .line 23
    iget-object p1, v0, Landroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;->mPanesToVisible:Ljava/util/WeakHashMap;

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    .line 27
    move-result v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    .line 33
    move-result v1

    .line 36
    if-nez v1, :cond_0

    .line 37
    const/4 v1, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v1, 0x0

    .line 41
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 42
    move-result-object v1

    .line 45
    invoke-virtual {p1, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-virtual {p0, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 49
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api19Impl;->isAttachedToWindow(Landroid/view/View;)Z

    .line 52
    move-result p1

    .line 55
    if-eqz p1, :cond_2

    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 58
    move-result-object p0

    .line 61
    invoke-virtual {p0, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 62
    goto :goto_1

    .line 65
    :cond_1
    iget-object p1, v0, Landroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;->mPanesToVisible:Ljava/util/WeakHashMap;

    .line 66
    invoke-virtual {p1, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-virtual {p0, v0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 71
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 74
    move-result-object p0

    .line 77
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat$Api16Impl;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 78
    :cond_2
    :goto_1
    return-void
    .line 81
.end method
