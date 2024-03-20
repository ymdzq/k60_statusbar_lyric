.class public Lmiuix/appcompat/app/FragmentDelegate;
.super Lmiuix/appcompat/app/ActionBarDelegateImpl;
.source "FragmentDelegate.java"

# interfaces
.implements Lmiuix/responsive/interfaces/IResponsive;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/app/FragmentDelegate$InvalidateMenuRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/appcompat/app/ActionBarDelegateImpl;",
        "Lmiuix/responsive/interfaces/IResponsive<",
        "Landroidx/fragment/app/Fragment;",
        ">;"
    }
.end annotation


# instance fields
.field private mExtraThemeRes:I

.field private mFragment:Landroidx/fragment/app/Fragment;

.field private mInflatedView:Landroid/view/View;

.field private mInvalidateMenuFlags:B

.field private mInvalidateMenuRunnable:Ljava/lang/Runnable;

.field protected mIsInEditActionMode:Z

.field protected mIsInSearchActionMode:Z

.field private mIsUserResponsiveEnabled:Z

.field private mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

.field private mResponsiveStateManager:Lmiuix/responsive/page/manager/BaseResponseStateManager;

.field private mSubDecor:Landroid/view/View;

.field private mThemedContext:Landroid/content/Context;

.field private final mWindowCallback:Landroid/view/Window$Callback;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 108
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-direct {p0, v0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;-><init>(Lmiuix/appcompat/app/AppCompatActivity;)V

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mIsUserResponsiveEnabled:Z

    .line 76
    iput-boolean v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mIsInEditActionMode:Z

    .line 77
    iput-boolean v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mIsInSearchActionMode:Z

    .line 80
    new-instance v0, Lmiuix/appcompat/app/FragmentDelegate$1;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/FragmentDelegate$1;-><init>(Lmiuix/appcompat/app/FragmentDelegate;)V

    iput-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mWindowCallback:Landroid/view/Window$Callback;

    .line 109
    iput-object p1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method static synthetic access$000(Lmiuix/appcompat/app/FragmentDelegate;)Landroidx/fragment/app/Fragment;
    .locals 0

    .line 54
    iget-object p0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    return-object p0
.end method

.method static synthetic access$100(Lmiuix/appcompat/app/FragmentDelegate;)B
    .locals 0

    .line 54
    iget-byte p0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mInvalidateMenuFlags:B

    return p0
.end method

.method static synthetic access$172(Lmiuix/appcompat/app/FragmentDelegate;I)B
    .locals 1

    .line 54
    iget-byte v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mInvalidateMenuFlags:B

    and-int/2addr p1, v0

    int-to-byte p1, p1

    iput-byte p1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mInvalidateMenuFlags:B

    return p1
.end method

.method static synthetic access$200(Lmiuix/appcompat/app/FragmentDelegate;)Lmiuix/appcompat/internal/view/menu/MenuBuilder;
    .locals 0

    .line 54
    iget-object p0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    return-object p0
.end method

.method static synthetic access$202(Lmiuix/appcompat/app/FragmentDelegate;Lmiuix/appcompat/internal/view/menu/MenuBuilder;)Lmiuix/appcompat/internal/view/menu/MenuBuilder;
    .locals 0

    .line 54
    iput-object p1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    return-object p1
.end method

.method private getInvalidateMenuRunnable()Ljava/lang/Runnable;
    .locals 1

    .line 401
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mInvalidateMenuRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 402
    new-instance v0, Lmiuix/appcompat/app/FragmentDelegate$InvalidateMenuRunnable;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/FragmentDelegate$InvalidateMenuRunnable;-><init>(Lmiuix/appcompat/app/FragmentDelegate;)V

    iput-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mInvalidateMenuRunnable:Ljava/lang/Runnable;

    .line 404
    :cond_0
    iget-object p0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mInvalidateMenuRunnable:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public checkThemeLegality()V
    .locals 0

    .line 0
    return-void
.end method

.method public createActionBar()Lmiuix/appcompat/app/ActionBar;
    .locals 1

    .line 132
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-eqz v0, :cond_0

    .line 133
    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    iget-object p0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public dispatchResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V
    .locals 0

    .line 616
    invoke-virtual {p0, p1, p2, p3}, Lmiuix/appcompat/app/FragmentDelegate;->onResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V

    return-void
.end method

.method public getContentInset()Landroid/graphics/Rect;
    .locals 2

    .line 413
    iget-boolean v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mHasActionBar:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mContentInset:Landroid/graphics/Rect;

    if-nez v1, :cond_1

    .line 414
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 415
    instance-of v1, v0, Lmiuix/appcompat/app/IFragment;

    if-eqz v1, :cond_0

    .line 416
    check-cast v0, Lmiuix/appcompat/app/IFragment;

    invoke-interface {v0}, Lmiuix/appcompat/app/IContentInsetState;->getContentInset()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mContentInset:Landroid/graphics/Rect;

    goto :goto_0

    :cond_0
    if-nez v0, :cond_2

    .line 418
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->getContentInset()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mContentInset:Landroid/graphics/Rect;

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 420
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    instance-of v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_2

    .line 421
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getContentInset()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mContentInset:Landroid/graphics/Rect;

    .line 423
    :cond_2
    :goto_0
    iget-object p0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mContentInset:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;
    .locals 0

    .line 114
    iget-object p0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    return-object p0
.end method

.method public getResponsiveSubject()Landroidx/fragment/app/Fragment;
    .locals 0

    .line 603
    iget-object p0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    return-object p0
.end method

.method public bridge synthetic getResponsiveSubject()Ljava/lang/Object;
    .locals 0

    .line 54
    invoke-virtual {p0}, Lmiuix/appcompat/app/FragmentDelegate;->getResponsiveSubject()Landroidx/fragment/app/Fragment;

    move-result-object p0

    return-object p0
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 3

    .line 564
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mThemedContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 565
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    iput-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mThemedContext:Landroid/content/Context;

    .line 566
    iget v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mExtraThemeRes:I

    if-eqz v0, :cond_0

    .line 567
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mThemedContext:Landroid/content/Context;

    iget v2, p0, Lmiuix/appcompat/app/FragmentDelegate;->mExtraThemeRes:I

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mThemedContext:Landroid/content/Context;

    .line 570
    :cond_0
    iget-object p0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mThemedContext:Landroid/content/Context;

    return-object p0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .line 338
    iget-object p0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    return-object p0
.end method

.method final installSubDecor(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
    .locals 5

    .line 198
    iget-boolean v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mSubDecorInstalled:Z

    if-nez v0, :cond_8

    .line 199
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 200
    instance-of v1, v0, Lmiuix/appcompat/app/AppCompatActivity;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 201
    move-object v3, v0

    check-cast v3, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v3}, Lmiuix/appcompat/app/AppCompatActivity;->getExtraHorizontalPaddingLevel()I

    move-result v4

    invoke-virtual {p0, v4}, Lmiuix/appcompat/app/FragmentDelegate;->setExtraHorizontalPaddingLevel(I)V

    .line 202
    invoke-virtual {v3, v2}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraHorizontalPaddingEnable(Z)V

    .line 203
    invoke-virtual {v3, v2}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraPaddingApplyToContentEnable(Z)V

    :cond_0
    const/4 v3, 0x1

    .line 205
    iput-boolean v3, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mSubDecorInstalled:Z

    .line 206
    sget v4, Lmiuix/appcompat/R$layout;->miuix_appcompat_screen_action_bar:I

    .line 207
    invoke-virtual {p3, v4, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 208
    invoke-virtual {p0}, Lmiuix/appcompat/app/FragmentDelegate;->getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p3

    invoke-virtual {p2, p3}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 209
    iget-object p3, p0, Lmiuix/appcompat/app/FragmentDelegate;->mWindowCallback:Landroid/view/Window$Callback;

    invoke-virtual {p2, p3}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setCallback(Landroid/view/Window$Callback;)V

    .line 210
    iget-object p3, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    instance-of v4, p3, Lmiuix/appcompat/app/IFragment;

    if-eqz v4, :cond_1

    .line 211
    check-cast p3, Lmiuix/appcompat/app/IContentInsetState;

    invoke-virtual {p2, p3}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setContentInsetStateCallback(Lmiuix/appcompat/app/IContentInsetState;)V

    .line 212
    iget-object p3, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    check-cast p3, Lmiuix/appcompat/app/ExtraPaddingObserver;

    invoke-virtual {p2, p3}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setExtraPaddingObserver(Lmiuix/appcompat/app/ExtraPaddingObserver;)V

    .line 214
    :cond_1
    invoke-virtual {p2, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setRootSubDecor(Z)V

    .line 215
    iget-boolean p3, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mOverlayActionBar:Z

    invoke-virtual {p2, p3}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setOverlayMode(Z)V

    .line 217
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getTranslucentStatus()I

    move-result p3

    invoke-virtual {p2, p3}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setTranslucentStatus(I)V

    .line 219
    iget p3, p0, Lmiuix/appcompat/app/FragmentDelegate;->mExtraThemeRes:I

    if-eqz p3, :cond_2

    .line 220
    invoke-virtual {p0}, Lmiuix/appcompat/app/FragmentDelegate;->checkThemeLegality()V

    .line 221
    iget-object p3, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    check-cast p3, Lmiuix/appcompat/app/IFragment;

    invoke-interface {p3}, Lmiuix/appcompat/app/IFragment;->checkThemeLegality()V

    const p3, 0x1010054    # @android:attr/windowBackground

    .line 222
    invoke-static {p1, p3}, Lmiuix/internal/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    if-eqz v1, :cond_3

    .line 225
    check-cast v0, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->isInFloatingWindowMode()Z

    move-result p3

    invoke-virtual {p2, p3}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->onFloatingModeChanged(Z)V

    .line 228
    :cond_3
    sget p3, Lmiuix/appcompat/R$id;->action_bar:I

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lmiuix/appcompat/internal/app/widget/ActionBarView;

    iput-object p3, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 229
    invoke-virtual {p0}, Lmiuix/appcompat/app/FragmentDelegate;->getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    invoke-virtual {p3, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 230
    iget-object p3, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mWindowCallback:Landroid/view/Window$Callback;

    invoke-virtual {p3, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 237
    iget-boolean p3, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mFeatureIndeterminateProgress:Z

    if-eqz p3, :cond_4

    .line 238
    iget-object p3, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {p3}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->initIndeterminateProgress()V

    .line 242
    :cond_4
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->isEndActionMenuEnabled()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 243
    iget-object p3, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {p3, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setEndActionMenuEnable(Z)V

    :cond_5
    const-string p3, "splitActionBarWhenNarrow"

    .line 247
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getUiOptionsFromMetadata()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 251
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmiuix/appcompat/R$bool;->abc_split_action_bar_is_narrow:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    goto :goto_0

    .line 254
    :cond_6
    sget-object v0, Lmiuix/appcompat/R$styleable;->Window:[I

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 255
    sget v0, Lmiuix/appcompat/R$styleable;->Window_windowSplitActionBar:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 256
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    move p1, v0

    :goto_0
    if-eqz p1, :cond_7

    .line 260
    invoke-virtual {p0, p1, p3, p2}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->addSplitActionBar(ZZLmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)V

    .line 263
    :cond_7
    invoke-virtual {p0, v3}, Lmiuix/appcompat/app/FragmentDelegate;->updateOptionsMenu(I)V

    .line 264
    iput-object p2, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    goto :goto_1

    .line 265
    :cond_8
    iget-object p1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_9

    .line 266
    iget-object p1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 267
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-nez p2, :cond_9

    .line 268
    iget-object p0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    :cond_9
    :goto_1
    return-void
.end method

.method public invalidateOptionsMenu()V
    .locals 2

    .line 347
    iget-byte v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mInvalidateMenuFlags:B

    and-int/lit8 v1, v0, 0x10

    if-nez v1, :cond_0

    or-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    .line 348
    iput-byte v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mInvalidateMenuFlags:B

    .line 349
    invoke-direct {p0}, Lmiuix/appcompat/app/FragmentDelegate;->getInvalidateMenuRunnable()Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 275
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mResponsiveStateManager:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    if-eqz v0, :cond_0

    .line 276
    iget-object v1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/responsive/page/manager/BaseResponseStateManager;->beforeConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 278
    :cond_0
    invoke-super {p0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 279
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    if-eqz v0, :cond_1

    instance-of v0, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_1

    .line 280
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 281
    instance-of v1, v0, Lmiuix/appcompat/app/AppCompatActivity;

    if-eqz v1, :cond_1

    .line 282
    iget-object v1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    check-cast v1, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    check-cast v0, Lmiuix/appcompat/app/AppCompatActivity;

    .line 283
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->isInFloatingWindowMode()Z

    move-result v0

    .line 282
    invoke-virtual {v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->onFloatingModeChanged(Z)V

    .line 287
    :cond_1
    iget-object p0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mResponsiveStateManager:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    if-eqz p0, :cond_2

    .line 288
    invoke-virtual {p0, p1}, Lmiuix/responsive/page/manager/BaseResponseStateManager;->afterConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_2
    return-void
.end method

.method public onContentInsetChanged(Landroid/graphics/Rect;)V
    .locals 4

    .line 509
    invoke-super {p0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onContentInsetChanged(Landroid/graphics/Rect;)V

    .line 510
    iget-object p0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    .line 511
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p0

    .line 512
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 514
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 515
    instance-of v3, v2, Lmiuix/appcompat/app/IFragment;

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 516
    check-cast v2, Lmiuix/appcompat/app/IFragment;

    .line 518
    invoke-interface {v2}, Lmiuix/appcompat/app/IFragment;->hasActionBar()Z

    move-result v3

    if-nez v3, :cond_0

    .line 519
    invoke-interface {v2, p1}, Lmiuix/appcompat/app/IContentInsetState;->onContentInsetChanged(Landroid/graphics/Rect;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onCreateAnimator(IZI)Landroid/animation/Animator;
    .locals 0

    .line 127
    iget-object p0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-static {p0, p3}, Lmiuix/appcompat/internal/util/AnimationUtils;->createAnimator(Landroidx/fragment/app/Fragment;I)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method protected onCreateImmersionMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)Z
    .locals 0

    .line 575
    iget-object p0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    check-cast p0, Lmiuix/appcompat/app/IFragment;

    invoke-interface {p0, p1}, Lmiuix/appcompat/app/IFragment;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 0

    if-nez p1, :cond_0

    .line 361
    iget-object p0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    check-cast p0, Lmiuix/appcompat/app/IFragment;

    invoke-interface {p0, p1, p2}, Lmiuix/appcompat/app/IFragment;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 140
    invoke-virtual {p0}, Lmiuix/appcompat/app/FragmentDelegate;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lmiuix/appcompat/R$styleable;->Window:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 141
    sget v1, Lmiuix/appcompat/R$styleable;->Window_responsiveEnabled:I

    iget-boolean v2, p0, Lmiuix/appcompat/app/FragmentDelegate;->mIsUserResponsiveEnabled:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    new-instance v1, Lmiuix/appcompat/app/FragmentDelegate$2;

    invoke-direct {v1, p0, p0}, Lmiuix/appcompat/app/FragmentDelegate$2;-><init>(Lmiuix/appcompat/app/FragmentDelegate;Lmiuix/responsive/interfaces/IResponsive;)V

    iput-object v1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mResponsiveStateManager:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    .line 149
    :cond_0
    sget v1, Lmiuix/appcompat/R$styleable;->Window_windowActionBar:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x0

    .line 153
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    .line 154
    invoke-virtual {p0, v1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->requestWindowFeature(I)Z

    .line 156
    :cond_1
    sget v1, Lmiuix/appcompat/R$styleable;->Window_windowActionBarOverlay:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x9

    .line 157
    invoke-virtual {p0, v1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->requestWindowFeature(I)Z

    .line 160
    :cond_2
    sget v1, Lmiuix/appcompat/R$styleable;->Window_windowTranslucentStatus:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->setTranslucentStatus(I)V

    .line 163
    invoke-virtual {p0}, Lmiuix/appcompat/app/FragmentDelegate;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 164
    iget-boolean v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mHasActionBar:Z

    if-eqz v1, :cond_6

    .line 165
    invoke-virtual {p0}, Lmiuix/appcompat/app/FragmentDelegate;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1, p2, p1}, Lmiuix/appcompat/app/FragmentDelegate;->installSubDecor(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 168
    iget-object p2, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    const v1, 0x1020002    # @android:id/content

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 169
    iget-object v1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    check-cast v1, Lmiuix/appcompat/app/IFragment;

    invoke-interface {v1, p1, p2, p3}, Lmiuix/appcompat/app/IFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mInflatedView:Landroid/view/View;

    if-eqz p1, :cond_4

    .line 170
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eq p1, p2, :cond_4

    .line 171
    iget-object p1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mInflatedView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 172
    iget-object p1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mInflatedView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object p3, p0, Lmiuix/appcompat/app/FragmentDelegate;->mInflatedView:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 174
    :cond_3
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 175
    iget-object p1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mInflatedView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 177
    :cond_4
    sget p1, Lmiuix/appcompat/R$styleable;->Window_endActionMenuEnabled:I

    invoke-virtual {v0, p1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    .line 178
    invoke-virtual {p0, p1, v2}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->setEndActionMenuEnabled(ZZ)V

    goto :goto_0

    .line 180
    :cond_5
    iget-object p1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 181
    iget-byte p2, p0, Lmiuix/appcompat/app/FragmentDelegate;->mInvalidateMenuFlags:B

    and-int/lit8 p3, p2, 0x10

    if-nez p3, :cond_7

    or-int/lit8 p2, p2, 0x10

    int-to-byte p2, p2

    .line 182
    iput-byte p2, p0, Lmiuix/appcompat/app/FragmentDelegate;->mInvalidateMenuFlags:B

    .line 183
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0}, Lmiuix/appcompat/app/FragmentDelegate;->getInvalidateMenuRunnable()Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 187
    :cond_6
    iget-object v1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    check-cast v1, Lmiuix/appcompat/app/IFragment;

    invoke-interface {v1, p1, p2, p3}, Lmiuix/appcompat/app/IFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mInflatedView:Landroid/view/View;

    iput-object p1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    .line 189
    :cond_7
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 190
    iget-object p0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    return-object p0

    .line 150
    :cond_8
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 151
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "You need to use a miuix theme (or descendant) with this fragment."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onDestroyView()V
    .locals 2

    .line 592
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onDestroy()V

    const/4 v0, 0x0

    .line 593
    iput-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mInflatedView:Landroid/view/View;

    iput-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    const/4 v1, 0x0

    .line 594
    iput-boolean v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mSubDecorInstalled:Z

    .line 595
    iput-boolean v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mHasAddSplitActionBar:Z

    .line 596
    iput-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    .line 597
    iput-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 598
    iput-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mInvalidateMenuRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public onExtraPaddingChanged(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    if-nez p1, :cond_0

    .line 379
    iget-object p0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    .line 382
    iget-object p0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onMenuItemSelected(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p1, 0x0

    .line 397
    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/app/FragmentDelegate;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    .line 389
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    check-cast v0, Lmiuix/appcompat/app/IFragment;

    invoke-interface {v0, p1, p2}, Lmiuix/appcompat/app/IFragment;->onPanelClosed(ILandroid/view/Menu;)V

    if-nez p1, :cond_0

    .line 391
    iget-object p0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->onOptionsMenuClosed(Landroid/view/Menu;)V

    :cond_0
    return-void
.end method

.method protected onPrepareImmersionMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)Z
    .locals 0

    .line 580
    iget-object p0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 0

    if-nez p1, :cond_0

    .line 369
    iget-object p0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    check-cast p0, Lmiuix/appcompat/app/IFragment;

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2, p3}, Lmiuix/appcompat/app/IFragment;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V
    .locals 1

    .line 621
    iget-object p0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    instance-of v0, p0, Lmiuix/responsive/interfaces/IResponsive;

    if-eqz v0, :cond_0

    .line 622
    check-cast p0, Lmiuix/responsive/interfaces/IResponsive;

    invoke-interface {p0, p1, p2, p3}, Lmiuix/responsive/interfaces/IResponsive;->onResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 194
    iget-object p1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    check-cast p1, Lmiuix/appcompat/app/IFragment;

    iget-object p0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mInflatedView:Landroid/view/View;

    invoke-interface {p1, p0, p2}, Lmiuix/appcompat/app/IFragment;->onViewInflated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .line 552
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 553
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p0

    check-cast p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public requestDispatchContentInset()Z
    .locals 3

    .line 428
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    instance-of v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_0

    .line 429
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->requestDispatchContentInset()V

    const/4 p0, 0x1

    return p0

    .line 433
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 434
    instance-of v1, v0, Lmiuix/appcompat/app/IFragment;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 435
    check-cast v0, Lmiuix/appcompat/app/IFragment;

    invoke-interface {v0}, Lmiuix/appcompat/app/IContentInsetState;->requestDispatchContentInset()Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-nez v0, :cond_2

    .line 438
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->requestDispatchContentInset()Z

    move-result p0

    return p0

    :cond_2
    return v2
.end method

.method public setExtraHorizontalPaddingLevel(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    return-void
.end method

.method public setExtraThemeRes(I)V
    .locals 0

    .line 559
    iput p1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mExtraThemeRes:I

    return-void
.end method

.method public setResponsiveEnabled(Z)V
    .locals 0

    .line 122
    iput-boolean p1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mIsUserResponsiveEnabled:Z

    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .line 544
    instance-of v0, p1, Lmiuix/view/SearchActionMode$Callback;

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->addContentMask(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)V

    .line 547
    :cond_0
    iget-object p0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p0

    return-object p0
.end method

.method public updateOptionsMenu(I)V
    .locals 1

    .line 408
    iget-byte v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mInvalidateMenuFlags:B

    and-int/lit8 p1, p1, 0x1

    or-int/2addr p1, v0

    int-to-byte p1, p1

    iput-byte p1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mInvalidateMenuFlags:B

    return-void
.end method
