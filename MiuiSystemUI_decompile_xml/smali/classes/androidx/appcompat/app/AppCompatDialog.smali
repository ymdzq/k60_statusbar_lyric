.class public abstract Landroidx/appcompat/app/AppCompatDialog;
.super Landroidx/activity/ComponentDialog;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroidx/appcompat/app/AppCompatCallback;


# instance fields
.field public mDelegate:Landroidx/appcompat/app/AppCompatDelegateImpl;

.field public final mKeyDispatcher:Landroidx/appcompat/app/AppCompatDialog$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const v1, 0x7f040252    # @attr/dialogTheme

    .line 3
    if-nez p2, :cond_0

    .line 6
    new-instance v2, Landroid/util/TypedValue;

    .line 8
    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 13
    move-result-object v3

    .line 16
    invoke-virtual {v3, v1, v2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 17
    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    .line 20
    goto :goto_0

    .line 22
    :cond_0
    move v2, p2

    .line 23
    :goto_0
    invoke-direct {p0, p1, v2}, Landroidx/activity/ComponentDialog;-><init>(Landroid/content/Context;I)V

    .line 24
    new-instance v2, Landroidx/appcompat/app/AppCompatDialog$$ExternalSyntheticLambda0;

    .line 27
    invoke-direct {v2, p0}, Landroidx/appcompat/app/AppCompatDialog$$ExternalSyntheticLambda0;-><init>(Landroidx/appcompat/app/AppCompatDialog;)V

    .line 29
    iput-object v2, p0, Landroidx/appcompat/app/AppCompatDialog;->mKeyDispatcher:Landroidx/appcompat/app/AppCompatDialog$$ExternalSyntheticLambda0;

    .line 32
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    .line 34
    move-result-object p0

    .line 37
    if-nez p2, :cond_1

    .line 38
    new-instance p2, Landroid/util/TypedValue;

    .line 40
    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 45
    move-result-object p1

    .line 48
    invoke-virtual {p1, v1, p2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 49
    iget p2, p2, Landroid/util/TypedValue;->resourceId:I

    .line 52
    :cond_1
    move-object p1, p0

    .line 54
    check-cast p1, Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 55
    iput p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->mThemeResId:I

    .line 57
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegate;->onCreate()V

    .line 59
    return-void
    .line 62
.end method

.method private initViewTreeOwners()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 6
    move-result-object v0

    .line 9
    const v1, 0x7f0a0a67    # @id/view_tree_lifecycle_owner

    .line 10
    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 13
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 16
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 20
    move-result-object v0

    .line 23
    invoke-static {v0, p0}, Landroidx/savedstate/ViewTreeSavedStateRegistryOwner;->set(Landroid/view/View;Landroidx/savedstate/SavedStateRegistryOwner;)V

    .line 24
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 27
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 31
    move-result-object v0

    .line 34
    const v1, 0x7f0a0a68    # @id/view_tree_on_back_pressed_dispatcher_owner

    .line 35
    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 38
    return-void
    .line 41
.end method


# virtual methods
.method public final addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/app/AppCompatDelegate;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    return-void
    .line 9
.end method

.method public dismiss()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    .line 5
    move-result-object p0

    .line 8
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegate;->onDestroy()V

    .line 9
    return-void
    .line 12
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 6
    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDialog;->mKeyDispatcher:Landroidx/appcompat/app/AppCompatDialog$$ExternalSyntheticLambda0;

    .line 9
    if-nez p0, :cond_0

    .line 11
    const/4 p0, 0x0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog$$ExternalSyntheticLambda0;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 15
    move-result p0

    .line 18
    :goto_0
    return p0
    .line 19
.end method

.method public final findViewById(I)Landroid/view/View;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    .line 2
    move-result-object p0

    .line 5
    check-cast p0, Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 6
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->ensureSubDecor()V

    .line 8
    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    .line 11
    invoke-virtual {p0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 13
    move-result-object p0

    .line 16
    return-object p0
    .line 17
.end method

.method public final getDelegate()Landroidx/appcompat/app/AppCompatDelegate;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDialog;->mDelegate:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 2
    if-nez v0, :cond_0

    .line 4
    sget-object v0, Landroidx/appcompat/app/AppCompatDelegate;->sSerialExecutorForLocalesStorage:Landroidx/appcompat/app/AppLocalesStorageHelper$SerialExecutor;

    .line 6
    new-instance v0, Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 8
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 10
    move-result-object v1

    .line 13
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 14
    move-result-object v2

    .line 17
    invoke-direct {v0, v1, v2, p0, p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;-><init>(Landroid/content/Context;Landroid/view/Window;Landroidx/appcompat/app/AppCompatCallback;Ljava/lang/Object;)V

    .line 18
    iput-object v0, p0, Landroidx/appcompat/app/AppCompatDialog;->mDelegate:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 21
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDialog;->mDelegate:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 23
    return-object p0
    .line 25
.end method

.method public final invalidateOptionsMenu()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    .line 2
    move-result-object p0

    .line 5
    check-cast p0, Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 6
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionBar:Landroidx/appcompat/app/WindowDecorActionBar;

    .line 8
    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->initWindowDecorActionBar()V

    .line 12
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionBar:Landroidx/appcompat/app/WindowDecorActionBar;

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    iget v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mInvalidatePanelMenuFeatures:I

    .line 20
    const/4 v1, 0x1

    .line 22
    or-int/2addr v0, v1

    .line 23
    iput v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mInvalidatePanelMenuFeatures:I

    .line 24
    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mInvalidatePanelMenuPosted:Z

    .line 26
    if-nez v0, :cond_0

    .line 28
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    .line 30
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 32
    move-result-object v0

    .line 35
    iget-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mInvalidatePanelMenuRunnable:Landroidx/appcompat/app/AppCompatDelegateImpl$2;

    .line 36
    sget-object v3, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 38
    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat$Api16Impl;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 40
    iput-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mInvalidatePanelMenuPosted:Z

    .line 43
    :cond_0
    return-void
    .line 45
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegate;->installViewFactory()V

    .line 6
    invoke-super {p0, p1}, Landroidx/activity/ComponentDialog;->onCreate(Landroid/os/Bundle;)V

    .line 9
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    .line 12
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegate;->onCreate()V

    .line 16
    return-void
    .line 19
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/activity/ComponentDialog;->onStop()V

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    .line 5
    move-result-object p0

    .line 8
    check-cast p0, Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 9
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->initWindowDecorActionBar()V

    .line 11
    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionBar:Landroidx/appcompat/app/WindowDecorActionBar;

    .line 14
    if-eqz p0, :cond_0

    .line 16
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mShowHideAnimationEnabled:Z

    .line 19
    iget-object p0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mCurrentShowAnim:Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    .line 21
    if-eqz p0, :cond_0

    .line 23
    invoke-virtual {p0}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->cancel()V

    .line 25
    :cond_0
    return-void
    .line 28
.end method

.method public final onSupportActionModeFinished()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onSupportActionModeStarted()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onWindowStartingSupportActionMode()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDialog;->initViewTreeOwners()V

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDelegate;->setContentView(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDialog;->initViewTreeOwners()V

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDelegate;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDialog;->initViewTreeOwners()V

    .line 6
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/app/AppCompatDelegate;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .line 3
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(I)V

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AppCompatDelegate;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDelegate;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method final superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method
