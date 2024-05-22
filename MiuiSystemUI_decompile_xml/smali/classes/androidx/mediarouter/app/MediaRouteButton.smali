.class public Landroidx/mediarouter/app/MediaRouteButton;
.super Landroid/view/View;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final CHECKABLE_STATE_SET:[I

.field public static final CHECKED_STATE_SET:[I

.field public static sConnectivityReceiver:Landroidx/mediarouter/app/MediaRouteButton$ConnectivityReceiver;

.field public static final sRemoteIndicatorCache:Landroid/util/SparseArray;


# instance fields
.field public mAlwaysVisible:Z

.field public mAttachedToWindow:Z

.field public final mButtonTint:Landroid/content/res/ColorStateList;

.field public final mCallback:Landroidx/mediarouter/app/MediaRouteButton$MediaRouterCallback;

.field public mConnectionState:I

.field public mDialogFactory:Landroidx/mediarouter/app/MediaRouteDialogFactory;

.field public mLastConnectionState:I

.field public final mMinHeight:I

.field public final mMinWidth:I

.field public mRemoteIndicator:Landroid/graphics/drawable/Drawable;

.field public mRemoteIndicatorLoader:Landroidx/mediarouter/app/MediaRouteButton$RemoteIndicatorLoader;

.field public mRemoteIndicatorResIdToLoad:I

.field public final mRouter:Landroidx/mediarouter/media/MediaRouter;

.field public mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

.field public mVisibility:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    .line 2
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 5
    sput-object v0, Landroidx/mediarouter/app/MediaRouteButton;->sRemoteIndicatorCache:Landroid/util/SparseArray;

    .line 8
    const v0, 0x10100a0    # @android:attr/state_checked

    .line 10
    filled-new-array {v0}, [I

    .line 13
    move-result-object v0

    .line 16
    sput-object v0, Landroidx/mediarouter/app/MediaRouteButton;->CHECKED_STATE_SET:[I

    .line 17
    const v0, 0x101009f    # @android:attr/state_checkable

    .line 19
    filled-new-array {v0}, [I

    .line 22
    move-result-object v0

    .line 25
    sput-object v0, Landroidx/mediarouter/app/MediaRouteButton;->CHECKABLE_STATE_SET:[I

    .line 26
    return-void
    .line 28
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, v0}, Landroidx/mediarouter/app/MediaRouteButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f0404e9    # @attr/mediaRouteButtonStyle

    .line 46
    invoke-direct {p0, p1, p2, v0}, Landroidx/mediarouter/app/MediaRouteButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .line 1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-static {p1}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->getRouterThemeId(Landroid/content/Context;)I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const p1, 0x7f0404f5    # @attr/mediaRouteTheme

    .line 2
    invoke-static {p1, v0}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->getThemeResource(ILandroid/content/Context;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-direct {v1, v0, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    .line 4
    :cond_0
    invoke-direct {p0, v0, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    sget-object p1, Landroidx/mediarouter/media/MediaRouteSelector;->EMPTY:Landroidx/mediarouter/media/MediaRouteSelector;

    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteButton;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 6
    sget-object p1, Landroidx/mediarouter/app/MediaRouteDialogFactory;->sDefault:Landroidx/mediarouter/app/MediaRouteDialogFactory;

    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteButton;->mDialogFactory:Landroidx/mediarouter/app/MediaRouteDialogFactory;

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Landroidx/mediarouter/app/MediaRouteButton;->mVisibility:I

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 9
    sget-object v2, Landroidx/mediarouter/R$styleable;->MediaRouteButton:[I

    invoke-virtual {v7, p2, v2, p3, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v8

    const/4 v6, 0x0

    .line 10
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    move-object v0, p0

    move-object v1, v7

    move-object v3, p2

    move-object v4, v8

    move v5, p3

    .line 11
    invoke-static/range {v0 .. v6}, Landroidx/core/view/ViewCompat$Api29Impl;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p2

    const/4 p3, 0x3

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 13
    iput-object p2, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    .line 14
    iput-object p2, p0, Landroidx/mediarouter/app/MediaRouteButton;->mCallback:Landroidx/mediarouter/app/MediaRouteButton$MediaRouterCallback;

    .line 15
    invoke-virtual {v8, p3, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    .line 16
    invoke-static {p1, v7}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    return-void

    .line 17
    :cond_1
    invoke-static {v7}, Landroidx/mediarouter/media/MediaRouter;->getInstance(Landroid/content/Context;)Landroidx/mediarouter/media/MediaRouter;

    move-result-object p2

    iput-object p2, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    .line 18
    new-instance p2, Landroidx/mediarouter/app/MediaRouteButton$MediaRouterCallback;

    invoke-direct {p2, p0}, Landroidx/mediarouter/app/MediaRouteButton$MediaRouterCallback;-><init>(Landroidx/mediarouter/app/MediaRouteButton;)V

    iput-object p2, p0, Landroidx/mediarouter/app/MediaRouteButton;->mCallback:Landroidx/mediarouter/app/MediaRouteButton$MediaRouterCallback;

    .line 19
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->getSelectedRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    move-result-object p2

    .line 20
    invoke-virtual {p2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isDefaultOrBluetooth()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 21
    iget p2, p2, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mConnectionState:I

    goto :goto_0

    :cond_2
    move p2, p1

    .line 22
    :goto_0
    iput p2, p0, Landroidx/mediarouter/app/MediaRouteButton;->mConnectionState:I

    iput p2, p0, Landroidx/mediarouter/app/MediaRouteButton;->mLastConnectionState:I

    .line 23
    sget-object p2, Landroidx/mediarouter/app/MediaRouteButton;->sConnectivityReceiver:Landroidx/mediarouter/app/MediaRouteButton$ConnectivityReceiver;

    if-nez p2, :cond_3

    .line 24
    new-instance p2, Landroidx/mediarouter/app/MediaRouteButton$ConnectivityReceiver;

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroidx/mediarouter/app/MediaRouteButton$ConnectivityReceiver;-><init>(Landroid/content/Context;)V

    sput-object p2, Landroidx/mediarouter/app/MediaRouteButton;->sConnectivityReceiver:Landroidx/mediarouter/app/MediaRouteButton$ConnectivityReceiver;

    :cond_3
    const/4 p2, 0x4

    .line 25
    invoke-virtual {v8, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Landroidx/mediarouter/app/MediaRouteButton;->mButtonTint:Landroid/content/res/ColorStateList;

    .line 26
    invoke-virtual {v8, p1, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Landroidx/mediarouter/app/MediaRouteButton;->mMinWidth:I

    .line 27
    invoke-virtual {v8, v1, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Landroidx/mediarouter/app/MediaRouteButton;->mMinHeight:I

    .line 28
    invoke-virtual {v8, p3, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    const/4 p3, 0x2

    .line 29
    invoke-virtual {v8, p3, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicatorResIdToLoad:I

    .line 30
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 31
    iget p3, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicatorResIdToLoad:I

    if-eqz p3, :cond_4

    .line 32
    sget-object v0, Landroidx/mediarouter/app/MediaRouteButton;->sRemoteIndicatorCache:Landroid/util/SparseArray;

    .line 33
    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz p3, :cond_4

    .line 34
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroidx/mediarouter/app/MediaRouteButton;->setRemoteIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 35
    :cond_4
    iget-object p3, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-nez p3, :cond_7

    if-eqz p2, :cond_6

    .line 36
    sget-object p3, Landroidx/mediarouter/app/MediaRouteButton;->sRemoteIndicatorCache:Landroid/util/SparseArray;

    .line 37
    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz p3, :cond_5

    .line 38
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/mediarouter/app/MediaRouteButton;->setRemoteIndicatorDrawableInternal(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 39
    :cond_5
    new-instance p3, Landroidx/mediarouter/app/MediaRouteButton$RemoteIndicatorLoader;

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, p0, p2, v0}, Landroidx/mediarouter/app/MediaRouteButton$RemoteIndicatorLoader;-><init>(Landroidx/mediarouter/app/MediaRouteButton;ILandroid/content/Context;)V

    iput-object p3, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicatorLoader:Landroidx/mediarouter/app/MediaRouteButton$RemoteIndicatorLoader;

    .line 41
    sget-object p2, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {p3, p2, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 42
    :cond_6
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->loadRemoteIndicatorIfNeeded()V

    .line 43
    :cond_7
    :goto_1
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->updateContentDescription()V

    .line 44
    invoke-virtual {p0, v1}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    move-result-object p0

    .line 5
    :goto_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    .line 6
    if-eqz v0, :cond_1

    .line 8
    instance-of v0, p0, Landroid/app/Activity;

    .line 10
    if-eqz v0, :cond_0

    .line 12
    check-cast p0, Landroid/app/Activity;

    .line 14
    return-object p0

    .line 16
    :cond_0
    check-cast p0, Landroid/content/ContextWrapper;

    .line 17
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 19
    move-result-object p0

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 p0, 0x0

    .line 24
    return-object p0
    .line 25
.end method

.method private getFragmentManager()Landroidx/fragment/app/FragmentManager;
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/mediarouter/app/MediaRouteButton;->getActivity()Landroid/app/Activity;

    .line 2
    move-result-object p0

    .line 5
    instance-of v0, p0, Landroidx/fragment/app/FragmentActivity;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    check-cast p0, Landroidx/fragment/app/FragmentActivity;

    .line 10
    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    .line 12
    iget-object p0, p0, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    .line 14
    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    .line 16
    return-object p0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return-object p0
    .line 20
.end method


# virtual methods
.method public final drawableStateChanged()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 2
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    .line 5
    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 9
    move-result-object v0

    .line 12
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    .line 13
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 15
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    .line 18
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    .line 20
    move-result-object v0

    .line 23
    instance-of v0, v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 24
    if-eqz v0, :cond_2

    .line 26
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    .line 28
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    .line 30
    move-result-object v0

    .line 33
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 34
    iget v1, p0, Landroidx/mediarouter/app/MediaRouteButton;->mConnectionState:I

    .line 36
    const/4 v2, 0x1

    .line 38
    if-eq v1, v2, :cond_1

    .line 39
    iget v3, p0, Landroidx/mediarouter/app/MediaRouteButton;->mLastConnectionState:I

    .line 41
    if-eq v3, v1, :cond_0

    .line 43
    goto :goto_0

    .line 45
    :cond_0
    const/4 v3, 0x2

    .line 46
    if-ne v1, v3, :cond_2

    .line 47
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    .line 49
    move-result v1

    .line 52
    if-nez v1, :cond_2

    .line 53
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    .line 55
    move-result v1

    .line 58
    sub-int/2addr v1, v2

    .line 59
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->selectDrawable(I)Z

    .line 60
    goto :goto_1

    .line 63
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    .line 64
    move-result v1

    .line 67
    if-nez v1, :cond_2

    .line 68
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 70
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 73
    :cond_3
    iget v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mConnectionState:I

    .line 76
    iput v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mLastConnectionState:I

    .line 78
    return-void
    .line 80
.end method

.method public getDialogFactory()Landroidx/mediarouter/app/MediaRouteDialogFactory;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mDialogFactory:Landroidx/mediarouter/app/MediaRouteDialogFactory;

    .line 2
    return-object p0
    .line 4
.end method

.method public getRouteSelector()Landroidx/mediarouter/media/MediaRouteSelector;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 2
    return-object p0
    .line 4
.end method

.method public final jumpDrawablesToCurrentState()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 2
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    .line 5
    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 9
    :cond_0
    return-void
    .line 12
.end method

.method public final loadRemoteIndicatorIfNeeded()V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicatorResIdToLoad:I

    .line 2
    if-lez v0, :cond_1

    .line 4
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicatorLoader:Landroidx/mediarouter/app/MediaRouteButton$RemoteIndicatorLoader;

    .line 6
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 11
    :cond_0
    new-instance v0, Landroidx/mediarouter/app/MediaRouteButton$RemoteIndicatorLoader;

    .line 14
    iget v2, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicatorResIdToLoad:I

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    move-result-object v3

    .line 21
    invoke-direct {v0, p0, v2, v3}, Landroidx/mediarouter/app/MediaRouteButton$RemoteIndicatorLoader;-><init>(Landroidx/mediarouter/app/MediaRouteButton;ILandroid/content/Context;)V

    .line 22
    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicatorLoader:Landroidx/mediarouter/app/MediaRouteButton$RemoteIndicatorLoader;

    .line 25
    iput v1, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicatorResIdToLoad:I

    .line 27
    sget-object p0, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 29
    new-array v1, v1, [Ljava/lang/Void;

    .line 31
    invoke-virtual {v0, p0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 33
    :cond_1
    return-void
    .line 36
.end method

.method public final onAttachedToWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 5
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    return-void

    .line 11
    :cond_0
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mAttachedToWindow:Z

    .line 13
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 15
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouteSelector;->isEmpty()Z

    .line 17
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    .line 23
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteButton;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 25
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteButton;->mCallback:Landroidx/mediarouter/app/MediaRouteButton$MediaRouterCallback;

    .line 27
    const/4 v3, 0x0

    .line 29
    invoke-virtual {v0, v1, v2, v3}, Landroidx/mediarouter/media/MediaRouter;->addCallback(Landroidx/mediarouter/media/MediaRouteSelector;Landroidx/mediarouter/media/MediaRouter$Callback;I)V

    .line 30
    :cond_1
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->refreshRoute()V

    .line 33
    sget-object v0, Landroidx/mediarouter/app/MediaRouteButton;->sConnectivityReceiver:Landroidx/mediarouter/app/MediaRouteButton$ConnectivityReceiver;

    .line 36
    iget-object v1, v0, Landroidx/mediarouter/app/MediaRouteButton$ConnectivityReceiver;->mButtons:Ljava/util/List;

    .line 38
    check-cast v1, Ljava/util/ArrayList;

    .line 40
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 42
    move-result v1

    .line 45
    if-nez v1, :cond_2

    .line 46
    new-instance v1, Landroid/content/IntentFilter;

    .line 48
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 50
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 53
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 55
    iget-object v2, v0, Landroidx/mediarouter/app/MediaRouteButton$ConnectivityReceiver;->mContext:Landroid/content/Context;

    .line 58
    const/4 v3, 0x4

    .line 60
    invoke-virtual {v2, v0, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 61
    :cond_2
    iget-object v0, v0, Landroidx/mediarouter/app/MediaRouteButton$ConnectivityReceiver;->mButtons:Ljava/util/List;

    .line 64
    check-cast v0, Ljava/util/ArrayList;

    .line 66
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    return-void
    .line 71
.end method

.method public final onCreateDrawableState(I)[I
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    add-int/2addr p1, v0

    .line 3
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    .line 4
    move-result-object p1

    .line 7
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    .line 8
    if-nez v1, :cond_0

    .line 10
    return-object p1

    .line 12
    :cond_0
    iget p0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mConnectionState:I

    .line 13
    if-eq p0, v0, :cond_2

    .line 15
    const/4 v0, 0x2

    .line 17
    if-eq p0, v0, :cond_1

    .line 18
    goto :goto_0

    .line 20
    :cond_1
    sget-object p0, Landroidx/mediarouter/app/MediaRouteButton;->CHECKED_STATE_SET:[I

    .line 21
    invoke-static {p1, p0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    .line 23
    goto :goto_0

    .line 26
    :cond_2
    sget-object p0, Landroidx/mediarouter/app/MediaRouteButton;->CHECKABLE_STATE_SET:[I

    .line 27
    invoke-static {p1, p0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    .line 29
    :goto_0
    return-object p1
    .line 32
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mAttachedToWindow:Z

    .line 9
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 11
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouteSelector;->isEmpty()Z

    .line 13
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    .line 19
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteButton;->mCallback:Landroidx/mediarouter/app/MediaRouteButton$MediaRouterCallback;

    .line 21
    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/MediaRouter;->removeCallback(Landroidx/mediarouter/media/MediaRouter$Callback;)V

    .line 23
    :cond_0
    sget-object v0, Landroidx/mediarouter/app/MediaRouteButton;->sConnectivityReceiver:Landroidx/mediarouter/app/MediaRouteButton$ConnectivityReceiver;

    .line 26
    iget-object v1, v0, Landroidx/mediarouter/app/MediaRouteButton$ConnectivityReceiver;->mButtons:Ljava/util/List;

    .line 28
    check-cast v1, Ljava/util/ArrayList;

    .line 30
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 32
    iget-object v1, v0, Landroidx/mediarouter/app/MediaRouteButton$ConnectivityReceiver;->mButtons:Ljava/util/List;

    .line 35
    check-cast v1, Ljava/util/ArrayList;

    .line 37
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 39
    move-result v1

    .line 42
    if-nez v1, :cond_1

    .line 43
    iget-object v1, v0, Landroidx/mediarouter/app/MediaRouteButton$ConnectivityReceiver;->mContext:Landroid/content/Context;

    .line 45
    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 47
    :cond_1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 50
    return-void
    .line 53
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 9
    move-result v0

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 13
    move-result v1

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 17
    move-result v2

    .line 20
    sub-int/2addr v1, v2

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 22
    move-result v2

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 26
    move-result v3

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 30
    move-result v4

    .line 33
    sub-int/2addr v3, v4

    .line 34
    iget-object v4, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    .line 35
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 37
    move-result v4

    .line 40
    iget-object v5, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    .line 41
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 43
    move-result v5

    .line 46
    sub-int/2addr v1, v0

    .line 47
    sub-int/2addr v1, v4

    .line 48
    div-int/lit8 v1, v1, 0x2

    .line 49
    add-int/2addr v1, v0

    .line 51
    sub-int/2addr v3, v2

    .line 52
    sub-int/2addr v3, v5

    .line 53
    div-int/lit8 v3, v3, 0x2

    .line 54
    add-int/2addr v3, v2

    .line 56
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    .line 57
    add-int/2addr v4, v1

    .line 59
    add-int/2addr v5, v3

    .line 60
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 61
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    .line 64
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 66
    :cond_0
    return-void
    .line 69
.end method

.method public final onMeasure(II)V
    .locals 6

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 2
    move-result v0

    .line 5
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 6
    move-result v1

    .line 9
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 10
    move-result p1

    .line 13
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 14
    move-result p2

    .line 17
    iget v2, p0, Landroidx/mediarouter/app/MediaRouteButton;->mMinWidth:I

    .line 18
    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    .line 20
    const/4 v4, 0x0

    .line 22
    if-eqz v3, :cond_0

    .line 23
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 25
    move-result v3

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 29
    move-result v5

    .line 32
    add-int/2addr v5, v3

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 34
    move-result v3

    .line 37
    add-int/2addr v3, v5

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move v3, v4

    .line 40
    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 41
    move-result v2

    .line 44
    iget v3, p0, Landroidx/mediarouter/app/MediaRouteButton;->mMinHeight:I

    .line 45
    iget-object v5, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    .line 47
    if-eqz v5, :cond_1

    .line 49
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 51
    move-result v4

    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 55
    move-result v5

    .line 58
    add-int/2addr v5, v4

    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 60
    move-result v4

    .line 63
    add-int/2addr v4, v5

    .line 64
    :cond_1
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .line 65
    move-result v3

    .line 68
    const/high16 v4, 0x40000000    # 2.0f

    .line 69
    const/high16 v5, -0x80000000

    .line 71
    if-eq p1, v5, :cond_2

    .line 73
    if-eq p1, v4, :cond_3

    .line 75
    move v0, v2

    .line 77
    goto :goto_1

    .line 78
    :cond_2
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 79
    move-result v0

    .line 82
    :cond_3
    :goto_1
    if-eq p2, v5, :cond_4

    .line 83
    if-eq p2, v4, :cond_5

    .line 85
    move v1, v3

    .line 87
    goto :goto_2

    .line 88
    :cond_4
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    .line 89
    move-result v1

    .line 92
    :cond_5
    :goto_2
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 93
    return-void
    .line 96
.end method

.method public final performClick()Z
    .locals 10

    .line 1
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p0, v1}, Landroid/view/View;->playSoundEffect(I)V

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->loadRemoteIndicatorIfNeeded()V

    .line 12
    iget-boolean v2, p0, Landroidx/mediarouter/app/MediaRouteButton;->mAttachedToWindow:Z

    .line 15
    const/4 v3, 0x1

    .line 17
    if-nez v2, :cond_1

    .line 18
    :goto_0
    move p0, v1

    .line 20
    goto/16 :goto_4

    .line 21
    :cond_1
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    .line 23
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->checkCallingThread()V

    .line 28
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->getGlobalRouter()Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    .line 31
    invoke-direct {p0}, Landroidx/mediarouter/app/MediaRouteButton;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 34
    move-result-object v2

    .line 37
    if-eqz v2, :cond_11

    .line 38
    iget-object v4, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    .line 40
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->getSelectedRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 45
    move-result-object v4

    .line 48
    invoke-virtual {v4}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isDefaultOrBluetooth()Z

    .line 49
    move-result v4

    .line 52
    const-string v5, "MediaRouteButton"

    .line 53
    const-string/jumbo v6, "selector"

    .line 55
    const-string/jumbo v7, "selector must not be null"

    .line 58
    if-eqz v4, :cond_7

    .line 61
    const-string v4, "android.support.v7.mediarouter:MediaRouteChooserDialogFragment"

    .line 63
    invoke-virtual {v2, v4}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 65
    move-result-object v8

    .line 68
    if-eqz v8, :cond_2

    .line 69
    const-string/jumbo p0, "showDialog(): Route chooser dialog already showing!"

    .line 71
    invoke-static {v5, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    goto :goto_0

    .line 77
    :cond_2
    iget-object v5, p0, Landroidx/mediarouter/app/MediaRouteButton;->mDialogFactory:Landroidx/mediarouter/app/MediaRouteDialogFactory;

    .line 78
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    new-instance v5, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;

    .line 83
    invoke-direct {v5}, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;-><init>()V

    .line 85
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 88
    if-eqz p0, :cond_6

    .line 90
    invoke-virtual {v5}, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->ensureRouteSelector()V

    .line 92
    iget-object v7, v5, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 95
    invoke-virtual {v7, p0}, Landroidx/mediarouter/media/MediaRouteSelector;->equals(Ljava/lang/Object;)Z

    .line 97
    move-result v7

    .line 100
    if-nez v7, :cond_5

    .line 101
    iput-object p0, v5, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 103
    iget-object v7, v5, Landroidx/fragment/app/Fragment;->mArguments:Landroid/os/Bundle;

    .line 105
    if-nez v7, :cond_3

    .line 107
    new-instance v7, Landroid/os/Bundle;

    .line 109
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 111
    :cond_3
    iget-object v8, p0, Landroidx/mediarouter/media/MediaRouteSelector;->mBundle:Landroid/os/Bundle;

    .line 114
    invoke-virtual {v7, v6, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 116
    invoke-virtual {v5, v7}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 119
    iget-object v6, v5, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    .line 122
    if-eqz v6, :cond_5

    .line 124
    iget-boolean v7, v5, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->mUseDynamicGroup:Z

    .line 126
    if-eqz v7, :cond_4

    .line 128
    check-cast v6, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;

    .line 130
    invoke-virtual {v6, p0}, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->setRouteSelector(Landroidx/mediarouter/media/MediaRouteSelector;)V

    .line 132
    goto :goto_1

    .line 135
    :cond_4
    check-cast v6, Landroidx/mediarouter/app/MediaRouteChooserDialog;

    .line 136
    invoke-virtual {v6, p0}, Landroidx/mediarouter/app/MediaRouteChooserDialog;->setRouteSelector(Landroidx/mediarouter/media/MediaRouteSelector;)V

    .line 138
    :cond_5
    :goto_1
    new-instance p0, Landroidx/fragment/app/BackStackRecord;

    .line 141
    invoke-direct {p0, v2}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 143
    invoke-virtual {p0, v1, v5, v4, v3}, Landroidx/fragment/app/BackStackRecord;->doAddOp(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 146
    invoke-virtual {p0, v3}, Landroidx/fragment/app/BackStackRecord;->commitInternal(Z)I

    .line 149
    goto/16 :goto_3

    .line 152
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 154
    invoke-direct {p0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 156
    throw p0

    .line 159
    :cond_7
    const-string v4, "android.support.v7.mediarouter:MediaRouteControllerDialogFragment"

    .line 160
    invoke-virtual {v2, v4}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 162
    move-result-object v8

    .line 165
    if-eqz v8, :cond_8

    .line 166
    const-string/jumbo p0, "showDialog(): Route controller dialog already showing!"

    .line 168
    invoke-static {v5, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    goto/16 :goto_0

    .line 174
    :cond_8
    iget-object v5, p0, Landroidx/mediarouter/app/MediaRouteButton;->mDialogFactory:Landroidx/mediarouter/app/MediaRouteDialogFactory;

    .line 176
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    new-instance v5, Landroidx/mediarouter/app/MediaRouteControllerDialogFragment;

    .line 181
    invoke-direct {v5}, Landroidx/mediarouter/app/MediaRouteControllerDialogFragment;-><init>()V

    .line 183
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 186
    if-eqz p0, :cond_10

    .line 188
    iget-object v7, v5, Landroidx/mediarouter/app/MediaRouteControllerDialogFragment;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 190
    if-nez v7, :cond_b

    .line 192
    iget-object v7, v5, Landroidx/fragment/app/Fragment;->mArguments:Landroid/os/Bundle;

    .line 194
    if-eqz v7, :cond_a

    .line 196
    invoke-virtual {v7, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 198
    move-result-object v7

    .line 201
    const/4 v8, 0x0

    .line 202
    if-eqz v7, :cond_9

    .line 203
    new-instance v9, Landroidx/mediarouter/media/MediaRouteSelector;

    .line 205
    invoke-direct {v9, v7, v8}, Landroidx/mediarouter/media/MediaRouteSelector;-><init>(Landroid/os/Bundle;Ljava/util/List;)V

    .line 207
    move-object v8, v9

    .line 210
    goto :goto_2

    .line 211
    :cond_9
    sget-object v7, Landroidx/mediarouter/media/MediaRouteSelector;->EMPTY:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 212
    :goto_2
    iput-object v8, v5, Landroidx/mediarouter/app/MediaRouteControllerDialogFragment;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 214
    :cond_a
    iget-object v7, v5, Landroidx/mediarouter/app/MediaRouteControllerDialogFragment;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 216
    if-nez v7, :cond_b

    .line 218
    sget-object v7, Landroidx/mediarouter/media/MediaRouteSelector;->EMPTY:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 220
    iput-object v7, v5, Landroidx/mediarouter/app/MediaRouteControllerDialogFragment;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 222
    :cond_b
    iget-object v7, v5, Landroidx/mediarouter/app/MediaRouteControllerDialogFragment;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 224
    invoke-virtual {v7, p0}, Landroidx/mediarouter/media/MediaRouteSelector;->equals(Ljava/lang/Object;)Z

    .line 226
    move-result v7

    .line 229
    if-nez v7, :cond_d

    .line 230
    iput-object p0, v5, Landroidx/mediarouter/app/MediaRouteControllerDialogFragment;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 232
    iget-object v7, v5, Landroidx/fragment/app/Fragment;->mArguments:Landroid/os/Bundle;

    .line 234
    if-nez v7, :cond_c

    .line 236
    new-instance v7, Landroid/os/Bundle;

    .line 238
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 240
    :cond_c
    iget-object v8, p0, Landroidx/mediarouter/media/MediaRouteSelector;->mBundle:Landroid/os/Bundle;

    .line 243
    invoke-virtual {v7, v6, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 245
    invoke-virtual {v5, v7}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 248
    iget-object v6, v5, Landroidx/mediarouter/app/MediaRouteControllerDialogFragment;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    .line 251
    if-eqz v6, :cond_d

    .line 253
    iget-boolean v7, v5, Landroidx/mediarouter/app/MediaRouteControllerDialogFragment;->mUseDynamicGroup:Z

    .line 255
    if-eqz v7, :cond_d

    .line 257
    check-cast v6, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    .line 259
    invoke-virtual {v6, p0}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->setRouteSelector(Landroidx/mediarouter/media/MediaRouteSelector;)V

    .line 261
    :cond_d
    new-instance p0, Landroidx/fragment/app/BackStackRecord;

    .line 264
    invoke-direct {p0, v2}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 266
    invoke-virtual {p0, v1, v5, v4, v3}, Landroidx/fragment/app/BackStackRecord;->doAddOp(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 269
    invoke-virtual {p0, v3}, Landroidx/fragment/app/BackStackRecord;->commitInternal(Z)I

    .line 272
    :goto_3
    move p0, v3

    .line 275
    :goto_4
    if-nez p0, :cond_e

    .line 276
    if-eqz v0, :cond_f

    .line 278
    :cond_e
    move v1, v3

    .line 280
    :cond_f
    return v1

    .line 281
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 282
    invoke-direct {p0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 284
    throw p0

    .line 287
    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 288
    const-string v0, "The activity must be a subclass of FragmentActivity"

    .line 290
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 292
    throw p0
    .line 295
.end method

.method public final refreshRoute()V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->getSelectedRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 7
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isDefaultOrBluetooth()Z

    .line 11
    move-result v1

    .line 14
    const/4 v2, 0x1

    .line 15
    xor-int/2addr v1, v2

    .line 16
    const/4 v3, 0x0

    .line 17
    if-eqz v1, :cond_0

    .line 18
    iget v0, v0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mConnectionState:I

    .line 20
    goto :goto_0

    .line 22
    :cond_0
    move v0, v3

    .line 23
    :goto_0
    iget v4, p0, Landroidx/mediarouter/app/MediaRouteButton;->mConnectionState:I

    .line 24
    if-eq v4, v0, :cond_1

    .line 26
    iput v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mConnectionState:I

    .line 28
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->updateContentDescription()V

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 33
    :cond_1
    if-ne v0, v2, :cond_2

    .line 36
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->loadRemoteIndicatorIfNeeded()V

    .line 38
    :cond_2
    iget-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mAttachedToWindow:Z

    .line 41
    if-eqz v0, :cond_b

    .line 43
    iget-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mAlwaysVisible:Z

    .line 45
    if-nez v0, :cond_a

    .line 47
    if-nez v1, :cond_a

    .line 49
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    .line 51
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteButton;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 53
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    if-eqz v1, :cond_9

    .line 58
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->checkCallingThread()V

    .line 60
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->getGlobalRouter()Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    .line 63
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouteSelector;->isEmpty()Z

    .line 70
    move-result v4

    .line 73
    if-eqz v4, :cond_3

    .line 74
    goto :goto_4

    .line 76
    :cond_3
    iget-boolean v4, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mLowRam:Z

    .line 77
    if-eqz v4, :cond_4

    .line 79
    goto :goto_2

    .line 81
    :cond_4
    iget-object v0, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    .line 82
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 84
    move-result v4

    .line 87
    move v5, v3

    .line 88
    :goto_1
    if-ge v5, v4, :cond_7

    .line 89
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 91
    move-result-object v6

    .line 94
    check-cast v6, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 95
    invoke-virtual {v6}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isDefaultOrBluetooth()Z

    .line 97
    move-result v7

    .line 100
    if-eqz v7, :cond_5

    .line 101
    goto :goto_3

    .line 103
    :cond_5
    invoke-virtual {v6, v1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->matchesSelector(Landroidx/mediarouter/media/MediaRouteSelector;)Z

    .line 104
    move-result v6

    .line 107
    if-eqz v6, :cond_6

    .line 108
    :goto_2
    move v0, v2

    .line 110
    goto :goto_5

    .line 111
    :cond_6
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 112
    goto :goto_1

    .line 114
    :cond_7
    :goto_4
    move v0, v3

    .line 115
    :goto_5
    if-eqz v0, :cond_8

    .line 116
    goto :goto_6

    .line 118
    :cond_8
    move v2, v3

    .line 119
    goto :goto_6

    .line 120
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 121
    const-string/jumbo v0, "selector must not be null"

    .line 123
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 126
    throw p0

    .line 129
    :cond_a
    :goto_6
    invoke-virtual {p0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 130
    :cond_b
    return-void
    .line 133
.end method

.method public final refreshVisibility()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mVisibility:I

    .line 2
    if-nez v0, :cond_0

    .line 4
    iget-boolean v1, p0, Landroidx/mediarouter/app/MediaRouteButton;->mAlwaysVisible:Z

    .line 6
    if-nez v1, :cond_0

    .line 8
    sget-object v1, Landroidx/mediarouter/app/MediaRouteButton;->sConnectivityReceiver:Landroidx/mediarouter/app/MediaRouteButton$ConnectivityReceiver;

    .line 10
    iget-boolean v1, v1, Landroidx/mediarouter/app/MediaRouteButton$ConnectivityReceiver;->mIsConnected:Z

    .line 12
    if-nez v1, :cond_0

    .line 14
    const/4 v0, 0x4

    .line 16
    :cond_0
    invoke-super {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 17
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    .line 20
    if-eqz v0, :cond_2

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 24
    move-result p0

    .line 27
    const/4 v1, 0x0

    .line 28
    if-nez p0, :cond_1

    .line 29
    const/4 p0, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move p0, v1

    .line 33
    :goto_0
    invoke-virtual {v0, p0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 34
    :cond_2
    return-void
    .line 37
.end method

.method public setAlwaysVisible(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mAlwaysVisible:Z

    .line 2
    if-eq p1, v0, :cond_0

    .line 4
    iput-boolean p1, p0, Landroidx/mediarouter/app/MediaRouteButton;->mAlwaysVisible:Z

    .line 6
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->refreshVisibility()V

    .line 8
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->refreshRoute()V

    .line 11
    :cond_0
    return-void
    .line 14
.end method

.method public setDialogFactory(Landroidx/mediarouter/app/MediaRouteDialogFactory;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteButton;->mDialogFactory:Landroidx/mediarouter/app/MediaRouteDialogFactory;

    .line 4
    return-void

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 7
    const-string p1, "factory must not be null"

    .line 9
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 11
    throw p0
    .line 14
.end method

.method public setRemoteIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicatorResIdToLoad:I

    .line 3
    invoke-virtual {p0, p1}, Landroidx/mediarouter/app/MediaRouteButton;->setRemoteIndicatorDrawableInternal(Landroid/graphics/drawable/Drawable;)V

    .line 5
    return-void
    .line 8
.end method

.method public final setRemoteIndicatorDrawableInternal(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicatorLoader:Landroidx/mediarouter/app/MediaRouteButton$RemoteIndicatorLoader;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 7
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    .line 10
    if-eqz v0, :cond_1

    .line 12
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 15
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    .line 18
    invoke-virtual {p0, v0}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 20
    :cond_1
    if-eqz p1, :cond_4

    .line 23
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mButtonTint:Landroid/content/res/ColorStateList;

    .line 25
    if-eqz v0, :cond_2

    .line 27
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 29
    move-result-object p1

    .line 32
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mButtonTint:Landroid/content/res/ColorStateList;

    .line 33
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 35
    :cond_2
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 41
    move-result-object v0

    .line 44
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 48
    move-result v0

    .line 51
    if-nez v0, :cond_3

    .line 52
    const/4 v0, 0x1

    .line 54
    goto :goto_0

    .line 55
    :cond_3
    move v0, v1

    .line 56
    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 57
    :cond_4
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    .line 60
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 62
    return-void
    .line 65
.end method

.method public setRouteSelector(Landroidx/mediarouter/media/MediaRouteSelector;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_3

    .line 2
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 4
    invoke-virtual {v0, p1}, Landroidx/mediarouter/media/MediaRouteSelector;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 9
    if-nez v0, :cond_2

    .line 10
    iget-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mAttachedToWindow:Z

    .line 12
    if-eqz v0, :cond_1

    .line 14
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 16
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouteSelector;->isEmpty()Z

    .line 18
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    .line 24
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteButton;->mCallback:Landroidx/mediarouter/app/MediaRouteButton$MediaRouterCallback;

    .line 26
    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/MediaRouter;->removeCallback(Landroidx/mediarouter/media/MediaRouter$Callback;)V

    .line 28
    :cond_0
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteSelector;->isEmpty()Z

    .line 31
    move-result v0

    .line 34
    if-nez v0, :cond_1

    .line 35
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    .line 37
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteButton;->mCallback:Landroidx/mediarouter/app/MediaRouteButton$MediaRouterCallback;

    .line 39
    const/4 v2, 0x0

    .line 41
    invoke-virtual {v0, p1, v1, v2}, Landroidx/mediarouter/media/MediaRouter;->addCallback(Landroidx/mediarouter/media/MediaRouteSelector;Landroidx/mediarouter/media/MediaRouter$Callback;I)V

    .line 42
    :cond_1
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteButton;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 45
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->refreshRoute()V

    .line 47
    :cond_2
    return-void

    .line 50
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 51
    const-string/jumbo p1, "selector must not be null"

    .line 53
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 56
    throw p0
    .line 59
.end method

.method public setVisibility(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/mediarouter/app/MediaRouteButton;->mVisibility:I

    .line 2
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->refreshVisibility()V

    .line 4
    return-void
    .line 7
.end method

.method public final updateContentDescription()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mConnectionState:I

    .line 2
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    const/4 v1, 0x2

    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    const v0, 0x7f130804    # @string/mr_cast_button_disconnected 'Cast. Disconnected'

    .line 10
    goto :goto_0

    .line 13
    :cond_0
    const v0, 0x7f130802    # @string/mr_cast_button_connected 'Cast. Connected'

    .line 14
    goto :goto_0

    .line 17
    :cond_1
    const v0, 0x7f130803    # @string/mr_cast_button_connecting 'Cast. Connecting'

    .line 18
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 21
    move-result-object v1

    .line 24
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 28
    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 29
    const/4 v0, 0x0

    .line 32
    invoke-virtual {p0, v0}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    .line 33
    return-void
    .line 36
.end method

.method public final verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    .line 8
    if-ne p1, p0, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 15
    :goto_1
    return p0
    .line 16
.end method
