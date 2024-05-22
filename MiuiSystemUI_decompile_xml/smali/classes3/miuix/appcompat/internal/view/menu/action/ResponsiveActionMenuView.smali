.class public Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;
.super Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mApplyBgBlur:Z

.field public final mAttrs:Landroid/util/AttributeSet;

.field public mBottomMenuBackground:Landroid/graphics/drawable/Drawable;

.field public mBottomMenuBackgroundInBlur:Landroid/graphics/drawable/Drawable;

.field public final mContext:Landroid/content/Context;

.field public mCustomView:Landroid/view/View;

.field public mCustomViewClipBounds:Landroid/graphics/Rect;

.field public final mDensityDpi:I

.field public mItemNormalPaddingTop:I

.field public mItemSmallPaddingTop:I

.field public mMenuItemGap:I

.field public mMenuItemHeight:I

.field public mMenuItemWidth:I

.field public mMenuOutShadowView:Lmiuix/appcompat/internal/view/OutDropShadowView;

.field public mOffSet:I

.field public mParentLayoutChangeListener:Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$$ExternalSyntheticLambda0;

.field public mSuspendEnabled:Z

.field public mSuspendItemCenterExtraUp:I

.field public mSuspendMenuBackground:Landroid/graphics/drawable/Drawable;

.field public mSuspendMenuBackgroundInBlur:Landroid/graphics/drawable/Drawable;

.field public mSuspendMenuBackgroundRadius:I

.field public mSuspendMenuMinMargin:I

.field public mSuspendMenuMinWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 2
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendEnabled:Z

    .line 4
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mApplyBgBlur:Z

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuOutShadowView:Lmiuix/appcompat/internal/view/OutDropShadowView;

    .line 6
    iput-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mParentLayoutChangeListener:Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$$ExternalSyntheticLambda0;

    .line 7
    iput v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mOffSet:I

    .line 8
    new-instance v1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    const/4 v3, -0x2

    .line 9
    invoke-virtual {v1, v3, v2}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    new-instance v2, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$1;

    invoke-direct {v2, p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$1;-><init>(Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;)V

    filled-new-array {v2}, [Lmiuix/animation/listener/TransitionListener;

    move-result-object v2

    .line 10
    invoke-virtual {v1, v2}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    const/high16 v1, 0x41300000    # 11.0f

    .line 11
    invoke-static {p1, v1}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemGap:I

    const/high16 v1, 0x41800000    # 16.0f

    .line 12
    invoke-static {p1, v1}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMinMargin:I

    const/high16 v1, 0x43440000    # 196.0f

    .line 13
    invoke-static {p1, v1}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMinWidth:I

    const/high16 v1, 0x41000000    # 8.0f

    .line 14
    invoke-static {p1, v1}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mItemNormalPaddingTop:I

    const/high16 v1, 0x40a00000    # 5.0f

    .line 15
    invoke-static {p1, v1}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mItemSmallPaddingTop:I

    const/high16 v1, 0x40000000    # 2.0f

    .line 16
    invoke-static {p1, v1}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendItemCenterExtraUp:I

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070b87    # @dimen/miuix_appcompat_suspend_menu_bg_radius '16.0dp'

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuBackgroundRadius:I

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mDensityDpi:I

    .line 19
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mContext:Landroid/content/Context;

    .line 20
    iput-object p2, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mAttrs:Landroid/util/AttributeSet;

    .line 21
    invoke-virtual {p0, p2}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->refreshMenuBackgroundDrawables(Landroid/util/AttributeSet;)V

    .line 22
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3e800000    # 0.25f
    .end array-data
.end method

.method private getActionMenuItemCount()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 2
    move-result v0

    .line 5
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    .line 6
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    .line 8
    move-result p0

    .line 11
    const/4 v1, -0x1

    .line 12
    if-eq p0, v1, :cond_0

    .line 13
    add-int/lit8 v0, v0, -0x1

    .line 15
    :cond_0
    return v0
    .line 17
.end method

.method private getCustomViewClipBounds()Landroid/graphics/Rect;
    .locals 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomViewClipBounds:Landroid/graphics/Rect;

    .line 2
    if-nez v0, :cond_0

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 8
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomViewClipBounds:Landroid/graphics/Rect;

    .line 11
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomViewClipBounds:Landroid/graphics/Rect;

    .line 13
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    .line 15
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 17
    move-result v1

    .line 20
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    .line 21
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 23
    move-result v2

    .line 26
    iget v3, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mOffSet:I

    .line 27
    sub-int/2addr v2, v3

    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 31
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomViewClipBounds:Landroid/graphics/Rect;

    .line 34
    return-object p0
    .line 36
.end method

.method private getMaxChildrenTotalHeight()I
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    move v3, v2

    .line 8
    :goto_0
    if-ge v2, v0, :cond_4

    .line 9
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 11
    move-result-object v4

    .line 14
    iget-object v5, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    .line 15
    if-ne v4, v5, :cond_0

    .line 17
    const/4 v5, 0x1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    move v5, v1

    .line 21
    :goto_1
    if-eqz v5, :cond_1

    .line 22
    goto :goto_3

    .line 24
    :cond_1
    instance-of v5, v4, Landroid/widget/LinearLayout;

    .line 25
    if-eqz v5, :cond_3

    .line 27
    check-cast v4, Landroid/widget/LinearLayout;

    .line 29
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 31
    move-result v5

    .line 34
    move v6, v1

    .line 35
    move v7, v6

    .line 36
    :goto_2
    if-ge v6, v5, :cond_2

    .line 37
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 39
    move-result-object v8

    .line 42
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    .line 43
    move-result v8

    .line 46
    add-int/2addr v7, v8

    .line 47
    add-int/lit8 v6, v6, 0x1

    .line 48
    goto :goto_2

    .line 50
    :cond_2
    if-ge v3, v7, :cond_3

    .line 51
    move v3, v7

    .line 53
    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 54
    goto :goto_0

    .line 56
    :cond_4
    return v3
    .line 57
.end method


# virtual methods
.method public final filterLeftoverView(I)Z
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 2
    move-result-object v0

    .line 5
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    .line 6
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    move v1, v2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v1, v3

    .line 14
    :goto_0
    if-eqz v1, :cond_1

    .line 15
    return v3

    .line 17
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 18
    move-result-object v0

    .line 21
    check-cast v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    .line 22
    if-eqz v0, :cond_3

    .line 24
    iget-boolean v0, v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 26
    if-nez v0, :cond_2

    .line 28
    goto :goto_1

    .line 30
    :cond_2
    move v0, v3

    .line 31
    goto :goto_2

    .line 32
    :cond_3
    :goto_1
    move v0, v2

    .line 33
    :goto_2
    if-eqz v0, :cond_4

    .line 34
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->filterLeftoverView(I)Z

    .line 36
    goto :goto_3

    .line 39
    :cond_4
    move v2, v3

    .line 40
    :goto_3
    return v2
    .line 41
.end method

.method public getBottomMenuCustomViewOffset()I
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mOffSet:I

    .line 2
    return p0
    .line 4
.end method

.method public getCollapsedHeight()I
    .locals 2

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemHeight:I

    .line 2
    if-nez v0, :cond_0

    .line 4
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 8
    move-result-object v0

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 12
    move-result p0

    .line 15
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 16
    if-eqz v1, :cond_1

    .line 18
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 20
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 22
    add-int/2addr p0, v1

    .line 24
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 25
    add-int/2addr p0, v0

    .line 27
    :cond_1
    return p0
    .line 28
.end method

.method public final measureActionMenuItem(IIZ)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_0
    if-ge v2, v0, :cond_e

    .line 8
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 10
    move-result-object v3

    .line 13
    iget-object v4, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    .line 14
    const/4 v5, 0x1

    .line 16
    if-ne v3, v4, :cond_0

    .line 17
    move v4, v5

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    move v4, v1

    .line 21
    :goto_1
    if-eqz v4, :cond_1

    .line 22
    goto/16 :goto_c

    .line 24
    :cond_1
    instance-of v4, v3, Landroid/widget/LinearLayout;

    .line 26
    if-eqz v4, :cond_2

    .line 28
    move-object v4, v3

    .line 30
    check-cast v4, Landroid/widget/LinearLayout;

    .line 31
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 33
    :cond_2
    if-eqz p3, :cond_3

    .line 36
    invoke-virtual {v3, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 38
    goto/16 :goto_b

    .line 41
    :cond_3
    sget v4, Lmiuix/core/util/MiuixUIUtils;->$r8$clinit:I

    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getWindowSystemUiVisibility()I

    .line 45
    move-result v4

    .line 48
    and-int/lit16 v4, v4, 0x200

    .line 49
    if-eqz v4, :cond_4

    .line 51
    move v4, v5

    .line 53
    goto :goto_2

    .line 54
    :cond_4
    move v4, v1

    .line 55
    :goto_2
    if-eqz v4, :cond_d

    .line 56
    iget-object v4, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mContext:Landroid/content/Context;

    .line 58
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 60
    move-result-object v4

    .line 63
    const-string v6, "config_navBarInteractionMode"

    .line 64
    const-string v7, "integer"

    .line 66
    const-string v8, "android"

    .line 68
    invoke-virtual {v4, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    move-result v9

    .line 73
    if-lez v9, :cond_5

    .line 74
    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getInteger(I)I

    .line 76
    move-result v4

    .line 79
    goto :goto_3

    .line 80
    :cond_5
    move v4, v1

    .line 81
    :goto_3
    const/4 v9, 0x2

    .line 82
    if-ne v4, v9, :cond_6

    .line 83
    move v4, v5

    .line 85
    goto :goto_4

    .line 86
    :cond_6
    move v4, v1

    .line 87
    :goto_4
    if-eqz v4, :cond_c

    .line 88
    iget-object v4, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mContext:Landroid/content/Context;

    .line 90
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 92
    move-result-object v10

    .line 95
    const-string v11, "hide_gesture_line"

    .line 96
    invoke-static {v10, v11, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 98
    move-result v10

    .line 101
    if-nez v10, :cond_7

    .line 102
    move v10, v5

    .line 104
    goto :goto_5

    .line 105
    :cond_7
    move v10, v1

    .line 106
    :goto_5
    if-eqz v10, :cond_b

    .line 107
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 109
    move-result-object v10

    .line 112
    invoke-virtual {v10, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    move-result v6

    .line 116
    if-lez v6, :cond_8

    .line 117
    invoke-virtual {v10, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 119
    move-result v6

    .line 122
    goto :goto_6

    .line 123
    :cond_8
    move v6, v1

    .line 124
    :goto_6
    if-ne v6, v9, :cond_9

    .line 125
    move v6, v5

    .line 127
    goto :goto_7

    .line 128
    :cond_9
    move v6, v1

    .line 129
    :goto_7
    if-eqz v6, :cond_b

    .line 130
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 132
    move-result-object v4

    .line 135
    const-string v6, "use_gesture_version_three"

    .line 136
    invoke-static {v4, v6, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 138
    move-result v4

    .line 141
    if-eqz v4, :cond_a

    .line 142
    move v4, v5

    .line 144
    goto :goto_8

    .line 145
    :cond_a
    move v4, v1

    .line 146
    :goto_8
    if-eqz v4, :cond_b

    .line 147
    goto :goto_9

    .line 149
    :cond_b
    move v5, v1

    .line 150
    :goto_9
    if-eqz v5, :cond_d

    .line 151
    :cond_c
    iget v4, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mItemNormalPaddingTop:I

    .line 153
    goto :goto_a

    .line 155
    :cond_d
    iget v4, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mItemSmallPaddingTop:I

    .line 156
    :goto_a
    invoke-virtual {v3, v1, v4, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 158
    :goto_b
    invoke-virtual {v3, p1, p2}, Landroid/view/View;->measure(II)V

    .line 161
    :goto_c
    add-int/lit8 v2, v2, 0x1

    .line 164
    goto/16 :goto_0

    .line 166
    :cond_e
    return-void
    .line 168
.end method

.method public final onAttachedToWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 2
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendEnabled:Z

    .line 5
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuOutShadowView:Lmiuix/appcompat/internal/view/OutDropShadowView;

    .line 10
    if-nez v0, :cond_1

    .line 12
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 14
    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 16
    new-instance v1, Lmiuix/appcompat/internal/view/OutDropShadowView;

    .line 19
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 21
    move-result-object v2

    .line 24
    invoke-direct {v1, v2}, Lmiuix/appcompat/internal/view/OutDropShadowView;-><init>(Landroid/content/Context;)V

    .line 25
    iput-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuOutShadowView:Lmiuix/appcompat/internal/view/OutDropShadowView;

    .line 28
    iget v2, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuBackgroundRadius:I

    .line 30
    invoke-virtual {v1, v2}, Lmiuix/appcompat/internal/view/OutDropShadowView;->setShadowHostViewRadius(I)V

    .line 32
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    .line 35
    move-result-object v1

    .line 38
    check-cast v1, Landroid/view/ViewGroup;

    .line 39
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuOutShadowView:Lmiuix/appcompat/internal/view/OutDropShadowView;

    .line 41
    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    new-instance v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$$ExternalSyntheticLambda0;

    .line 46
    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$$ExternalSyntheticLambda0;-><init>(Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;)V

    .line 48
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mParentLayoutChangeListener:Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$$ExternalSyntheticLambda0;

    .line 51
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 53
    goto :goto_0

    .line 56
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuOutShadowView:Lmiuix/appcompat/internal/view/OutDropShadowView;

    .line 57
    if-eqz v0, :cond_1

    .line 59
    iget-object v2, v0, Lmiuix/appcompat/internal/view/OutDropShadowView;->mDropShadowHelper:Lmiuix/graphics/shadow/DropShadowLayerHelper;

    .line 61
    invoke-virtual {v2, v0, v1}, Lmiuix/graphics/shadow/DropShadowLayerHelper;->enableViewShadow(Landroid/view/View;Z)V

    .line 63
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    .line 66
    move-result-object v0

    .line 69
    check-cast v0, Landroid/view/ViewGroup;

    .line 70
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mParentLayoutChangeListener:Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$$ExternalSyntheticLambda0;

    .line 72
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 74
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuOutShadowView:Lmiuix/appcompat/internal/view/OutDropShadowView;

    .line 77
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 79
    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuOutShadowView:Lmiuix/appcompat/internal/view/OutDropShadowView;

    .line 83
    :cond_1
    :goto_0
    return-void
    .line 85
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 5
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mDensityDpi:I

    .line 7
    if-eq p1, v0, :cond_3

    .line 9
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mContext:Landroid/content/Context;

    .line 11
    const/high16 v0, 0x41300000    # 11.0f

    .line 13
    invoke-static {p1, v0}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    .line 15
    move-result p1

    .line 18
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemGap:I

    .line 19
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mContext:Landroid/content/Context;

    .line 21
    const/high16 v0, 0x41800000    # 16.0f

    .line 23
    invoke-static {p1, v0}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    .line 25
    move-result p1

    .line 28
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMinMargin:I

    .line 29
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mContext:Landroid/content/Context;

    .line 31
    const/high16 v0, 0x43440000    # 196.0f

    .line 33
    invoke-static {p1, v0}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    .line 35
    move-result p1

    .line 38
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMinWidth:I

    .line 39
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mContext:Landroid/content/Context;

    .line 41
    const/high16 v0, 0x41000000    # 8.0f

    .line 43
    invoke-static {p1, v0}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    .line 45
    move-result p1

    .line 48
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mItemNormalPaddingTop:I

    .line 49
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mContext:Landroid/content/Context;

    .line 51
    const/high16 v0, 0x40a00000    # 5.0f

    .line 53
    invoke-static {p1, v0}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    .line 55
    move-result p1

    .line 58
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mItemSmallPaddingTop:I

    .line 59
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mContext:Landroid/content/Context;

    .line 61
    const/high16 v0, 0x40000000    # 2.0f

    .line 63
    invoke-static {p1, v0}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    .line 65
    move-result p1

    .line 68
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendItemCenterExtraUp:I

    .line 69
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 71
    move-result-object p1

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 75
    move-result-object p1

    .line 78
    const v0, 0x7f070b87    # @dimen/miuix_appcompat_suspend_menu_bg_radius '16.0dp'

    .line 79
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 82
    move-result p1

    .line 85
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuBackgroundRadius:I

    .line 86
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mAttrs:Landroid/util/AttributeSet;

    .line 88
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->refreshMenuBackgroundDrawables(Landroid/util/AttributeSet;)V

    .line 90
    iget-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendEnabled:Z

    .line 93
    if-eqz p1, :cond_1

    .line 95
    iget-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mApplyBgBlur:Z

    .line 97
    if-eqz p1, :cond_0

    .line 99
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuBackgroundInBlur:Landroid/graphics/drawable/Drawable;

    .line 101
    goto :goto_0

    .line 103
    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuBackground:Landroid/graphics/drawable/Drawable;

    .line 104
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 106
    goto :goto_2

    .line 109
    :cond_1
    iget-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mApplyBgBlur:Z

    .line 110
    if-eqz p1, :cond_2

    .line 112
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBottomMenuBackgroundInBlur:Landroid/graphics/drawable/Drawable;

    .line 114
    goto :goto_1

    .line 116
    :cond_2
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBottomMenuBackground:Landroid/graphics/drawable/Drawable;

    .line 117
    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 119
    :goto_2
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuOutShadowView:Lmiuix/appcompat/internal/view/OutDropShadowView;

    .line 122
    if-eqz p1, :cond_3

    .line 124
    iget p0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuBackgroundRadius:I

    .line 126
    invoke-virtual {p1, p0}, Lmiuix/appcompat/internal/view/OutDropShadowView;->setShadowHostViewRadius(I)V

    .line 128
    :cond_3
    return-void
    .line 131
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->onDetachedFromWindow()V

    .line 2
    const/4 v0, 0x0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v0, v1, v1}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->setBgBlur(Z[I[I)V

    .line 7
    return-void
    .line 10
.end method

.method public final onLayout(ZIIII)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    .line 2
    move-result p1

    .line 5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    .line 6
    move-result p2

    .line 9
    iget-object p3, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    .line 10
    const/4 p4, 0x0

    .line 12
    if-eqz p3, :cond_0

    .line 13
    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    .line 15
    move-result p3

    .line 18
    const/16 p5, 0x8

    .line 19
    if-eq p3, p5, :cond_0

    .line 21
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    .line 23
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 25
    move-result p3

    .line 28
    add-int/lit8 v4, p3, 0x0

    .line 29
    iget-object p3, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    .line 31
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    .line 33
    move-result p3

    .line 36
    add-int/lit8 v5, p3, 0x0

    .line 37
    const/4 v2, 0x0

    .line 39
    const/4 v3, 0x0

    .line 40
    move-object v0, p0

    .line 41
    invoke-static/range {v0 .. v5}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 42
    iget-object p3, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    .line 45
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    .line 47
    move-result p3

    .line 50
    add-int/2addr p3, p4

    .line 51
    iget p5, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mOffSet:I

    .line 52
    sub-int/2addr p3, p5

    .line 54
    if-gez p3, :cond_1

    .line 55
    :cond_0
    move p3, p4

    .line 57
    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 58
    move-result p5

    .line 61
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingStart()I

    .line 62
    move-result v0

    .line 65
    sub-int/2addr p1, v0

    .line 66
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingEnd()I

    .line 67
    move-result v0

    .line 70
    sub-int/2addr p1, v0

    .line 71
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->getActionMenuItemCount()I

    .line 72
    move-result v0

    .line 75
    iget v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemWidth:I

    .line 76
    mul-int/2addr v1, v0

    .line 78
    add-int/lit8 v0, v0, -0x1

    .line 79
    iget v2, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemGap:I

    .line 81
    mul-int/2addr v0, v2

    .line 83
    add-int/2addr v0, v1

    .line 84
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingStart()I

    .line 85
    move-result v1

    .line 88
    sub-int/2addr p1, v0

    .line 89
    div-int/lit8 p1, p1, 0x2

    .line 90
    add-int/2addr p1, v1

    .line 92
    move v6, p4

    .line 93
    :goto_0
    if-ge v6, p5, :cond_4

    .line 94
    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 96
    move-result-object v7

    .line 99
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    .line 100
    if-ne v7, v0, :cond_2

    .line 102
    const/4 v0, 0x1

    .line 104
    goto :goto_1

    .line 105
    :cond_2
    move v0, p4

    .line 106
    :goto_1
    if-eqz v0, :cond_3

    .line 107
    goto :goto_2

    .line 109
    :cond_3
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    .line 110
    move-result v0

    .line 113
    add-int v4, v0, p1

    .line 114
    move-object v0, p0

    .line 116
    move-object v1, v7

    .line 117
    move v2, p1

    .line 118
    move v3, p3

    .line 119
    move v5, p2

    .line 120
    invoke-static/range {v0 .. v5}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 121
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    .line 124
    move-result v0

    .line 127
    iget v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemGap:I

    .line 128
    add-int/2addr v0, v1

    .line 130
    add-int/2addr v0, p1

    .line 131
    move p1, v0

    .line 132
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 133
    goto :goto_0

    .line 135
    :cond_4
    return-void
    .line 136
.end method

.method public final onMeasure(II)V
    .locals 13

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    .line 6
    move-result v1

    .line 9
    add-int/2addr v1, v0

    .line 10
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    .line 11
    move-result v2

    .line 14
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    .line 15
    move-result v3

    .line 18
    add-int/2addr v3, v2

    .line 19
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 20
    move-result v2

    .line 23
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->getActionMenuItemCount()I

    .line 24
    move-result v4

    .line 27
    const/4 v5, 0x0

    .line 28
    if-eqz v2, :cond_9

    .line 29
    if-nez v4, :cond_0

    .line 31
    goto/16 :goto_4

    .line 33
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 35
    move-result p1

    .line 38
    iget-boolean v2, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendEnabled:Z

    .line 39
    const/high16 v6, 0x40000000    # 2.0f

    .line 41
    if-eqz v2, :cond_6

    .line 43
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mContext:Landroid/content/Context;

    .line 45
    const/high16 v7, 0x42e60000    # 115.0f

    .line 47
    invoke-static {v2, v7}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    .line 49
    move-result v2

    .line 52
    iput v2, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemWidth:I

    .line 53
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mContext:Landroid/content/Context;

    .line 55
    const/high16 v7, 0x42a00000    # 80.0f

    .line 57
    invoke-static {v2, v7}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    .line 59
    move-result v2

    .line 62
    const/high16 v7, -0x80000000

    .line 63
    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 65
    move-result v7

    .line 68
    add-int/lit8 v8, v4, -0x1

    .line 69
    iget v9, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemGap:I

    .line 71
    mul-int/2addr v8, v9

    .line 73
    iget v9, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemWidth:I

    .line 74
    mul-int/2addr v9, v4

    .line 76
    add-int/2addr v9, v8

    .line 77
    iget v10, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMinMargin:I

    .line 78
    mul-int/lit8 v10, v10, 0x2

    .line 80
    sub-int v11, p1, v10

    .line 82
    if-lt v9, v11, :cond_1

    .line 84
    sub-int/2addr p1, v3

    .line 86
    sub-int/2addr p1, v10

    .line 87
    sub-int/2addr p1, v8

    .line 88
    div-int/2addr p1, v4

    .line 89
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemWidth:I

    .line 90
    :cond_1
    iget p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemWidth:I

    .line 92
    invoke-static {p1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 94
    move-result p1

    .line 97
    const/4 v9, 0x1

    .line 98
    invoke-virtual {p0, p1, v7, v9}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->measureActionMenuItem(IIZ)V

    .line 99
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->getMaxChildrenTotalHeight()I

    .line 102
    move-result p1

    .line 105
    iget v7, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendItemCenterExtraUp:I

    .line 106
    mul-int/lit8 v7, v7, 0x2

    .line 108
    add-int/2addr v7, p1

    .line 110
    sub-int p1, v2, v7

    .line 111
    div-int/lit8 p1, p1, 0x2

    .line 113
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 115
    move-result v7

    .line 118
    move v10, v5

    .line 119
    :goto_0
    if-ge v10, v7, :cond_5

    .line 120
    invoke-virtual {p0, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 122
    move-result-object v11

    .line 125
    iget-object v12, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    .line 126
    if-ne v11, v12, :cond_2

    .line 128
    move v12, v9

    .line 130
    goto :goto_1

    .line 131
    :cond_2
    move v12, v5

    .line 132
    :goto_1
    if-eqz v12, :cond_3

    .line 133
    goto :goto_2

    .line 135
    :cond_3
    instance-of v12, v11, Landroid/widget/LinearLayout;

    .line 136
    if-eqz v12, :cond_4

    .line 138
    check-cast v11, Landroid/widget/LinearLayout;

    .line 140
    invoke-virtual {v11, v5, p1, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 142
    :cond_4
    :goto_2
    add-int/lit8 v10, v10, 0x1

    .line 145
    goto :goto_0

    .line 147
    :cond_5
    iput v2, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemHeight:I

    .line 148
    iget p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemWidth:I

    .line 150
    mul-int/2addr p1, v4

    .line 152
    add-int/2addr p1, v3

    .line 153
    add-int/2addr p1, v8

    .line 154
    iget v2, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMinWidth:I

    .line 155
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    .line 157
    move-result p1

    .line 160
    goto :goto_3

    .line 161
    :cond_6
    sub-int v2, p1, v3

    .line 162
    add-int/lit8 v3, v4, -0x1

    .line 164
    iget v7, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemGap:I

    .line 166
    mul-int/2addr v3, v7

    .line 168
    sub-int/2addr v2, v3

    .line 169
    div-int/2addr v2, v4

    .line 170
    iput v2, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemWidth:I

    .line 171
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 173
    move-result-object v2

    .line 176
    const/high16 v3, 0x42800000    # 64.0f

    .line 177
    invoke-static {v2, v3}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    .line 179
    move-result v2

    .line 182
    add-int/2addr v2, v0

    .line 183
    iget v3, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemWidth:I

    .line 184
    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 186
    move-result v3

    .line 189
    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 190
    move-result v4

    .line 193
    iget-boolean v7, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendEnabled:Z

    .line 194
    invoke-virtual {p0, v3, v4, v7}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->measureActionMenuItem(IIZ)V

    .line 196
    iput v2, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemHeight:I

    .line 199
    :goto_3
    iget v2, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemHeight:I

    .line 201
    add-int/2addr v5, v2

    .line 203
    add-int/2addr v5, v1

    .line 204
    iget-boolean v2, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendEnabled:Z

    .line 205
    if-nez v2, :cond_7

    .line 207
    sub-int/2addr v5, v0

    .line 209
    :cond_7
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    .line 210
    if-eqz v0, :cond_8

    .line 212
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 214
    move-result v0

    .line 217
    const/16 v2, 0x8

    .line 218
    if-eq v0, v2, :cond_8

    .line 220
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    .line 222
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 224
    move-result-object v0

    .line 227
    check-cast v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    .line 228
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    .line 230
    invoke-static {p1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 232
    move-result v3

    .line 235
    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 236
    invoke-static {p2, v1, v0}, Landroid/widget/LinearLayout;->getChildMeasureSpec(III)I

    .line 238
    move-result p2

    .line 241
    invoke-virtual {v2, v3, p2}, Landroid/view/View;->measure(II)V

    .line 242
    iget-object p2, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    .line 245
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->getCustomViewClipBounds()Landroid/graphics/Rect;

    .line 247
    move-result-object v0

    .line 250
    invoke-virtual {p2, v0}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 251
    iget-object p2, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    .line 254
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 256
    move-result p2

    .line 259
    add-int/2addr p2, v5

    .line 260
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mOffSet:I

    .line 261
    sub-int v5, p2, v0

    .line 263
    :cond_8
    invoke-virtual {p0, p1, v5}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    .line 265
    return-void

    .line 268
    :cond_9
    :goto_4
    iput v5, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemHeight:I

    .line 269
    invoke-virtual {p0, v5, v5}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    .line 271
    return-void
    .line 274
.end method

.method public final refreshMenuBackgroundDrawables(Landroid/util/AttributeSet;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mContext:Landroid/content/Context;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    :try_start_0
    sget-object v2, Lmiuix/appcompat/R$styleable;->ResponsiveActionMenuView:[I

    .line 8
    const/4 v3, 0x0

    .line 10
    const v4, 0x7f04064c    # @attr/responsiveActionMenuViewStyle

    .line 11
    invoke-virtual {v0, p1, v2, v4, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 14
    move-result-object v1

    .line 17
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 18
    move-result-object p1

    .line 21
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBottomMenuBackground:Landroid/graphics/drawable/Drawable;

    .line 22
    const/4 p1, 0x1

    .line 24
    invoke-virtual {v1, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 25
    move-result-object p1

    .line 28
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuBackground:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 31
    sget-object p1, Lmiuix/core/util/MiuiBlurUtils;->SUPPORT_MIUI_BLUR:Ljava/lang/Boolean;

    .line 34
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 36
    move-result p1

    .line 39
    if-eqz p1, :cond_1

    .line 40
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    .line 42
    invoke-direct {p1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 44
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBottomMenuBackgroundInBlur:Landroid/graphics/drawable/Drawable;

    .line 47
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mContext:Landroid/content/Context;

    .line 49
    sget-object v0, Landroidx/core/app/ActivityCompat;->sLock:Ljava/lang/Object;

    .line 51
    const v0, 0x7f0815c1    # @drawable/miuix_appcompat_suspend_menu_bg_in_blur 'res/drawable/miuix_appcompat_suspend_menu_bg_in_blur.xml'

    .line 53
    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 56
    move-result-object p1

    .line 59
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuBackgroundInBlur:Landroid/graphics/drawable/Drawable;

    .line 60
    :cond_1
    return-void

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    if-eqz v1, :cond_2

    .line 64
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 66
    :cond_2
    throw p0
    .line 69
.end method

.method public setBgBlur(Z[I[I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mApplyBgBlur:Z

    .line 2
    if-eq v0, p1, :cond_3

    .line 4
    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mApplyBgBlur:Z

    .line 6
    if-eqz p1, :cond_2

    .line 8
    invoke-static {p0}, Lmiuix/core/util/MiuiBlurUtils;->clearBackgroundBlenderColor(Landroid/view/View;)V

    .line 10
    invoke-static {p0}, Lmiuix/core/util/MiuiBlurUtils;->clearBackgroundBlur(Landroid/view/View;)V

    .line 13
    iget-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendEnabled:Z

    .line 16
    if-eqz p1, :cond_0

    .line 18
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 20
    move-result-object p1

    .line 23
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuBackgroundInBlur:Landroid/graphics/drawable/Drawable;

    .line 24
    if-eq p1, v0, :cond_0

    .line 26
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 28
    goto :goto_0

    .line 31
    :cond_0
    iget-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendEnabled:Z

    .line 32
    if-nez p1, :cond_1

    .line 34
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 36
    move-result-object p1

    .line 39
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBottomMenuBackgroundInBlur:Landroid/graphics/drawable/Drawable;

    .line 40
    if-eq p1, v0, :cond_1

    .line 42
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 44
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendEnabled:Z

    .line 47
    invoke-static {p0, p1}, Lmiuix/core/util/MiuiBlurUtils;->setBackgroundBlur(Landroid/view/View;Z)Z

    .line 49
    const/4 p1, 0x0

    .line 52
    :goto_1
    array-length v0, p2

    .line 53
    if-ge p1, v0, :cond_3

    .line 54
    aget v0, p2, p1

    .line 56
    aget v1, p3, p1

    .line 58
    invoke-static {p0, v0, v1}, Lmiuix/core/util/MiuiBlurUtils;->addBackgroundBlenderColor(Landroid/view/View;II)V

    .line 60
    add-int/lit8 p1, p1, 0x1

    .line 63
    goto :goto_1

    .line 65
    :cond_2
    invoke-static {p0}, Lmiuix/core/util/MiuiBlurUtils;->clearBackgroundBlenderColor(Landroid/view/View;)V

    .line 66
    invoke-static {p0}, Lmiuix/core/util/MiuiBlurUtils;->clearBackgroundBlur(Landroid/view/View;)V

    .line 69
    :cond_3
    return-void
    .line 72
.end method

.method public setBottomMenuCustomViewTranslationYWithPx(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    if-ltz p1, :cond_1

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 8
    move-result v0

    .line 11
    if-le p1, v0, :cond_0

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mOffSet:I

    .line 15
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 17
    :cond_1
    :goto_0
    return-void
    .line 20
.end method

.method public setSuspendEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendEnabled:Z

    .line 2
    if-eqz p1, :cond_1

    .line 4
    iget-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mApplyBgBlur:Z

    .line 6
    if-eqz p1, :cond_0

    .line 8
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuBackgroundInBlur:Landroid/graphics/drawable/Drawable;

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuBackground:Landroid/graphics/drawable/Drawable;

    .line 13
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 15
    goto :goto_2

    .line 18
    :cond_1
    iget-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mApplyBgBlur:Z

    .line 19
    if-eqz p1, :cond_2

    .line 21
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBottomMenuBackgroundInBlur:Landroid/graphics/drawable/Drawable;

    .line 23
    goto :goto_1

    .line 25
    :cond_2
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBottomMenuBackground:Landroid/graphics/drawable/Drawable;

    .line 26
    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 28
    :goto_2
    return-void
    .line 31
.end method

.method public setTranslationY(F)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 2
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuOutShadowView:Lmiuix/appcompat/internal/view/OutDropShadowView;

    .line 5
    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 9
    :cond_0
    return-void
    .line 12
.end method
