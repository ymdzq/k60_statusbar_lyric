.class public Lmiuix/appcompat/app/Fragment;
.super Landroidx/fragment/app/Fragment;
.source "Fragment.java"

# interfaces
.implements Lmiuix/appcompat/app/IFragment;
.implements Lmiuix/appcompat/app/IContentInsetState;
.implements Lmiuix/responsive/interfaces/IResponsive;
.implements Lmiuix/appcompat/app/ShortcutsCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/fragment/app/Fragment;",
        "Lmiuix/appcompat/app/IFragment;",
        "Lmiuix/appcompat/app/IContentInsetState;",
        "Lmiuix/responsive/interfaces/IResponsive<",
        "Lmiuix/appcompat/app/Fragment;",
        ">;",
        "Lmiuix/appcompat/app/ShortcutsCallback;"
    }
.end annotation


# instance fields
.field protected mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

.field private mHasMenu:Z

.field private mMenuVisible:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lmiuix/appcompat/app/Fragment;->mHasMenu:Z

    .line 51
    iput-boolean v0, p0, Lmiuix/appcompat/app/Fragment;->mMenuVisible:Z

    return-void
.end method


# virtual methods
.method public bindViewWithContentInset(Landroid/view/View;)V
    .locals 0

    .line 591
    iget-object p0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

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

    .line 651
    iget-object p0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p0, p1, p2, p3}, Lmiuix/appcompat/app/FragmentDelegate;->dispatchResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V

    return-void
.end method

.method public getActionBar()Lmiuix/appcompat/app/ActionBar;
    .locals 0

    .line 160
    iget-object p0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p0

    return-object p0
.end method

.method public getAppCompatActivity()Lmiuix/appcompat/app/AppCompatActivity;
    .locals 0

    .line 164
    iget-object p0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getContentInset()Landroid/graphics/Rect;
    .locals 0

    .line 581
    iget-object p0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p0}, Lmiuix/appcompat/app/FragmentDelegate;->getContentInset()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 0

    .line 173
    iget-object p0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getResponsiveSubject()Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getResponsiveSubject()Lmiuix/appcompat/app/Fragment;

    move-result-object p0

    return-object p0
.end method

.method public getResponsiveSubject()Lmiuix/appcompat/app/Fragment;
    .locals 0

    .line 0
    return-object p0
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 0

    .line 188
    iget-object p0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p0}, Lmiuix/appcompat/app/FragmentDelegate;->getThemedContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .line 132
    iget-object p0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

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

    .line 149
    iget-object p0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->hasActionBar()Z

    move-result p0

    :goto_0
    return p0
.end method

.method public invalidateOptionsMenu()V
    .locals 2

    .line 233
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 234
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/FragmentDelegate;->updateOptionsMenu(I)V

    .line 235
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmiuix/appcompat/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmiuix/appcompat/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    iget-object p0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p0}, Lmiuix/appcompat/app/FragmentDelegate;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method

.method protected isResponsiveEnabled()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 0

    .line 289
    iget-object p0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onActionModeFinished(Landroid/view/ActionMode;)V

    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0

    .line 277
    iget-object p0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onActionModeStarted(Landroid/view/ActionMode;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 59
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 60
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->getFragmentFactory()Landroidx/fragment/app/FragmentFactory;

    move-result-object p1

    .line 61
    instance-of v0, p1, Lmiuix/appcompat/app/DelegateFragmentFactory;

    if-eqz v0, :cond_0

    .line 62
    check-cast p1, Lmiuix/appcompat/app/DelegateFragmentFactory;

    invoke-virtual {p1, p0}, Lmiuix/appcompat/app/DelegateFragmentFactory;->createFragmentDelegate(Landroidx/fragment/app/Fragment;)Lmiuix/appcompat/app/FragmentDelegate;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    goto :goto_0

    .line 64
    :cond_0
    new-instance p1, Lmiuix/appcompat/app/FragmentDelegate;

    invoke-direct {p1, p0}, Lmiuix/appcompat/app/FragmentDelegate;-><init>(Landroidx/fragment/app/Fragment;)V

    iput-object p1, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 66
    :goto_0
    iget-object p1, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->isResponsiveEnabled()Z

    move-result p0

    invoke-virtual {p1, p0}, Lmiuix/appcompat/app/FragmentDelegate;->setResponsiveEnabled(Z)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 137
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 138
    iget-object p0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/FragmentDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onContentInsetChanged(Landroid/graphics/Rect;)V
    .locals 1

    .line 597
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/FragmentDelegate;->onContentInsetChanged(Landroid/graphics/Rect;)V

    .line 598
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->onProcessBindViewWithContentInset(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 77
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 78
    iget-object p0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateAnimator(IZI)Landroid/animation/Animator;
    .locals 0

    .line 72
    iget-object p0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

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

    .line 327
    iget-boolean p1, p0, Lmiuix/appcompat/app/Fragment;->mHasMenu:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lmiuix/appcompat/app/Fragment;->mMenuVisible:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 328
    invoke-virtual {p0, p2}, Lmiuix/appcompat/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 107
    iget-object p0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p0, p1, p2, p3}, Lmiuix/appcompat/app/FragmentDelegate;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .locals 1

    .line 507
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 509
    iget-object p0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->dismissImmersionMenu(Z)V

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .line 143
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 144
    iget-object p0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p0}, Lmiuix/appcompat/app/FragmentDelegate;->onDestroyView()V

    return-void
.end method

.method public onDispatchNestedScrollOffset([I)V
    .locals 0

    .line 624
    iget-object p0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onDispatchNestedScrollOffset([I)V

    return-void
.end method

.method public onExtraPaddingChanged(I)V
    .locals 0

    .line 608
    iget-object p0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/FragmentDelegate;->onExtraPaddingChanged(I)V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 711
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 712
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, v0, Lmiuix/appcompat/app/ShortcutsCallback;

    if-eqz v1, :cond_0

    check-cast v0, Lmiuix/appcompat/app/ShortcutsCallback;

    .line 713
    invoke-interface {v0, p1}, Lmiuix/appcompat/app/ShortcutsCallback;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final onHiddenChanged(Z)V
    .locals 1

    .line 446
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    if-nez p1, :cond_0

    .line 447
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    if-eqz v0, :cond_0

    .line 448
    invoke-virtual {v0}, Lmiuix/appcompat/app/FragmentDelegate;->invalidateOptionsMenu()V

    :cond_0
    xor-int/lit8 p1, p1, 0x1

    .line 450
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->onVisibilityChanged(Z)V

    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 731
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 732
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, v0, Lmiuix/appcompat/app/ShortcutsCallback;

    if-eqz v1, :cond_0

    check-cast v0, Lmiuix/appcompat/app/ShortcutsCallback;

    .line 733
    invoke-interface {v0, p1, p2}, Lmiuix/appcompat/app/ShortcutsCallback;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 666
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 667
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, v0, Lmiuix/appcompat/app/ShortcutsCallback;

    if-eqz v1, :cond_0

    .line 668
    check-cast v0, Lmiuix/appcompat/app/ShortcutsCallback;

    invoke-interface {v0, p1}, Lmiuix/appcompat/app/ShortcutsCallback;->onKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 742
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 743
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, v0, Lmiuix/appcompat/app/ShortcutsCallback;

    if-eqz v1, :cond_0

    check-cast v0, Lmiuix/appcompat/app/ShortcutsCallback;

    .line 744
    invoke-interface {v0, p1, p2}, Lmiuix/appcompat/app/ShortcutsCallback;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 2

    .line 764
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 765
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, v0, Lmiuix/appcompat/app/ShortcutsCallback;

    if-eqz v1, :cond_0

    check-cast v0, Lmiuix/appcompat/app/ShortcutsCallback;

    .line 766
    invoke-interface {v0, p1, p2, p3}, Lmiuix/appcompat/app/ShortcutsCallback;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 678
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 679
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, v0, Lmiuix/appcompat/app/ShortcutsCallback;

    if-eqz v1, :cond_0

    check-cast v0, Lmiuix/appcompat/app/ShortcutsCallback;

    .line 680
    invoke-interface {v0, p1}, Lmiuix/appcompat/app/ShortcutsCallback;->onKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 753
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 754
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, v0, Lmiuix/appcompat/app/ShortcutsCallback;

    if-eqz v1, :cond_0

    check-cast v0, Lmiuix/appcompat/app/ShortcutsCallback;

    .line 755
    invoke-interface {v0, p1, p2}, Lmiuix/appcompat/app/ShortcutsCallback;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 295
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c    # @android:id/home

    if-ne p1, v0, :cond_2

    .line 296
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 297
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar;->getDisplayOptions()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_2

    .line 299
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 300
    invoke-virtual {p1}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 301
    invoke-virtual {p1}, Landroid/app/Activity;->onNavigateUp()Z

    move-result p1

    goto :goto_0

    .line 303
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onNavigateUpFromChild(Landroid/app/Activity;)Z

    move-result p1

    :goto_0
    if-nez p1, :cond_1

    .line 306
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)V
    .locals 0

    if-nez p1, :cond_0

    .line 358
    iget-boolean p1, p0, Lmiuix/appcompat/app/Fragment;->mHasMenu:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lmiuix/appcompat/app/Fragment;->mMenuVisible:Z

    if-eqz p1, :cond_0

    .line 360
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 361
    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    :cond_0
    return-void
.end method

.method public onProcessBindViewWithContentInset(Landroid/graphics/Rect;)V
    .locals 0

    .line 603
    iget-object p0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onProcessBindViewWithContentInset(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;",
            "Landroid/view/Menu;",
            "I)V"
        }
    .end annotation

    .line 722
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 723
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, v0, Lmiuix/appcompat/app/ShortcutsCallback;

    if-eqz v1, :cond_0

    .line 724
    check-cast v0, Lmiuix/appcompat/app/ShortcutsCallback;

    invoke-interface {v0, p1, p2, p3}, Lmiuix/appcompat/app/ShortcutsCallback;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 89
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 90
    iget-object p0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onPostResume()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 83
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 84
    iget-object p0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onStop()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 689
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 690
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, v0, Lmiuix/appcompat/app/ShortcutsCallback;

    if-eqz v1, :cond_0

    check-cast v0, Lmiuix/appcompat/app/ShortcutsCallback;

    .line 691
    invoke-interface {v0, p1}, Lmiuix/appcompat/app/ShortcutsCallback;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 700
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 701
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, v0, Lmiuix/appcompat/app/ShortcutsCallback;

    if-eqz v1, :cond_0

    check-cast v0, Lmiuix/appcompat/app/ShortcutsCallback;

    .line 702
    invoke-interface {v0, p1}, Lmiuix/appcompat/app/ShortcutsCallback;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 121
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {v0, p1, p2}, Lmiuix/appcompat/app/FragmentDelegate;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 122
    iget-object p1, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p1}, Lmiuix/appcompat/app/FragmentDelegate;->getContentInset()Landroid/graphics/Rect;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 123
    iget p2, p1, Landroid/graphics/Rect;->top:I

    if-nez p2, :cond_0

    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    if-nez p2, :cond_0

    iget p2, p1, Landroid/graphics/Rect;->left:I

    if-nez p2, :cond_0

    iget p2, p1, Landroid/graphics/Rect;->right:I

    if-eqz p2, :cond_1

    .line 126
    :cond_0
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->onContentInsetChanged(Landroid/graphics/Rect;)V

    :cond_1
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

    .line 586
    iget-object p0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p0}, Lmiuix/appcompat/app/FragmentDelegate;->requestDispatchContentInset()Z

    move-result p0

    return p0
.end method

.method public setHasOptionsMenu(Z)V
    .locals 1

    .line 198
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 199
    iget-boolean v0, p0, Lmiuix/appcompat/app/Fragment;->mHasMenu:Z

    if-eq v0, p1, :cond_0

    .line 200
    iput-boolean p1, p0, Lmiuix/appcompat/app/Fragment;->mHasMenu:Z

    if-eqz p1, :cond_0

    .line 201
    iget-object p1, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 202
    iget-object p0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p0}, Lmiuix/appcompat/app/FragmentDelegate;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method

.method public setMenuVisibility(Z)V
    .locals 1

    .line 209
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 210
    iget-boolean v0, p0, Lmiuix/appcompat/app/Fragment;->mMenuVisible:Z

    if-eq v0, p1, :cond_0

    .line 211
    iput-boolean p1, p0, Lmiuix/appcompat/app/Fragment;->mMenuVisible:Z

    .line 212
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    if-eqz p0, :cond_0

    .line 213
    invoke-virtual {p0}, Lmiuix/appcompat/app/FragmentDelegate;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method

.method public setThemeRes(I)V
    .locals 0

    .line 183
    iget-object p0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/FragmentDelegate;->setExtraThemeRes(I)V

    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 0

    .line 178
    iget-object p0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/FragmentDelegate;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p0

    return-object p0
.end method
