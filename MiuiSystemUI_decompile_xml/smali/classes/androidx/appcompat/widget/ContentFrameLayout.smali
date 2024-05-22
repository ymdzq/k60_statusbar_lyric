.class public Landroidx/appcompat/widget/ContentFrameLayout;
.super Landroid/widget/FrameLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mAttachListener:Landroidx/appcompat/widget/ContentFrameLayout$OnAttachListener;

.field public final mDecorPadding:Landroid/graphics/Rect;

.field public mFixedHeightMajor:Landroid/util/TypedValue;

.field public mFixedHeightMinor:Landroid/util/TypedValue;

.field public mFixedWidthMajor:Landroid/util/TypedValue;

.field public mFixedWidthMinor:Landroid/util/TypedValue;

.field public mMinWidthMajor:Landroid/util/TypedValue;

.field public mMinWidthMinor:Landroid/util/TypedValue;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/ContentFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/ContentFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/ContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public getFixedHeightMajor()Landroid/util/TypedValue;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->mFixedHeightMajor:Landroid/util/TypedValue;

    .line 2
    if-nez v0, :cond_0

    .line 4
    new-instance v0, Landroid/util/TypedValue;

    .line 6
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 8
    iput-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->mFixedHeightMajor:Landroid/util/TypedValue;

    .line 11
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->mFixedHeightMajor:Landroid/util/TypedValue;

    .line 13
    return-object p0
    .line 15
.end method

.method public getFixedHeightMinor()Landroid/util/TypedValue;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->mFixedHeightMinor:Landroid/util/TypedValue;

    .line 2
    if-nez v0, :cond_0

    .line 4
    new-instance v0, Landroid/util/TypedValue;

    .line 6
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 8
    iput-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->mFixedHeightMinor:Landroid/util/TypedValue;

    .line 11
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->mFixedHeightMinor:Landroid/util/TypedValue;

    .line 13
    return-object p0
    .line 15
.end method

.method public getFixedWidthMajor()Landroid/util/TypedValue;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->mFixedWidthMajor:Landroid/util/TypedValue;

    .line 2
    if-nez v0, :cond_0

    .line 4
    new-instance v0, Landroid/util/TypedValue;

    .line 6
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 8
    iput-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->mFixedWidthMajor:Landroid/util/TypedValue;

    .line 11
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->mFixedWidthMajor:Landroid/util/TypedValue;

    .line 13
    return-object p0
    .line 15
.end method

.method public getFixedWidthMinor()Landroid/util/TypedValue;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->mFixedWidthMinor:Landroid/util/TypedValue;

    .line 2
    if-nez v0, :cond_0

    .line 4
    new-instance v0, Landroid/util/TypedValue;

    .line 6
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 8
    iput-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->mFixedWidthMinor:Landroid/util/TypedValue;

    .line 11
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->mFixedWidthMinor:Landroid/util/TypedValue;

    .line 13
    return-object p0
    .line 15
.end method

.method public getMinWidthMajor()Landroid/util/TypedValue;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->mMinWidthMajor:Landroid/util/TypedValue;

    .line 2
    if-nez v0, :cond_0

    .line 4
    new-instance v0, Landroid/util/TypedValue;

    .line 6
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 8
    iput-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->mMinWidthMajor:Landroid/util/TypedValue;

    .line 11
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->mMinWidthMajor:Landroid/util/TypedValue;

    .line 13
    return-object p0
    .line 15
.end method

.method public getMinWidthMinor()Landroid/util/TypedValue;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->mMinWidthMinor:Landroid/util/TypedValue;

    .line 2
    if-nez v0, :cond_0

    .line 4
    new-instance v0, Landroid/util/TypedValue;

    .line 6
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 8
    iput-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->mMinWidthMinor:Landroid/util/TypedValue;

    .line 11
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->mMinWidthMinor:Landroid/util/TypedValue;

    .line 13
    return-object p0
    .line 15
.end method

.method public final onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    iget-object p0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->mAttachListener:Landroidx/appcompat/widget/ContentFrameLayout$OnAttachListener;

    .line 5
    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    :cond_0
    return-void
    .line 12
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    iget-object p0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->mAttachListener:Landroidx/appcompat/widget/ContentFrameLayout$OnAttachListener;

    .line 5
    if-eqz p0, :cond_4

    .line 7
    check-cast p0, Landroidx/appcompat/app/AppCompatDelegateImpl$3;

    .line 9
    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$3;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 11
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDecorContentParent:Landroidx/appcompat/widget/DecorContentParent;

    .line 13
    if-eqz v0, :cond_0

    .line 15
    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 17
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 19
    iget-object v0, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    .line 22
    check-cast v0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;

    .line 24
    iget-object v0, v0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 26
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 28
    if-eqz v0, :cond_0

    .line 30
    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 32
    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 36
    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mActionButtonPopup:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;

    .line 39
    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuPopupHelper;->isShowing()Z

    .line 43
    move-result v1

    .line 46
    if-eqz v1, :cond_0

    .line 47
    iget-object v0, v0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mPopup:Landroidx/appcompat/view/menu/MenuPopup;

    .line 49
    invoke-interface {v0}, Landroidx/appcompat/view/menu/ShowableListMenu;->dismiss()V

    .line 51
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModePopup:Landroid/widget/PopupWindow;

    .line 54
    if-eqz v0, :cond_2

    .line 56
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    .line 58
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 60
    move-result-object v0

    .line 63
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mShowActionModePopup:Landroidx/appcompat/app/AppCompatDelegateImpl$2;

    .line 64
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 66
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModePopup:Landroid/widget/PopupWindow;

    .line 69
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 71
    move-result v0

    .line 74
    if-eqz v0, :cond_1

    .line 75
    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModePopup:Landroid/widget/PopupWindow;

    .line 77
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :catch_0
    :cond_1
    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModePopup:Landroid/widget/PopupWindow;

    .line 83
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mFadeAnim:Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 85
    if-eqz v0, :cond_3

    .line 87
    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 89
    :cond_3
    const/4 v0, 0x0

    .line 92
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getPanelState(I)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    .line 93
    move-result-object p0

    .line 96
    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 97
    if-eqz p0, :cond_4

    .line 99
    const/4 v0, 0x1

    .line 101
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->close(Z)V

    .line 102
    :cond_4
    return-void
    .line 105
.end method

.method public final onMeasure(II)V
    .locals 13

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 10
    move-result-object v0

    .line 13
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 14
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 16
    const/4 v3, 0x1

    .line 18
    const/4 v4, 0x0

    .line 19
    if-ge v1, v2, :cond_0

    .line 20
    move v1, v3

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v1, v4

    .line 24
    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 25
    move-result v2

    .line 28
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 29
    move-result v5

    .line 32
    const/4 v6, 0x6

    .line 33
    const/4 v7, 0x5

    .line 34
    const/high16 v8, -0x80000000

    .line 35
    const/high16 v9, 0x40000000    # 2.0f

    .line 37
    if-ne v2, v8, :cond_4

    .line 39
    if-eqz v1, :cond_1

    .line 41
    iget-object v10, p0, Landroidx/appcompat/widget/ContentFrameLayout;->mFixedWidthMinor:Landroid/util/TypedValue;

    .line 43
    goto :goto_1

    .line 45
    :cond_1
    iget-object v10, p0, Landroidx/appcompat/widget/ContentFrameLayout;->mFixedWidthMajor:Landroid/util/TypedValue;

    .line 46
    :goto_1
    if-eqz v10, :cond_4

    .line 48
    iget v11, v10, Landroid/util/TypedValue;->type:I

    .line 50
    if-eqz v11, :cond_4

    .line 52
    if-ne v11, v7, :cond_2

    .line 54
    invoke-virtual {v10, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    .line 56
    move-result v10

    .line 59
    :goto_2
    float-to-int v10, v10

    .line 60
    goto :goto_3

    .line 61
    :cond_2
    if-ne v11, v6, :cond_3

    .line 62
    iget v11, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 64
    int-to-float v12, v11

    .line 66
    int-to-float v11, v11

    .line 67
    invoke-virtual {v10, v12, v11}, Landroid/util/TypedValue;->getFraction(FF)F

    .line 68
    move-result v10

    .line 71
    goto :goto_2

    .line 72
    :cond_3
    move v10, v4

    .line 73
    :goto_3
    if-lez v10, :cond_4

    .line 74
    iget-object v11, p0, Landroidx/appcompat/widget/ContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    .line 76
    iget v12, v11, Landroid/graphics/Rect;->left:I

    .line 78
    iget v11, v11, Landroid/graphics/Rect;->right:I

    .line 80
    add-int/2addr v12, v11

    .line 82
    sub-int/2addr v10, v12

    .line 83
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 84
    move-result p1

    .line 87
    invoke-static {v10, p1}, Ljava/lang/Math;->min(II)I

    .line 88
    move-result p1

    .line 91
    invoke-static {p1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 92
    move-result p1

    .line 95
    move v10, v3

    .line 96
    goto :goto_4

    .line 97
    :cond_4
    move v10, v4

    .line 98
    :goto_4
    if-ne v5, v8, :cond_8

    .line 99
    if-eqz v1, :cond_5

    .line 101
    iget-object v5, p0, Landroidx/appcompat/widget/ContentFrameLayout;->mFixedHeightMajor:Landroid/util/TypedValue;

    .line 103
    goto :goto_5

    .line 105
    :cond_5
    iget-object v5, p0, Landroidx/appcompat/widget/ContentFrameLayout;->mFixedHeightMinor:Landroid/util/TypedValue;

    .line 106
    :goto_5
    if-eqz v5, :cond_8

    .line 108
    iget v11, v5, Landroid/util/TypedValue;->type:I

    .line 110
    if-eqz v11, :cond_8

    .line 112
    if-ne v11, v7, :cond_6

    .line 114
    invoke-virtual {v5, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    .line 116
    move-result v5

    .line 119
    :goto_6
    float-to-int v5, v5

    .line 120
    goto :goto_7

    .line 121
    :cond_6
    if-ne v11, v6, :cond_7

    .line 122
    iget v11, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 124
    int-to-float v12, v11

    .line 126
    int-to-float v11, v11

    .line 127
    invoke-virtual {v5, v12, v11}, Landroid/util/TypedValue;->getFraction(FF)F

    .line 128
    move-result v5

    .line 131
    goto :goto_6

    .line 132
    :cond_7
    move v5, v4

    .line 133
    :goto_7
    if-lez v5, :cond_8

    .line 134
    iget-object v11, p0, Landroidx/appcompat/widget/ContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    .line 136
    iget v12, v11, Landroid/graphics/Rect;->top:I

    .line 138
    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    .line 140
    add-int/2addr v12, v11

    .line 142
    sub-int/2addr v5, v12

    .line 143
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 144
    move-result p2

    .line 147
    invoke-static {v5, p2}, Ljava/lang/Math;->min(II)I

    .line 148
    move-result p2

    .line 151
    invoke-static {p2, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 152
    move-result p2

    .line 155
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 156
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    .line 159
    move-result p1

    .line 162
    invoke-static {p1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 163
    move-result v5

    .line 166
    if-nez v10, :cond_d

    .line 167
    if-ne v2, v8, :cond_d

    .line 169
    if-eqz v1, :cond_9

    .line 171
    iget-object v1, p0, Landroidx/appcompat/widget/ContentFrameLayout;->mMinWidthMinor:Landroid/util/TypedValue;

    .line 173
    goto :goto_8

    .line 175
    :cond_9
    iget-object v1, p0, Landroidx/appcompat/widget/ContentFrameLayout;->mMinWidthMajor:Landroid/util/TypedValue;

    .line 176
    :goto_8
    if-eqz v1, :cond_d

    .line 178
    iget v2, v1, Landroid/util/TypedValue;->type:I

    .line 180
    if-eqz v2, :cond_d

    .line 182
    if-ne v2, v7, :cond_a

    .line 184
    invoke-virtual {v1, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    .line 186
    move-result v0

    .line 189
    :goto_9
    float-to-int v0, v0

    .line 190
    goto :goto_a

    .line 191
    :cond_a
    if-ne v2, v6, :cond_b

    .line 192
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 194
    int-to-float v2, v0

    .line 196
    int-to-float v0, v0

    .line 197
    invoke-virtual {v1, v2, v0}, Landroid/util/TypedValue;->getFraction(FF)F

    .line 198
    move-result v0

    .line 201
    goto :goto_9

    .line 202
    :cond_b
    move v0, v4

    .line 203
    :goto_a
    if-lez v0, :cond_c

    .line 204
    iget-object v1, p0, Landroidx/appcompat/widget/ContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    .line 206
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 208
    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 210
    add-int/2addr v2, v1

    .line 212
    sub-int/2addr v0, v2

    .line 213
    :cond_c
    if-ge p1, v0, :cond_d

    .line 214
    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 216
    move-result v5

    .line 219
    goto :goto_b

    .line 220
    :cond_d
    move v3, v4

    .line 221
    :goto_b
    if-eqz v3, :cond_e

    .line 222
    invoke-super {p0, v5, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 224
    :cond_e
    return-void
    .line 227
.end method

.method public setAttachListener(Landroidx/appcompat/widget/ContentFrameLayout$OnAttachListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/ContentFrameLayout;->mAttachListener:Landroidx/appcompat/widget/ContentFrameLayout$OnAttachListener;

    .line 2
    return-void
    .line 4
.end method

.method public setDecorPadding(IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 4
    sget-object p1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 7
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api19Impl;->isLaidOut(Landroid/view/View;)Z

    .line 9
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 15
    :cond_0
    return-void
    .line 18
.end method
