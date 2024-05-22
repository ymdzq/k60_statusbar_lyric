.class public abstract Lmiuix/appcompat/internal/app/widget/AbsActionBarView;
.super Landroid/view/ViewGroup;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mActionBarTransitionListeners:Ljava/util/List;

.field public mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

.field public final mAnimConfigListener:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$1;

.field public mBottomMenuMode:I

.field public final mCollapseAnimHideConfig:Lmiuix/animation/base/AnimConfig;

.field public final mCollapseAnimShowConfig:Lmiuix/animation/base/AnimConfig;

.field public mEndActionMenuEnable:Z

.field public mExpandState:I

.field public mExpandStateBeforeResizing:I

.field public final mHideProcessConfig:Lmiuix/animation/base/AnimConfig;

.field public mInnerExpandState:I

.field public mIsInWideMode:Z

.field public mLastProcess:F

.field public mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

.field public final mMovableAnimNormalConfig:Lmiuix/animation/base/AnimConfig;

.field public final mMovableAnimShowConfig:Lmiuix/animation/base/AnimConfig;

.field public mPendingInset:Landroid/graphics/Rect;

.field public mResizable:Z

.field public final mShowProcessConfig:Lmiuix/animation/base/AnimConfig;

.field public mSplitActionBarEnable:Z

.field public mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

.field public mSplitWhenNarrow:Z

.field public mTitleClickable:Z

.field public mTitleMaxHeight:I

.field public mTitleMinHeight:I

.field public mUserExpandState:I

.field public mUserSetExpandState:Z

.field public mUserSubTitleClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    const/4 p3, 0x1

    .line 5
    iput p3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    .line 6
    iput p3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mExpandStateBeforeResizing:I

    .line 8
    iput p3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mExpandState:I

    .line 10
    iput-boolean p3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mResizable:Z

    .line 12
    iput-boolean p3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitleClickable:Z

    .line 14
    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mLastProcess:F

    .line 17
    const/4 v0, 0x2

    .line 19
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mBottomMenuMode:I

    .line 20
    const/4 v1, 0x0

    .line 22
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mIsInWideMode:Z

    .line 23
    new-instance v2, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$1;

    .line 25
    invoke-direct {v2, p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$1;-><init>(Lmiuix/appcompat/internal/app/widget/AbsActionBarView;)V

    .line 27
    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mAnimConfigListener:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$1;

    .line 30
    const/4 v3, 0x0

    .line 32
    iput-object v3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mUserSubTitleClickListener:Landroid/view/View$OnClickListener;

    .line 33
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mUserSetExpandState:Z

    .line 35
    const/4 v3, -0x1

    .line 37
    iput v3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mUserExpandState:I

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 40
    move-result-object v3

    .line 43
    const v4, 0x7f0709fa    # @dimen/miuix_appcompat_action_bar_title_collapse_padding_vertical '14.5dp'

    .line 44
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 50
    move-result-object v3

    .line 53
    const v4, 0x7f0709ec    # @dimen/miuix_appcompat_action_bar_subtitle_collapse_padding_vertical '12.5dp'

    .line 54
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 57
    new-instance v3, Lmiuix/animation/base/AnimConfig;

    .line 60
    invoke-direct {v3}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 62
    new-array v4, v0, [F

    .line 65
    fill-array-data v4, :array_0

    .line 67
    const/4 v5, -0x2

    .line 70
    invoke-virtual {v3, v5, v4}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 71
    move-result-object v3

    .line 74
    iput-object v3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mCollapseAnimShowConfig:Lmiuix/animation/base/AnimConfig;

    .line 75
    new-instance v3, Lmiuix/animation/base/AnimConfig;

    .line 77
    invoke-direct {v3}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 79
    new-array v4, v0, [F

    .line 82
    fill-array-data v4, :array_1

    .line 84
    invoke-virtual {v3, v5, v4}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 87
    move-result-object v3

    .line 90
    filled-new-array {v2}, [Lmiuix/animation/listener/TransitionListener;

    .line 91
    move-result-object v4

    .line 94
    invoke-virtual {v3, v4}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 95
    move-result-object v3

    .line 98
    iput-object v3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mShowProcessConfig:Lmiuix/animation/base/AnimConfig;

    .line 99
    new-instance v3, Lmiuix/animation/base/AnimConfig;

    .line 101
    invoke-direct {v3}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 103
    new-array v4, v0, [F

    .line 106
    fill-array-data v4, :array_2

    .line 108
    invoke-virtual {v3, v5, v4}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 111
    move-result-object v3

    .line 114
    iput-object v3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mCollapseAnimHideConfig:Lmiuix/animation/base/AnimConfig;

    .line 115
    new-instance v3, Lmiuix/animation/base/AnimConfig;

    .line 117
    invoke-direct {v3}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 119
    new-array v4, v0, [F

    .line 122
    fill-array-data v4, :array_3

    .line 124
    invoke-virtual {v3, v5, v4}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 127
    move-result-object v3

    .line 130
    filled-new-array {v2}, [Lmiuix/animation/listener/TransitionListener;

    .line 131
    move-result-object v2

    .line 134
    invoke-virtual {v3, v2}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 135
    move-result-object v2

    .line 138
    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mHideProcessConfig:Lmiuix/animation/base/AnimConfig;

    .line 139
    new-instance v2, Lmiuix/animation/base/AnimConfig;

    .line 141
    invoke-direct {v2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 143
    new-array v3, v0, [F

    .line 146
    fill-array-data v3, :array_4

    .line 148
    invoke-virtual {v2, v5, v3}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 151
    move-result-object v2

    .line 154
    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMovableAnimShowConfig:Lmiuix/animation/base/AnimConfig;

    .line 155
    new-instance v2, Lmiuix/animation/base/AnimConfig;

    .line 157
    invoke-direct {v2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 159
    new-array v0, v0, [F

    .line 162
    fill-array-data v0, :array_5

    .line 164
    invoke-virtual {v2, v5, v0}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 167
    move-result-object v0

    .line 170
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMovableAnimNormalConfig:Lmiuix/animation/base/AnimConfig;

    .line 171
    sget-object v0, Lmiuix/appcompat/R$styleable;->ActionBar:[I

    .line 173
    const v2, 0x10102ce    # @android:attr/actionBarStyle

    .line 175
    invoke-virtual {p1, p2, v0, v2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 178
    move-result-object p1

    .line 181
    const/16 p2, 0x23

    .line 182
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 184
    move-result p2

    .line 187
    const/16 v0, 0x34

    .line 188
    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 190
    move-result v0

    .line 193
    const/16 v2, 0x3b

    .line 194
    invoke-virtual {p1, v2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 196
    move-result v2

    .line 199
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 200
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mUserSetExpandState:Z

    .line 203
    if-eqz p1, :cond_0

    .line 205
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mUserExpandState:I

    .line 207
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    .line 209
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mExpandState:I

    .line 211
    goto :goto_0

    .line 213
    :cond_0
    if-nez p2, :cond_1

    .line 214
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    .line 216
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mExpandState:I

    .line 218
    goto :goto_0

    .line 220
    :cond_1
    iput p3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    .line 221
    iput p3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mExpandState:I

    .line 223
    :goto_0
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mResizable:Z

    .line 225
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitleClickable:Z

    .line 227
    return-void

    .line 229
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3e99999a    # 0.3f
    .end array-data

    .line 230
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3e99999a    # 0.3f
    .end array-data

    .line 238
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3e19999a    # 0.15f
    .end array-data

    .line 246
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3e19999a    # 0.15f
    .end array-data

    .line 254
    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data

    .line 262
    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data
    .line 270
.end method

.method public static measureChildView(Landroid/view/View;III)I
    .locals 1

    .line 1
    const/high16 v0, -0x80000000

    .line 2
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 4
    move-result v0

    .line 7
    invoke-virtual {p0, v0, p2}, Landroid/view/View;->measure(II)V

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 11
    move-result p0

    .line 14
    sub-int/2addr p1, p0

    .line 15
    sub-int/2addr p1, p3

    .line 16
    const/4 p0, 0x0

    .line 17
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    .line 18
    move-result p0

    .line 21
    return p0
    .line 22
.end method


# virtual methods
.method public getActionBarStyle()I
    .locals 0

    .line 1
    const p0, 0x10102ce    # @android:attr/actionBarStyle

    .line 2
    return p0
    .line 5
.end method

.method public onAnimatedExpandStateChanged(II)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 5
    move-result-object p1

    .line 8
    sget-object v0, Lmiuix/appcompat/R$styleable;->ActionBar:[I

    .line 9
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->getActionBarStyle()I

    .line 11
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 17
    move-result-object p1

    .line 20
    const/4 v0, 0x4

    .line 21
    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    .line 22
    move-result v0

    .line 25
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitleMinHeight:I

    .line 26
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 28
    const/4 v0, 0x2

    .line 31
    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    .line 32
    move-result v0

    .line 35
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitleMaxHeight:I

    .line 36
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 38
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 41
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitWhenNarrow:Z

    .line 44
    if-eqz p1, :cond_0

    .line 46
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 48
    move-result-object p1

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 52
    move-result-object p1

    .line 55
    const v0, 0x7f050004    # @bool/abc_split_action_bar_is_narrow 'true'

    .line 56
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 59
    move-result p1

    .line 62
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setSplitActionBar(Z)V

    .line 63
    :cond_0
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 66
    if-eqz p0, :cond_2

    .line 68
    iget-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->isMaxItemCountSet:Z

    .line 70
    if-nez p1, :cond_1

    .line 72
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mContext:Landroid/content/Context;

    .line 74
    if-eqz p1, :cond_1

    .line 76
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->getDefaultMaxItemCount()I

    .line 78
    move-result p1

    .line 81
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mMaxItems:I

    .line 82
    :cond_1
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 84
    if-eqz p0, :cond_2

    .line 86
    const/4 p1, 0x1

    .line 88
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 89
    :cond_2
    return-void
    .line 92
.end method

.method public abstract onExpandStateChanged(II)V
.end method

.method public final positionChild(IIILandroid/view/View;Z)I
    .locals 8

    .line 1
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    .line 6
    move-result v1

    .line 9
    sub-int/2addr p3, v1

    .line 10
    div-int/lit8 p3, p3, 0x2

    .line 11
    add-int/2addr p3, p2

    .line 13
    if-nez p5, :cond_0

    .line 14
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitleMinHeight:I

    .line 16
    sub-int/2addr p2, v1

    .line 18
    div-int/lit8 p3, p2, 0x2

    .line 19
    :cond_0
    move v5, p3

    .line 21
    add-int v6, p1, v0

    .line 22
    add-int v7, v5, v1

    .line 24
    move-object v2, p0

    .line 26
    move-object v3, p4

    .line 27
    move v4, p1

    .line 28
    invoke-static/range {v2 .. v7}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 29
    return v0
    .line 32
.end method

.method public final positionChildInverse(Landroid/view/View;I)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 6
    move-result v1

    .line 9
    iget v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitleMinHeight:I

    .line 10
    sub-int/2addr v2, v1

    .line 12
    div-int/lit8 v6, v2, 0x2

    .line 13
    sub-int v5, p2, v0

    .line 15
    add-int v8, v6, v1

    .line 17
    move-object v3, p0

    .line 19
    move-object v4, p1

    .line 20
    move v7, p2

    .line 21
    invoke-static/range {v3 .. v8}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 22
    return-void
    .line 25
.end method

.method public abstract refreshBottomMenu()V
.end method

.method public setExpandState(IZZ)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mResizable:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    if-eqz p3, :cond_5

    .line 6
    :cond_0
    iget p3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    .line 8
    if-eq p3, p1, :cond_5

    .line 10
    if-eqz p2, :cond_1

    .line 12
    invoke-virtual {p0, p3, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->onAnimatedExpandStateChanged(II)V

    .line 14
    goto :goto_1

    .line 17
    :cond_1
    const/4 p2, 0x2

    .line 18
    if-ne p1, p2, :cond_2

    .line 19
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mExpandState:I

    .line 21
    iput p2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mExpandStateBeforeResizing:I

    .line 23
    :cond_2
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    .line 25
    if-nez p1, :cond_3

    .line 27
    const/4 p2, 0x0

    .line 29
    iput p2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mExpandState:I

    .line 30
    goto :goto_0

    .line 32
    :cond_3
    const/4 p2, 0x1

    .line 33
    if-ne p1, p2, :cond_4

    .line 34
    iput p2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mExpandState:I

    .line 36
    :cond_4
    :goto_0
    invoke-virtual {p0, p3, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->onExpandStateChanged(II)V

    .line 38
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 41
    :cond_5
    :goto_1
    return-void
    .line 44
.end method

.method public setPendingInset(Landroid/graphics/Rect;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 5
    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mPendingInset:Landroid/graphics/Rect;

    .line 9
    if-eqz v0, :cond_1

    .line 11
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 13
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 15
    if-eq v0, v1, :cond_1

    .line 17
    const/4 v0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 v0, 0x0

    .line 21
    :goto_0
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mPendingInset:Landroid/graphics/Rect;

    .line 22
    if-nez v1, :cond_2

    .line 24
    new-instance v1, Landroid/graphics/Rect;

    .line 26
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 28
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mPendingInset:Landroid/graphics/Rect;

    .line 31
    :cond_2
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mPendingInset:Landroid/graphics/Rect;

    .line 33
    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 35
    if-eqz v0, :cond_3

    .line 38
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->refreshBottomMenu()V

    .line 40
    :cond_3
    return-void
    .line 43
.end method

.method public abstract setSplitActionBar(Z)V
.end method

.method public setVisibility(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    .line 2
    move-result v0

    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 8
    :cond_0
    return-void
    .line 11
.end method

.method public showOverflowMenu()V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->showOverflowMenu()Z

    .line 6
    :cond_0
    return-void
    .line 9
.end method
