.class public abstract Landroidx/customview/widget/ExploreByTouchHelper;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field private static final DEFAULT_CLASS_NAME:Ljava/lang/String; = "android.view.View"

.field public static final HOST_ID:I = -0x1

.field private static final INVALID_BOUNDS:Landroid/graphics/Rect;

.field public static final INVALID_ID:I = -0x80000000

.field private static final NODE_ADAPTER:Landroidx/customview/widget/FocusStrategy$BoundsAdapter;

.field private static final SPARSE_VALUES_ADAPTER:Landroidx/customview/widget/FocusStrategy$CollectionAdapter;


# instance fields
.field mAccessibilityFocusedVirtualViewId:I

.field private final mHost:Landroid/view/View;

.field private mHoveredVirtualViewId:I

.field mKeyboardFocusedVirtualViewId:I

.field private final mManager:Landroid/view/accessibility/AccessibilityManager;

.field private mNodeProvider:Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;

.field private final mTempGlobalRect:[I

.field private final mTempParentRect:Landroid/graphics/Rect;

.field private final mTempScreenRect:Landroid/graphics/Rect;

.field private final mTempVisibleRect:Landroid/graphics/Rect;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    const v1, 0x7fffffff

    .line 4
    const/high16 v2, -0x80000000

    .line 7
    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 9
    sput-object v0, Landroidx/customview/widget/ExploreByTouchHelper;->INVALID_BOUNDS:Landroid/graphics/Rect;

    .line 12
    new-instance v0, Landroidx/customview/widget/ExploreByTouchHelper$1;

    .line 14
    invoke-direct {v0}, Landroidx/customview/widget/ExploreByTouchHelper$1;-><init>()V

    .line 16
    sput-object v0, Landroidx/customview/widget/ExploreByTouchHelper;->NODE_ADAPTER:Landroidx/customview/widget/FocusStrategy$BoundsAdapter;

    .line 19
    new-instance v0, Landroidx/customview/widget/ExploreByTouchHelper$1;

    .line 21
    invoke-direct {v0}, Landroidx/customview/widget/ExploreByTouchHelper$1;-><init>()V

    .line 23
    sput-object v0, Landroidx/customview/widget/ExploreByTouchHelper;->SPARSE_VALUES_ADAPTER:Landroidx/customview/widget/FocusStrategy$CollectionAdapter;

    .line 26
    return-void
    .line 28
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    iput-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    .line 10
    new-instance v0, Landroid/graphics/Rect;

    .line 12
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 14
    iput-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    .line 17
    new-instance v0, Landroid/graphics/Rect;

    .line 19
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 21
    iput-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;

    .line 24
    const/4 v0, 0x2

    .line 26
    new-array v0, v0, [I

    .line 27
    iput-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    .line 29
    const/high16 v0, -0x80000000

    .line 31
    iput v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    .line 33
    iput v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    .line 35
    iput v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    .line 37
    if-eqz p1, :cond_1

    .line 39
    iput-object p1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 43
    move-result-object v0

    .line 46
    const-string v1, "accessibility"

    .line 47
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    move-result-object v0

    .line 52
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 53
    iput-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    .line 55
    const/4 p0, 0x1

    .line 57
    invoke-virtual {p1, p0}, Landroid/view/View;->setFocusable(Z)V

    .line 58
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 61
    invoke-static {p1}, Landroidx/core/view/ViewCompat$Api16Impl;->getImportantForAccessibility(Landroid/view/View;)I

    .line 63
    move-result v0

    .line 66
    if-nez v0, :cond_0

    .line 67
    invoke-static {p1, p0}, Landroidx/core/view/ViewCompat$Api16Impl;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 69
    :cond_0
    return-void

    .line 72
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 73
    const-string p1, "View may not be null"

    .line 75
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 77
    throw p0
    .line 80
.end method


# virtual methods
.method public final clearKeyboardFocusForVirtualView(I)Z
    .locals 2

    .line 1
    iget v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eq v0, p1, :cond_0

    .line 5
    return v1

    .line 7
    :cond_0
    const/high16 v0, -0x80000000

    .line 8
    iput v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    .line 10
    invoke-virtual {p0, p1, v1}, Landroidx/customview/widget/ExploreByTouchHelper;->onVirtualViewKeyboardFocusChanged(IZ)V

    .line 12
    const/16 v0, 0x8

    .line 15
    invoke-virtual {p0, p1, v0}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 17
    const/4 p0, 0x1

    .line 20
    return p0
    .line 21
.end method

.method public final createEvent(II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p1, v0, :cond_2

    .line 3
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    .line 5
    move-result-object p2

    .line 8
    invoke-virtual {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->obtainAccessibilityNodeInfo(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 9
    move-result-object v0

    .line 12
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    .line 13
    move-result-object v1

    .line 16
    invoke-virtual {v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getText()Ljava/lang/CharSequence;

    .line 17
    move-result-object v2

    .line 20
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object v0, v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 24
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    .line 26
    move-result-object v1

    .line 29
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 30
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    .line 33
    move-result v1

    .line 36
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 37
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isPassword()Z

    .line 40
    move-result v1

    .line 43
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPassword(Z)V

    .line 44
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    .line 47
    move-result v1

    .line 50
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 51
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    .line 54
    move-result v1

    .line 57
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    .line 58
    invoke-virtual {p0, p1, p2}, Landroidx/customview/widget/ExploreByTouchHelper;->onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V

    .line 61
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    .line 64
    move-result-object v1

    .line 67
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 68
    move-result v1

    .line 71
    if-eqz v1, :cond_1

    .line 72
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    .line 74
    move-result-object v1

    .line 77
    if-eqz v1, :cond_0

    .line 78
    goto :goto_0

    .line 80
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    .line 81
    const-string p1, "Callbacks must add text or a content description in populateEventForVirtualViewId()"

    .line 83
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 85
    throw p0

    .line 88
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    .line 89
    move-result-object v0

    .line 92
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    .line 96
    invoke-virtual {p2, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;I)V

    .line 98
    iget-object p0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    .line 101
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 103
    move-result-object p0

    .line 106
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 107
    move-result-object p0

    .line 110
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 111
    return-object p2

    .line 114
    :cond_2
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    .line 115
    move-result-object p1

    .line 118
    iget-object p0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    .line 119
    invoke-virtual {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 121
    return-object p1
    .line 124
.end method

.method public final createNodeForChild(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 7

    .line 1
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 2
    move-result-object v0

    .line 5
    new-instance v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 6
    invoke-direct {v1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 8
    const/4 v2, 0x1

    .line 11
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 12
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    .line 15
    const-string v3, "android.view.View"

    .line 18
    invoke-virtual {v1, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 20
    sget-object v3, Landroidx/customview/widget/ExploreByTouchHelper;->INVALID_BOUNDS:Landroid/graphics/Rect;

    .line 23
    invoke-virtual {v1, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 25
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 28
    iget-object v4, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    .line 31
    const/4 v5, -0x1

    .line 33
    iput v5, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mParentVirtualDescendantId:I

    .line 34
    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 36
    invoke-virtual {p0, p1, v1}, Landroidx/customview/widget/ExploreByTouchHelper;->onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 39
    invoke-virtual {v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getText()Ljava/lang/CharSequence;

    .line 42
    move-result-object v4

    .line 45
    if-nez v4, :cond_1

    .line 46
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    .line 48
    move-result-object v4

    .line 51
    if-eqz v4, :cond_0

    .line 52
    goto :goto_0

    .line 54
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    .line 55
    const-string p1, "Callbacks must add text or a content description in populateNodeForVirtualViewId()"

    .line 57
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 59
    throw p0

    .line 62
    :cond_1
    :goto_0
    iget-object v4, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    .line 63
    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 65
    iget-object v4, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    .line 68
    invoke-virtual {v1, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 70
    iget-object v4, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    .line 73
    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 75
    move-result v4

    .line 78
    if-eqz v4, :cond_3

    .line 79
    iget-object v4, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    .line 81
    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 83
    move-result v4

    .line 86
    if-nez v4, :cond_2

    .line 87
    goto :goto_1

    .line 89
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    .line 90
    const-string p1, "Callbacks must set parent bounds or screen bounds in populateNodeForVirtualViewId()"

    .line 92
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 94
    throw p0

    .line 97
    :cond_3
    :goto_1
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActions()I

    .line 98
    move-result v4

    .line 101
    and-int/lit8 v5, v4, 0x40

    .line 102
    if-nez v5, :cond_10

    .line 104
    const/16 v5, 0x80

    .line 106
    and-int/2addr v4, v5

    .line 108
    if-nez v4, :cond_f

    .line 109
    iget-object v4, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    .line 111
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 113
    move-result-object v4

    .line 116
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 117
    move-result-object v4

    .line 120
    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v4, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    .line 124
    iput p1, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mVirtualDescendantId:I

    .line 126
    invoke-virtual {v0, v4, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 128
    iget v4, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    .line 131
    const/4 v6, 0x0

    .line 133
    if-ne v4, p1, :cond_4

    .line 134
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 136
    invoke-virtual {v1, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 139
    goto :goto_2

    .line 142
    :cond_4
    invoke-virtual {v0, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 143
    const/16 v4, 0x40

    .line 146
    invoke-virtual {v1, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 148
    :goto_2
    iget v4, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    .line 151
    if-ne v4, p1, :cond_5

    .line 153
    move p1, v2

    .line 155
    goto :goto_3

    .line 156
    :cond_5
    move p1, v6

    .line 157
    :goto_3
    if-eqz p1, :cond_6

    .line 158
    const/4 v4, 0x2

    .line 160
    invoke-virtual {v1, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 161
    goto :goto_4

    .line 164
    :cond_6
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    .line 165
    move-result v4

    .line 168
    if-eqz v4, :cond_7

    .line 169
    invoke-virtual {v1, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 171
    :cond_7
    :goto_4
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocused(Z)V

    .line 174
    iget-object p1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    .line 177
    iget-object v4, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    .line 179
    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 181
    iget-object p1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    .line 184
    invoke-virtual {p1, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 186
    move-result p1

    .line 189
    if-eqz p1, :cond_8

    .line 190
    iget-object p1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    .line 192
    invoke-virtual {p0, v1, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->setBoundsInScreenFromBoundsInParent(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Landroid/graphics/Rect;)V

    .line 194
    iget-object p1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    .line 197
    invoke-virtual {v1, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 199
    :cond_8
    iget-object p1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    .line 202
    iget-object v3, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;

    .line 204
    invoke-virtual {p1, v3}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 206
    move-result p1

    .line 209
    if-eqz p1, :cond_e

    .line 210
    iget-object p1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;

    .line 212
    iget-object v3, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    .line 214
    aget v3, v3, v6

    .line 216
    iget-object v4, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    .line 218
    invoke-virtual {v4}, Landroid/view/View;->getScrollX()I

    .line 220
    move-result v4

    .line 223
    sub-int/2addr v3, v4

    .line 224
    iget-object v4, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    .line 225
    aget v4, v4, v2

    .line 227
    iget-object v5, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    .line 229
    invoke-virtual {v5}, Landroid/view/View;->getScrollY()I

    .line 231
    move-result v5

    .line 234
    sub-int/2addr v4, v5

    .line 235
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 236
    iget-object p1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    .line 239
    iget-object v3, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;

    .line 241
    invoke-virtual {p1, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 243
    move-result p1

    .line 246
    if-eqz p1, :cond_e

    .line 247
    iget-object p1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    .line 249
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 251
    iget-object p1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    .line 254
    if-eqz p1, :cond_d

    .line 256
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 258
    move-result p1

    .line 261
    if-eqz p1, :cond_9

    .line 262
    goto :goto_6

    .line 264
    :cond_9
    iget-object p1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    .line 265
    invoke-virtual {p1}, Landroid/view/View;->getWindowVisibility()I

    .line 267
    move-result p1

    .line 270
    if-eqz p1, :cond_a

    .line 271
    goto :goto_6

    .line 273
    :cond_a
    iget-object p0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    .line 274
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 276
    move-result-object p0

    .line 279
    :goto_5
    instance-of p1, p0, Landroid/view/View;

    .line 280
    if-eqz p1, :cond_c

    .line 282
    check-cast p0, Landroid/view/View;

    .line 284
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    .line 286
    move-result p1

    .line 289
    const/4 v0, 0x0

    .line 290
    cmpg-float p1, p1, v0

    .line 291
    if-lez p1, :cond_d

    .line 293
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 295
    move-result p1

    .line 298
    if-eqz p1, :cond_b

    .line 299
    goto :goto_6

    .line 301
    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 302
    move-result-object p0

    .line 305
    goto :goto_5

    .line 306
    :cond_c
    if-eqz p0, :cond_d

    .line 307
    move v6, v2

    .line 309
    :cond_d
    :goto_6
    if-eqz v6, :cond_e

    .line 310
    iget-object p0, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 312
    invoke-virtual {p0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 314
    :cond_e
    return-object v1

    .line 317
    :cond_f
    new-instance p0, Ljava/lang/RuntimeException;

    .line 318
    const-string p1, "Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    .line 320
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 322
    throw p0

    .line 325
    :cond_10
    new-instance p0, Ljava/lang/RuntimeException;

    .line 326
    const-string p1, "Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    .line 328
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 330
    throw p0
    .line 333
.end method

.method public final dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    .line 2
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_6

    .line 9
    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    .line 11
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 13
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    goto :goto_2

    .line 19
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 20
    move-result v0

    .line 23
    const/16 v2, 0x100

    .line 24
    const/16 v3, 0x80

    .line 26
    const/4 v4, 0x7

    .line 28
    const/4 v5, 0x1

    .line 29
    const/high16 v6, -0x80000000

    .line 30
    if-eq v0, v4, :cond_4

    .line 32
    const/16 v4, 0x9

    .line 34
    if-eq v0, v4, :cond_4

    .line 36
    const/16 p1, 0xa

    .line 38
    if-eq v0, p1, :cond_1

    .line 40
    return v1

    .line 42
    :cond_1
    iget p1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    .line 43
    if-eq p1, v6, :cond_3

    .line 45
    if-ne p1, v6, :cond_2

    .line 47
    goto :goto_0

    .line 49
    :cond_2
    iput v6, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    .line 50
    invoke-virtual {p0, v6, v3}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 52
    invoke-virtual {p0, p1, v2}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 55
    :goto_0
    return v5

    .line 58
    :cond_3
    return v1

    .line 59
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 60
    move-result v0

    .line 63
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 64
    move-result p1

    .line 67
    invoke-virtual {p0, v0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->getVirtualViewAt(FF)I

    .line 68
    move-result p1

    .line 71
    iget v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    .line 72
    if-ne v0, p1, :cond_5

    .line 74
    goto :goto_1

    .line 76
    :cond_5
    iput p1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    .line 77
    invoke-virtual {p0, p1, v3}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 79
    invoke-virtual {p0, v0, v2}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 82
    :goto_1
    if-eq p1, v6, :cond_6

    .line 85
    move v1, v5

    .line 87
    :cond_6
    :goto_2
    return v1
    .line 88
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq v0, v2, :cond_8

    .line 8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 10
    move-result v0

    .line 13
    const/16 v3, 0x3d

    .line 14
    const/4 v4, 0x0

    .line 16
    if-eq v0, v3, :cond_6

    .line 17
    const/16 v3, 0x42

    .line 19
    if-eq v0, v3, :cond_4

    .line 21
    packed-switch v0, :pswitch_data_0

    .line 23
    goto/16 :goto_2

    .line 26
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 28
    move-result v5

    .line 31
    if-eqz v5, :cond_8

    .line 32
    const/16 v5, 0x13

    .line 34
    if-eq v0, v5, :cond_1

    .line 36
    const/16 v5, 0x15

    .line 38
    if-eq v0, v5, :cond_0

    .line 40
    const/16 v5, 0x16

    .line 42
    if-eq v0, v5, :cond_2

    .line 44
    const/16 v3, 0x82

    .line 46
    goto :goto_0

    .line 48
    :cond_0
    const/16 v3, 0x11

    .line 49
    goto :goto_0

    .line 51
    :cond_1
    const/16 v3, 0x21

    .line 52
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 54
    move-result p1

    .line 57
    add-int/2addr p1, v2

    .line 58
    move v0, v1

    .line 59
    :goto_1
    if-ge v1, p1, :cond_3

    .line 60
    invoke-virtual {p0, v3, v4}, Landroidx/customview/widget/ExploreByTouchHelper;->moveFocus(ILandroid/graphics/Rect;)Z

    .line 62
    move-result v5

    .line 65
    if-eqz v5, :cond_3

    .line 66
    add-int/lit8 v1, v1, 0x1

    .line 68
    move v0, v2

    .line 70
    goto :goto_1

    .line 71
    :cond_3
    move v1, v0

    .line 72
    goto :goto_2

    .line 73
    :cond_4
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 74
    move-result v0

    .line 77
    if-eqz v0, :cond_8

    .line 78
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 80
    move-result p1

    .line 83
    if-nez p1, :cond_8

    .line 84
    iget p1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    .line 86
    const/high16 v0, -0x80000000

    .line 88
    if-eq p1, v0, :cond_5

    .line 90
    const/16 v0, 0x10

    .line 92
    invoke-virtual {p0, p1, v0, v4}, Landroidx/customview/widget/ExploreByTouchHelper;->onPerformActionForVirtualView(IILandroid/os/Bundle;)Z

    .line 94
    move-result p0

    .line 97
    :cond_5
    move v1, v2

    .line 98
    goto :goto_2

    .line 99
    :cond_6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 100
    move-result v0

    .line 103
    if-eqz v0, :cond_7

    .line 104
    const/4 p1, 0x2

    .line 106
    invoke-virtual {p0, p1, v4}, Landroidx/customview/widget/ExploreByTouchHelper;->moveFocus(ILandroid/graphics/Rect;)Z

    .line 107
    move-result v1

    .line 110
    goto :goto_2

    .line 111
    :cond_7
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    .line 112
    move-result p1

    .line 115
    if-eqz p1, :cond_8

    .line 116
    invoke-virtual {p0, v2, v4}, Landroidx/customview/widget/ExploreByTouchHelper;->moveFocus(ILandroid/graphics/Rect;)Z

    .line 118
    move-result v1

    .line 121
    :cond_8
    :goto_2
    return v1

    .line 122
    nop

    .line 123
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
    .line 124
.end method

.method public final getAccessibilityFocusedVirtualViewId()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    .line 2
    return p0
    .line 4
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mNodeProvider:Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;

    .line 2
    if-nez p1, :cond_0

    .line 4
    new-instance p1, Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;

    .line 6
    invoke-direct {p1, p0}, Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;-><init>(Landroidx/customview/widget/ExploreByTouchHelper;)V

    .line 8
    iput-object p1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mNodeProvider:Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;

    .line 11
    :cond_0
    iget-object p0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mNodeProvider:Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;

    .line 13
    return-object p0
    .line 15
.end method

.method public getFocusedVirtualView()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/customview/widget/ExploreByTouchHelper;->getAccessibilityFocusedVirtualViewId()I

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public final getKeyboardFocusedVirtualViewId()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    .line 2
    return p0
    .line 4
.end method

.method public abstract getVirtualViewAt(FF)I
.end method

.method public abstract getVisibleVirtualViews(Ljava/util/List;)V
.end method

.method public final invalidateRoot()V
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0, v0, v1}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateVirtualView(II)V

    .line 4
    return-void
    .line 7
.end method

.method public final invalidateVirtualView(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateVirtualView(II)V

    return-void
.end method

.method public final invalidateVirtualView(II)V
    .locals 2

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x800

    .line 4
    invoke-virtual {p0, p1, v1}, Landroidx/customview/widget/ExploreByTouchHelper;->createEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    .line 5
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    .line 6
    iget-object p0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-interface {v0, p0, p1}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    :cond_0
    return-void
.end method

.method public final moveFocus(ILandroid/graphics/Rect;)Z
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    move/from16 v1, p1

    .line 4
    move-object/from16 v2, p2

    .line 6
    new-instance v3, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-virtual {v0, v3}, Landroidx/customview/widget/ExploreByTouchHelper;->getVisibleVirtualViews(Ljava/util/List;)V

    .line 13
    new-instance v4, Landroidx/collection/SparseArrayCompat;

    .line 16
    invoke-direct {v4}, Landroidx/collection/SparseArrayCompat;-><init>()V

    .line 18
    const/4 v5, 0x0

    .line 21
    move v6, v5

    .line 22
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 23
    move-result v7

    .line 26
    if-ge v6, v7, :cond_0

    .line 27
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v7

    .line 32
    check-cast v7, Ljava/lang/Integer;

    .line 33
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 35
    move-result v7

    .line 38
    invoke-virtual {v0, v7}, Landroidx/customview/widget/ExploreByTouchHelper;->createNodeForChild(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 39
    move-result-object v7

    .line 42
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 43
    move-result-object v8

    .line 46
    check-cast v8, Ljava/lang/Integer;

    .line 47
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 49
    move-result v8

    .line 52
    invoke-virtual {v4, v8, v7}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 53
    add-int/lit8 v6, v6, 0x1

    .line 56
    goto :goto_0

    .line 58
    :cond_0
    iget v3, v0, Landroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    .line 59
    const/high16 v6, -0x80000000

    .line 61
    if-ne v3, v6, :cond_1

    .line 63
    const/4 v3, 0x0

    .line 65
    goto :goto_1

    .line 66
    :cond_1
    invoke-virtual {v4, v3}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    .line 67
    move-result-object v3

    .line 70
    check-cast v3, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 71
    :goto_1
    const/4 v8, 0x1

    .line 73
    const/4 v9, 0x2

    .line 74
    const/4 v10, -0x1

    .line 75
    if-eq v1, v8, :cond_16

    .line 76
    if-eq v1, v9, :cond_16

    .line 78
    const/16 v9, 0x82

    .line 80
    const/16 v11, 0x42

    .line 82
    const/16 v12, 0x21

    .line 84
    const/16 v13, 0x11

    .line 86
    if-eq v1, v13, :cond_3

    .line 88
    if-eq v1, v12, :cond_3

    .line 90
    if-eq v1, v11, :cond_3

    .line 92
    if-ne v1, v9, :cond_2

    .line 94
    goto :goto_2

    .line 96
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 97
    const-string v1, "direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD, FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    .line 99
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 101
    throw v0

    .line 104
    :cond_3
    :goto_2
    new-instance v14, Landroid/graphics/Rect;

    .line 105
    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 107
    iget v15, v0, Landroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    .line 110
    const-string v7, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    .line 112
    if-eq v15, v6, :cond_4

    .line 114
    invoke-virtual {v0, v15}, Landroidx/customview/widget/ExploreByTouchHelper;->obtainAccessibilityNodeInfo(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 116
    move-result-object v2

    .line 119
    invoke-virtual {v2, v14}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 120
    goto :goto_3

    .line 123
    :cond_4
    if-eqz v2, :cond_5

    .line 124
    invoke-virtual {v14, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 126
    goto :goto_3

    .line 129
    :cond_5
    iget-object v2, v0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    .line 130
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 132
    move-result v15

    .line 135
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 136
    move-result v2

    .line 139
    if-eq v1, v13, :cond_9

    .line 140
    if-eq v1, v12, :cond_8

    .line 142
    if-eq v1, v11, :cond_7

    .line 144
    if-ne v1, v9, :cond_6

    .line 146
    invoke-virtual {v14, v5, v10, v15, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 148
    goto :goto_3

    .line 151
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 152
    invoke-direct {v0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 154
    throw v0

    .line 157
    :cond_7
    invoke-virtual {v14, v10, v5, v10, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 158
    goto :goto_3

    .line 161
    :cond_8
    invoke-virtual {v14, v5, v2, v15, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 162
    goto :goto_3

    .line 165
    :cond_9
    invoke-virtual {v14, v15, v5, v15, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 166
    :goto_3
    sget-object v2, Landroidx/customview/widget/ExploreByTouchHelper;->SPARSE_VALUES_ADAPTER:Landroidx/customview/widget/FocusStrategy$CollectionAdapter;

    .line 169
    sget-object v15, Landroidx/customview/widget/ExploreByTouchHelper;->NODE_ADAPTER:Landroidx/customview/widget/FocusStrategy$BoundsAdapter;

    .line 171
    new-instance v6, Landroid/graphics/Rect;

    .line 173
    invoke-direct {v6, v14}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 175
    if-eq v1, v13, :cond_d

    .line 178
    if-eq v1, v12, :cond_c

    .line 180
    if-eq v1, v11, :cond_b

    .line 182
    if-ne v1, v9, :cond_a

    .line 184
    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    .line 186
    move-result v7

    .line 189
    add-int/2addr v7, v8

    .line 190
    neg-int v7, v7

    .line 191
    invoke-virtual {v6, v5, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 192
    goto :goto_4

    .line 195
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 196
    invoke-direct {v0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 198
    throw v0

    .line 201
    :cond_b
    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    .line 202
    move-result v7

    .line 205
    add-int/2addr v7, v8

    .line 206
    neg-int v7, v7

    .line 207
    invoke-virtual {v6, v7, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 208
    goto :goto_4

    .line 211
    :cond_c
    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    .line 212
    move-result v7

    .line 215
    add-int/2addr v7, v8

    .line 216
    invoke-virtual {v6, v5, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 217
    goto :goto_4

    .line 220
    :cond_d
    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    .line 221
    move-result v7

    .line 224
    add-int/2addr v7, v8

    .line 225
    invoke-virtual {v6, v7, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 226
    :goto_4
    check-cast v2, Landroidx/customview/widget/ExploreByTouchHelper$1;

    .line 229
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 231
    iget v2, v4, Landroidx/collection/SparseArrayCompat;->size:I

    .line 234
    new-instance v7, Landroid/graphics/Rect;

    .line 236
    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 238
    move v9, v5

    .line 241
    const/16 v16, 0x0

    .line 242
    :goto_5
    if-ge v9, v2, :cond_15

    .line 244
    iget-object v11, v4, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    .line 246
    aget-object v11, v11, v9

    .line 248
    check-cast v11, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 250
    if-ne v11, v3, :cond_e

    .line 252
    goto :goto_9

    .line 254
    :cond_e
    move-object v12, v15

    .line 255
    check-cast v12, Landroidx/customview/widget/ExploreByTouchHelper$1;

    .line 256
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 258
    invoke-virtual {v11, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 261
    invoke-static {v14, v7, v1}, Landroidx/customview/widget/FocusStrategy;->isCandidate(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    .line 264
    move-result v12

    .line 267
    if-nez v12, :cond_f

    .line 268
    goto :goto_7

    .line 270
    :cond_f
    invoke-static {v14, v6, v1}, Landroidx/customview/widget/FocusStrategy;->isCandidate(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    .line 271
    move-result v12

    .line 274
    if-nez v12, :cond_10

    .line 275
    goto :goto_6

    .line 277
    :cond_10
    invoke-static {v1, v14, v7, v6}, Landroidx/customview/widget/FocusStrategy;->beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 278
    move-result v12

    .line 281
    if-eqz v12, :cond_11

    .line 282
    goto :goto_6

    .line 284
    :cond_11
    invoke-static {v1, v14, v6, v7}, Landroidx/customview/widget/FocusStrategy;->beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 285
    move-result v12

    .line 288
    if-eqz v12, :cond_12

    .line 289
    goto :goto_7

    .line 291
    :cond_12
    invoke-static {v14, v7, v1}, Landroidx/customview/widget/FocusStrategy;->majorAxisDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    .line 292
    move-result v12

    .line 295
    invoke-static {v14, v7, v1}, Landroidx/customview/widget/FocusStrategy;->minorAxisDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    .line 296
    move-result v13

    .line 299
    mul-int/lit8 v17, v12, 0xd

    .line 300
    mul-int v17, v17, v12

    .line 302
    mul-int/2addr v13, v13

    .line 304
    add-int v13, v13, v17

    .line 305
    invoke-static {v14, v6, v1}, Landroidx/customview/widget/FocusStrategy;->majorAxisDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    .line 307
    move-result v12

    .line 310
    invoke-static {v14, v6, v1}, Landroidx/customview/widget/FocusStrategy;->minorAxisDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    .line 311
    move-result v17

    .line 314
    mul-int/lit8 v18, v12, 0xd

    .line 315
    mul-int v18, v18, v12

    .line 317
    mul-int v17, v17, v17

    .line 319
    add-int v12, v17, v18

    .line 321
    if-ge v13, v12, :cond_13

    .line 323
    :goto_6
    move v12, v8

    .line 325
    goto :goto_8

    .line 326
    :cond_13
    :goto_7
    move v12, v5

    .line 327
    :goto_8
    if-eqz v12, :cond_14

    .line 328
    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 330
    move-object/from16 v16, v11

    .line 333
    :cond_14
    :goto_9
    add-int/lit8 v9, v9, 0x1

    .line 335
    goto :goto_5

    .line 337
    :cond_15
    :goto_a
    move-object/from16 v1, v16

    .line 338
    goto/16 :goto_10

    .line 340
    :cond_16
    iget-object v2, v0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    .line 342
    sget-object v6, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 344
    invoke-static {v2}, Landroidx/core/view/ViewCompat$Api17Impl;->getLayoutDirection(Landroid/view/View;)I

    .line 346
    move-result v2

    .line 349
    if-ne v2, v8, :cond_17

    .line 350
    move v2, v8

    .line 352
    goto :goto_b

    .line 353
    :cond_17
    move v2, v5

    .line 354
    :goto_b
    sget-object v6, Landroidx/customview/widget/ExploreByTouchHelper;->SPARSE_VALUES_ADAPTER:Landroidx/customview/widget/FocusStrategy$CollectionAdapter;

    .line 355
    sget-object v7, Landroidx/customview/widget/ExploreByTouchHelper;->NODE_ADAPTER:Landroidx/customview/widget/FocusStrategy$BoundsAdapter;

    .line 357
    check-cast v6, Landroidx/customview/widget/ExploreByTouchHelper$1;

    .line 359
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 361
    iget v6, v4, Landroidx/collection/SparseArrayCompat;->size:I

    .line 364
    new-instance v11, Ljava/util/ArrayList;

    .line 366
    invoke-direct {v11, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 368
    move v12, v5

    .line 371
    :goto_c
    if-ge v12, v6, :cond_18

    .line 372
    iget-object v13, v4, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    .line 374
    aget-object v13, v13, v12

    .line 376
    check-cast v13, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 378
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    add-int/lit8 v12, v12, 0x1

    .line 383
    goto :goto_c

    .line 385
    :cond_18
    new-instance v6, Landroidx/customview/widget/FocusStrategy$SequentialComparator;

    .line 386
    invoke-direct {v6, v2, v7}, Landroidx/customview/widget/FocusStrategy$SequentialComparator;-><init>(ZLandroidx/customview/widget/FocusStrategy$BoundsAdapter;)V

    .line 388
    invoke-static {v11, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 391
    if-eq v1, v8, :cond_1b

    .line 394
    if-ne v1, v9, :cond_1a

    .line 396
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 398
    move-result v1

    .line 401
    if-nez v3, :cond_19

    .line 402
    move v2, v10

    .line 404
    goto :goto_d

    .line 405
    :cond_19
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    .line 406
    move-result v2

    .line 409
    :goto_d
    add-int/2addr v2, v8

    .line 410
    if-ge v2, v1, :cond_1d

    .line 411
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 413
    move-result-object v7

    .line 416
    goto :goto_f

    .line 417
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 418
    const-string v1, "direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD}."

    .line 420
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 422
    throw v0

    .line 425
    :cond_1b
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 426
    move-result v1

    .line 429
    if-nez v3, :cond_1c

    .line 430
    goto :goto_e

    .line 432
    :cond_1c
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 433
    move-result v1

    .line 436
    :goto_e
    add-int/2addr v1, v10

    .line 437
    if-ltz v1, :cond_1d

    .line 438
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 440
    move-result-object v7

    .line 443
    goto :goto_f

    .line 444
    :cond_1d
    const/4 v7, 0x0

    .line 445
    :goto_f
    move-object/from16 v16, v7

    .line 446
    check-cast v16, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 448
    goto :goto_a

    .line 450
    :goto_10
    if-nez v1, :cond_1e

    .line 451
    const/high16 v6, -0x80000000

    .line 453
    goto :goto_13

    .line 455
    :cond_1e
    iget v2, v4, Landroidx/collection/SparseArrayCompat;->size:I

    .line 456
    :goto_11
    if-ge v5, v2, :cond_20

    .line 458
    iget-object v3, v4, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    .line 460
    aget-object v3, v3, v5

    .line 462
    if-ne v3, v1, :cond_1f

    .line 464
    move v10, v5

    .line 466
    goto :goto_12

    .line 467
    :cond_1f
    add-int/lit8 v5, v5, 0x1

    .line 468
    goto :goto_11

    .line 470
    :cond_20
    :goto_12
    iget-object v1, v4, Landroidx/collection/SparseArrayCompat;->keys:[I

    .line 471
    aget v6, v1, v10

    .line 473
    :goto_13
    invoke-virtual {v0, v6}, Landroidx/customview/widget/ExploreByTouchHelper;->requestKeyboardFocusForVirtualView(I)Z

    .line 475
    move-result v0

    .line 478
    return v0
    .line 479
.end method

.method public obtainAccessibilityNodeInfo(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 6

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p1, v0, :cond_3

    .line 3
    iget-object p1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    .line 5
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 7
    move-result-object p1

    .line 10
    new-instance v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 11
    invoke-direct {v0, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 13
    iget-object v1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    .line 16
    sget-object v2, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 18
    invoke-virtual {v1, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 20
    new-instance v1, Ljava/util/ArrayList;

    .line 23
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    invoke-virtual {p0, v1}, Landroidx/customview/widget/ExploreByTouchHelper;->getVisibleVirtualViews(Ljava/util/List;)V

    .line 28
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    .line 31
    move-result p1

    .line 34
    if-lez p1, :cond_1

    .line 35
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 37
    move-result p1

    .line 40
    if-gtz p1, :cond_0

    .line 41
    goto :goto_0

    .line 43
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    .line 44
    const-string p1, "Views cannot have both real and virtual children"

    .line 46
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 48
    throw p0

    .line 51
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 52
    move-result p1

    .line 55
    const/4 v2, 0x0

    .line 56
    :goto_1
    if-ge v2, p1, :cond_2

    .line 57
    iget-object v3, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    .line 59
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 61
    move-result-object v4

    .line 64
    check-cast v4, Ljava/lang/Integer;

    .line 65
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 67
    move-result v4

    .line 70
    iget-object v5, v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 71
    invoke-virtual {v5, v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 73
    add-int/lit8 v2, v2, 0x1

    .line 76
    goto :goto_1

    .line 78
    :cond_2
    return-object v0

    .line 79
    :cond_3
    invoke-virtual {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->createNodeForChild(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 80
    move-result-object p0

    .line 83
    return-object p0
    .line 84
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    .line 2
    const/high16 v1, -0x80000000

    .line 4
    if-eq v0, v1, :cond_0

    .line 6
    invoke-virtual {p0, v0}, Landroidx/customview/widget/ExploreByTouchHelper;->clearKeyboardFocusForVirtualView(I)Z

    .line 8
    :cond_0
    if-eqz p1, :cond_1

    .line 11
    invoke-virtual {p0, p2, p3}, Landroidx/customview/widget/ExploreByTouchHelper;->moveFocus(ILandroid/graphics/Rect;)Z

    .line 13
    :cond_1
    return-void
    .line 16
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    invoke-virtual {p0, p2}, Landroidx/customview/widget/ExploreByTouchHelper;->onPopulateEventForHost(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 5
    return-void
    .line 8
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 2
    invoke-virtual {p0, p2}, Landroidx/customview/widget/ExploreByTouchHelper;->onPopulateNodeForHost(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 5
    return-void
    .line 8
.end method

.method public abstract onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
.end method

.method public onPopulateEventForHost(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onPopulateNodeForHost(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public abstract onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
.end method

.method public onVirtualViewKeyboardFocusChanged(IZ)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 5

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p1, v0, :cond_7

    .line 3
    const/4 v0, 0x1

    .line 5
    if-eq p2, v0, :cond_6

    .line 6
    const/4 v1, 0x2

    .line 8
    if-eq p2, v1, :cond_5

    .line 9
    const/16 v1, 0x40

    .line 11
    const/high16 v2, 0x10000

    .line 13
    const/4 v3, 0x0

    .line 15
    const/high16 v4, -0x80000000

    .line 16
    if-eq p2, v1, :cond_2

    .line 18
    const/16 v1, 0x80

    .line 20
    if-eq p2, v1, :cond_0

    .line 22
    invoke-virtual {p0, p1, p2, p3}, Landroidx/customview/widget/ExploreByTouchHelper;->onPerformActionForVirtualView(IILandroid/os/Bundle;)Z

    .line 24
    move-result p0

    .line 27
    goto :goto_2

    .line 28
    :cond_0
    iget p2, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    .line 29
    if-ne p2, p1, :cond_1

    .line 31
    iput v4, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    .line 33
    iget-object p2, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    .line 35
    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    .line 37
    invoke-virtual {p0, p1, v2}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 40
    goto :goto_1

    .line 43
    :cond_1
    :goto_0
    move v0, v3

    .line 44
    :goto_1
    move p0, v0

    .line 45
    goto :goto_2

    .line 46
    :cond_2
    iget-object p2, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    .line 47
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 49
    move-result p2

    .line 52
    if-eqz p2, :cond_1

    .line 53
    iget-object p2, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    .line 55
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 57
    move-result p2

    .line 60
    if-nez p2, :cond_3

    .line 61
    goto :goto_0

    .line 63
    :cond_3
    iget p2, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    .line 64
    if-eq p2, p1, :cond_1

    .line 66
    if-eq p2, v4, :cond_4

    .line 68
    iput v4, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    .line 70
    iget-object p3, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    .line 72
    invoke-virtual {p3}, Landroid/view/View;->invalidate()V

    .line 74
    invoke-virtual {p0, p2, v2}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 77
    :cond_4
    iput p1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    .line 80
    iget-object p2, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    .line 82
    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    .line 84
    const p2, 0x8000

    .line 87
    invoke-virtual {p0, p1, p2}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 90
    goto :goto_1

    .line 93
    :cond_5
    invoke-virtual {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->clearKeyboardFocusForVirtualView(I)Z

    .line 94
    move-result p0

    .line 97
    goto :goto_2

    .line 98
    :cond_6
    invoke-virtual {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->requestKeyboardFocusForVirtualView(I)Z

    .line 99
    move-result p0

    .line 102
    :goto_2
    return p0

    .line 103
    :cond_7
    iget-object p0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    .line 104
    sget-object p1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 106
    invoke-static {p0, p2, p3}, Landroidx/core/view/ViewCompat$Api16Impl;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 108
    move-result p0

    .line 111
    return p0
    .line 112
.end method

.method public final requestKeyboardFocusForVirtualView(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    .line 11
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 13
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    return v1

    .line 19
    :cond_0
    iget v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    .line 20
    if-ne v0, p1, :cond_1

    .line 22
    return v1

    .line 24
    :cond_1
    const/high16 v2, -0x80000000

    .line 25
    if-eq v0, v2, :cond_2

    .line 27
    invoke-virtual {p0, v0}, Landroidx/customview/widget/ExploreByTouchHelper;->clearKeyboardFocusForVirtualView(I)Z

    .line 29
    :cond_2
    if-ne p1, v2, :cond_3

    .line 32
    return v1

    .line 34
    :cond_3
    iput p1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    .line 35
    const/4 v0, 0x1

    .line 37
    invoke-virtual {p0, p1, v0}, Landroidx/customview/widget/ExploreByTouchHelper;->onVirtualViewKeyboardFocusChanged(IZ)V

    .line 38
    const/16 v1, 0x8

    .line 41
    invoke-virtual {p0, p1, v1}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 43
    return v0
    .line 46
.end method

.method public final sendEventForVirtualView(II)Z
    .locals 2

    .line 1
    const/high16 v0, -0x80000000

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eq p1, v0, :cond_2

    .line 5
    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    .line 7
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 9
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 18
    move-result-object v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    return v1

    .line 24
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroidx/customview/widget/ExploreByTouchHelper;->createEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    .line 25
    move-result-object p1

    .line 28
    iget-object p0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    .line 29
    invoke-interface {v0, p0, p1}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 31
    move-result p0

    .line 34
    return p0

    .line 35
    :cond_2
    :goto_0
    return v1
    .line 36
.end method

.method public final setBoundsInScreenFromBoundsInParent(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Landroid/graphics/Rect;)V
    .locals 6

    .line 1
    invoke-virtual {p1, p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 10
    iget p2, p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mParentVirtualDescendantId:I

    .line 13
    const/4 v1, -0x1

    .line 15
    if-eq p2, v1, :cond_0

    .line 16
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 18
    move-result-object p2

    .line 21
    new-instance v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 22
    invoke-direct {v2, p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 24
    new-instance p2, Landroid/graphics/Rect;

    .line 27
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 29
    iget v3, p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mParentVirtualDescendantId:I

    .line 32
    :goto_0
    if-eq v3, v1, :cond_0

    .line 34
    iget-object v4, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    .line 36
    iput v1, v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mParentVirtualDescendantId:I

    .line 38
    iget-object v5, v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 40
    invoke-virtual {v5, v4, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;I)V

    .line 42
    sget-object v4, Landroidx/customview/widget/ExploreByTouchHelper;->INVALID_BOUNDS:Landroid/graphics/Rect;

    .line 45
    invoke-virtual {v2, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 47
    invoke-virtual {p0, v3, v2}, Landroidx/customview/widget/ExploreByTouchHelper;->onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 50
    invoke-virtual {v5, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 53
    iget v3, p2, Landroid/graphics/Rect;->left:I

    .line 56
    iget v4, p2, Landroid/graphics/Rect;->top:I

    .line 58
    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 60
    iget v3, v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mParentVirtualDescendantId:I

    .line 63
    goto :goto_0

    .line 65
    :cond_0
    iget-object p2, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    .line 66
    iget-object v1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    .line 68
    invoke-virtual {p2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 70
    iget-object p2, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    .line 73
    const/4 v1, 0x0

    .line 75
    aget p2, p2, v1

    .line 76
    iget-object v1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    .line 78
    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    .line 80
    move-result v1

    .line 83
    sub-int/2addr p2, v1

    .line 84
    iget-object v1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    .line 85
    const/4 v2, 0x1

    .line 87
    aget v1, v1, v2

    .line 88
    iget-object p0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    .line 90
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 92
    move-result p0

    .line 95
    sub-int/2addr v1, p0

    .line 96
    invoke-virtual {v0, p2, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 97
    iget-object p0, p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 100
    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 102
    return-void
    .line 105
.end method
