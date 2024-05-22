.class public Landroidx/appcompat/widget/Toolbar;
.super Landroid/view/ViewGroup;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroidx/core/view/MenuHost;


# instance fields
.field public mActionMenuPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

.field public mBackInvokedCallback:Landroidx/appcompat/widget/Toolbar$Api33Impl$$ExternalSyntheticLambda0;

.field public mBackInvokedCallbackEnabled:Z

.field public mBackInvokedDispatcher:Landroid/window/OnBackInvokedDispatcher;

.field public final mButtonGravity:I

.field public mCollapseButtonView:Landroidx/appcompat/widget/AppCompatImageButton;

.field public final mCollapseDescription:Ljava/lang/CharSequence;

.field public final mCollapseIcon:Landroid/graphics/drawable/Drawable;

.field public mCollapsible:Z

.field public mContentInsetEndWithActions:I

.field public mContentInsetStartWithNavigation:I

.field public mContentInsets:Landroidx/appcompat/widget/RtlSpacingHelper;

.field public mEatingHover:Z

.field public mEatingTouch:Z

.field public mExpandedActionView:Landroid/view/View;

.field public mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

.field public final mGravity:I

.field public final mHiddenViews:Ljava/util/ArrayList;

.field public mLogoView:Landroidx/appcompat/widget/AppCompatImageView;

.field public final mMaxButtonHeight:I

.field public mMenuBuilderCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

.field public final mMenuHostHelper:Landroidx/core/view/MenuHostHelper;

.field public mMenuView:Landroidx/appcompat/widget/ActionMenuView;

.field public final mMenuViewItemClickListener:Landroidx/appcompat/widget/Toolbar$1;

.field public mNavButtonView:Landroidx/appcompat/widget/AppCompatImageButton;

.field public mOuterActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

.field public mPopupContext:Landroid/content/Context;

.field public mPopupTheme:I

.field public mProvidedMenuItems:Ljava/util/ArrayList;

.field public final mShowOverflowMenuRunnable:Landroidx/appcompat/widget/Toolbar$2;

.field public mSubtitleText:Ljava/lang/CharSequence;

.field public mSubtitleTextAppearance:I

.field public mSubtitleTextColor:Landroid/content/res/ColorStateList;

.field public mSubtitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

.field public final mTempMargins:[I

.field public final mTempViews:Ljava/util/ArrayList;

.field public mTitleMarginBottom:I

.field public mTitleMarginEnd:I

.field public mTitleMarginStart:I

.field public mTitleMarginTop:I

.field public mTitleText:Ljava/lang/CharSequence;

.field public mTitleTextAppearance:I

.field public mTitleTextColor:Landroid/content/res/ColorStateList;

.field public mTitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

.field public mWrapper:Landroidx/appcompat/widget/ToolbarWidgetWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f040870    # @attr/toolbarStyle

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v0, 0x800013

    .line 4
    iput v0, p0, Landroidx/appcompat/widget/Toolbar;->mGravity:I

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 7
    iput-object v2, p0, Landroidx/appcompat/widget/Toolbar;->mTempMargins:[I

    .line 8
    new-instance v2, Landroidx/core/view/MenuHostHelper;

    new-instance v3, Landroidx/appcompat/widget/Toolbar$$ExternalSyntheticLambda0;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Landroidx/appcompat/widget/Toolbar$$ExternalSyntheticLambda0;-><init>(Landroidx/appcompat/widget/Toolbar;I)V

    invoke-direct {v2, v3}, Landroidx/core/view/MenuHostHelper;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, p0, Landroidx/appcompat/widget/Toolbar;->mMenuHostHelper:Landroidx/core/view/MenuHostHelper;

    .line 9
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/appcompat/widget/Toolbar;->mProvidedMenuItems:Ljava/util/ArrayList;

    .line 10
    new-instance v2, Landroidx/appcompat/widget/Toolbar$1;

    invoke-direct {v2, p0}, Landroidx/appcompat/widget/Toolbar$1;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    iput-object v2, p0, Landroidx/appcompat/widget/Toolbar;->mMenuViewItemClickListener:Landroidx/appcompat/widget/Toolbar$1;

    .line 11
    new-instance v2, Landroidx/appcompat/widget/Toolbar$2;

    invoke-direct {v2, p0}, Landroidx/appcompat/widget/Toolbar$2;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    iput-object v2, p0, Landroidx/appcompat/widget/Toolbar;->mShowOverflowMenuRunnable:Landroidx/appcompat/widget/Toolbar$2;

    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v7, Landroidx/appcompat/R$styleable;->Toolbar:[I

    invoke-static {v2, p2, v7, p3}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[II)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v2

    .line 13
    iget-object v9, v2, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    const/4 v11, 0x0

    .line 14
    sget-object v3, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    move-object v5, p0

    move-object v6, p1

    move-object v8, p2

    move v10, p3

    .line 15
    invoke-static/range {v5 .. v11}, Landroidx/core/view/ViewCompat$Api29Impl;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    const/16 p1, 0x1c

    .line 16
    invoke-virtual {v2, p1, v4}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextAppearance:I

    const/16 p1, 0x13

    .line 17
    invoke-virtual {v2, p1, v4}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextAppearance:I

    .line 18
    iget-object p1, v2, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    .line 19
    iput p2, p0, Landroidx/appcompat/widget/Toolbar;->mGravity:I

    const/16 p2, 0x30

    .line 20
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    .line 21
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mButtonGravity:I

    const/16 p1, 0x16

    .line 22
    invoke-virtual {v2, p1, v4}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    const/16 p2, 0x1b

    .line 23
    invoke-virtual {v2, p2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 24
    invoke-virtual {v2, p2, p1}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    .line 25
    :cond_0
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginBottom:I

    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginTop:I

    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginEnd:I

    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginStart:I

    const/16 p1, 0x19

    const/4 p2, -0x1

    .line 26
    invoke-virtual {v2, p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    if-ltz p1, :cond_1

    .line 27
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginStart:I

    :cond_1
    const/16 p1, 0x18

    .line 28
    invoke-virtual {v2, p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    if-ltz p1, :cond_2

    .line 29
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginEnd:I

    :cond_2
    const/16 p1, 0x1a

    .line 30
    invoke-virtual {v2, p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    if-ltz p1, :cond_3

    .line 31
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginTop:I

    :cond_3
    const/16 p1, 0x17

    .line 32
    invoke-virtual {v2, p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    if-ltz p1, :cond_4

    .line 33
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginBottom:I

    :cond_4
    const/16 p1, 0xd

    .line 34
    invoke-virtual {v2, p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mMaxButtonHeight:I

    const/16 p1, 0x9

    const/high16 p2, -0x80000000

    .line 35
    invoke-virtual {v2, p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    const/4 p3, 0x5

    .line 36
    invoke-virtual {v2, p3, p2}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    const/4 v0, 0x7

    .line 37
    invoke-virtual {v2, v0, v4}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v0

    const/16 v1, 0x8

    .line 38
    invoke-virtual {v2, v1, v4}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 39
    iget-object v3, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsets:Landroidx/appcompat/widget/RtlSpacingHelper;

    if-nez v3, :cond_5

    .line 40
    new-instance v3, Landroidx/appcompat/widget/RtlSpacingHelper;

    invoke-direct {v3}, Landroidx/appcompat/widget/RtlSpacingHelper;-><init>()V

    iput-object v3, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsets:Landroidx/appcompat/widget/RtlSpacingHelper;

    .line 41
    :cond_5
    iget-object v3, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsets:Landroidx/appcompat/widget/RtlSpacingHelper;

    .line 42
    iput-boolean v4, v3, Landroidx/appcompat/widget/RtlSpacingHelper;->mIsRelative:Z

    if-eq v0, p2, :cond_6

    .line 43
    iput v0, v3, Landroidx/appcompat/widget/RtlSpacingHelper;->mExplicitLeft:I

    iput v0, v3, Landroidx/appcompat/widget/RtlSpacingHelper;->mLeft:I

    :cond_6
    if-eq v1, p2, :cond_7

    .line 44
    iput v1, v3, Landroidx/appcompat/widget/RtlSpacingHelper;->mExplicitRight:I

    iput v1, v3, Landroidx/appcompat/widget/RtlSpacingHelper;->mRight:I

    :cond_7
    if-ne p1, p2, :cond_8

    if-eq p3, p2, :cond_9

    .line 45
    :cond_8
    invoke-virtual {v3, p1, p3}, Landroidx/appcompat/widget/RtlSpacingHelper;->setRelative(II)V

    :cond_9
    const/16 p1, 0xa

    .line 46
    invoke-virtual {v2, p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsetStartWithNavigation:I

    const/4 p1, 0x6

    .line 47
    invoke-virtual {v2, p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsetEndWithActions:I

    const/4 p1, 0x4

    .line 48
    invoke-virtual {v2, p1}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x3

    .line 49
    invoke-virtual {v2, p1}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->mCollapseDescription:Ljava/lang/CharSequence;

    const/16 p1, 0x15

    .line 50
    invoke-virtual {v2, p1}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 51
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_a

    .line 52
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_a
    const/16 p1, 0x12

    .line 53
    invoke-virtual {v2, p1}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 54
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_b

    .line 55
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 56
    :cond_b
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    const/16 p1, 0x11

    .line 57
    invoke-virtual {v2, p1, v4}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setPopupTheme(I)V

    const/16 p1, 0x10

    .line 58
    invoke-virtual {v2, p1}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 59
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_c
    const/16 p1, 0xf

    .line 60
    invoke-virtual {v2, p1}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 61
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_d

    .line 62
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    :cond_d
    const/16 p1, 0xb

    .line 63
    invoke-virtual {v2, p1}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 64
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    :cond_e
    const/16 p1, 0xc

    .line 65
    invoke-virtual {v2, p1}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 66
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_f

    .line 67
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setLogoDescription(Ljava/lang/CharSequence;)V

    :cond_f
    const/16 p1, 0x1d

    .line 68
    invoke-virtual {v2, p1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 69
    invoke-virtual {v2, p1}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitleTextColor(Landroid/content/res/ColorStateList;)V

    :cond_10
    const/16 p1, 0x14

    .line 70
    invoke-virtual {v2, p1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_11

    .line 71
    invoke-virtual {v2, p1}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setSubtitleTextColor(Landroid/content/res/ColorStateList;)V

    :cond_11
    const/16 p1, 0xe

    .line 72
    invoke-virtual {v2, p1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_12

    .line 73
    invoke-virtual {v2, p1, v4}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->inflateMenu(I)V

    .line 74
    :cond_12
    invoke-virtual {v2}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    return-void
.end method

.method public static generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/Toolbar$LayoutParams;
    .locals 1

    .line 3
    instance-of v0, p0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    check-cast p0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>(Landroidx/appcompat/widget/Toolbar$LayoutParams;)V

    return-object v0

    .line 5
    :cond_0
    instance-of v0, p0, Landroidx/appcompat/app/ActionBar$LayoutParams;

    if-eqz v0, :cond_1

    .line 6
    new-instance v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    check-cast p0, Landroidx/appcompat/app/ActionBar$LayoutParams;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>(Landroidx/appcompat/app/ActionBar$LayoutParams;)V

    return-object v0

    .line 7
    :cond_1
    instance-of v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_2

    .line 8
    new-instance v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 9
    :cond_2
    new-instance v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private getCurrentMenuItems()Ljava/util/ArrayList;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    .line 7
    move-result-object p0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    invoke-interface {p0}, Landroid/view/Menu;->size()I

    .line 12
    move-result v2

    .line 15
    if-ge v1, v2, :cond_0

    .line 16
    invoke-interface {p0, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    .line 18
    move-result-object v2

    .line 21
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 25
    goto :goto_0

    .line 27
    :cond_0
    return-object v0
    .line 28
.end method

.method public static getHorizontalMargins(Landroid/view/View;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    move-result-object p0

    .line 5
    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    .line 8
    move-result v0

    .line 11
    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    .line 12
    move-result p0

    .line 15
    add-int/2addr p0, v0

    .line 16
    return p0
    .line 17
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .line 1
    new-instance v0, Landroidx/appcompat/view/SupportMenuInflater;

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 4
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Landroidx/appcompat/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    .line 8
    return-object v0
    .line 11
.end method

.method public static getVerticalMargins(Landroid/view/View;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    move-result-object p0

    .line 5
    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 6
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 8
    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 10
    add-int/2addr v0, p0

    .line 12
    return v0
    .line 13
.end method


# virtual methods
.method public final addCustomViewsWithGravity(ILjava/util/List;)V
    .locals 8

    .line 1
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 2
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api17Impl;->getLayoutDirection(Landroid/view/View;)I

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-ne v0, v2, :cond_0

    .line 10
    move v0, v2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v0, v1

    .line 14
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 15
    move-result v3

    .line 18
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api17Impl;->getLayoutDirection(Landroid/view/View;)I

    .line 19
    move-result v4

    .line 22
    invoke-static {p1, v4}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 23
    move-result p1

    .line 26
    check-cast p2, Ljava/util/ArrayList;

    .line 27
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 29
    const/4 v4, 0x5

    .line 32
    const/4 v5, 0x3

    .line 33
    if-eqz v0, :cond_4

    .line 34
    sub-int/2addr v3, v2

    .line 36
    :goto_1
    if-ltz v3, :cond_8

    .line 37
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 39
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 43
    move-result-object v1

    .line 46
    check-cast v1, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 47
    iget v6, v1, Landroidx/appcompat/widget/Toolbar$LayoutParams;->mViewType:I

    .line 49
    if-nez v6, :cond_3

    .line 51
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    .line 53
    move-result v6

    .line 56
    if-eqz v6, :cond_3

    .line 57
    iget v1, v1, Landroidx/appcompat/app/ActionBar$LayoutParams;->gravity:I

    .line 59
    sget-object v6, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 61
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api17Impl;->getLayoutDirection(Landroid/view/View;)I

    .line 63
    move-result v6

    .line 66
    invoke-static {v1, v6}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 67
    move-result v1

    .line 70
    and-int/lit8 v1, v1, 0x7

    .line 71
    if-eq v1, v2, :cond_2

    .line 73
    if-eq v1, v5, :cond_2

    .line 75
    if-eq v1, v4, :cond_2

    .line 77
    if-ne v6, v2, :cond_1

    .line 79
    move v1, v4

    .line 81
    goto :goto_2

    .line 82
    :cond_1
    move v1, v5

    .line 83
    :cond_2
    :goto_2
    if-ne v1, p1, :cond_3

    .line 84
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_3
    add-int/lit8 v3, v3, -0x1

    .line 89
    goto :goto_1

    .line 91
    :cond_4
    :goto_3
    if-ge v1, v3, :cond_8

    .line 92
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 94
    move-result-object v0

    .line 97
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 98
    move-result-object v6

    .line 101
    check-cast v6, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 102
    iget v7, v6, Landroidx/appcompat/widget/Toolbar$LayoutParams;->mViewType:I

    .line 104
    if-nez v7, :cond_7

    .line 106
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    .line 108
    move-result v7

    .line 111
    if-eqz v7, :cond_7

    .line 112
    iget v6, v6, Landroidx/appcompat/app/ActionBar$LayoutParams;->gravity:I

    .line 114
    sget-object v7, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 116
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api17Impl;->getLayoutDirection(Landroid/view/View;)I

    .line 118
    move-result v7

    .line 121
    invoke-static {v6, v7}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 122
    move-result v6

    .line 125
    and-int/lit8 v6, v6, 0x7

    .line 126
    if-eq v6, v2, :cond_6

    .line 128
    if-eq v6, v5, :cond_6

    .line 130
    if-eq v6, v4, :cond_6

    .line 132
    if-ne v7, v2, :cond_5

    .line 134
    move v6, v4

    .line 136
    goto :goto_4

    .line 137
    :cond_5
    move v6, v5

    .line 138
    :cond_6
    :goto_4
    if-ne v6, p1, :cond_7

    .line 139
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_7
    add-int/lit8 v1, v1, 0x1

    .line 144
    goto :goto_3

    .line 146
    :cond_8
    return-void
    .line 147
.end method

.method public final addSystemView(Landroid/view/View;Z)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    new-instance v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 8
    invoke-direct {v0}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>()V

    .line 10
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    .line 14
    move-result v1

    .line 17
    if-nez v1, :cond_1

    .line 18
    invoke-static {v0}, Landroidx/appcompat/widget/Toolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 20
    move-result-object v0

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    check-cast v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 25
    :goto_0
    const/4 v1, 0x1

    .line 27
    iput v1, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->mViewType:I

    .line 28
    if-eqz p2, :cond_2

    .line 30
    iget-object p2, p0, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 32
    if-eqz p2, :cond_2

    .line 34
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    .line 39
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    goto :goto_1

    .line 44
    :cond_2
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    :goto_1
    return-void
    .line 48
.end method

.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    .line 2
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    instance-of p0, p1, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 8
    if-eqz p0, :cond_0

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

.method public final ensureCollapseButtonView()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 2
    if-nez v0, :cond_0

    .line 4
    new-instance v0, Landroidx/appcompat/widget/AppCompatImageButton;

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    const v3, 0x7f04086f    # @attr/toolbarNavigationButtonStyle

    .line 13
    invoke-direct {v0, v1, v2, v3}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 19
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    .line 21
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 23
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 26
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mCollapseDescription:Ljava/lang/CharSequence;

    .line 28
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 30
    new-instance v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 33
    invoke-direct {v0}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>()V

    .line 35
    iget v1, p0, Landroidx/appcompat/widget/Toolbar;->mButtonGravity:I

    .line 38
    and-int/lit8 v1, v1, 0x70

    .line 40
    const v2, 0x800003

    .line 42
    or-int/2addr v1, v2

    .line 45
    iput v1, v0, Landroidx/appcompat/app/ActionBar$LayoutParams;->gravity:I

    .line 46
    const/4 v1, 0x2

    .line 48
    iput v1, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->mViewType:I

    .line 49
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 51
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 56
    new-instance v1, Landroidx/appcompat/widget/Toolbar$4;

    .line 58
    invoke-direct {v1, p0}, Landroidx/appcompat/widget/Toolbar$4;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    .line 60
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    :cond_0
    return-void
    .line 66
.end method

.method public final ensureMenu()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->ensureMenuView()V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 5
    iget-object v1, v0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 7
    if-nez v1, :cond_1

    .line 9
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    .line 11
    move-result-object v0

    .line 14
    check-cast v0, Landroidx/appcompat/view/menu/MenuBuilder;

    .line 15
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    .line 17
    if-nez v1, :cond_0

    .line 19
    new-instance v1, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    .line 21
    invoke-direct {v1, p0}, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    .line 23
    iput-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    .line 26
    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 28
    const/4 v2, 0x1

    .line 30
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ActionMenuView;->setExpandedActionViewsExclusive(Z)V

    .line 31
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    .line 34
    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    .line 36
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 38
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->updateBackInvokedCallbackState()V

    .line 41
    :cond_1
    return-void
    .line 44
.end method

.method public final ensureMenuView()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 2
    if-nez v0, :cond_0

    .line 4
    new-instance v0, Landroidx/appcompat/widget/ActionMenuView;

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Landroidx/appcompat/widget/ActionMenuView;-><init>(Landroid/content/Context;)V

    .line 12
    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 15
    iget v1, p0, Landroidx/appcompat/widget/Toolbar;->mPopupTheme:I

    .line 17
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuView;->setPopupTheme(I)V

    .line 19
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 22
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mMenuViewItemClickListener:Landroidx/appcompat/widget/Toolbar$1;

    .line 24
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuView;->setOnMenuItemClickListener(Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;)V

    .line 26
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 29
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mActionMenuPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    .line 31
    new-instance v2, Landroidx/appcompat/widget/Toolbar$1;

    .line 33
    invoke-direct {v2, p0}, Landroidx/appcompat/widget/Toolbar$1;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    .line 35
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/ActionMenuView;->setMenuCallbacks(Landroidx/appcompat/view/menu/MenuPresenter$Callback;Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V

    .line 38
    new-instance v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 41
    invoke-direct {v0}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>()V

    .line 43
    iget v1, p0, Landroidx/appcompat/widget/Toolbar;->mButtonGravity:I

    .line 46
    and-int/lit8 v1, v1, 0x70

    .line 48
    const v2, 0x800005

    .line 50
    or-int/2addr v1, v2

    .line 53
    iput v1, v0, Landroidx/appcompat/app/ActionBar$LayoutParams;->gravity:I

    .line 54
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 56
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 61
    const/4 v1, 0x0

    .line 63
    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    .line 64
    :cond_0
    return-void
    .line 67
.end method

.method public final ensureNavButtonView()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 2
    if-nez v0, :cond_0

    .line 4
    new-instance v0, Landroidx/appcompat/widget/AppCompatImageButton;

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    const v3, 0x7f04086f    # @attr/toolbarNavigationButtonStyle

    .line 13
    invoke-direct {v0, v1, v2, v3}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 19
    new-instance v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 21
    invoke-direct {v0}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>()V

    .line 23
    iget v1, p0, Landroidx/appcompat/widget/Toolbar;->mButtonGravity:I

    .line 26
    and-int/lit8 v1, v1, 0x70

    .line 28
    const v2, 0x800003

    .line 30
    or-int/2addr v1, v2

    .line 33
    iput v1, v0, Landroidx/appcompat/app/ActionBar$LayoutParams;->gravity:I

    .line 34
    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 36
    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    :cond_0
    return-void
    .line 41
.end method

.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    new-instance p0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 2
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>()V

    .line 4
    return-object p0
    .line 7
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 2
    new-instance v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/appcompat/widget/Toolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public final getChildTop(ILandroid/view/View;)I
    .locals 6

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 6
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 8
    move-result p2

    .line 11
    const/4 v1, 0x0

    .line 12
    if-lez p1, :cond_0

    .line 13
    sub-int p1, p2, p1

    .line 15
    div-int/lit8 p1, p1, 0x2

    .line 17
    goto :goto_0

    .line 19
    :cond_0
    move p1, v1

    .line 20
    :goto_0
    iget v2, v0, Landroidx/appcompat/app/ActionBar$LayoutParams;->gravity:I

    .line 21
    and-int/lit8 v2, v2, 0x70

    .line 23
    const/16 v3, 0x10

    .line 25
    const/16 v4, 0x50

    .line 27
    const/16 v5, 0x30

    .line 29
    if-eq v2, v3, :cond_1

    .line 31
    if-eq v2, v5, :cond_1

    .line 33
    if-eq v2, v4, :cond_1

    .line 35
    iget v2, p0, Landroidx/appcompat/widget/Toolbar;->mGravity:I

    .line 37
    and-int/lit8 v2, v2, 0x70

    .line 39
    :cond_1
    if-eq v2, v5, :cond_5

    .line 41
    if-eq v2, v4, :cond_4

    .line 43
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 45
    move-result p1

    .line 48
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 49
    move-result v2

    .line 52
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    .line 53
    move-result p0

    .line 56
    sub-int v3, p0, p1

    .line 57
    sub-int/2addr v3, v2

    .line 59
    sub-int/2addr v3, p2

    .line 60
    div-int/lit8 v3, v3, 0x2

    .line 61
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 63
    if-ge v3, v4, :cond_2

    .line 65
    move v3, v4

    .line 67
    goto :goto_1

    .line 68
    :cond_2
    sub-int/2addr p0, v2

    .line 69
    sub-int/2addr p0, p2

    .line 70
    sub-int/2addr p0, v3

    .line 71
    sub-int/2addr p0, p1

    .line 72
    iget p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 73
    if-ge p0, p2, :cond_3

    .line 75
    sub-int/2addr p2, p0

    .line 77
    sub-int/2addr v3, p2

    .line 78
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 79
    move-result v3

    .line 82
    :cond_3
    :goto_1
    add-int/2addr p1, v3

    .line 83
    return p1

    .line 84
    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    .line 85
    move-result v1

    .line 88
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 89
    move-result p0

    .line 92
    sub-int/2addr v1, p0

    .line 93
    sub-int/2addr v1, p2

    .line 94
    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 95
    sub-int/2addr v1, p0

    .line 97
    sub-int/2addr v1, p1

    .line 98
    return v1

    .line 99
    :cond_5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 100
    move-result p0

    .line 103
    sub-int/2addr p0, p1

    .line 104
    return p0
    .line 105
.end method

.method public getCollapseContentDescription()Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    .line 6
    move-result-object p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return-object p0
    .line 12
.end method

.method public getCollapseIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 6
    move-result-object p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return-object p0
    .line 12
.end method

.method public getContentInsetEnd()I
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsets:Landroidx/appcompat/widget/RtlSpacingHelper;

    .line 2
    if-eqz p0, :cond_1

    .line 4
    iget-boolean v0, p0, Landroidx/appcompat/widget/RtlSpacingHelper;->mIsRtl:Z

    .line 6
    if-eqz v0, :cond_0

    .line 8
    iget p0, p0, Landroidx/appcompat/widget/RtlSpacingHelper;->mLeft:I

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    iget p0, p0, Landroidx/appcompat/widget/RtlSpacingHelper;->mRight:I

    .line 13
    goto :goto_0

    .line 15
    :cond_1
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
    .line 17
.end method

.method public getContentInsetEndWithActions()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsetEndWithActions:I

    .line 2
    const/high16 v1, -0x80000000

    .line 4
    if-eq v0, v1, :cond_0

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContentInsetEnd()I

    .line 9
    move-result v0

    .line 12
    :goto_0
    return v0
    .line 13
.end method

.method public getContentInsetLeft()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsets:Landroidx/appcompat/widget/RtlSpacingHelper;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    iget p0, p0, Landroidx/appcompat/widget/RtlSpacingHelper;->mLeft:I

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return p0
    .line 10
.end method

.method public getContentInsetRight()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsets:Landroidx/appcompat/widget/RtlSpacingHelper;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    iget p0, p0, Landroidx/appcompat/widget/RtlSpacingHelper;->mRight:I

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return p0
    .line 10
.end method

.method public getContentInsetStart()I
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsets:Landroidx/appcompat/widget/RtlSpacingHelper;

    .line 2
    if-eqz p0, :cond_1

    .line 4
    iget-boolean v0, p0, Landroidx/appcompat/widget/RtlSpacingHelper;->mIsRtl:Z

    .line 6
    if-eqz v0, :cond_0

    .line 8
    iget p0, p0, Landroidx/appcompat/widget/RtlSpacingHelper;->mRight:I

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    iget p0, p0, Landroidx/appcompat/widget/RtlSpacingHelper;->mLeft:I

    .line 13
    goto :goto_0

    .line 15
    :cond_1
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
    .line 17
.end method

.method public getContentInsetStartWithNavigation()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsetStartWithNavigation:I

    .line 2
    const/high16 v1, -0x80000000

    .line 4
    if-eq v0, v1, :cond_0

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContentInsetStart()I

    .line 9
    move-result v0

    .line 12
    :goto_0
    return v0
    .line 13
.end method

.method public getCurrentContentInsetEnd()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->hasVisibleItems()Z

    .line 11
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    const/4 v0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v0, v1

    .line 19
    :goto_0
    if-eqz v0, :cond_1

    .line 20
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContentInsetEnd()I

    .line 22
    move-result v0

    .line 25
    iget p0, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsetEndWithActions:I

    .line 26
    invoke-static {p0, v1}, Ljava/lang/Math;->max(II)I

    .line 28
    move-result p0

    .line 31
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    .line 32
    move-result p0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContentInsetEnd()I

    .line 37
    move-result p0

    .line 40
    :goto_1
    return p0
    .line 41
.end method

.method public getCurrentContentInsetLeft()I
    .locals 2

    .line 1
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 2
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api17Impl;->getLayoutDirection(Landroid/view/View;)I

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetEnd()I

    .line 11
    move-result p0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetStart()I

    .line 16
    move-result p0

    .line 19
    :goto_0
    return p0
    .line 20
.end method

.method public getCurrentContentInsetRight()I
    .locals 2

    .line 1
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 2
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api17Impl;->getLayoutDirection(Landroid/view/View;)I

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetStart()I

    .line 11
    move-result p0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetEnd()I

    .line 16
    move-result p0

    .line 19
    :goto_0
    return p0
    .line 20
.end method

.method public getCurrentContentInsetStart()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    .line 2
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContentInsetStart()I

    .line 8
    move-result v0

    .line 11
    iget p0, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsetStartWithNavigation:I

    .line 12
    const/4 v1, 0x0

    .line 14
    invoke-static {p0, v1}, Ljava/lang/Math;->max(II)I

    .line 15
    move-result p0

    .line 18
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    .line 19
    move-result p0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContentInsetStart()I

    .line 24
    move-result p0

    .line 27
    :goto_0
    return p0
    .line 28
.end method

.method public getLogo()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroidx/appcompat/widget/AppCompatImageView;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 6
    move-result-object p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return-object p0
    .line 12
.end method

.method public getLogoDescription()Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroidx/appcompat/widget/AppCompatImageView;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    .line 6
    move-result-object p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return-object p0
    .line 12
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->ensureMenu()V

    .line 2
    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    .line 7
    move-result-object p0

    .line 10
    return-object p0
    .line 11
.end method

.method public getNavButtonView()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 2
    return-object p0
    .line 4
.end method

.method public getNavigationContentDescription()Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    .line 6
    move-result-object p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return-object p0
    .line 12
.end method

.method public getNavigationIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 6
    move-result-object p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return-object p0
    .line 12
.end method

.method public getOuterActionMenuPresenter()Landroidx/appcompat/widget/ActionMenuPresenter;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->mOuterActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 2
    return-object p0
    .line 4
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->ensureMenu()V

    .line 2
    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    .line 7
    move-result-object p0

    .line 10
    return-object p0
    .line 11
.end method

.method getPopupContext()Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    .line 2
    return-object p0
    .line 4
.end method

.method public getPopupTheme()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/appcompat/widget/Toolbar;->mPopupTheme:I

    .line 2
    return p0
    .line 4
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleText:Ljava/lang/CharSequence;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getSubtitleTextView()Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2
    return-object p0
    .line 4
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->mTitleText:Ljava/lang/CharSequence;

    .line 2
    return-object p0
    .line 4
.end method

.method public getTitleMarginBottom()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginBottom:I

    .line 2
    return p0
    .line 4
.end method

.method public getTitleMarginEnd()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginEnd:I

    .line 2
    return p0
    .line 4
.end method

.method public getTitleMarginStart()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginStart:I

    .line 2
    return p0
    .line 4
.end method

.method public getTitleMarginTop()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginTop:I

    .line 2
    return p0
    .line 4
.end method

.method public final getTitleTextView()Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2
    return-object p0
    .line 4
.end method

.method public getWrapper()Landroidx/appcompat/widget/DecorToolbar;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mWrapper:Landroidx/appcompat/widget/ToolbarWidgetWrapper;

    .line 2
    if-nez v0, :cond_0

    .line 4
    new-instance v0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;

    .line 6
    invoke-direct {v0, p0}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    .line 8
    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mWrapper:Landroidx/appcompat/widget/ToolbarWidgetWrapper;

    .line 11
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->mWrapper:Landroidx/appcompat/widget/ToolbarWidgetWrapper;

    .line 13
    return-object p0
    .line 15
.end method

.method public final inflateMenu(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->getMenuInflater()Landroid/view/MenuInflater;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    .line 6
    move-result-object p0

    .line 9
    invoke-virtual {v0, p1, p0}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 10
    return-void
    .line 13
.end method

.method public final invalidateMenu()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mProvidedMenuItems:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 17
    check-cast v1, Landroid/view/MenuItem;

    .line 18
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    .line 20
    move-result-object v2

    .line 23
    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    .line 24
    move-result v1

    .line 27
    invoke-interface {v2, v1}, Landroid/view/Menu;->removeItem(I)V

    .line 28
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    .line 32
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentMenuItems()Ljava/util/ArrayList;

    .line 35
    move-result-object v0

    .line 38
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mMenuHostHelper:Landroidx/core/view/MenuHostHelper;

    .line 39
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->getMenuInflater()Landroid/view/MenuInflater;

    .line 41
    iget-object v1, v1, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 44
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 46
    move-result-object v1

    .line 49
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    move-result v2

    .line 53
    if-eqz v2, :cond_1

    .line 54
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    move-result-object v2

    .line 59
    check-cast v2, Landroidx/fragment/app/FragmentManager$2;

    .line 60
    iget-object v2, v2, Landroidx/fragment/app/FragmentManager$2;->this$0:Landroidx/fragment/app/FragmentManager;

    .line 62
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->dispatchCreateOptionsMenu()Z

    .line 64
    goto :goto_1

    .line 67
    :cond_1
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentMenuItems()Ljava/util/ArrayList;

    .line 68
    move-result-object v1

    .line 71
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 72
    iput-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mProvidedMenuItems:Ljava/util/ArrayList;

    .line 75
    return-void
    .line 77
.end method

.method public final isChildOrHidden(Landroid/view/View;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 2
    move-result-object v0

    .line 5
    if-eq v0, p0, :cond_1

    .line 6
    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 10
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 19
    :goto_1
    return p0
    .line 20
.end method

.method public final layoutChildLeft(Landroid/view/View;II[I)I
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 6
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 8
    const/4 v2, 0x0

    .line 10
    aget v3, p4, v2

    .line 11
    sub-int/2addr v1, v3

    .line 13
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 14
    move-result v3

    .line 17
    add-int/2addr v3, p2

    .line 18
    neg-int p2, v1

    .line 19
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    .line 20
    move-result p2

    .line 23
    aput p2, p4, v2

    .line 24
    invoke-virtual {p0, p3, p1}, Landroidx/appcompat/widget/Toolbar;->getChildTop(ILandroid/view/View;)I

    .line 26
    move-result p0

    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 30
    move-result p2

    .line 33
    add-int p3, v3, p2

    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 36
    move-result p4

    .line 39
    add-int/2addr p4, p0

    .line 40
    invoke-virtual {p1, v3, p0, p3, p4}, Landroid/view/View;->layout(IIII)V

    .line 41
    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 44
    add-int/2addr p2, p0

    .line 46
    add-int/2addr p2, v3

    .line 47
    return p2
    .line 48
.end method

.method public final layoutChildRight(Landroid/view/View;II[I)I
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 6
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 8
    const/4 v2, 0x1

    .line 10
    aget v3, p4, v2

    .line 11
    sub-int/2addr v1, v3

    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    .line 15
    move-result v4

    .line 18
    sub-int/2addr p2, v4

    .line 19
    neg-int v1, v1

    .line 20
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    .line 21
    move-result v1

    .line 24
    aput v1, p4, v2

    .line 25
    invoke-virtual {p0, p3, p1}, Landroidx/appcompat/widget/Toolbar;->getChildTop(ILandroid/view/View;)I

    .line 27
    move-result p0

    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 31
    move-result p3

    .line 34
    sub-int p4, p2, p3

    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 37
    move-result v1

    .line 40
    add-int/2addr v1, p0

    .line 41
    invoke-virtual {p1, p4, p0, p2, v1}, Landroid/view/View;->layout(IIII)V

    .line 42
    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 45
    add-int/2addr p3, p0

    .line 47
    sub-int/2addr p2, p3

    .line 48
    return p2
    .line 49
.end method

.method public final measureChildCollapseMargins(Landroid/view/View;IIII[I)I
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    move-result-object v0

    .line 5
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 6
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 8
    const/4 v2, 0x0

    .line 10
    aget v3, p6, v2

    .line 11
    sub-int/2addr v1, v3

    .line 13
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 14
    const/4 v4, 0x1

    .line 16
    aget v5, p6, v4

    .line 17
    sub-int/2addr v3, v5

    .line 19
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 20
    move-result v5

    .line 23
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 24
    move-result v6

    .line 27
    add-int/2addr v6, v5

    .line 28
    neg-int v1, v1

    .line 29
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 30
    move-result v1

    .line 33
    aput v1, p6, v2

    .line 34
    neg-int v1, v3

    .line 36
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 37
    move-result v1

    .line 40
    aput v1, p6, v4

    .line 41
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 43
    move-result p6

    .line 46
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 47
    move-result v1

    .line 50
    add-int/2addr v1, p6

    .line 51
    add-int/2addr v1, v6

    .line 52
    add-int/2addr v1, p3

    .line 53
    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 54
    invoke-static {p2, v1, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 56
    move-result p2

    .line 59
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 60
    move-result p3

    .line 63
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 64
    move-result p0

    .line 67
    add-int/2addr p0, p3

    .line 68
    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 69
    add-int/2addr p0, p3

    .line 71
    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 72
    add-int/2addr p0, p3

    .line 74
    add-int/2addr p0, p5

    .line 75
    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 76
    invoke-static {p4, p0, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 78
    move-result p0

    .line 81
    invoke-virtual {p1, p2, p0}, Landroid/view/View;->measure(II)V

    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 85
    move-result p0

    .line 88
    add-int/2addr p0, v6

    .line 89
    return p0
    .line 90
.end method

.method public final measureChildConstrained(Landroid/view/View;IIII)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    move-result-object v0

    .line 5
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 8
    move-result v1

    .line 11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 12
    move-result v2

    .line 15
    add-int/2addr v2, v1

    .line 16
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 17
    add-int/2addr v2, v1

    .line 19
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 20
    add-int/2addr v2, v1

    .line 22
    add-int/2addr v2, p3

    .line 23
    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 24
    invoke-static {p2, v2, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 26
    move-result p2

    .line 29
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 30
    move-result p3

    .line 33
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 34
    move-result p0

    .line 37
    add-int/2addr p0, p3

    .line 38
    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 39
    add-int/2addr p0, p3

    .line 41
    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 42
    add-int/2addr p0, p3

    .line 44
    add-int/lit8 p0, p0, 0x0

    .line 45
    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 47
    invoke-static {p4, p0, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 49
    move-result p0

    .line 52
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 53
    move-result p3

    .line 56
    const/high16 p4, 0x40000000    # 2.0f

    .line 57
    if-eq p3, p4, :cond_1

    .line 59
    if-ltz p5, :cond_1

    .line 61
    if-eqz p3, :cond_0

    .line 63
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 65
    move-result p0

    .line 68
    invoke-static {p0, p5}, Ljava/lang/Math;->min(II)I

    .line 69
    move-result p5

    .line 72
    :cond_0
    invoke-static {p5, p4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 73
    move-result p0

    .line 76
    :cond_1
    invoke-virtual {p1, p2, p0}, Landroid/view/View;->measure(II)V

    .line 77
    return-void
    .line 80
.end method

.method public onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->updateBackInvokedCallbackState()V

    .line 5
    return-void
    .line 8
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mShowOverflowMenuRunnable:Landroidx/appcompat/widget/Toolbar$2;

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 7
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->updateBackInvokedCallbackState()V

    .line 10
    return-void
    .line 13
.end method

.method public final onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/16 v2, 0x9

    .line 7
    if-ne v0, v2, :cond_0

    .line 9
    iput-boolean v1, p0, Landroidx/appcompat/widget/Toolbar;->mEatingHover:Z

    .line 11
    :cond_0
    iget-boolean v3, p0, Landroidx/appcompat/widget/Toolbar;->mEatingHover:Z

    .line 13
    const/4 v4, 0x1

    .line 15
    if-nez v3, :cond_1

    .line 16
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onHoverEvent(Landroid/view/MotionEvent;)Z

    .line 18
    move-result p1

    .line 21
    if-ne v0, v2, :cond_1

    .line 22
    if-nez p1, :cond_1

    .line 24
    iput-boolean v4, p0, Landroidx/appcompat/widget/Toolbar;->mEatingHover:Z

    .line 26
    :cond_1
    const/16 p1, 0xa

    .line 28
    if-eq v0, p1, :cond_2

    .line 30
    const/4 p1, 0x3

    .line 32
    if-ne v0, p1, :cond_3

    .line 33
    :cond_2
    iput-boolean v1, p0, Landroidx/appcompat/widget/Toolbar;->mEatingHover:Z

    .line 35
    :cond_3
    return v4
    .line 37
.end method

.method public onLayout(ZIIII)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 4
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat$Api17Impl;->getLayoutDirection(Landroid/view/View;)I

    .line 6
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    move v1, v2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v1, v3

    .line 16
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    .line 17
    move-result v4

    .line 20
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    .line 21
    move-result v5

    .line 24
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 25
    move-result v6

    .line 28
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 29
    move-result v7

    .line 32
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 33
    move-result v8

    .line 36
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 37
    move-result v9

    .line 40
    sub-int v10, v4, v7

    .line 41
    iget-object v11, v0, Landroidx/appcompat/widget/Toolbar;->mTempMargins:[I

    .line 43
    aput v3, v11, v2

    .line 45
    aput v3, v11, v3

    .line 47
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat$Api16Impl;->getMinimumHeight(Landroid/view/View;)I

    .line 49
    move-result v12

    .line 52
    if-ltz v12, :cond_1

    .line 53
    sub-int v13, p5, p3

    .line 55
    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    .line 57
    move-result v12

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    move v12, v3

    .line 62
    :goto_1
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 63
    invoke-virtual {v0, v13}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    .line 65
    move-result v13

    .line 68
    if-eqz v13, :cond_3

    .line 69
    if-eqz v1, :cond_2

    .line 71
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 73
    invoke-virtual {v0, v13, v10, v12, v11}, Landroidx/appcompat/widget/Toolbar;->layoutChildRight(Landroid/view/View;II[I)I

    .line 75
    move-result v13

    .line 78
    move v14, v13

    .line 79
    move v13, v6

    .line 80
    goto :goto_3

    .line 81
    :cond_2
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 82
    invoke-virtual {v0, v13, v6, v12, v11}, Landroidx/appcompat/widget/Toolbar;->layoutChildLeft(Landroid/view/View;II[I)I

    .line 84
    move-result v13

    .line 87
    goto :goto_2

    .line 88
    :cond_3
    move v13, v6

    .line 89
    :goto_2
    move v14, v10

    .line 90
    :goto_3
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 91
    invoke-virtual {v0, v15}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    .line 93
    move-result v15

    .line 96
    if-eqz v15, :cond_5

    .line 97
    if-eqz v1, :cond_4

    .line 99
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 101
    invoke-virtual {v0, v15, v14, v12, v11}, Landroidx/appcompat/widget/Toolbar;->layoutChildRight(Landroid/view/View;II[I)I

    .line 103
    move-result v14

    .line 106
    goto :goto_4

    .line 107
    :cond_4
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 108
    invoke-virtual {v0, v15, v13, v12, v11}, Landroidx/appcompat/widget/Toolbar;->layoutChildLeft(Landroid/view/View;II[I)I

    .line 110
    move-result v13

    .line 113
    :cond_5
    :goto_4
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 114
    invoke-virtual {v0, v15}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    .line 116
    move-result v15

    .line 119
    if-eqz v15, :cond_7

    .line 120
    if-eqz v1, :cond_6

    .line 122
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 124
    invoke-virtual {v0, v15, v13, v12, v11}, Landroidx/appcompat/widget/Toolbar;->layoutChildLeft(Landroid/view/View;II[I)I

    .line 126
    move-result v13

    .line 129
    goto :goto_5

    .line 130
    :cond_6
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 131
    invoke-virtual {v0, v15, v14, v12, v11}, Landroidx/appcompat/widget/Toolbar;->layoutChildRight(Landroid/view/View;II[I)I

    .line 133
    move-result v14

    .line 136
    :cond_7
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetLeft()I

    .line 137
    move-result v15

    .line 140
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetRight()I

    .line 141
    move-result v16

    .line 144
    sub-int v2, v15, v13

    .line 145
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 147
    move-result v2

    .line 150
    aput v2, v11, v3

    .line 151
    sub-int v2, v10, v14

    .line 153
    sub-int v2, v16, v2

    .line 155
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 157
    move-result v2

    .line 160
    const/16 v17, 0x1

    .line 161
    aput v2, v11, v17

    .line 163
    invoke-static {v13, v15}, Ljava/lang/Math;->max(II)I

    .line 165
    move-result v2

    .line 168
    sub-int v10, v10, v16

    .line 169
    invoke-static {v14, v10}, Ljava/lang/Math;->min(II)I

    .line 171
    move-result v10

    .line 174
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 175
    invoke-virtual {v0, v13}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    .line 177
    move-result v13

    .line 180
    if-eqz v13, :cond_9

    .line 181
    if-eqz v1, :cond_8

    .line 183
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 185
    invoke-virtual {v0, v13, v10, v12, v11}, Landroidx/appcompat/widget/Toolbar;->layoutChildRight(Landroid/view/View;II[I)I

    .line 187
    move-result v10

    .line 190
    goto :goto_6

    .line 191
    :cond_8
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 192
    invoke-virtual {v0, v13, v2, v12, v11}, Landroidx/appcompat/widget/Toolbar;->layoutChildLeft(Landroid/view/View;II[I)I

    .line 194
    move-result v2

    .line 197
    :cond_9
    :goto_6
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroidx/appcompat/widget/AppCompatImageView;

    .line 198
    invoke-virtual {v0, v13}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    .line 200
    move-result v13

    .line 203
    if-eqz v13, :cond_b

    .line 204
    if-eqz v1, :cond_a

    .line 206
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroidx/appcompat/widget/AppCompatImageView;

    .line 208
    invoke-virtual {v0, v13, v10, v12, v11}, Landroidx/appcompat/widget/Toolbar;->layoutChildRight(Landroid/view/View;II[I)I

    .line 210
    move-result v10

    .line 213
    goto :goto_7

    .line 214
    :cond_a
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroidx/appcompat/widget/AppCompatImageView;

    .line 215
    invoke-virtual {v0, v13, v2, v12, v11}, Landroidx/appcompat/widget/Toolbar;->layoutChildLeft(Landroid/view/View;II[I)I

    .line 217
    move-result v2

    .line 220
    :cond_b
    :goto_7
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 221
    invoke-virtual {v0, v13}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    .line 223
    move-result v13

    .line 226
    iget-object v14, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 227
    invoke-virtual {v0, v14}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    .line 229
    move-result v14

    .line 232
    if-eqz v13, :cond_c

    .line 233
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 235
    invoke-virtual {v15}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 237
    move-result-object v15

    .line 240
    check-cast v15, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 241
    iget v3, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 243
    move/from16 p4, v7

    .line 245
    iget-object v7, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 247
    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    .line 249
    move-result v7

    .line 252
    add-int/2addr v7, v3

    .line 253
    iget v3, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 254
    add-int/2addr v7, v3

    .line 256
    const/4 v3, 0x0

    .line 257
    add-int/2addr v7, v3

    .line 258
    goto :goto_8

    .line 259
    :cond_c
    move/from16 p4, v7

    .line 260
    const/4 v7, 0x0

    .line 262
    :goto_8
    if-eqz v14, :cond_d

    .line 263
    iget-object v3, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 265
    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 267
    move-result-object v3

    .line 270
    check-cast v3, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 271
    iget v15, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 273
    move/from16 v16, v4

    .line 275
    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 277
    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    .line 279
    move-result v4

    .line 282
    add-int/2addr v4, v15

    .line 283
    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 284
    add-int/2addr v4, v3

    .line 286
    add-int/2addr v7, v4

    .line 287
    goto :goto_9

    .line 288
    :cond_d
    move/from16 v16, v4

    .line 289
    :goto_9
    if-nez v13, :cond_f

    .line 291
    if-eqz v14, :cond_e

    .line 293
    goto :goto_a

    .line 295
    :cond_e
    move/from16 v18, v6

    .line 296
    move/from16 p3, v12

    .line 298
    goto/16 :goto_16

    .line 300
    :cond_f
    :goto_a
    if-eqz v13, :cond_10

    .line 302
    iget-object v3, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 304
    goto :goto_b

    .line 306
    :cond_10
    iget-object v3, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 307
    :goto_b
    if-eqz v14, :cond_11

    .line 309
    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 311
    goto :goto_c

    .line 313
    :cond_11
    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 314
    :goto_c
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 316
    move-result-object v3

    .line 319
    check-cast v3, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 320
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 322
    move-result-object v4

    .line 325
    check-cast v4, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 326
    if-eqz v13, :cond_12

    .line 328
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 330
    invoke-virtual {v15}, Landroid/widget/TextView;->getMeasuredWidth()I

    .line 332
    move-result v15

    .line 335
    if-gtz v15, :cond_13

    .line 336
    :cond_12
    if-eqz v14, :cond_14

    .line 338
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 340
    invoke-virtual {v15}, Landroid/widget/TextView;->getMeasuredWidth()I

    .line 342
    move-result v15

    .line 345
    if-lez v15, :cond_14

    .line 346
    :cond_13
    const/16 v17, 0x1

    .line 348
    goto :goto_d

    .line 350
    :cond_14
    const/16 v17, 0x0

    .line 351
    :goto_d
    iget v15, v0, Landroidx/appcompat/widget/Toolbar;->mGravity:I

    .line 353
    and-int/lit8 v15, v15, 0x70

    .line 355
    move/from16 v18, v6

    .line 357
    const/16 v6, 0x30

    .line 359
    if-eq v15, v6, :cond_18

    .line 361
    const/16 v6, 0x50

    .line 363
    if-eq v15, v6, :cond_17

    .line 365
    sub-int v6, v5, v8

    .line 367
    sub-int/2addr v6, v9

    .line 369
    sub-int/2addr v6, v7

    .line 370
    div-int/lit8 v6, v6, 0x2

    .line 371
    iget v15, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 373
    move/from16 p3, v12

    .line 375
    iget v12, v0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginTop:I

    .line 377
    add-int/2addr v15, v12

    .line 379
    if-ge v6, v15, :cond_15

    .line 380
    move v6, v15

    .line 382
    goto :goto_e

    .line 383
    :cond_15
    sub-int/2addr v5, v9

    .line 384
    sub-int/2addr v5, v7

    .line 385
    sub-int/2addr v5, v6

    .line 386
    sub-int/2addr v5, v8

    .line 387
    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 388
    iget v7, v0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginBottom:I

    .line 390
    add-int/2addr v3, v7

    .line 392
    if-ge v5, v3, :cond_16

    .line 393
    iget v3, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 395
    add-int/2addr v3, v7

    .line 397
    sub-int/2addr v3, v5

    .line 398
    sub-int/2addr v6, v3

    .line 399
    const/4 v3, 0x0

    .line 400
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    .line 401
    move-result v6

    .line 404
    :cond_16
    :goto_e
    add-int/2addr v8, v6

    .line 405
    goto :goto_f

    .line 406
    :cond_17
    move/from16 p3, v12

    .line 407
    sub-int/2addr v5, v9

    .line 409
    iget v3, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 410
    sub-int/2addr v5, v3

    .line 412
    iget v3, v0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginBottom:I

    .line 413
    sub-int/2addr v5, v3

    .line 415
    sub-int v8, v5, v7

    .line 416
    goto :goto_f

    .line 418
    :cond_18
    move/from16 p3, v12

    .line 419
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 421
    move-result v4

    .line 424
    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 425
    add-int/2addr v4, v3

    .line 427
    iget v3, v0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginTop:I

    .line 428
    add-int v8, v4, v3

    .line 430
    :goto_f
    if-eqz v1, :cond_1c

    .line 432
    if-eqz v17, :cond_19

    .line 434
    iget v1, v0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginStart:I

    .line 436
    goto :goto_10

    .line 438
    :cond_19
    const/4 v1, 0x0

    .line 439
    :goto_10
    const/4 v3, 0x1

    .line 440
    aget v4, v11, v3

    .line 441
    sub-int/2addr v1, v4

    .line 443
    const/4 v4, 0x0

    .line 444
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    .line 445
    move-result v5

    .line 448
    sub-int/2addr v10, v5

    .line 449
    neg-int v1, v1

    .line 450
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    .line 451
    move-result v1

    .line 454
    aput v1, v11, v3

    .line 455
    if-eqz v13, :cond_1a

    .line 457
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 459
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 461
    move-result-object v1

    .line 464
    check-cast v1, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 465
    iget-object v3, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 467
    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    .line 469
    move-result v3

    .line 472
    sub-int v3, v10, v3

    .line 473
    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 475
    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    .line 477
    move-result v4

    .line 480
    add-int/2addr v4, v8

    .line 481
    iget-object v5, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 482
    invoke-virtual {v5, v3, v8, v10, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 484
    iget v5, v0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginEnd:I

    .line 487
    sub-int/2addr v3, v5

    .line 489
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 490
    add-int v8, v4, v1

    .line 492
    goto :goto_11

    .line 494
    :cond_1a
    move v3, v10

    .line 495
    :goto_11
    if-eqz v14, :cond_1b

    .line 496
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 498
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 500
    move-result-object v1

    .line 503
    check-cast v1, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 504
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 506
    add-int/2addr v8, v1

    .line 508
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 509
    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    .line 511
    move-result v1

    .line 514
    sub-int v1, v10, v1

    .line 515
    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 517
    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    .line 519
    move-result v4

    .line 522
    add-int/2addr v4, v8

    .line 523
    iget-object v5, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 524
    invoke-virtual {v5, v1, v8, v10, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 526
    iget v1, v0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginEnd:I

    .line 529
    sub-int v1, v10, v1

    .line 531
    goto :goto_12

    .line 533
    :cond_1b
    move v1, v10

    .line 534
    :goto_12
    if-eqz v17, :cond_20

    .line 535
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    .line 537
    move-result v1

    .line 540
    move v10, v1

    .line 541
    goto :goto_16

    .line 542
    :cond_1c
    if-eqz v17, :cond_1d

    .line 543
    iget v1, v0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginStart:I

    .line 545
    goto :goto_13

    .line 547
    :cond_1d
    const/4 v1, 0x0

    .line 548
    :goto_13
    const/4 v3, 0x0

    .line 549
    aget v4, v11, v3

    .line 550
    sub-int/2addr v1, v4

    .line 552
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    .line 553
    move-result v4

    .line 556
    add-int/2addr v2, v4

    .line 557
    neg-int v1, v1

    .line 558
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    .line 559
    move-result v1

    .line 562
    aput v1, v11, v3

    .line 563
    if-eqz v13, :cond_1e

    .line 565
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 567
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 569
    move-result-object v1

    .line 572
    check-cast v1, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 573
    iget-object v3, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 575
    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    .line 577
    move-result v3

    .line 580
    add-int/2addr v3, v2

    .line 581
    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 582
    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    .line 584
    move-result v4

    .line 587
    add-int/2addr v4, v8

    .line 588
    iget-object v5, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 589
    invoke-virtual {v5, v2, v8, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 591
    iget v5, v0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginEnd:I

    .line 594
    add-int/2addr v3, v5

    .line 596
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 597
    add-int v8, v4, v1

    .line 599
    goto :goto_14

    .line 601
    :cond_1e
    move v3, v2

    .line 602
    :goto_14
    if-eqz v14, :cond_1f

    .line 603
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 605
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 607
    move-result-object v1

    .line 610
    check-cast v1, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 611
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 613
    add-int/2addr v8, v1

    .line 615
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 616
    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    .line 618
    move-result v1

    .line 621
    add-int/2addr v1, v2

    .line 622
    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 623
    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    .line 625
    move-result v4

    .line 628
    add-int/2addr v4, v8

    .line 629
    iget-object v5, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 630
    invoke-virtual {v5, v2, v8, v1, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 632
    iget v4, v0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginEnd:I

    .line 635
    add-int/2addr v1, v4

    .line 637
    goto :goto_15

    .line 638
    :cond_1f
    move v1, v2

    .line 639
    :goto_15
    if-eqz v17, :cond_20

    .line 640
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    .line 642
    move-result v2

    .line 645
    :cond_20
    :goto_16
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    .line 646
    const/4 v3, 0x3

    .line 648
    invoke-virtual {v0, v3, v1}, Landroidx/appcompat/widget/Toolbar;->addCustomViewsWithGravity(ILjava/util/List;)V

    .line 649
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    .line 652
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 654
    move-result v1

    .line 657
    move v3, v2

    .line 658
    const/4 v2, 0x0

    .line 659
    :goto_17
    if-ge v2, v1, :cond_21

    .line 660
    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    .line 662
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 664
    move-result-object v4

    .line 667
    check-cast v4, Landroid/view/View;

    .line 668
    move/from16 v12, p3

    .line 670
    invoke-virtual {v0, v4, v3, v12, v11}, Landroidx/appcompat/widget/Toolbar;->layoutChildLeft(Landroid/view/View;II[I)I

    .line 672
    move-result v3

    .line 675
    add-int/lit8 v2, v2, 0x1

    .line 676
    goto :goto_17

    .line 678
    :cond_21
    move/from16 v12, p3

    .line 679
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    .line 681
    const/4 v2, 0x5

    .line 683
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/widget/Toolbar;->addCustomViewsWithGravity(ILjava/util/List;)V

    .line 684
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    .line 687
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 689
    move-result v1

    .line 692
    const/4 v2, 0x0

    .line 693
    :goto_18
    if-ge v2, v1, :cond_22

    .line 694
    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    .line 696
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 698
    move-result-object v4

    .line 701
    check-cast v4, Landroid/view/View;

    .line 702
    invoke-virtual {v0, v4, v10, v12, v11}, Landroidx/appcompat/widget/Toolbar;->layoutChildRight(Landroid/view/View;II[I)I

    .line 704
    move-result v10

    .line 707
    add-int/lit8 v2, v2, 0x1

    .line 708
    goto :goto_18

    .line 710
    :cond_22
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    .line 711
    const/4 v2, 0x1

    .line 713
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/widget/Toolbar;->addCustomViewsWithGravity(ILjava/util/List;)V

    .line 714
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    .line 717
    const/4 v4, 0x0

    .line 719
    aget v5, v11, v4

    .line 720
    aget v2, v11, v2

    .line 722
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 724
    move-result v4

    .line 727
    move v7, v5

    .line 728
    const/4 v5, 0x0

    .line 729
    const/4 v6, 0x0

    .line 730
    :goto_19
    if-ge v5, v4, :cond_23

    .line 731
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 733
    move-result-object v8

    .line 736
    check-cast v8, Landroid/view/View;

    .line 737
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 739
    move-result-object v9

    .line 742
    check-cast v9, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 743
    iget v13, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 745
    sub-int/2addr v13, v7

    .line 747
    iget v7, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 748
    sub-int/2addr v7, v2

    .line 750
    const/4 v2, 0x0

    .line 751
    invoke-static {v2, v13}, Ljava/lang/Math;->max(II)I

    .line 752
    move-result v9

    .line 755
    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    .line 756
    move-result v14

    .line 759
    neg-int v13, v13

    .line 760
    invoke-static {v2, v13}, Ljava/lang/Math;->max(II)I

    .line 761
    move-result v13

    .line 764
    neg-int v7, v7

    .line 765
    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    .line 766
    move-result v7

    .line 769
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    .line 770
    move-result v8

    .line 773
    add-int/2addr v8, v9

    .line 774
    add-int/2addr v8, v14

    .line 775
    add-int/2addr v6, v8

    .line 776
    add-int/lit8 v5, v5, 0x1

    .line 777
    move v2, v7

    .line 779
    move v7, v13

    .line 780
    goto :goto_19

    .line 781
    :cond_23
    const/4 v2, 0x0

    .line 782
    sub-int v4, v16, v18

    .line 783
    sub-int v4, v4, p4

    .line 785
    div-int/lit8 v4, v4, 0x2

    .line 787
    add-int v4, v4, v18

    .line 789
    div-int/lit8 v1, v6, 0x2

    .line 791
    sub-int/2addr v4, v1

    .line 793
    add-int/2addr v6, v4

    .line 794
    if-ge v4, v3, :cond_24

    .line 795
    goto :goto_1a

    .line 797
    :cond_24
    if-le v6, v10, :cond_25

    .line 798
    sub-int/2addr v6, v10

    .line 800
    sub-int v3, v4, v6

    .line 801
    goto :goto_1a

    .line 803
    :cond_25
    move v3, v4

    .line 804
    :goto_1a
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    .line 805
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 807
    move-result v1

    .line 810
    move/from16 v19, v3

    .line 811
    move v3, v2

    .line 813
    move/from16 v2, v19

    .line 814
    :goto_1b
    if-ge v3, v1, :cond_26

    .line 816
    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    .line 818
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 820
    move-result-object v4

    .line 823
    check-cast v4, Landroid/view/View;

    .line 824
    invoke-virtual {v0, v4, v2, v12, v11}, Landroidx/appcompat/widget/Toolbar;->layoutChildLeft(Landroid/view/View;II[I)I

    .line 826
    move-result v2

    .line 829
    add-int/lit8 v3, v3, 0x1

    .line 830
    goto :goto_1b

    .line 832
    :cond_26
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    .line 833
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 835
    return-void
    .line 838
.end method

.method public final onMeasure(II)V
    .locals 16

    .line 1
    move-object/from16 v7, p0

    .line 2
    iget-object v8, v7, Landroidx/appcompat/widget/Toolbar;->mTempMargins:[I

    .line 4
    invoke-static/range {p0 .. p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    .line 6
    move-result v6

    .line 9
    xor-int/lit8 v9, v6, 0x1

    .line 10
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 12
    invoke-virtual {v7, v0}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    .line 14
    move-result v0

    .line 17
    const/4 v10, 0x0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 21
    iget v5, v7, Landroidx/appcompat/widget/Toolbar;->mMaxButtonHeight:I

    .line 23
    const/4 v3, 0x0

    .line 25
    move-object/from16 v0, p0

    .line 26
    move/from16 v2, p1

    .line 28
    move/from16 v4, p2

    .line 30
    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/widget/Toolbar;->measureChildConstrained(Landroid/view/View;IIII)V

    .line 32
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 35
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    .line 37
    move-result v0

    .line 40
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 41
    invoke-static {v1}, Landroidx/appcompat/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    .line 43
    move-result v1

    .line 46
    add-int/2addr v1, v0

    .line 47
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 48
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    .line 50
    move-result v0

    .line 53
    iget-object v2, v7, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 54
    invoke-static {v2}, Landroidx/appcompat/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    .line 56
    move-result v2

    .line 59
    add-int/2addr v2, v0

    .line 60
    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    .line 61
    move-result v0

    .line 64
    iget-object v2, v7, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 65
    invoke-virtual {v2}, Landroid/widget/ImageButton;->getMeasuredState()I

    .line 67
    move-result v2

    .line 70
    invoke-static {v10, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 71
    move-result v2

    .line 74
    move v11, v0

    .line 75
    move v12, v2

    .line 76
    goto :goto_0

    .line 77
    :cond_0
    move v1, v10

    .line 78
    move v11, v1

    .line 79
    move v12, v11

    .line 80
    :goto_0
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 81
    invoke-virtual {v7, v0}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    .line 83
    move-result v0

    .line 86
    if-eqz v0, :cond_1

    .line 87
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 89
    iget v5, v7, Landroidx/appcompat/widget/Toolbar;->mMaxButtonHeight:I

    .line 91
    const/4 v3, 0x0

    .line 93
    move-object/from16 v0, p0

    .line 94
    move/from16 v2, p1

    .line 96
    move/from16 v4, p2

    .line 98
    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/widget/Toolbar;->measureChildConstrained(Landroid/view/View;IIII)V

    .line 100
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 103
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    .line 105
    move-result v0

    .line 108
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 109
    invoke-static {v1}, Landroidx/appcompat/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    .line 111
    move-result v1

    .line 114
    add-int/2addr v1, v0

    .line 115
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 116
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    .line 118
    move-result v0

    .line 121
    iget-object v2, v7, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 122
    invoke-static {v2}, Landroidx/appcompat/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    .line 124
    move-result v2

    .line 127
    add-int/2addr v2, v0

    .line 128
    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    .line 129
    move-result v11

    .line 132
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 133
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredState()I

    .line 135
    move-result v0

    .line 138
    invoke-static {v12, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 139
    move-result v12

    .line 142
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetStart()I

    .line 143
    move-result v0

    .line 146
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 147
    move-result v2

    .line 150
    add-int/lit8 v13, v2, 0x0

    .line 151
    sub-int/2addr v0, v1

    .line 153
    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    .line 154
    move-result v0

    .line 157
    aput v0, v8, v6

    .line 158
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 160
    invoke-virtual {v7, v0}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    .line 162
    move-result v0

    .line 165
    if-eqz v0, :cond_2

    .line 166
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 168
    iget v5, v7, Landroidx/appcompat/widget/Toolbar;->mMaxButtonHeight:I

    .line 170
    move-object/from16 v0, p0

    .line 172
    move/from16 v2, p1

    .line 174
    move v3, v13

    .line 176
    move/from16 v4, p2

    .line 177
    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/widget/Toolbar;->measureChildConstrained(Landroid/view/View;IIII)V

    .line 179
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 182
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    .line 184
    move-result v0

    .line 187
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 188
    invoke-static {v1}, Landroidx/appcompat/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    .line 190
    move-result v1

    .line 193
    add-int/2addr v1, v0

    .line 194
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 195
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    .line 197
    move-result v0

    .line 200
    iget-object v2, v7, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 201
    invoke-static {v2}, Landroidx/appcompat/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    .line 203
    move-result v2

    .line 206
    add-int/2addr v2, v0

    .line 207
    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    .line 208
    move-result v11

    .line 211
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 212
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredState()I

    .line 214
    move-result v0

    .line 217
    invoke-static {v12, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 218
    move-result v12

    .line 221
    goto :goto_1

    .line 222
    :cond_2
    move v1, v10

    .line 223
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetEnd()I

    .line 224
    move-result v0

    .line 227
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 228
    move-result v2

    .line 231
    add-int/2addr v13, v2

    .line 232
    sub-int/2addr v0, v1

    .line 233
    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    .line 234
    move-result v0

    .line 237
    aput v0, v8, v9

    .line 238
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 240
    invoke-virtual {v7, v0}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    .line 242
    move-result v0

    .line 245
    if-eqz v0, :cond_3

    .line 246
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 248
    const/4 v5, 0x0

    .line 250
    move-object/from16 v0, p0

    .line 251
    move/from16 v2, p1

    .line 253
    move v3, v13

    .line 255
    move/from16 v4, p2

    .line 256
    move-object v6, v8

    .line 258
    invoke-virtual/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    .line 259
    move-result v0

    .line 262
    add-int/2addr v13, v0

    .line 263
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 264
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 266
    move-result v0

    .line 269
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 270
    invoke-static {v1}, Landroidx/appcompat/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    .line 272
    move-result v1

    .line 275
    add-int/2addr v1, v0

    .line 276
    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    .line 277
    move-result v11

    .line 280
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 281
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredState()I

    .line 283
    move-result v0

    .line 286
    invoke-static {v12, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 287
    move-result v12

    .line 290
    :cond_3
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroidx/appcompat/widget/AppCompatImageView;

    .line 291
    invoke-virtual {v7, v0}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    .line 293
    move-result v0

    .line 296
    if-eqz v0, :cond_4

    .line 297
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroidx/appcompat/widget/AppCompatImageView;

    .line 299
    const/4 v5, 0x0

    .line 301
    move-object/from16 v0, p0

    .line 302
    move/from16 v2, p1

    .line 304
    move v3, v13

    .line 306
    move/from16 v4, p2

    .line 307
    move-object v6, v8

    .line 309
    invoke-virtual/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    .line 310
    move-result v0

    .line 313
    add-int/2addr v13, v0

    .line 314
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroidx/appcompat/widget/AppCompatImageView;

    .line 315
    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    .line 317
    move-result v0

    .line 320
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroidx/appcompat/widget/AppCompatImageView;

    .line 321
    invoke-static {v1}, Landroidx/appcompat/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    .line 323
    move-result v1

    .line 326
    add-int/2addr v1, v0

    .line 327
    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    .line 328
    move-result v11

    .line 331
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroidx/appcompat/widget/AppCompatImageView;

    .line 332
    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredState()I

    .line 334
    move-result v0

    .line 337
    invoke-static {v12, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 338
    move-result v12

    .line 341
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 342
    move-result v9

    .line 345
    move v14, v10

    .line 346
    :goto_2
    if-ge v14, v9, :cond_7

    .line 347
    invoke-virtual {v7, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 349
    move-result-object v15

    .line 352
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 353
    move-result-object v0

    .line 356
    check-cast v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 357
    iget v0, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->mViewType:I

    .line 359
    if-nez v0, :cond_6

    .line 361
    invoke-virtual {v7, v15}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    .line 363
    move-result v0

    .line 366
    if-nez v0, :cond_5

    .line 367
    goto :goto_3

    .line 369
    :cond_5
    const/4 v5, 0x0

    .line 370
    move-object/from16 v0, p0

    .line 371
    move-object v1, v15

    .line 373
    move/from16 v2, p1

    .line 374
    move v3, v13

    .line 376
    move/from16 v4, p2

    .line 377
    move-object v6, v8

    .line 379
    invoke-virtual/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    .line 380
    move-result v0

    .line 383
    add-int/2addr v13, v0

    .line 384
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    .line 385
    move-result v0

    .line 388
    invoke-static {v15}, Landroidx/appcompat/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    .line 389
    move-result v1

    .line 392
    add-int/2addr v1, v0

    .line 393
    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    .line 394
    move-result v0

    .line 397
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredState()I

    .line 398
    move-result v1

    .line 401
    invoke-static {v12, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 402
    move-result v1

    .line 405
    move v11, v0

    .line 406
    move v12, v1

    .line 407
    :cond_6
    :goto_3
    add-int/lit8 v14, v14, 0x1

    .line 408
    goto :goto_2

    .line 410
    :cond_7
    iget v0, v7, Landroidx/appcompat/widget/Toolbar;->mTitleMarginTop:I

    .line 411
    iget v1, v7, Landroidx/appcompat/widget/Toolbar;->mTitleMarginBottom:I

    .line 413
    add-int v9, v0, v1

    .line 415
    iget v0, v7, Landroidx/appcompat/widget/Toolbar;->mTitleMarginStart:I

    .line 417
    iget v1, v7, Landroidx/appcompat/widget/Toolbar;->mTitleMarginEnd:I

    .line 419
    add-int v14, v0, v1

    .line 421
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 423
    invoke-virtual {v7, v0}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    .line 425
    move-result v0

    .line 428
    if-eqz v0, :cond_8

    .line 429
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 431
    add-int v3, v13, v14

    .line 433
    move-object/from16 v0, p0

    .line 435
    move/from16 v2, p1

    .line 437
    move/from16 v4, p2

    .line 439
    move v5, v9

    .line 441
    move-object v6, v8

    .line 442
    invoke-virtual/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    .line 443
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 446
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    .line 448
    move-result v0

    .line 451
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 452
    invoke-static {v1}, Landroidx/appcompat/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    .line 454
    move-result v1

    .line 457
    add-int/2addr v1, v0

    .line 458
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 459
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    .line 461
    move-result v0

    .line 464
    iget-object v2, v7, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 465
    invoke-static {v2}, Landroidx/appcompat/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    .line 467
    move-result v2

    .line 470
    add-int/2addr v2, v0

    .line 471
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 472
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredState()I

    .line 474
    move-result v0

    .line 477
    invoke-static {v12, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 478
    move-result v12

    .line 481
    move v15, v2

    .line 482
    move v6, v12

    .line 483
    move v12, v1

    .line 484
    goto :goto_4

    .line 485
    :cond_8
    move v15, v10

    .line 486
    move v6, v12

    .line 487
    move v12, v15

    .line 488
    :goto_4
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 489
    invoke-virtual {v7, v0}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    .line 491
    move-result v0

    .line 494
    if-eqz v0, :cond_9

    .line 495
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 497
    add-int v3, v13, v14

    .line 499
    add-int v5, v15, v9

    .line 501
    move-object/from16 v0, p0

    .line 503
    move/from16 v2, p1

    .line 505
    move/from16 v4, p2

    .line 507
    move v9, v6

    .line 509
    move-object v6, v8

    .line 510
    invoke-virtual/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    .line 511
    move-result v0

    .line 514
    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    .line 515
    move-result v12

    .line 518
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 519
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    .line 521
    move-result v0

    .line 524
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 525
    invoke-static {v1}, Landroidx/appcompat/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    .line 527
    move-result v1

    .line 530
    add-int/2addr v1, v0

    .line 531
    add-int/2addr v15, v1

    .line 532
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 533
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredState()I

    .line 535
    move-result v0

    .line 538
    invoke-static {v9, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 539
    move-result v6

    .line 542
    goto :goto_5

    .line 543
    :cond_9
    move v9, v6

    .line 544
    :goto_5
    add-int/2addr v13, v12

    .line 545
    invoke-static {v11, v15}, Ljava/lang/Math;->max(II)I

    .line 546
    move-result v0

    .line 549
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 550
    move-result v1

    .line 553
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 554
    move-result v2

    .line 557
    add-int/2addr v2, v1

    .line 558
    add-int/2addr v2, v13

    .line 559
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 560
    move-result v1

    .line 563
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 564
    move-result v3

    .line 567
    add-int/2addr v3, v1

    .line 568
    add-int/2addr v3, v0

    .line 569
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    .line 570
    move-result v0

    .line 573
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 574
    move-result v0

    .line 577
    const/high16 v1, -0x1000000

    .line 578
    and-int/2addr v1, v6

    .line 580
    move/from16 v2, p1

    .line 581
    invoke-static {v0, v2, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 583
    move-result v0

    .line 586
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    .line 587
    move-result v1

    .line 590
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    .line 591
    move-result v1

    .line 594
    shl-int/lit8 v2, v6, 0x10

    .line 595
    move/from16 v3, p2

    .line 597
    invoke-static {v1, v3, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 599
    move-result v1

    .line 602
    iget-boolean v2, v7, Landroidx/appcompat/widget/Toolbar;->mCollapsible:Z

    .line 603
    if-nez v2, :cond_a

    .line 605
    goto :goto_7

    .line 607
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 608
    move-result v2

    .line 611
    move v3, v10

    .line 612
    :goto_6
    if-ge v3, v2, :cond_c

    .line 613
    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 615
    move-result-object v4

    .line 618
    invoke-virtual {v7, v4}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    .line 619
    move-result v5

    .line 622
    if-eqz v5, :cond_b

    .line 623
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    .line 625
    move-result v5

    .line 628
    if-lez v5, :cond_b

    .line 629
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 631
    move-result v4

    .line 634
    if-lez v4, :cond_b

    .line 635
    :goto_7
    move v2, v10

    .line 637
    goto :goto_8

    .line 638
    :cond_b
    add-int/lit8 v3, v3, 0x1

    .line 639
    goto :goto_6

    .line 641
    :cond_c
    const/4 v2, 0x1

    .line 642
    :goto_8
    if-eqz v2, :cond_d

    .line 643
    goto :goto_9

    .line 645
    :cond_d
    move v10, v1

    .line 646
    :goto_9
    invoke-virtual {v7, v0, v10}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 647
    return-void
    .line 650
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .line 1
    instance-of v0, p1, Landroidx/appcompat/widget/Toolbar$SavedState;

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 6
    return-void

    .line 9
    :cond_0
    check-cast p1, Landroidx/appcompat/widget/Toolbar$SavedState;

    .line 10
    iget-object v0, p1, Landroidx/customview/view/AbsSavedState;->mSuperState:Landroid/os/Parcelable;

    .line 12
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 14
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 17
    if-eqz v0, :cond_1

    .line 19
    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 21
    goto :goto_0

    .line 23
    :cond_1
    const/4 v0, 0x0

    .line 24
    :goto_0
    iget v1, p1, Landroidx/appcompat/widget/Toolbar$SavedState;->expandedMenuItemId:I

    .line 25
    if-eqz v1, :cond_2

    .line 27
    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    .line 29
    if-eqz v2, :cond_2

    .line 31
    if-eqz v0, :cond_2

    .line 33
    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    .line 35
    move-result-object v0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 41
    :cond_2
    iget-boolean p1, p1, Landroidx/appcompat/widget/Toolbar$SavedState;->isOverflowOpen:Z

    .line 44
    if-eqz p1, :cond_3

    .line 46
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar;->mShowOverflowMenuRunnable:Landroidx/appcompat/widget/Toolbar$2;

    .line 48
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 50
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar;->mShowOverflowMenuRunnable:Landroidx/appcompat/widget/Toolbar$2;

    .line 53
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 55
    :cond_3
    return-void
    .line 58
.end method

.method public final onRtlPropertiesChanged(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsets:Landroidx/appcompat/widget/RtlSpacingHelper;

    .line 5
    if-nez v0, :cond_0

    .line 7
    new-instance v0, Landroidx/appcompat/widget/RtlSpacingHelper;

    .line 9
    invoke-direct {v0}, Landroidx/appcompat/widget/RtlSpacingHelper;-><init>()V

    .line 11
    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsets:Landroidx/appcompat/widget/RtlSpacingHelper;

    .line 14
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsets:Landroidx/appcompat/widget/RtlSpacingHelper;

    .line 16
    const/4 v0, 0x1

    .line 18
    if-ne p1, v0, :cond_1

    .line 19
    goto :goto_0

    .line 21
    :cond_1
    const/4 v0, 0x0

    .line 22
    :goto_0
    iget-boolean p1, p0, Landroidx/appcompat/widget/RtlSpacingHelper;->mIsRtl:Z

    .line 23
    if-ne v0, p1, :cond_2

    .line 25
    goto :goto_5

    .line 27
    :cond_2
    iput-boolean v0, p0, Landroidx/appcompat/widget/RtlSpacingHelper;->mIsRtl:Z

    .line 28
    iget-boolean p1, p0, Landroidx/appcompat/widget/RtlSpacingHelper;->mIsRelative:Z

    .line 30
    if-eqz p1, :cond_8

    .line 32
    const/high16 p1, -0x80000000

    .line 34
    if-eqz v0, :cond_5

    .line 36
    iget v0, p0, Landroidx/appcompat/widget/RtlSpacingHelper;->mEnd:I

    .line 38
    if-eq v0, p1, :cond_3

    .line 40
    goto :goto_1

    .line 42
    :cond_3
    iget v0, p0, Landroidx/appcompat/widget/RtlSpacingHelper;->mExplicitLeft:I

    .line 43
    :goto_1
    iput v0, p0, Landroidx/appcompat/widget/RtlSpacingHelper;->mLeft:I

    .line 45
    iget v0, p0, Landroidx/appcompat/widget/RtlSpacingHelper;->mStart:I

    .line 47
    if-eq v0, p1, :cond_4

    .line 49
    goto :goto_2

    .line 51
    :cond_4
    iget v0, p0, Landroidx/appcompat/widget/RtlSpacingHelper;->mExplicitRight:I

    .line 52
    :goto_2
    iput v0, p0, Landroidx/appcompat/widget/RtlSpacingHelper;->mRight:I

    .line 54
    goto :goto_5

    .line 56
    :cond_5
    iget v0, p0, Landroidx/appcompat/widget/RtlSpacingHelper;->mStart:I

    .line 57
    if-eq v0, p1, :cond_6

    .line 59
    goto :goto_3

    .line 61
    :cond_6
    iget v0, p0, Landroidx/appcompat/widget/RtlSpacingHelper;->mExplicitLeft:I

    .line 62
    :goto_3
    iput v0, p0, Landroidx/appcompat/widget/RtlSpacingHelper;->mLeft:I

    .line 64
    iget v0, p0, Landroidx/appcompat/widget/RtlSpacingHelper;->mEnd:I

    .line 66
    if-eq v0, p1, :cond_7

    .line 68
    goto :goto_4

    .line 70
    :cond_7
    iget v0, p0, Landroidx/appcompat/widget/RtlSpacingHelper;->mExplicitRight:I

    .line 71
    :goto_4
    iput v0, p0, Landroidx/appcompat/widget/RtlSpacingHelper;->mRight:I

    .line 73
    goto :goto_5

    .line 75
    :cond_8
    iget p1, p0, Landroidx/appcompat/widget/RtlSpacingHelper;->mExplicitLeft:I

    .line 76
    iput p1, p0, Landroidx/appcompat/widget/RtlSpacingHelper;->mLeft:I

    .line 78
    iget p1, p0, Landroidx/appcompat/widget/RtlSpacingHelper;->mExplicitRight:I

    .line 80
    iput p1, p0, Landroidx/appcompat/widget/RtlSpacingHelper;->mRight:I

    .line 82
    :goto_5
    return-void
    .line 84
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1
    new-instance v0, Landroidx/appcompat/widget/Toolbar$SavedState;

    .line 2
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 4
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroidx/appcompat/widget/Toolbar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 8
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    .line 11
    if-eqz v1, :cond_0

    .line 13
    iget-object v1, v1, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 15
    if-eqz v1, :cond_0

    .line 17
    iget v1, v1, Landroidx/appcompat/view/menu/MenuItemImpl;->mId:I

    .line 19
    iput v1, v0, Landroidx/appcompat/widget/Toolbar$SavedState;->expandedMenuItemId:I

    .line 21
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 23
    const/4 v1, 0x0

    .line 25
    if-eqz p0, :cond_2

    .line 26
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 28
    const/4 v2, 0x1

    .line 30
    if-eqz p0, :cond_1

    .line 31
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    .line 33
    move-result p0

    .line 36
    if-eqz p0, :cond_1

    .line 37
    move p0, v2

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move p0, v1

    .line 41
    :goto_0
    if-eqz p0, :cond_2

    .line 42
    move v1, v2

    .line 44
    :cond_2
    iput-boolean v1, v0, Landroidx/appcompat/widget/Toolbar$SavedState;->isOverflowOpen:Z

    .line 45
    return-object v0
    .line 47
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    iput-boolean v1, p0, Landroidx/appcompat/widget/Toolbar;->mEatingTouch:Z

    .line 9
    :cond_0
    iget-boolean v2, p0, Landroidx/appcompat/widget/Toolbar;->mEatingTouch:Z

    .line 11
    const/4 v3, 0x1

    .line 13
    if-nez v2, :cond_1

    .line 14
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 16
    move-result p1

    .line 19
    if-nez v0, :cond_1

    .line 20
    if-nez p1, :cond_1

    .line 22
    iput-boolean v3, p0, Landroidx/appcompat/widget/Toolbar;->mEatingTouch:Z

    .line 24
    :cond_1
    if-eq v0, v3, :cond_2

    .line 26
    const/4 p1, 0x3

    .line 28
    if-ne v0, p1, :cond_3

    .line 29
    :cond_2
    iput-boolean v1, p0, Landroidx/appcompat/widget/Toolbar;->mEatingTouch:Z

    .line 31
    :cond_3
    return v3
    .line 33
.end method

.method public setBackInvokedCallbackEnabled(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/Toolbar;->mBackInvokedCallbackEnabled:Z

    .line 2
    if-eq v0, p1, :cond_0

    .line 4
    iput-boolean p1, p0, Landroidx/appcompat/widget/Toolbar;->mBackInvokedCallbackEnabled:Z

    .line 6
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->updateBackInvokedCallbackState()V

    .line 8
    :cond_0
    return-void
    .line 11
.end method

.method public setCollapseContentDescription(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setCollapseContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setCollapseContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->ensureCollapseButtonView()V

    .line 4
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroidx/appcompat/widget/AppCompatImageButton;

    if-eqz p0, :cond_1

    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setCollapseIcon(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setCollapseIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCollapseIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->ensureCollapseButtonView()V

    .line 3
    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroidx/appcompat/widget/AppCompatImageButton;

    if-eqz p1, :cond_1

    .line 5
    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setCollapsible(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/widget/Toolbar;->mCollapsible:Z

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 4
    return-void
    .line 7
.end method

.method public setContentInsetEndWithActions(I)V
    .locals 1

    .line 1
    if-gez p1, :cond_0

    .line 2
    const/high16 p1, -0x80000000

    .line 4
    :cond_0
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsetEndWithActions:I

    .line 6
    if-eq p1, v0, :cond_1

    .line 8
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsetEndWithActions:I

    .line 10
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    .line 12
    move-result-object p1

    .line 15
    if-eqz p1, :cond_1

    .line 16
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 18
    :cond_1
    return-void
    .line 21
.end method

.method public setContentInsetStartWithNavigation(I)V
    .locals 1

    .line 1
    if-gez p1, :cond_0

    .line 2
    const/high16 p1, -0x80000000

    .line 4
    :cond_0
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsetStartWithNavigation:I

    .line 6
    if-eq p1, v0, :cond_1

    .line 8
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsetStartWithNavigation:I

    .line 10
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    .line 12
    move-result-object p1

    .line 15
    if-eqz p1, :cond_1

    .line 16
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 18
    :cond_1
    return-void
    .line 21
.end method

.method public setContentInsetsAbsolute(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsets:Landroidx/appcompat/widget/RtlSpacingHelper;

    .line 2
    if-nez v0, :cond_0

    .line 4
    new-instance v0, Landroidx/appcompat/widget/RtlSpacingHelper;

    .line 6
    invoke-direct {v0}, Landroidx/appcompat/widget/RtlSpacingHelper;-><init>()V

    .line 8
    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsets:Landroidx/appcompat/widget/RtlSpacingHelper;

    .line 11
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsets:Landroidx/appcompat/widget/RtlSpacingHelper;

    .line 13
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Landroidx/appcompat/widget/RtlSpacingHelper;->mIsRelative:Z

    .line 16
    const/high16 v0, -0x80000000

    .line 18
    if-eq p1, v0, :cond_1

    .line 20
    iput p1, p0, Landroidx/appcompat/widget/RtlSpacingHelper;->mExplicitLeft:I

    .line 22
    iput p1, p0, Landroidx/appcompat/widget/RtlSpacingHelper;->mLeft:I

    .line 24
    :cond_1
    if-eq p2, v0, :cond_2

    .line 26
    iput p2, p0, Landroidx/appcompat/widget/RtlSpacingHelper;->mExplicitRight:I

    .line 28
    iput p2, p0, Landroidx/appcompat/widget/RtlSpacingHelper;->mRight:I

    .line 30
    :cond_2
    return-void
    .line 32
.end method

.method public setContentInsetsRelative(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsets:Landroidx/appcompat/widget/RtlSpacingHelper;

    .line 2
    if-nez v0, :cond_0

    .line 4
    new-instance v0, Landroidx/appcompat/widget/RtlSpacingHelper;

    .line 6
    invoke-direct {v0}, Landroidx/appcompat/widget/RtlSpacingHelper;-><init>()V

    .line 8
    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsets:Landroidx/appcompat/widget/RtlSpacingHelper;

    .line 11
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsets:Landroidx/appcompat/widget/RtlSpacingHelper;

    .line 13
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/RtlSpacingHelper;->setRelative(II)V

    .line 15
    return-void
    .line 18
.end method

.method public setLogo(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroidx/appcompat/widget/AppCompatImageView;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroidx/appcompat/widget/AppCompatImageView;

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 8
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 9
    :cond_2
    :goto_0
    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz p0, :cond_3

    .line 10
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method

.method public setLogoDescription(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setLogoDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setLogoDescription(Ljava/lang/CharSequence;)V
    .locals 2

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroidx/appcompat/widget/AppCompatImageView;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroidx/appcompat/widget/AppCompatImageView;

    .line 5
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz p0, :cond_1

    .line 6
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setMenu(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/widget/ActionMenuPresenter;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 4
    if-nez v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->ensureMenuView()V

    .line 9
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 12
    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 14
    if-ne v0, p1, :cond_1

    .line 16
    return-void

    .line 18
    :cond_1
    if-eqz v0, :cond_2

    .line 19
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mOuterActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 21
    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->removeMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;)V

    .line 23
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    .line 26
    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->removeMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;)V

    .line 28
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    .line 31
    if-nez v0, :cond_3

    .line 33
    new-instance v0, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    .line 35
    invoke-direct {v0, p0}, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    .line 37
    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    .line 40
    :cond_3
    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p2, Landroidx/appcompat/widget/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    .line 43
    if-eqz p1, :cond_4

    .line 45
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    .line 47
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 49
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    .line 52
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    .line 54
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 56
    goto :goto_0

    .line 59
    :cond_4
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    .line 60
    const/4 v1, 0x0

    .line 62
    invoke-virtual {p2, p1, v1}, Landroidx/appcompat/widget/ActionMenuPresenter;->initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V

    .line 63
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    .line 66
    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    .line 68
    invoke-virtual {p1, v2, v1}, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V

    .line 70
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->updateMenuView(Z)V

    .line 73
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    .line 76
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->updateMenuView(Z)V

    .line 78
    :goto_0
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 81
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->mPopupTheme:I

    .line 83
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionMenuView;->setPopupTheme(I)V

    .line 85
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 88
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/ActionMenuView;->setPresenter(Landroidx/appcompat/widget/ActionMenuPresenter;)V

    .line 90
    iput-object p2, p0, Landroidx/appcompat/widget/Toolbar;->mOuterActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 93
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->updateBackInvokedCallbackState()V

    .line 95
    return-void
    .line 98
.end method

.method public setMenuCallbacks(Landroidx/appcompat/view/menu/MenuPresenter$Callback;Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->mActionMenuPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    .line 2
    iput-object p2, p0, Landroidx/appcompat/widget/Toolbar;->mMenuBuilderCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

    .line 4
    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 6
    if-eqz p0, :cond_0

    .line 8
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/ActionMenuView;->setMenuCallbacks(Landroidx/appcompat/view/menu/MenuPresenter$Callback;Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V

    .line 10
    :cond_0
    return-void
    .line 13
.end method

.method public setNavigationContentDescription(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->ensureNavButtonView()V

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroidx/appcompat/widget/AppCompatImageButton;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 7
    invoke-virtual {p0, p1}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setNavigationIcon(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->ensureNavButtonView()V

    .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroidx/appcompat/widget/AppCompatImageButton;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroidx/appcompat/widget/AppCompatImageButton;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 7
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8
    :cond_1
    :goto_0
    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroidx/appcompat/widget/AppCompatImageButton;

    if-eqz p0, :cond_2

    .line 9
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->ensureNavButtonView()V

    .line 2
    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    return-void
    .line 10
.end method

.method public setOnMenuItemClickListener(Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->ensureMenu()V

    .line 2
    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 5
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    .line 7
    return-void
    .line 10
.end method

.method public setPopupTheme(I)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->mPopupTheme:I

    .line 2
    if-eq v0, p1, :cond_1

    .line 4
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mPopupTheme:I

    .line 6
    if-nez p1, :cond_0

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 10
    move-result-object p1

    .line 13
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 19
    move-result-object v1

    .line 22
    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 23
    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    .line 26
    :cond_1
    :goto_0
    return-void
    .line 28
.end method

.method public setSubtitle(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 3

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 5
    new-instance v1, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {v1, v0}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 6
    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 7
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 8
    iget v1, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextAppearance:I

    if-eqz v1, :cond_0

    .line 9
    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v2, v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 10
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    .line 11
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 12
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 13
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    goto :goto_0

    .line 14
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 16
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 17
    :cond_3
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_4

    .line 18
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    :cond_4
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleText:Ljava/lang/CharSequence;

    return-void
.end method

.method public setSubtitleTextAppearance(Landroid/content/Context;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextAppearance:I

    .line 2
    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 4
    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 8
    :cond_0
    return-void
    .line 11
.end method

.method public setSubtitleTextColor(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setSubtitleTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setSubtitleTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 2
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextColor:Landroid/content/res/ColorStateList;

    .line 3
    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 3

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 5
    new-instance v1, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {v1, v0}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 6
    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 7
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 8
    iget v1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextAppearance:I

    if-eqz v1, :cond_0

    .line 9
    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v2, v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 10
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    .line 11
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 12
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 13
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    goto :goto_0

    .line 14
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 16
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 17
    :cond_3
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_4

    .line 18
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    :cond_4
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleText:Ljava/lang/CharSequence;

    return-void
.end method

.method public setTitleMargin(IIII)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginStart:I

    .line 2
    iput p2, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginTop:I

    .line 4
    iput p3, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginEnd:I

    .line 6
    iput p4, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginBottom:I

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 10
    return-void
    .line 13
.end method

.method public setTitleMarginBottom(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginBottom:I

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 4
    return-void
    .line 7
.end method

.method public setTitleMarginEnd(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginEnd:I

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 4
    return-void
    .line 7
.end method

.method public setTitleMarginStart(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginStart:I

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 4
    return-void
    .line 7
.end method

.method public setTitleMarginTop(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginTop:I

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 4
    return-void
    .line 7
.end method

.method public setTitleTextAppearance(Landroid/content/Context;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextAppearance:I

    .line 2
    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 4
    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 8
    :cond_0
    return-void
    .line 11
.end method

.method public setTitleTextColor(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitleTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTitleTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 2
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextColor:Landroid/content/res/ColorStateList;

    .line 3
    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public final shouldLayout(Landroid/view/View;)Z
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    move-result-object v0

    .line 7
    if-ne v0, p0, :cond_0

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 10
    move-result p0

    .line 13
    const/16 p1, 0x8

    .line 14
    if-eq p0, p1, :cond_0

    .line 16
    const/4 p0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    :goto_0
    return p0
    .line 21
.end method

.method final updateBackInvokedCallbackState()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->findOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    .line 2
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    .line 6
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v1, :cond_0

    .line 10
    iget-object v1, v1, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 12
    if-eqz v1, :cond_0

    .line 14
    move v1, v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v1, v3

    .line 18
    :goto_0
    if-eqz v1, :cond_1

    .line 19
    if-eqz v0, :cond_1

    .line 21
    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 23
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api19Impl;->isAttachedToWindow(Landroid/view/View;)Z

    .line 25
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    iget-boolean v1, p0, Landroidx/appcompat/widget/Toolbar;->mBackInvokedCallbackEnabled:Z

    .line 31
    if-eqz v1, :cond_1

    .line 33
    move v3, v2

    .line 35
    :cond_1
    if-eqz v3, :cond_3

    .line 36
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mBackInvokedDispatcher:Landroid/window/OnBackInvokedDispatcher;

    .line 38
    if-nez v1, :cond_3

    .line 40
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mBackInvokedCallback:Landroidx/appcompat/widget/Toolbar$Api33Impl$$ExternalSyntheticLambda0;

    .line 42
    if-nez v1, :cond_2

    .line 44
    new-instance v1, Landroidx/appcompat/widget/Toolbar$$ExternalSyntheticLambda0;

    .line 46
    invoke-direct {v1, p0, v2}, Landroidx/appcompat/widget/Toolbar$$ExternalSyntheticLambda0;-><init>(Landroidx/appcompat/widget/Toolbar;I)V

    .line 48
    new-instance v2, Landroidx/appcompat/widget/Toolbar$Api33Impl$$ExternalSyntheticLambda0;

    .line 51
    invoke-direct {v2, v1}, Landroidx/appcompat/widget/Toolbar$Api33Impl$$ExternalSyntheticLambda0;-><init>(Landroidx/appcompat/widget/Toolbar$$ExternalSyntheticLambda0;)V

    .line 53
    iput-object v2, p0, Landroidx/appcompat/widget/Toolbar;->mBackInvokedCallback:Landroidx/appcompat/widget/Toolbar$Api33Impl$$ExternalSyntheticLambda0;

    .line 56
    :cond_2
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mBackInvokedCallback:Landroidx/appcompat/widget/Toolbar$Api33Impl$$ExternalSyntheticLambda0;

    .line 58
    const v2, 0xf4240

    .line 60
    invoke-interface {v0, v2, v1}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    .line 63
    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mBackInvokedDispatcher:Landroid/window/OnBackInvokedDispatcher;

    .line 66
    goto :goto_1

    .line 68
    :cond_3
    if-nez v3, :cond_4

    .line 69
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mBackInvokedDispatcher:Landroid/window/OnBackInvokedDispatcher;

    .line 71
    if-eqz v0, :cond_4

    .line 73
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mBackInvokedCallback:Landroidx/appcompat/widget/Toolbar$Api33Impl$$ExternalSyntheticLambda0;

    .line 75
    invoke-interface {v0, v1}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 77
    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mBackInvokedDispatcher:Landroid/window/OnBackInvokedDispatcher;

    .line 81
    :cond_4
    :goto_1
    return-void
    .line 83
.end method
