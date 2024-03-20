.class public Lmiuix/appcompat/app/ListFragment;
.super Landroidx/fragment/app/ListFragment;
.source "ListFragment.java"

# interfaces
.implements Lmiuix/appcompat/app/IFragment;
.implements Lmiuix/responsive/interfaces/IResponsive;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/fragment/app/ListFragment;",
        "Lmiuix/appcompat/app/IFragment;",
        "Lmiuix/responsive/interfaces/IResponsive<",
        "Landroidx/fragment/app/Fragment;",
        ">;"
    }
.end annotation


# instance fields
.field private mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

.field private mHasMenu:Z

.field private mMenuVisible:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroidx/fragment/app/ListFragment;-><init>()V

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lmiuix/appcompat/app/ListFragment;->mHasMenu:Z

    .line 37
    iput-boolean v0, p0, Lmiuix/appcompat/app/ListFragment;->mMenuVisible:Z

    return-void
.end method


# virtual methods
.method public bindViewWithContentInset(Landroid/view/View;)V
    .locals 0

    .line 484
    iget-object p0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->bindViewWithContentInset(Landroid/view/View;)V

    return-void
.end method

.method public checkThemeLegality()V
    .locals 0

    .line 0
    return-void
.end method

.method public dispatchResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V
    .locals 0

    .line 530
    iget-object p0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p0, p1, p2, p3}, Lmiuix/appcompat/app/FragmentDelegate;->dispatchResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V

    return-void
.end method

.method public getActionBar()Lmiuix/appcompat/app/ActionBar;
    .locals 0

    .line 152
    iget-object p0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p0

    return-object p0
.end method

.method public getContentInset()Landroid/graphics/Rect;
    .locals 0

    .line 474
    iget-object p0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p0}, Lmiuix/appcompat/app/FragmentDelegate;->getContentInset()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 0

    .line 161
    iget-object p0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p0

    return-object p0
.end method

.method public getResponsiveSubject()Landroidx/fragment/app/Fragment;
    .locals 0

    .line 0
    return-object p0
.end method

.method public bridge synthetic getResponsiveSubject()Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-virtual {p0}, Lmiuix/appcompat/app/ListFragment;->getResponsiveSubject()Landroidx/fragment/app/Fragment;

    move-result-object p0

    return-object p0
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 0

    .line 191
    iget-object p0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p0}, Lmiuix/appcompat/app/FragmentDelegate;->getThemedContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .line 130
    iget-object p0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/app/FragmentDelegate;->getView()Landroid/view/View;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public hasActionBar()Z
    .locals 0

    .line 141
    iget-object p0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->hasActionBar()Z

    move-result p0

    :goto_0
    return p0
.end method

.method protected isResponsiveEnabled()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public final onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 0

    .line 269
    iget-object p0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onActionModeFinished(Landroid/view/ActionMode;)V

    return-void
.end method

.method public final onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0

    .line 258
    iget-object p0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onActionModeStarted(Landroid/view/ActionMode;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 45
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 46
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->getFragmentFactory()Landroidx/fragment/app/FragmentFactory;

    move-result-object p1

    .line 47
    instance-of v0, p1, Lmiuix/appcompat/app/DelegateFragmentFactory;

    if-eqz v0, :cond_0

    .line 48
    check-cast p1, Lmiuix/appcompat/app/DelegateFragmentFactory;

    invoke-virtual {p1, p0}, Lmiuix/appcompat/app/DelegateFragmentFactory;->createFragmentDelegate(Landroidx/fragment/app/Fragment;)Lmiuix/appcompat/app/FragmentDelegate;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    goto :goto_0

    .line 50
    :cond_0
    new-instance p1, Lmiuix/appcompat/app/FragmentDelegate;

    invoke-direct {p1, p0}, Lmiuix/appcompat/app/FragmentDelegate;-><init>(Landroidx/fragment/app/Fragment;)V

    iput-object p1, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 52
    :goto_0
    iget-object p1, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p0}, Lmiuix/appcompat/app/ListFragment;->isResponsiveEnabled()Z

    move-result p0

    invoke-virtual {p1, p0}, Lmiuix/appcompat/app/FragmentDelegate;->setResponsiveEnabled(Z)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 135
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 136
    iget-object p0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/FragmentDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onContentInsetChanged(Landroid/graphics/Rect;)V
    .locals 1

    .line 489
    iget-object v0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/FragmentDelegate;->onContentInsetChanged(Landroid/graphics/Rect;)V

    .line 490
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/ListFragment;->onProcessBindViewWithContentInset(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 63
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 64
    iget-object p0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateAnimator(IZI)Landroid/animation/Animator;
    .locals 0

    .line 58
    iget-object p0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p0, p1, p2, p3}, Lmiuix/appcompat/app/FragmentDelegate;->onCreateAnimator(IZI)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 288
    iget-boolean p1, p0, Lmiuix/appcompat/app/ListFragment;->mHasMenu:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lmiuix/appcompat/app/ListFragment;->mMenuVisible:Z

    if-eqz p1, :cond_0

    .line 289
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 290
    invoke-virtual {p0, p2}, Lmiuix/appcompat/app/ListFragment;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 95
    iget-object v0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {v0, p1, p2, p3}, Lmiuix/appcompat/app/FragmentDelegate;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 96
    instance-of p2, p1, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    if-eqz p2, :cond_1

    .line 98
    iget-object p2, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    const-string p3, "splitActionBarWhenNarrow"

    invoke-virtual {p2}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getUiOptionsFromMetadata()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 102
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lmiuix/appcompat/R$bool;->abc_split_action_bar_is_narrow:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p3

    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    sget-object v0, Lmiuix/appcompat/R$styleable;->Window:[I

    invoke-virtual {p3, v0}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 106
    sget v0, Lmiuix/appcompat/R$styleable;->Window_windowSplitActionBar:I

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 107
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    move p3, v0

    .line 109
    :goto_0
    iget-object p0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    move-object v0, p1

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    invoke-virtual {p0, p3, p2, v0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->addSplitActionBar(ZZLmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)V

    :cond_1
    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 468
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 469
    iget-object p0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->dismissImmersionMenu(Z)V

    return-void
.end method

.method public onDispatchNestedScrollOffset([I)V
    .locals 0

    .line 510
    iget-object p0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onDispatchNestedScrollOffset([I)V

    return-void
.end method

.method public onExtraPaddingChanged(I)V
    .locals 0

    .line 500
    iget-object p0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/FragmentDelegate;->onExtraPaddingChanged(I)V

    return-void
.end method

.method public final onHiddenChanged(Z)V
    .locals 1

    .line 415
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    if-nez p1, :cond_0

    .line 416
    iget-object v0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    if-eqz v0, :cond_0

    .line 417
    invoke-virtual {v0}, Lmiuix/appcompat/app/FragmentDelegate;->invalidateOptionsMenu()V

    :cond_0
    xor-int/lit8 p1, p1, 0x1

    .line 419
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/ListFragment;->onVisibilityChanged(Z)V

    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 379
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/ListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)V
    .locals 0

    if-nez p1, :cond_0

    .line 323
    iget-boolean p1, p0, Lmiuix/appcompat/app/ListFragment;->mHasMenu:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lmiuix/appcompat/app/ListFragment;->mMenuVisible:Z

    if-eqz p1, :cond_0

    .line 324
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 325
    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    :cond_0
    return-void
.end method

.method public onProcessBindViewWithContentInset(Landroid/graphics/Rect;)V
    .locals 0

    .line 495
    iget-object p0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onProcessBindViewWithContentInset(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 75
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 76
    iget-object p0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onPostResume()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 69
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 70
    iget-object p0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 125
    iget-object p0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/app/FragmentDelegate;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewInflated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public requestDispatchContentInset()Z
    .locals 0

    .line 479
    iget-object p0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p0}, Lmiuix/appcompat/app/FragmentDelegate;->requestDispatchContentInset()Z

    move-result p0

    return p0
.end method

.method public setHasOptionsMenu(Z)V
    .locals 1

    .line 196
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 197
    iget-boolean v0, p0, Lmiuix/appcompat/app/ListFragment;->mHasMenu:Z

    if-eq v0, p1, :cond_0

    .line 198
    iput-boolean p1, p0, Lmiuix/appcompat/app/ListFragment;->mHasMenu:Z

    .line 199
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    if-eqz p0, :cond_0

    .line 200
    invoke-virtual {p0}, Lmiuix/appcompat/app/FragmentDelegate;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method

.method public setMenuVisibility(Z)V
    .locals 1

    .line 207
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 208
    iget-boolean v0, p0, Lmiuix/appcompat/app/ListFragment;->mMenuVisible:Z

    if-eq v0, p1, :cond_0

    .line 209
    iput-boolean p1, p0, Lmiuix/appcompat/app/ListFragment;->mMenuVisible:Z

    .line 210
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    if-eqz p0, :cond_0

    .line 211
    invoke-virtual {p0}, Lmiuix/appcompat/app/FragmentDelegate;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method

.method public setThemeRes(I)V
    .locals 0

    .line 181
    iget-object p0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/FragmentDelegate;->setExtraThemeRes(I)V

    return-void
.end method
