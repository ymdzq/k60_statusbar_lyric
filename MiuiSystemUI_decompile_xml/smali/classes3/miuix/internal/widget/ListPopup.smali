.class public Lmiuix/internal/widget/ListPopup;
.super Landroid/widget/PopupWindow;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mAdapter:Landroid/widget/ListAdapter;

.field public mAnchor:Ljava/lang/ref/WeakReference;

.field public final mBackgroundPadding:Landroid/graphics/Rect;

.field public final mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

.field public mContentView:Landroid/view/View;

.field public final mContext:Landroid/content/Context;

.field public mDropDownGravity:I

.field public final mElevation:I

.field public final mElevationExtra:I

.field public mHasShadow:Z

.field public mListView:Landroid/widget/ListView;

.field public mMaxAllowedHeight:I

.field public final mMaxAllowedWidth:I

.field public final mMinAllowedWidth:I

.field public final mMinMarginScreen:I

.field public final mObserver:Lmiuix/internal/widget/ListPopup$1;

.field public mOffsetX:I

.field public mOffsetXSet:Z

.field public mOffsetY:I

.field public mOffsetYSet:Z

.field public mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field public mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field public final mRootView:Lmiuix/smooth/SmoothFrameLayout2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 2
    const v0, 0x800035

    .line 5
    iput v0, p0, Lmiuix/internal/widget/ListPopup;->mDropDownGravity:I

    .line 8
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lmiuix/internal/widget/ListPopup;->mHasShadow:Z

    .line 11
    new-instance v1, Lmiuix/internal/widget/ListPopup$1;

    .line 13
    invoke-direct {v1, p0}, Lmiuix/internal/widget/ListPopup$1;-><init>(Lmiuix/internal/widget/ListPopup;)V

    .line 15
    iput-object v1, p0, Lmiuix/internal/widget/ListPopup;->mObserver:Lmiuix/internal/widget/ListPopup$1;

    .line 18
    iput-object p1, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    .line 20
    const/4 v1, -0x2

    .line 22
    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 26
    move-result-object v1

    .line 29
    const-string v2, "window"

    .line 30
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    move-result-object v2

    .line 35
    check-cast v2, Landroid/view/WindowManager;

    .line 36
    new-instance v3, Landroid/util/DisplayMetrics;

    .line 38
    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 40
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 43
    move-result-object v2

    .line 46
    invoke-virtual {v2, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 47
    iget v2, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 50
    iget v4, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 52
    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 54
    const v5, 0x7f070af7    # @dimen/miuix_appcompat_list_menu_dialog_maximum_width '349.8dp'

    .line 56
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 59
    move-result v5

    .line 62
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    .line 63
    move-result v2

    .line 66
    iput v2, p0, Lmiuix/internal/widget/ListPopup;->mMaxAllowedWidth:I

    .line 67
    const v2, 0x7f070af9    # @dimen/miuix_appcompat_list_menu_dialog_minimum_width '200.0dp'

    .line 69
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 72
    move-result v2

    .line 75
    iput v2, p0, Lmiuix/internal/widget/ListPopup;->mMinAllowedWidth:I

    .line 76
    const v2, 0x7f070af6    # @dimen/miuix_appcompat_list_menu_dialog_maximum_height '640.0dp'

    .line 78
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 81
    move-result v1

    .line 84
    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    .line 85
    move-result v1

    .line 88
    iput v1, p0, Lmiuix/internal/widget/ListPopup;->mMaxAllowedHeight:I

    .line 89
    const/high16 v1, 0x41000000    # 8.0f

    .line 91
    mul-float/2addr v3, v1

    .line 93
    float-to-int v1, v3

    .line 94
    iput v1, p0, Lmiuix/internal/widget/ListPopup;->mOffsetX:I

    .line 95
    iput v1, p0, Lmiuix/internal/widget/ListPopup;->mOffsetY:I

    .line 97
    new-instance v1, Landroid/graphics/Rect;

    .line 99
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 101
    iput-object v1, p0, Lmiuix/internal/widget/ListPopup;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 104
    new-instance v1, Lmiuix/internal/widget/ListPopup$ContentSize;

    .line 106
    invoke-direct {v1}, Lmiuix/internal/widget/ListPopup$ContentSize;-><init>()V

    .line 108
    iput-object v1, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    .line 111
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 113
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 116
    new-instance v0, Lmiuix/smooth/SmoothFrameLayout2;

    .line 119
    invoke-direct {v0, p1}, Lmiuix/smooth/SmoothFrameLayout2;-><init>(Landroid/content/Context;)V

    .line 121
    iput-object v0, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Lmiuix/smooth/SmoothFrameLayout2;

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 126
    move-result-object v1

    .line 129
    const v2, 0x7f070aef    # @dimen/miuix_appcompat_immersion_menu_background_radius '16.0dp'

    .line 130
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 133
    move-result v1

    .line 136
    int-to-float v1, v1

    .line 137
    invoke-virtual {v0, v1}, Lmiuix/smooth/SmoothFrameLayout2;->setCornerRadius(F)V

    .line 138
    new-instance v1, Lmiuix/internal/widget/ListPopup$$ExternalSyntheticLambda0;

    .line 141
    invoke-direct {v1, p0}, Lmiuix/internal/widget/ListPopup$$ExternalSyntheticLambda0;-><init>(Lmiuix/internal/widget/ListPopup;)V

    .line 143
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    invoke-virtual {p0, p1}, Lmiuix/internal/widget/ListPopup;->prepareContentView(Landroid/content/Context;)V

    .line 149
    const v0, 0x7f14001f    # @style/Animation.PopupWindow.ImmersionMenu

    .line 152
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 155
    const v0, 0x7f0405e3    # @attr/popupWindowElevation

    .line 158
    invoke-static {v0, p1}, Lmiuix/internal/util/AttributeResolver;->resolveDimensionPixelSize(ILandroid/content/Context;)I

    .line 161
    move-result v0

    .line 164
    iput v0, p0, Lmiuix/internal/widget/ListPopup;->mElevation:I

    .line 165
    new-instance v0, Lmiuix/internal/widget/ListPopup$$ExternalSyntheticLambda1;

    .line 167
    invoke-direct {v0, p0}, Lmiuix/internal/widget/ListPopup$$ExternalSyntheticLambda1;-><init>(Lmiuix/internal/widget/ListPopup;)V

    .line 169
    invoke-super {p0, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 172
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 175
    move-result-object v0

    .line 178
    const v1, 0x7f070a51    # @dimen/miuix_appcompat_context_menu_window_margin_screen '16.0dp'

    .line 179
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 182
    move-result v0

    .line 185
    iput v0, p0, Lmiuix/internal/widget/ListPopup;->mMinMarginScreen:I

    .line 186
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 188
    move-result-object v0

    .line 191
    const v1, 0x7f070a52    # @dimen/miuix_appcompat_context_menu_window_margin_statusbar '8.0dp'

    .line 192
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 195
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 198
    move-result-object p1

    .line 201
    const v0, 0x7f070b05    # @dimen/miuix_appcompat_menu_popup_extra_elevation '20.0dp'

    .line 202
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 205
    move-result p1

    .line 208
    iput p1, p0, Lmiuix/internal/widget/ListPopup;->mElevationExtra:I

    .line 209
    return-void
    .line 211
.end method

.method public static changeWindowBackground(Landroid/view/View;)V
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 5
    move-result-object v0

    .line 8
    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 9
    if-nez v0, :cond_1

    .line 11
    return-void

    .line 13
    :cond_1
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 14
    or-int/lit8 v1, v1, 0x2

    .line 16
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 18
    const v1, 0x3e99999a    # 0.3f

    .line 20
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 25
    move-result-object v1

    .line 28
    const-string v2, "window"

    .line 29
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    move-result-object v1

    .line 34
    check-cast v1, Landroid/view/WindowManager;

    .line 35
    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    return-void
    .line 40
.end method


# virtual methods
.method public final calculateXoffset(Landroid/view/View;)I
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [I

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 5
    invoke-static {p1}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    .line 8
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v1, :cond_0

    .line 14
    aget v1, v0, v3

    .line 16
    iget v4, p0, Lmiuix/internal/widget/ListPopup;->mOffsetX:I

    .line 18
    sub-int/2addr v1, v4

    .line 20
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    .line 21
    move-result v4

    .line 24
    add-int/2addr v4, v1

    .line 25
    iget v1, p0, Lmiuix/internal/widget/ListPopup;->mMinMarginScreen:I

    .line 26
    add-int/2addr v4, v1

    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 29
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 33
    move-result v1

    .line 36
    if-le v4, v1, :cond_1

    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 39
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 43
    move-result v1

    .line 46
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    .line 47
    move-result v4

    .line 50
    sub-int/2addr v1, v4

    .line 51
    iget v4, p0, Lmiuix/internal/widget/ListPopup;->mMinMarginScreen:I

    .line 52
    sub-int/2addr v1, v4

    .line 54
    aget v0, v0, v3

    .line 55
    sub-int/2addr v1, v0

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    aget v1, v0, v3

    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 61
    move-result v4

    .line 64
    add-int/2addr v4, v1

    .line 65
    iget v1, p0, Lmiuix/internal/widget/ListPopup;->mOffsetX:I

    .line 66
    add-int/2addr v4, v1

    .line 68
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    .line 69
    move-result v1

    .line 72
    sub-int/2addr v4, v1

    .line 73
    iget v1, p0, Lmiuix/internal/widget/ListPopup;->mMinMarginScreen:I

    .line 74
    sub-int/2addr v4, v1

    .line 76
    if-gez v4, :cond_1

    .line 77
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    .line 79
    move-result v1

    .line 82
    iget v4, p0, Lmiuix/internal/widget/ListPopup;->mMinMarginScreen:I

    .line 83
    add-int/2addr v1, v4

    .line 85
    aget v0, v0, v3

    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 88
    move-result v4

    .line 91
    add-int/2addr v4, v0

    .line 92
    sub-int/2addr v1, v4

    .line 93
    goto :goto_0

    .line 94
    :cond_1
    move v1, v3

    .line 95
    move v2, v1

    .line 96
    :goto_0
    if-nez v2, :cond_5

    .line 97
    iget-boolean v0, p0, Lmiuix/internal/widget/ListPopup;->mOffsetXSet:Z

    .line 99
    if-eqz v0, :cond_2

    .line 101
    iget v3, p0, Lmiuix/internal/widget/ListPopup;->mOffsetX:I

    .line 103
    :cond_2
    if-eqz v3, :cond_4

    .line 105
    if-nez v0, :cond_4

    .line 107
    invoke-static {p1}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    .line 109
    move-result p1

    .line 112
    if-eqz p1, :cond_3

    .line 113
    iget-object p1, p0, Lmiuix/internal/widget/ListPopup;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 115
    iget p1, p1, Landroid/graphics/Rect;->left:I

    .line 117
    iget p0, p0, Lmiuix/internal/widget/ListPopup;->mOffsetX:I

    .line 119
    sub-int/2addr p1, p0

    .line 121
    sub-int v1, v3, p1

    .line 122
    goto :goto_1

    .line 124
    :cond_3
    iget-object p1, p0, Lmiuix/internal/widget/ListPopup;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 125
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 127
    iget p0, p0, Lmiuix/internal/widget/ListPopup;->mOffsetX:I

    .line 129
    sub-int/2addr p1, p0

    .line 131
    add-int v1, p1, v3

    .line 132
    goto :goto_1

    .line 134
    :cond_4
    move v1, v3

    .line 135
    :cond_5
    :goto_1
    return v1
    .line 136
.end method

.method public final calculateYoffset(Landroid/view/View;)I
    .locals 5

    .line 1
    iget-boolean v0, p0, Lmiuix/internal/widget/ListPopup;->mOffsetYSet:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget v0, p0, Lmiuix/internal/widget/ListPopup;->mOffsetY:I

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 9
    move-result v0

    .line 12
    neg-int v0, v0

    .line 13
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 14
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 16
    sub-int/2addr v0, v1

    .line 18
    iget v1, p0, Lmiuix/internal/widget/ListPopup;->mOffsetY:I

    .line 19
    add-int/2addr v0, v1

    .line 21
    :goto_0
    const/4 v1, 0x2

    .line 22
    new-array v1, v1, [I

    .line 23
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 25
    const/4 v2, 0x1

    .line 28
    aget v1, v1, v2

    .line 29
    int-to-float v1, v1

    .line 31
    iget-object v2, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    .line 32
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 34
    move-result-object v2

    .line 37
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 38
    move-result-object v2

    .line 41
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 42
    invoke-virtual {p0}, Lmiuix/internal/widget/ListPopup;->checkMaxHeight()I

    .line 44
    move-result v3

    .line 47
    if-lez v3, :cond_1

    .line 48
    iget-object v4, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    .line 50
    iget v4, v4, Lmiuix/internal/widget/ListPopup$ContentSize;->mHeight:I

    .line 52
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    .line 54
    move-result v3

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    iget-object v3, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    .line 59
    iget v3, v3, Lmiuix/internal/widget/ListPopup$ContentSize;->mHeight:I

    .line 61
    :goto_1
    if-ge v3, v2, :cond_3

    .line 63
    int-to-float v4, v0

    .line 65
    add-float/2addr v1, v4

    .line 66
    int-to-float v4, v3

    .line 67
    add-float/2addr v1, v4

    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 69
    move-result v4

    .line 72
    int-to-float v4, v4

    .line 73
    add-float/2addr v1, v4

    .line 74
    int-to-float v2, v2

    .line 75
    cmpl-float v1, v1, v2

    .line 76
    if-lez v1, :cond_3

    .line 78
    iget-boolean p0, p0, Lmiuix/internal/widget/ListPopup;->mOffsetYSet:Z

    .line 80
    if-eqz p0, :cond_2

    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 84
    move-result p0

    .line 87
    goto :goto_2

    .line 88
    :cond_2
    const/4 p0, 0x0

    .line 89
    :goto_2
    add-int/2addr p0, v3

    .line 90
    sub-int/2addr v0, p0

    .line 91
    :cond_3
    return v0
    .line 92
.end method

.method public checkMaxHeight()I
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    .line 2
    const-string v1, "window"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 9
    check-cast v0, Landroid/view/WindowManager;

    .line 10
    new-instance v1, Landroid/util/DisplayMetrics;

    .line 12
    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 14
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 17
    move-result-object v0

    .line 20
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 21
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 24
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    .line 26
    invoke-static {v1}, Lmiuix/core/util/EnvStateManager;->getStatusBarHeight(Landroid/content/Context;)I

    .line 28
    move-result v1

    .line 31
    sub-int/2addr v0, v1

    .line 32
    iget p0, p0, Lmiuix/internal/widget/ListPopup;->mMaxAllowedHeight:I

    .line 33
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    .line 35
    move-result p0

    .line 38
    return p0
    .line 39
.end method

.method public final computePopupContentWidth()I
    .locals 15

    .line 1
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    .line 2
    iget-boolean v0, v0, Lmiuix/internal/widget/ListPopup$ContentSize;->mHasContentWidth:Z

    .line 4
    if-nez v0, :cond_7

    .line 6
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mAdapter:Landroid/widget/ListAdapter;

    .line 8
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    .line 10
    iget v2, p0, Lmiuix/internal/widget/ListPopup;->mMaxAllowedWidth:I

    .line 12
    const/4 v3, 0x0

    .line 14
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 15
    move-result v4

    .line 18
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 19
    move-result v5

    .line 22
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    .line 23
    move-result v6

    .line 26
    const/4 v7, 0x0

    .line 27
    move v8, v3

    .line 28
    move v9, v8

    .line 29
    move v10, v9

    .line 30
    move-object v11, v7

    .line 31
    move-object v12, v11

    .line 32
    :goto_0
    const/4 v13, 0x1

    .line 33
    if-ge v3, v6, :cond_5

    .line 34
    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    .line 36
    move-result v14

    .line 39
    if-eq v14, v8, :cond_0

    .line 40
    move-object v12, v7

    .line 42
    move v8, v14

    .line 43
    :cond_0
    if-nez v11, :cond_1

    .line 44
    new-instance v11, Landroid/widget/FrameLayout;

    .line 46
    invoke-direct {v11, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 48
    :cond_1
    invoke-interface {v0, v3, v12, v11}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 51
    move-result-object v12

    .line 54
    invoke-virtual {v12, v4, v5}, Landroid/view/View;->measure(II)V

    .line 55
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    .line 58
    move-result v14

    .line 61
    add-int/2addr v10, v14

    .line 62
    iget-object v14, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    .line 63
    iget-boolean v14, v14, Lmiuix/internal/widget/ListPopup$ContentSize;->mHasContentWidth:Z

    .line 65
    if-eqz v14, :cond_2

    .line 67
    goto :goto_1

    .line 69
    :cond_2
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    .line 70
    move-result v14

    .line 73
    if-lt v14, v2, :cond_3

    .line 74
    iget-object v14, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    .line 76
    iput v2, v14, Lmiuix/internal/widget/ListPopup$ContentSize;->mWidth:I

    .line 78
    iput-boolean v13, v14, Lmiuix/internal/widget/ListPopup$ContentSize;->mHasContentWidth:Z

    .line 80
    goto :goto_1

    .line 82
    :cond_3
    if-le v14, v9, :cond_4

    .line 83
    move v9, v14

    .line 85
    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 86
    goto :goto_0

    .line 88
    :cond_5
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    .line 89
    iget-boolean v1, v0, Lmiuix/internal/widget/ListPopup$ContentSize;->mHasContentWidth:Z

    .line 91
    if-nez v1, :cond_6

    .line 93
    iput v9, v0, Lmiuix/internal/widget/ListPopup$ContentSize;->mWidth:I

    .line 95
    iput-boolean v13, v0, Lmiuix/internal/widget/ListPopup$ContentSize;->mHasContentWidth:Z

    .line 97
    :cond_6
    iput v10, v0, Lmiuix/internal/widget/ListPopup$ContentSize;->mHeight:I

    .line 99
    :cond_7
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    .line 101
    iget v0, v0, Lmiuix/internal/widget/ListPopup$ContentSize;->mWidth:I

    .line 103
    iget v1, p0, Lmiuix/internal/widget/ListPopup;->mMinAllowedWidth:I

    .line 105
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 107
    move-result v0

    .line 110
    iget-object p0, p0, Lmiuix/internal/widget/ListPopup;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 111
    iget v1, p0, Landroid/graphics/Rect;->left:I

    .line 113
    add-int/2addr v0, v1

    .line 115
    iget p0, p0, Landroid/graphics/Rect;->right:I

    .line 116
    add-int/2addr v0, p0

    .line 118
    return v0
    .line 119
.end method

.method public final dismiss()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2
    iget-object p0, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    .line 5
    invoke-static {p0}, Lmiuix/appcompat/internal/util/SinglePopControl;->getHashKey(Landroid/content/Context;)I

    .line 7
    move-result p0

    .line 10
    sget-object v0, Lmiuix/appcompat/internal/util/SinglePopControl;->sPops:Landroid/util/SparseArray;

    .line 11
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 13
    return-void
    .line 16
.end method

.method public final getHorizontalOffset()I
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/internal/widget/ListPopup;->mOffsetX:I

    .line 2
    return p0
    .line 4
.end method

.method public final getVerticalOffset()I
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/internal/widget/ListPopup;->mOffsetY:I

    .line 2
    return p0
    .line 4
.end method

.method public isNeedScroll()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lmiuix/internal/widget/ListPopup;->checkMaxHeight()I

    .line 2
    move-result v0

    .line 5
    iget-object p0, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    .line 6
    iget p0, p0, Lmiuix/internal/widget/ListPopup$ContentSize;->mHeight:I

    .line 8
    if-le p0, v0, :cond_0

    .line 10
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
    .line 15
.end method

.method public prepareContentView(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    .line 2
    const v0, 0x7f0403cd    # @attr/immersionWindowBackground

    .line 4
    invoke-static {v0, p1}, Lmiuix/internal/util/AttributeResolver;->resolveDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 7
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 13
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 15
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Lmiuix/smooth/SmoothFrameLayout2;

    .line 18
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 20
    :cond_0
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    .line 23
    const/4 v0, 0x0

    .line 25
    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 26
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 29
    iget-object p1, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Lmiuix/smooth/SmoothFrameLayout2;

    .line 32
    invoke-super {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 34
    return-void
    .line 37
.end method

.method public final prepareShow(Landroid/view/View;)Z
    .locals 6

    .line 1
    const-string v0, "ListPopupWindow"

    .line 2
    const/4 v1, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 5
    const-string p0, "show: anchor is null"

    .line 7
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    return v1

    .line 12
    :cond_0
    iget-object v2, p0, Lmiuix/internal/widget/ListPopup;->mContentView:Landroid/view/View;

    .line 13
    if-nez v2, :cond_1

    .line 15
    iget-object v2, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    .line 17
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 19
    move-result-object v2

    .line 22
    const v3, 0x7f0d0209    # @layout/miuix_appcompat_list_popup_list 'res/layout/miuix_appcompat_list_popup_list.xml'

    .line 23
    const/4 v4, 0x0

    .line 26
    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 27
    move-result-object v2

    .line 30
    iput-object v2, p0, Lmiuix/internal/widget/ListPopup;->mContentView:Landroid/view/View;

    .line 31
    new-instance v3, Lmiuix/internal/widget/ListPopup$2;

    .line 33
    invoke-direct {v3, p0}, Lmiuix/internal/widget/ListPopup$2;-><init>(Lmiuix/internal/widget/ListPopup;)V

    .line 35
    invoke-virtual {v2, v3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 38
    :cond_1
    iget-object v2, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Lmiuix/smooth/SmoothFrameLayout2;

    .line 41
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 43
    move-result v2

    .line 46
    const/4 v3, -0x2

    .line 47
    const/4 v4, 0x1

    .line 48
    if-ne v2, v4, :cond_2

    .line 49
    iget-object v2, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Lmiuix/smooth/SmoothFrameLayout2;

    .line 51
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    .line 53
    move-result-object v2

    .line 56
    iget-object v5, p0, Lmiuix/internal/widget/ListPopup;->mContentView:Landroid/view/View;

    .line 57
    if-eq v2, v5, :cond_3

    .line 59
    :cond_2
    iget-object v2, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Lmiuix/smooth/SmoothFrameLayout2;

    .line 61
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 63
    iget-object v2, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Lmiuix/smooth/SmoothFrameLayout2;

    .line 66
    iget-object v5, p0, Lmiuix/internal/widget/ListPopup;->mContentView:Landroid/view/View;

    .line 68
    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 70
    iget-object v2, p0, Lmiuix/internal/widget/ListPopup;->mContentView:Landroid/view/View;

    .line 73
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 75
    move-result-object v2

    .line 78
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 79
    const/4 v5, -0x1

    .line 81
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 82
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 84
    const/16 v5, 0x10

    .line 86
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 88
    :cond_3
    iget-boolean v2, p0, Lmiuix/internal/widget/ListPopup;->mHasShadow:Z

    .line 90
    if-eqz v2, :cond_4

    .line 92
    iget-object v2, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Lmiuix/smooth/SmoothFrameLayout2;

    .line 94
    iget v5, p0, Lmiuix/internal/widget/ListPopup;->mElevation:I

    .line 96
    int-to-float v5, v5

    .line 98
    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setElevation(F)V

    .line 99
    iget v2, p0, Lmiuix/internal/widget/ListPopup;->mElevation:I

    .line 102
    iget v5, p0, Lmiuix/internal/widget/ListPopup;->mElevationExtra:I

    .line 104
    add-int/2addr v2, v5

    .line 106
    int-to-float v2, v2

    .line 107
    invoke-virtual {p0, v2}, Landroid/widget/PopupWindow;->setElevation(F)V

    .line 108
    iget-object v2, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Lmiuix/smooth/SmoothFrameLayout2;

    .line 111
    invoke-virtual {p0, v2}, Lmiuix/internal/widget/ListPopup;->setPopupShadowAlpha(Landroid/view/View;)V

    .line 113
    :cond_4
    iget-object v2, p0, Lmiuix/internal/widget/ListPopup;->mContentView:Landroid/view/View;

    .line 116
    const v5, 0x102000a    # @android:id/list

    .line 118
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 121
    move-result-object v2

    .line 124
    check-cast v2, Landroid/widget/ListView;

    .line 125
    iput-object v2, p0, Lmiuix/internal/widget/ListPopup;->mListView:Landroid/widget/ListView;

    .line 127
    if-nez v2, :cond_5

    .line 129
    const-string p0, "list not found"

    .line 131
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return v1

    .line 136
    :cond_5
    new-instance v0, Lmiuix/internal/widget/ListPopup$$ExternalSyntheticLambda2;

    .line 137
    invoke-direct {v0, p0}, Lmiuix/internal/widget/ListPopup$$ExternalSyntheticLambda2;-><init>(Lmiuix/internal/widget/ListPopup;)V

    .line 139
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 142
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mListView:Landroid/widget/ListView;

    .line 145
    iget-object v2, p0, Lmiuix/internal/widget/ListPopup;->mAdapter:Landroid/widget/ListAdapter;

    .line 147
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 149
    invoke-virtual {p0}, Lmiuix/internal/widget/ListPopup;->computePopupContentWidth()I

    .line 152
    move-result v0

    .line 155
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 156
    invoke-virtual {p0}, Lmiuix/internal/widget/ListPopup;->checkMaxHeight()I

    .line 159
    move-result v0

    .line 162
    if-lez v0, :cond_6

    .line 163
    iget-object v2, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    .line 165
    iget v2, v2, Lmiuix/internal/widget/ListPopup$ContentSize;->mHeight:I

    .line 167
    if-le v2, v0, :cond_6

    .line 169
    move v3, v0

    .line 171
    :cond_6
    invoke-virtual {p0, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 172
    iget-object p0, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    .line 175
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 177
    move-result-object p0

    .line 180
    const-string v0, "input_method"

    .line 181
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 183
    move-result-object p0

    .line 186
    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    .line 187
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 189
    move-result-object p1

    .line 192
    invoke-virtual {p0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 193
    return v4
    .line 196
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mAdapter:Landroid/widget/ListAdapter;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mObserver:Lmiuix/internal/widget/ListPopup$1;

    .line 6
    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 8
    :cond_0
    iput-object p1, p0, Lmiuix/internal/widget/ListPopup;->mAdapter:Landroid/widget/ListAdapter;

    .line 11
    iget-object p0, p0, Lmiuix/internal/widget/ListPopup;->mObserver:Lmiuix/internal/widget/ListPopup$1;

    .line 13
    invoke-interface {p1, p0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 15
    return-void
    .line 18
.end method

.method public final setHorizontalOffset(I)V
    .locals 0

    .line 1
    iput p1, p0, Lmiuix/internal/widget/ListPopup;->mOffsetX:I

    .line 2
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lmiuix/internal/widget/ListPopup;->mOffsetXSet:Z

    .line 5
    return-void
    .line 7
.end method

.method public final setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/internal/widget/ListPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 2
    return-void
    .line 4
.end method

.method public final setPopupShadowAlpha(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Lmiuix/core/util/MiuixUIUtils;->isFreeformMode(Landroid/content/Context;)Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    const/4 p0, 0x0

    .line 10
    invoke-virtual {p1, p0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 11
    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Lmiuix/internal/widget/ListPopup$3;

    .line 15
    invoke-direct {v0}, Lmiuix/internal/widget/ListPopup$3;-><init>()V

    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 20
    iget-object p0, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    .line 23
    const v0, 0x7f0604d2    # @color/miuix_appcompat_drop_down_menu_spot_shadow_color '#59000000'

    .line 25
    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    .line 28
    move-result p0

    .line 31
    invoke-virtual {p1, p0}, Landroid/view/View;->setOutlineSpotShadowColor(I)V

    .line 32
    :goto_0
    return-void
    .line 35
.end method

.method public final setPopupWindowContentView(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 2
    return-void
    .line 5
.end method

.method public final setVerticalOffset(I)V
    .locals 0

    .line 1
    iput p1, p0, Lmiuix/internal/widget/ListPopup;->mOffsetY:I

    .line 2
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lmiuix/internal/widget/ListPopup;->mOffsetYSet:Z

    .line 5
    return-void
    .line 7
.end method

.method public final show(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/internal/widget/ListPopup;->prepareShow(Landroid/view/View;)Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Lmiuix/internal/widget/ListPopup;->calculateYoffset(Landroid/view/View;)I

    .line 8
    move-result v0

    .line 11
    invoke-virtual {p0, p1}, Lmiuix/internal/widget/ListPopup;->calculateXoffset(Landroid/view/View;)I

    .line 12
    move-result v1

    .line 15
    iget v2, p0, Lmiuix/internal/widget/ListPopup;->mDropDownGravity:I

    .line 16
    invoke-virtual {p0, p1, v1, v0, v2}, Lmiuix/internal/widget/ListPopup;->showAsDropDown(Landroid/view/View;III)V

    .line 18
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_BUTTON_SMALL:I

    .line 21
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_POPUP_NORMAL:I

    .line 23
    invoke-static {p1, v0, v1}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;II)V

    .line 25
    iget-object p0, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Lmiuix/smooth/SmoothFrameLayout2;

    .line 28
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    .line 30
    move-result-object p0

    .line 33
    invoke-static {p0}, Lmiuix/internal/widget/ListPopup;->changeWindowBackground(Landroid/view/View;)V

    .line 34
    :cond_0
    return-void
    .line 37
.end method

.method public final showAsDropDown(Landroid/view/View;III)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    .line 2
    new-instance p2, Ljava/lang/ref/WeakReference;

    .line 5
    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    iput-object p2, p0, Lmiuix/internal/widget/ListPopup;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 10
    iget-object p1, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    .line 12
    invoke-static {p1, p0}, Lmiuix/appcompat/internal/util/SinglePopControl;->showPop(Landroid/content/Context;Ljava/lang/Object;)V

    .line 14
    return-void
    .line 17
.end method

.method public final showAtLocation(Landroid/view/View;III)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 2
    iget-object p1, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    .line 5
    invoke-static {p1, p0}, Lmiuix/appcompat/internal/util/SinglePopControl;->showPop(Landroid/content/Context;Ljava/lang/Object;)V

    .line 7
    return-void
    .line 10
.end method
