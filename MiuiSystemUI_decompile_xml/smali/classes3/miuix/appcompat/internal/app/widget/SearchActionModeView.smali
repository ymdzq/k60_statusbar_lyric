.class public Lmiuix/appcompat/internal/app/widget/SearchActionModeView;
.super Landroid/widget/FrameLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public mActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

.field public mActionBarTopMargin:I

.field public mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

.field public mAnchorView:Ljava/lang/ref/WeakReference;

.field public mAnimationCanceled:Z

.field public mAnimationProgress:F

.field public mContentOriginPaddingBottom:I

.field public mContentOriginPaddingTop:I

.field public mContentView:Ljava/lang/ref/WeakReference;

.field public mCustomFrameLayout:Landroid/widget/FrameLayout;

.field public mCustomView:Landroid/view/View;

.field public mDimView:Landroid/view/View;

.field public mHasSetCustomView:Z

.field public mInputView:Landroid/widget/EditText;

.field public mOnBackClickListener:Landroid/view/View$OnClickListener;

.field public mOriginalPaddingTop:I

.field public mSearchContainer:Landroid/view/ViewGroup;

.field public final mSearchViewHeight:I

.field public mSplitActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

.field public mStatusBarPaddingTop:I

.field public mTextLengthBeforeChanged:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    const/4 p2, -0x1

    .line 5
    iput p2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mStatusBarPaddingTop:I

    .line 6
    const/4 p2, 0x0

    .line 8
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    move-result-object p2

    .line 15
    const v0, 0x7f070b57    # @dimen/miuix_appcompat_search_view_default_height '56.0dp'

    .line 16
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 19
    move-result p2

    .line 22
    iput p2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mSearchViewHeight:I

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 25
    move-result-object p0

    .line 28
    const p2, 0x7f070b54    # @dimen/miuix_appcompat_search_mode_bg_padding_top '4.0dp'

    .line 29
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 35
    move-result-object p0

    .line 38
    const p1, 0x7f070b52    # @dimen/miuix_appcompat_search_mode_bg_padding '24.0dp'

    .line 39
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 42
    return-void
    .line 45
.end method

.method private getContentView()Landroid/view/View;
    .locals 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mContentView:Ljava/lang/ref/WeakReference;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mContentView:Ljava/lang/ref/WeakReference;

    .line 12
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 17
    check-cast p0, Landroid/view/View;

    .line 18
    return-object p0

    .line 20
    :cond_0
    invoke-static {p0}, Lmiuix/internal/util/ActionBarUtils;->getActionBarOverlayLayout(Landroid/view/View;)Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 21
    move-result-object v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 27
    const v2, 0x1020002    # @android:id/content

    .line 29
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object v3

    .line 35
    invoke-direct {v1, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 36
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mContentView:Ljava/lang/ref/WeakReference;

    .line 39
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 41
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :cond_1
    const/4 p0, 0x0

    .line 46
    return-object p0
    .line 47
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    move p1, v0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    .line 7
    move-result p1

    .line 10
    :goto_0
    if-nez p1, :cond_2

    .line 11
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    .line 13
    if-eqz p1, :cond_1

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 17
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 20
    move-result-object p1

    .line 23
    sget-object v1, Lmiuix/view/inputmethod/InputMethodHelper;->INSTANCE:Lmiuix/view/inputmethod/InputMethodHelper$1;

    .line 24
    invoke-virtual {v1, p1}, Lmiuix/core/util/SoftReferenceSingleton;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    move-result-object p1

    .line 29
    check-cast p1, Lmiuix/view/inputmethod/InputMethodHelper;

    .line 30
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    .line 37
    iget-object p1, p1, Lmiuix/view/inputmethod/InputMethodHelper;->mManager:Landroid/view/inputmethod/InputMethodManager;

    .line 40
    invoke-virtual {p1, p0}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    .line 42
    invoke-virtual {p1, p0, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 45
    goto :goto_1

    .line 48
    :cond_2
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mTextLengthBeforeChanged:I

    .line 49
    if-nez p1, :cond_3

    .line 51
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    .line 53
    if-eqz p0, :cond_3

    .line 55
    const/16 p1, 0x8

    .line 57
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 59
    :cond_3
    :goto_1
    return-void
    .line 62
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    const/4 p1, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 6
    move-result p1

    .line 9
    :goto_0
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mTextLengthBeforeChanged:I

    .line 10
    return-void
    .line 12
.end method

.method public getActionBarContainer()Lmiuix/appcompat/internal/app/widget/ActionBarContainer;
    .locals 5

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 2
    if-nez v0, :cond_2

    .line 4
    invoke-static {p0}, Lmiuix/internal/util/ActionBarUtils;->getActionBarOverlayLayout(Landroid/view/View;)Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 6
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    const/4 v1, 0x0

    .line 12
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 13
    move-result v2

    .line 16
    if-ge v1, v2, :cond_1

    .line 17
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 19
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 23
    move-result v3

    .line 26
    const v4, 0x7f0a005b    # @id/action_bar_container

    .line 27
    if-ne v3, v4, :cond_0

    .line 30
    instance-of v3, v2, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 32
    if-eqz v3, :cond_0

    .line 34
    check-cast v2, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 36
    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 38
    goto :goto_1

    .line 40
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 41
    goto :goto_0

    .line 43
    :cond_1
    :goto_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 44
    if-eqz v0, :cond_2

    .line 46
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 48
    move-result-object v0

    .line 51
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 52
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 54
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mActionBarTopMargin:I

    .line 56
    if-lez v0, :cond_2

    .line 58
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingStart()I

    .line 60
    move-result v0

    .line 63
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOriginalPaddingTop:I

    .line 64
    iget v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mStatusBarPaddingTop:I

    .line 66
    add-int/2addr v1, v2

    .line 68
    iget v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mActionBarTopMargin:I

    .line 69
    add-int/2addr v1, v2

    .line 71
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingEnd()I

    .line 72
    move-result v2

    .line 75
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    .line 76
    move-result v3

    .line 79
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/FrameLayout;->setPaddingRelative(IIII)V

    .line 80
    :cond_2
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 83
    return-object p0
    .line 85
.end method

.method public getActionBarView()Lmiuix/appcompat/internal/app/widget/ActionBarView;
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-static {p0}, Lmiuix/internal/util/ActionBarUtils;->getActionBarOverlayLayout(Landroid/view/View;)Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 6
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    const v1, 0x7f0a0057    # @id/action_bar

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 15
    move-result-object v0

    .line 18
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 19
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 21
    :cond_0
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 23
    return-object p0
    .line 25
.end method

.method public getAnimationProgress()F
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationProgress:F

    .line 2
    return p0
    .line 4
.end method

.method public getCustomView()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCustomView:Landroid/view/View;

    .line 2
    return-object p0
    .line 4
.end method

.method public getDimView()Landroid/view/View;
    .locals 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    .line 2
    if-nez v0, :cond_3

    .line 4
    invoke-static {p0}, Lmiuix/internal/util/ActionBarUtils;->getActionBarOverlayLayout(Landroid/view/View;)Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 6
    move-result-object v0

    .line 9
    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 12
    move-result v1

    .line 15
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 16
    if-ltz v1, :cond_1

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 20
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 24
    move-result v2

    .line 27
    const v3, 0x7f0a0838    # @id/search_mask_vs

    .line 28
    if-ne v2, v3, :cond_0

    .line 31
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 33
    move-result-object v1

    .line 36
    check-cast v1, Landroid/view/ViewStub;

    .line 37
    goto :goto_0

    .line 39
    :cond_1
    const/4 v1, 0x0

    .line 40
    :goto_0
    if-eqz v1, :cond_2

    .line 41
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 43
    move-result-object v0

    .line 46
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    .line 47
    goto :goto_1

    .line 49
    :cond_2
    const v1, 0x7f0a0837    # @id/search_mask

    .line 50
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 53
    move-result-object v0

    .line 56
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    .line 57
    :cond_3
    :goto_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCustomFrameLayout:Landroid/widget/FrameLayout;

    .line 59
    if-eqz v0, :cond_4

    .line 61
    const/4 v1, 0x0

    .line 63
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 64
    :cond_4
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    .line 67
    return-object p0
    .line 69
.end method

.method public getSearchInput()Landroid/widget/EditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    .line 2
    return-object p0
    .line 4
.end method

.method public getSplitActionBarContainer()Lmiuix/appcompat/internal/app/widget/ActionBarContainer;
    .locals 5

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mSplitActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 2
    if-nez v0, :cond_1

    .line 4
    invoke-static {p0}, Lmiuix/internal/util/ActionBarUtils;->getActionBarOverlayLayout(Landroid/view/View;)Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 6
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    const/4 v1, 0x0

    .line 12
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 13
    move-result v2

    .line 16
    if-ge v1, v2, :cond_1

    .line 17
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 19
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 23
    move-result v3

    .line 26
    const v4, 0x7f0a08b4    # @id/split_action_bar

    .line 27
    if-ne v3, v4, :cond_0

    .line 30
    instance-of v3, v2, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 32
    if-eqz v3, :cond_0

    .line 34
    check-cast v2, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 36
    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mSplitActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 38
    goto :goto_1

    .line 40
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 41
    goto :goto_0

    .line 43
    :cond_1
    :goto_1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mSplitActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 44
    return-object p0
    .line 46
.end method

.method public getViewPager()Lmiuix/viewpager/widget/ViewPager;
    .locals 0

    .line 1
    invoke-static {p0}, Lmiuix/internal/util/ActionBarUtils;->getActionBarOverlayLayout(Landroid/view/View;)Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 6
    const/4 p0, 0x0

    .line 9
    throw p0
    .line 10
.end method

.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationCanceled:Z

    .line 3
    return-void
    .line 5
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationCanceled:Z

    .line 2
    if-eqz p1, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 7
    move-result-object p1

    .line 10
    sget-object v0, Lmiuix/view/inputmethod/InputMethodHelper;->INSTANCE:Lmiuix/view/inputmethod/InputMethodHelper$1;

    .line 11
    invoke-virtual {v0, p1}, Lmiuix/core/util/SoftReferenceSingleton;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object p1

    .line 16
    check-cast p1, Lmiuix/view/inputmethod/InputMethodHelper;

    .line 17
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    .line 24
    move-result-object v0

    .line 27
    iget-object p1, p1, Lmiuix/view/inputmethod/InputMethodHelper;->mManager:Landroid/view/inputmethod/InputMethodManager;

    .line 28
    const/4 v1, 0x0

    .line 30
    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromInputMethod(Landroid/os/IBinder;I)V

    .line 31
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 34
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 38
    move-result-object p1

    .line 41
    const-string v0, "animator_duration_scale"

    .line 42
    const/high16 v2, 0x3f800000    # 1.0f

    .line 44
    invoke-static {p1, v0, v2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    .line 46
    invoke-static {p0}, Lmiuix/internal/util/ActionBarUtils;->getActionBarOverlayLayout(Landroid/view/View;)Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 49
    move-result-object p1

    .line 52
    if-eqz p1, :cond_1

    .line 53
    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setOverlayMode(Z)V

    .line 55
    :cond_1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnchorView:Ljava/lang/ref/WeakReference;

    .line 58
    const/4 v0, 0x0

    .line 60
    if-eqz p1, :cond_2

    .line 61
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 63
    move-result-object p1

    .line 66
    check-cast p1, Landroid/view/View;

    .line 67
    goto :goto_0

    .line 69
    :cond_2
    move-object p1, v0

    .line 70
    :goto_0
    if-eqz p1, :cond_3

    .line 71
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 73
    :cond_3
    const/4 p1, 0x0

    .line 76
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 77
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 80
    move-result-object p1

    .line 83
    check-cast p1, Landroid/view/ViewGroup;

    .line 84
    if-eqz p1, :cond_4

    .line 86
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 88
    :cond_4
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 91
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 93
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mSplitActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 95
    return-void
    .line 97
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationCanceled:Z

    .line 3
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->getActionBarContainer()Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 5
    move-result-object p0

    .line 8
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getTabContainer()Landroid/view/View;

    .line 9
    move-result-object p0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    :cond_0
    return-void
    .line 18
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOnBackClickListener:Landroid/view/View$OnClickListener;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 6
    move-result v0

    .line 9
    const v1, 0x7f0a083e    # @id/search_text_cancel

    .line 10
    if-eq v0, v1, :cond_0

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 15
    move-result v0

    .line 18
    const v1, 0x7f0a0837    # @id/search_mask

    .line 19
    if-ne v0, v1, :cond_1

    .line 22
    :cond_0
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOnBackClickListener:Landroid/view/View$OnClickListener;

    .line 24
    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 26
    :cond_1
    return-void
    .line 29
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    return-void
    .line 5
.end method

.method public final onFinishInflate()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 2
    const v0, 0x7f0a083e    # @id/search_text_cancel

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/TextView;

    .line 12
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    const v0, 0x7f0a0833    # @id/search_container

    .line 17
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 20
    move-result-object v0

    .line 23
    check-cast v0, Landroid/view/ViewGroup;

    .line 24
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mSearchContainer:Landroid/view/ViewGroup;

    .line 26
    const/4 v1, 0x0

    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->setForceDarkAllowed(Z)V

    .line 29
    const v0, 0x1020009    # @android:id/input

    .line 32
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 35
    move-result-object v0

    .line 38
    check-cast v0, Landroid/widget/EditText;

    .line 39
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    .line 41
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mSearchContainer:Landroid/view/ViewGroup;

    .line 43
    filled-new-array {v0}, [Landroid/view/View;

    .line 45
    move-result-object v0

    .line 48
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 49
    move-result-object v0

    .line 52
    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    .line 53
    move-result-object v0

    .line 56
    const/high16 v2, 0x3f800000    # 1.0f

    .line 57
    new-array v3, v1, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 59
    invoke-interface {v0, v2, v3}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    .line 61
    move-result-object v0

    .line 64
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    .line 65
    new-array v1, v1, [Lmiuix/animation/base/AnimConfig;

    .line 67
    invoke-interface {v0, v2, v1}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 69
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    .line 72
    move-result v0

    .line 75
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOriginalPaddingTop:I

    .line 76
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->getContentView()Landroid/view/View;

    .line 78
    move-result-object v0

    .line 81
    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 84
    move-result v1

    .line 87
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mContentOriginPaddingTop:I

    .line 88
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 90
    move-result v0

    .line 93
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mContentOriginPaddingBottom:I

    .line 94
    :cond_0
    return-void
    .line 96
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    .line 5
    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    .line 9
    move-result p0

    .line 12
    int-to-float p2, p5

    .line 13
    add-float/2addr p0, p2

    .line 14
    int-to-float p2, p3

    .line 15
    sub-float/2addr p0, p2

    .line 16
    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    .line 17
    :cond_0
    return-void
    .line 20
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    const v0, 0x7f0a0839    # @id/search_mode_stub

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 13
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 15
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnchorView:Ljava/lang/ref/WeakReference;

    .line 18
    :cond_0
    return-void
    .line 20
.end method

.method public setAnimateView(Landroid/view/View;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    new-instance p0, Ljava/lang/ref/WeakReference;

    .line 4
    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public setAnimatedViewListener(Lmiuix/view/SearchActionMode$AnimatedViewListener;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setAnimationProgress(F)V
    .locals 0

    .line 1
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationProgress:F

    .line 2
    return-void
    .line 4
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mHasSetCustomView:Z

    .line 4
    if-nez v0, :cond_0

    .line 6
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCustomView:Landroid/view/View;

    .line 8
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    .line 10
    const/4 v0, -0x1

    .line 12
    invoke-direct {p1, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 13
    new-instance v0, Landroid/widget/FrameLayout;

    .line 16
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 18
    move-result-object v1

    .line 21
    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 22
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCustomFrameLayout:Landroid/widget/FrameLayout;

    .line 25
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCustomFrameLayout:Landroid/widget/FrameLayout;

    .line 30
    const v1, 0x7f0a082e    # @id/searchActionMode_customFrameLayout

    .line 32
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 35
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCustomFrameLayout:Landroid/widget/FrameLayout;

    .line 38
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCustomView:Landroid/view/View;

    .line 40
    invoke-virtual {v0, v1, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCustomFrameLayout:Landroid/widget/FrameLayout;

    .line 45
    const/4 v1, 0x0

    .line 47
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 48
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->getDimView()Landroid/view/View;

    .line 51
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    .line 54
    check-cast v0, Landroid/view/ViewGroup;

    .line 56
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCustomFrameLayout:Landroid/widget/FrameLayout;

    .line 58
    invoke-virtual {v0, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    const/4 p1, 0x1

    .line 63
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mHasSetCustomView:Z

    .line 64
    :cond_0
    return-void
    .line 66
.end method

.method public setOnBackClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOnBackClickListener:Landroid/view/View$OnClickListener;

    .line 2
    return-void
    .line 4
.end method

.method public setResultView(Landroid/view/View;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    new-instance p0, Ljava/lang/ref/WeakReference;

    .line 4
    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 9
    move-result-object p0

    .line 12
    instance-of p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 13
    if-eqz p1, :cond_0

    .line 15
    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 17
    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 19
    :cond_0
    return-void
    .line 21
.end method

.method public setStatusBarPaddingTop(I)V
    .locals 5

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mStatusBarPaddingTop:I

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eq v0, p1, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v0, v1

    .line 9
    :goto_0
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mStatusBarPaddingTop:I

    .line 10
    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingStart()I

    .line 14
    move-result p1

    .line 17
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOriginalPaddingTop:I

    .line 18
    iget v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mStatusBarPaddingTop:I

    .line 20
    add-int/2addr v0, v2

    .line 22
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingEnd()I

    .line 23
    move-result v2

    .line 26
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    .line 27
    move-result v3

    .line 30
    invoke-virtual {p0, p1, v0, v2, v3}, Landroid/widget/FrameLayout;->setPaddingRelative(IIII)V

    .line 31
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 34
    move-result-object p1

    .line 37
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mSearchViewHeight:I

    .line 38
    iget v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mStatusBarPaddingTop:I

    .line 40
    add-int/2addr v0, v2

    .line 42
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 43
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->getContentView()Landroid/view/View;

    .line 45
    move-result-object p1

    .line 48
    if-eqz p1, :cond_1

    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    .line 51
    move-result v0

    .line 54
    iget v3, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mContentOriginPaddingTop:I

    .line 55
    add-int/2addr v2, v3

    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    .line 58
    move-result v3

    .line 61
    iget v4, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mContentOriginPaddingBottom:I

    .line 62
    add-int/2addr v1, v4

    .line 64
    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 65
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 68
    :cond_2
    return-void
    .line 71
.end method
