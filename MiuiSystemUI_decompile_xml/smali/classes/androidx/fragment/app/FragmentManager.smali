.class public abstract Landroidx/fragment/app/FragmentManager;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mBackStack:Ljava/util/ArrayList;

.field public final mBackStackIndex:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mBackStackStates:Ljava/util/Map;

.field public mContainer:Landroidx/fragment/app/FragmentContainer;

.field public mCreatedMenus:Ljava/util/ArrayList;

.field public mCurState:I

.field public final mDefaultSpecialEffectsControllerFactory:Landroidx/fragment/app/FragmentManager$4;

.field public mDestroyed:Z

.field public final mExecCommit:Landroidx/fragment/app/FragmentManager$5;

.field public mExecutingActions:Z

.field public final mFragmentStore:Landroidx/fragment/app/FragmentStore;

.field public mHavePendingDeferredStart:Z

.field public mHost:Landroidx/fragment/app/FragmentActivity$HostCallbacks;

.field public final mHostFragmentFactory:Landroidx/fragment/app/FragmentManager$3;

.field public mLaunchedFragments:Ljava/util/ArrayDeque;

.field public final mLayoutInflaterFactory:Landroidx/fragment/app/FragmentLayoutInflaterFactory;

.field public final mLifecycleCallbacksDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

.field public final mMenuProvider:Landroidx/fragment/app/FragmentManager$2;

.field public mNeedMenuInvalidate:Z

.field public mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

.field public final mOnAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final mOnBackPressedCallback:Landroidx/fragment/app/FragmentManager$1;

.field public mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

.field public final mOnConfigurationChangedListener:Landroidx/fragment/app/FragmentManager$$ExternalSyntheticLambda0;

.field public final mOnMultiWindowModeChangedListener:Landroidx/fragment/app/FragmentManager$$ExternalSyntheticLambda0;

.field public final mOnPictureInPictureModeChangedListener:Landroidx/fragment/app/FragmentManager$$ExternalSyntheticLambda0;

.field public final mOnTrimMemoryListener:Landroidx/fragment/app/FragmentManager$$ExternalSyntheticLambda0;

.field public mParent:Landroidx/fragment/app/Fragment;

.field public final mPendingActions:Ljava/util/ArrayList;

.field public mPrimaryNav:Landroidx/fragment/app/Fragment;

.field public mRequestPermissions:Landroidx/activity/result/ActivityResultRegistry$3;

.field public final mResults:Ljava/util/Map;

.field public mStartActivityForResult:Landroidx/activity/result/ActivityResultRegistry$3;

.field public mStartIntentSenderForResult:Landroidx/activity/result/ActivityResultRegistry$3;

.field public mStateSaved:Z

.field public mStopped:Z

.field public mTmpAddedFragments:Ljava/util/ArrayList;

.field public mTmpIsPop:Ljava/util/ArrayList;

.field public mTmpRecords:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    .line 10
    new-instance v0, Landroidx/fragment/app/FragmentStore;

    .line 12
    invoke-direct {v0}, Landroidx/fragment/app/FragmentStore;-><init>()V

    .line 14
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 17
    new-instance v0, Landroidx/fragment/app/FragmentLayoutInflaterFactory;

    .line 19
    invoke-direct {v0, p0}, Landroidx/fragment/app/FragmentLayoutInflaterFactory;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 21
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mLayoutInflaterFactory:Landroidx/fragment/app/FragmentLayoutInflaterFactory;

    .line 24
    new-instance v0, Landroidx/fragment/app/FragmentManager$1;

    .line 26
    invoke-direct {v0, p0}, Landroidx/fragment/app/FragmentManager$1;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 28
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mOnBackPressedCallback:Landroidx/fragment/app/FragmentManager$1;

    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 33
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 35
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStackIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    .line 40
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 42
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 45
    move-result-object v0

    .line 48
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStackStates:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    .line 51
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 53
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 56
    move-result-object v0

    .line 59
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mResults:Ljava/util/Map;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    .line 62
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 64
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 67
    new-instance v0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    .line 70
    invoke-direct {v0, p0}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 72
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mLifecycleCallbacksDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    .line 75
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 77
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 79
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mOnAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 82
    new-instance v0, Landroidx/fragment/app/FragmentManager$$ExternalSyntheticLambda0;

    .line 84
    const/4 v1, 0x0

    .line 86
    invoke-direct {v0, p0, v1}, Landroidx/fragment/app/FragmentManager$$ExternalSyntheticLambda0;-><init>(Landroidx/fragment/app/FragmentManager;I)V

    .line 87
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mOnConfigurationChangedListener:Landroidx/fragment/app/FragmentManager$$ExternalSyntheticLambda0;

    .line 90
    new-instance v0, Landroidx/fragment/app/FragmentManager$$ExternalSyntheticLambda0;

    .line 92
    const/4 v2, 0x1

    .line 94
    invoke-direct {v0, p0, v2}, Landroidx/fragment/app/FragmentManager$$ExternalSyntheticLambda0;-><init>(Landroidx/fragment/app/FragmentManager;I)V

    .line 95
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mOnTrimMemoryListener:Landroidx/fragment/app/FragmentManager$$ExternalSyntheticLambda0;

    .line 98
    new-instance v0, Landroidx/fragment/app/FragmentManager$$ExternalSyntheticLambda0;

    .line 100
    const/4 v2, 0x2

    .line 102
    invoke-direct {v0, p0, v2}, Landroidx/fragment/app/FragmentManager$$ExternalSyntheticLambda0;-><init>(Landroidx/fragment/app/FragmentManager;I)V

    .line 103
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mOnMultiWindowModeChangedListener:Landroidx/fragment/app/FragmentManager$$ExternalSyntheticLambda0;

    .line 106
    new-instance v0, Landroidx/fragment/app/FragmentManager$$ExternalSyntheticLambda0;

    .line 108
    const/4 v2, 0x3

    .line 110
    invoke-direct {v0, p0, v2}, Landroidx/fragment/app/FragmentManager$$ExternalSyntheticLambda0;-><init>(Landroidx/fragment/app/FragmentManager;I)V

    .line 111
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mOnPictureInPictureModeChangedListener:Landroidx/fragment/app/FragmentManager$$ExternalSyntheticLambda0;

    .line 114
    new-instance v0, Landroidx/fragment/app/FragmentManager$2;

    .line 116
    invoke-direct {v0, p0}, Landroidx/fragment/app/FragmentManager$2;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 118
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mMenuProvider:Landroidx/fragment/app/FragmentManager$2;

    .line 121
    const/4 v0, -0x1

    .line 123
    iput v0, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    .line 124
    new-instance v0, Landroidx/fragment/app/FragmentManager$3;

    .line 126
    invoke-direct {v0, p0}, Landroidx/fragment/app/FragmentManager$3;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 128
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHostFragmentFactory:Landroidx/fragment/app/FragmentManager$3;

    .line 131
    new-instance v0, Landroidx/fragment/app/FragmentManager$4;

    .line 133
    invoke-direct {v0, p0, v1}, Landroidx/fragment/app/FragmentManager$4;-><init>(Landroidx/fragment/app/FragmentManager;I)V

    .line 135
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mDefaultSpecialEffectsControllerFactory:Landroidx/fragment/app/FragmentManager$4;

    .line 138
    new-instance v0, Ljava/util/ArrayDeque;

    .line 140
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 142
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mLaunchedFragments:Ljava/util/ArrayDeque;

    .line 145
    new-instance v0, Landroidx/fragment/app/FragmentManager$5;

    .line 147
    invoke-direct {v0, p0}, Landroidx/fragment/app/FragmentManager$5;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 149
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mExecCommit:Landroidx/fragment/app/FragmentManager$5;

    .line 152
    return-void
    .line 154
.end method

.method public static isLoggingEnabled(I)Z
    .locals 1

    .line 1
    const-string v0, "FragmentManager"

    .line 2
    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 4
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
    .line 13
.end method

.method public static isMenuAvailable(Landroidx/fragment/app/Fragment;)Z
    .locals 3

    .line 1
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    .line 2
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStore;->getActiveFragments()Ljava/util/List;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Ljava/util/ArrayList;

    .line 10
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object p0

    .line 15
    const/4 v0, 0x0

    .line 16
    move v1, v0

    .line 17
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v2

    .line 21
    if-eqz v2, :cond_2

    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v2

    .line 27
    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 28
    if-eqz v2, :cond_1

    .line 30
    invoke-static {v2}, Landroidx/fragment/app/FragmentManager;->isMenuAvailable(Landroidx/fragment/app/Fragment;)Z

    .line 32
    move-result v1

    .line 35
    :cond_1
    if-eqz v1, :cond_0

    .line 36
    const/4 v0, 0x1

    .line 38
    :cond_2
    return v0
    .line 39
.end method

.method public static isParentMenuVisible(Landroidx/fragment/app/Fragment;)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p0, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    iget-boolean v1, p0, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    .line 6
    if-eqz v1, :cond_1

    .line 8
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 10
    if-eqz v1, :cond_2

    .line 12
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 14
    invoke-static {p0}, Landroidx/fragment/app/FragmentManager;->isParentMenuVisible(Landroidx/fragment/app/Fragment;)Z

    .line 16
    move-result p0

    .line 19
    if-eqz p0, :cond_1

    .line 20
    goto :goto_0

    .line 22
    :cond_1
    const/4 v0, 0x0

    .line 23
    :cond_2
    :goto_0
    return v0
.end method

.method public static isPrimaryNavigation(Landroidx/fragment/app/Fragment;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p0, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 6
    iget-object v2, v1, Landroidx/fragment/app/FragmentManager;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    .line 8
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p0

    .line 13
    if-eqz p0, :cond_1

    .line 14
    iget-object p0, v1, Landroidx/fragment/app/FragmentManager;->mParent:Landroidx/fragment/app/Fragment;

    .line 16
    invoke-static {p0}, Landroidx/fragment/app/FragmentManager;->isPrimaryNavigation(Landroidx/fragment/app/Fragment;)Z

    .line 18
    move-result p0

    .line 21
    if-eqz p0, :cond_1

    .line 22
    goto :goto_0

    .line 24
    :cond_1
    const/4 v0, 0x0

    .line 25
    :goto_0
    return v0
    .line 26
.end method


# virtual methods
.method public final addFragment(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentStateManager;
    .locals 3

    .line 1
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mPreviousWho:Ljava/lang/String;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-static {p1, v0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->onFragmentReuse(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 6
    :cond_0
    const/4 v0, 0x2

    .line 9
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 10
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    .line 16
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->createOrGetFragmentStateManager(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentStateManager;

    .line 19
    move-result-object v0

    .line 22
    iput-object p0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 23
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 25
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentStore;->makeActive(Landroidx/fragment/app/FragmentStateManager;)V

    .line 27
    iget-boolean v2, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    .line 30
    if-nez v2, :cond_3

    .line 32
    invoke-virtual {v1, p1}, Landroidx/fragment/app/FragmentStore;->addFragment(Landroidx/fragment/app/Fragment;)V

    .line 34
    const/4 v1, 0x0

    .line 37
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    .line 38
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 40
    if-nez v2, :cond_2

    .line 42
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 44
    :cond_2
    invoke-static {p1}, Landroidx/fragment/app/FragmentManager;->isMenuAvailable(Landroidx/fragment/app/Fragment;)Z

    .line 46
    move-result p1

    .line 49
    if-eqz p1, :cond_3

    .line 50
    const/4 p1, 0x1

    .line 52
    iput-boolean p1, p0, Landroidx/fragment/app/FragmentManager;->mNeedMenuInvalidate:Z

    .line 53
    :cond_3
    return-object v0
    .line 55
.end method

.method public final attachController(Landroidx/fragment/app/FragmentActivity$HostCallbacks;Landroidx/fragment/app/FragmentContainer;Landroidx/fragment/app/Fragment;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    .line 2
    if-nez v0, :cond_12

    .line 4
    iput-object p1, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    .line 6
    iput-object p2, p0, Landroidx/fragment/app/FragmentManager;->mContainer:Landroidx/fragment/app/FragmentContainer;

    .line 8
    iput-object p3, p0, Landroidx/fragment/app/FragmentManager;->mParent:Landroidx/fragment/app/Fragment;

    .line 10
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->mOnAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    if-eqz p3, :cond_0

    .line 14
    new-instance v0, Landroidx/fragment/app/FragmentManager$7;

    .line 16
    invoke-direct {v0, p3}, Landroidx/fragment/app/FragmentManager$7;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 18
    invoke-virtual {p2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    goto :goto_0

    .line 24
    :cond_0
    instance-of v0, p1, Landroidx/fragment/app/FragmentOnAttachListener;

    .line 25
    if-eqz v0, :cond_1

    .line 27
    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    :cond_1
    :goto_0
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->mParent:Landroidx/fragment/app/Fragment;

    .line 32
    if-eqz p2, :cond_2

    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->updateOnBackPressedCallbackEnabled()V

    .line 36
    :cond_2
    instance-of p2, p1, Landroidx/activity/OnBackPressedDispatcherOwner;

    .line 39
    if-eqz p2, :cond_4

    .line 41
    iget-object p2, p1, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->this$0:Landroidx/fragment/app/FragmentActivity;

    .line 43
    iget-object p2, p2, Landroidx/activity/ComponentActivity;->mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    .line 45
    iput-object p2, p0, Landroidx/fragment/app/FragmentManager;->mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    .line 47
    if-eqz p3, :cond_3

    .line 49
    move-object v0, p3

    .line 51
    goto :goto_1

    .line 52
    :cond_3
    move-object v0, p1

    .line 53
    :goto_1
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mOnBackPressedCallback:Landroidx/fragment/app/FragmentManager$1;

    .line 54
    invoke-virtual {p2, v0, v1}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentManager$1;)V

    .line 56
    :cond_4
    const/4 p2, 0x0

    .line 59
    if-eqz p3, :cond_6

    .line 60
    iget-object p1, p3, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 62
    iget-object p1, p1, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    .line 64
    iget-object v0, p1, Landroidx/fragment/app/FragmentManagerViewModel;->mChildNonConfigs:Ljava/util/HashMap;

    .line 66
    iget-object v1, p3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 68
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    move-result-object v1

    .line 73
    check-cast v1, Landroidx/fragment/app/FragmentManagerViewModel;

    .line 74
    if-nez v1, :cond_5

    .line 76
    new-instance v1, Landroidx/fragment/app/FragmentManagerViewModel;

    .line 78
    iget-boolean p1, p1, Landroidx/fragment/app/FragmentManagerViewModel;->mStateAutomaticallySaved:Z

    .line 80
    invoke-direct {v1, p1}, Landroidx/fragment/app/FragmentManagerViewModel;-><init>(Z)V

    .line 82
    iget-object p1, p3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 85
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_5
    iput-object v1, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    .line 90
    goto :goto_2

    .line 92
    :cond_6
    instance-of v0, p1, Landroidx/lifecycle/ViewModelStoreOwner;

    .line 93
    if-eqz v0, :cond_7

    .line 95
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    .line 97
    move-result-object p1

    .line 100
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    .line 101
    sget-object v1, Landroidx/fragment/app/FragmentManagerViewModel;->FACTORY:Landroidx/fragment/app/FragmentManagerViewModel$1;

    .line 103
    invoke-direct {v0, p1, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    .line 105
    const-class p1, Landroidx/fragment/app/FragmentManagerViewModel;

    .line 108
    invoke-virtual {v0, p1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 110
    move-result-object p1

    .line 113
    check-cast p1, Landroidx/fragment/app/FragmentManagerViewModel;

    .line 114
    iput-object p1, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    .line 116
    goto :goto_2

    .line 118
    :cond_7
    new-instance p1, Landroidx/fragment/app/FragmentManagerViewModel;

    .line 119
    invoke-direct {p1, p2}, Landroidx/fragment/app/FragmentManagerViewModel;-><init>(Z)V

    .line 121
    iput-object p1, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    .line 124
    :goto_2
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    .line 126
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mStateSaved:Z

    .line 128
    const/4 v1, 0x1

    .line 130
    if-nez v0, :cond_8

    .line 131
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mStopped:Z

    .line 133
    if-eqz v0, :cond_9

    .line 135
    :cond_8
    move p2, v1

    .line 137
    :cond_9
    iput-boolean p2, p1, Landroidx/fragment/app/FragmentManagerViewModel;->mIsStateSaved:Z

    .line 138
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 140
    iput-object p1, p2, Landroidx/fragment/app/FragmentStore;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    .line 142
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    .line 144
    instance-of p2, p1, Landroidx/savedstate/SavedStateRegistryOwner;

    .line 146
    if-eqz p2, :cond_a

    .line 148
    if-nez p3, :cond_a

    .line 150
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;

    .line 152
    move-result-object p1

    .line 155
    new-instance p2, Landroidx/fragment/app/FragmentManager$$ExternalSyntheticLambda1;

    .line 156
    invoke-direct {p2, p0}, Landroidx/fragment/app/FragmentManager$$ExternalSyntheticLambda1;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 158
    const-string v0, "android:support:fragments"

    .line 161
    invoke-virtual {p1, v0, p2}, Landroidx/savedstate/SavedStateRegistry;->registerSavedStateProvider(Ljava/lang/String;Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;)V

    .line 163
    invoke-virtual {p1, v0}, Landroidx/savedstate/SavedStateRegistry;->consumeRestoredStateForKey(Ljava/lang/String;)Landroid/os/Bundle;

    .line 166
    move-result-object p1

    .line 169
    if-eqz p1, :cond_a

    .line 170
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->restoreSaveStateInternal(Landroid/os/Parcelable;)V

    .line 172
    :cond_a
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    .line 175
    instance-of p2, p1, Landroidx/activity/result/ActivityResultRegistryOwner;

    .line 177
    if-eqz p2, :cond_c

    .line 179
    iget-object p1, p1, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->this$0:Landroidx/fragment/app/FragmentActivity;

    .line 181
    iget-object p1, p1, Landroidx/activity/ComponentActivity;->mActivityResultRegistry:Landroidx/activity/ComponentActivity$2;

    .line 183
    if-eqz p3, :cond_b

    .line 185
    new-instance p2, Ljava/lang/StringBuilder;

    .line 187
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    iget-object v0, p3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 192
    const-string v2, ":"

    .line 194
    invoke-static {p2, v0, v2}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 196
    move-result-object p2

    .line 199
    goto :goto_3

    .line 200
    :cond_b
    const-string p2, ""

    .line 201
    :goto_3
    const-string v0, "FragmentManager:"

    .line 203
    invoke-static {v0, p2}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 205
    move-result-object p2

    .line 208
    const-string v0, "StartActivityForResult"

    .line 209
    invoke-static {p2, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 211
    move-result-object v0

    .line 214
    new-instance v2, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    .line 215
    invoke-direct {v2}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    .line 217
    new-instance v3, Landroidx/fragment/app/FragmentManager$4;

    .line 220
    const/4 v4, 0x2

    .line 222
    invoke-direct {v3, p0, v4}, Landroidx/fragment/app/FragmentManager$4;-><init>(Landroidx/fragment/app/FragmentManager;I)V

    .line 223
    invoke-virtual {p1, v0, v2, v3}, Landroidx/activity/ComponentActivity$2;->register(Ljava/lang/String;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/fragment/app/FragmentManager$4;)Landroidx/activity/result/ActivityResultRegistry$3;

    .line 226
    move-result-object v0

    .line 229
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mStartActivityForResult:Landroidx/activity/result/ActivityResultRegistry$3;

    .line 230
    const-string v0, "StartIntentSenderForResult"

    .line 232
    invoke-static {p2, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 234
    move-result-object v0

    .line 237
    new-instance v2, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;

    .line 238
    invoke-direct {v2}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;-><init>()V

    .line 240
    new-instance v3, Landroidx/fragment/app/FragmentManager$4;

    .line 243
    const/4 v4, 0x3

    .line 245
    invoke-direct {v3, p0, v4}, Landroidx/fragment/app/FragmentManager$4;-><init>(Landroidx/fragment/app/FragmentManager;I)V

    .line 246
    invoke-virtual {p1, v0, v2, v3}, Landroidx/activity/ComponentActivity$2;->register(Ljava/lang/String;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/fragment/app/FragmentManager$4;)Landroidx/activity/result/ActivityResultRegistry$3;

    .line 249
    move-result-object v0

    .line 252
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mStartIntentSenderForResult:Landroidx/activity/result/ActivityResultRegistry$3;

    .line 253
    const-string v0, "RequestPermissions"

    .line 255
    invoke-static {p2, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 257
    move-result-object p2

    .line 260
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;

    .line 261
    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;-><init>()V

    .line 263
    new-instance v2, Landroidx/fragment/app/FragmentManager$4;

    .line 266
    invoke-direct {v2, p0, v1}, Landroidx/fragment/app/FragmentManager$4;-><init>(Landroidx/fragment/app/FragmentManager;I)V

    .line 268
    invoke-virtual {p1, p2, v0, v2}, Landroidx/activity/ComponentActivity$2;->register(Ljava/lang/String;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/fragment/app/FragmentManager$4;)Landroidx/activity/result/ActivityResultRegistry$3;

    .line 271
    move-result-object p1

    .line 274
    iput-object p1, p0, Landroidx/fragment/app/FragmentManager;->mRequestPermissions:Landroidx/activity/result/ActivityResultRegistry$3;

    .line 275
    :cond_c
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    .line 277
    instance-of p2, p1, Landroidx/core/content/OnConfigurationChangedProvider;

    .line 279
    if-eqz p2, :cond_d

    .line 281
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->mOnConfigurationChangedListener:Landroidx/fragment/app/FragmentManager$$ExternalSyntheticLambda0;

    .line 283
    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->addOnConfigurationChangedListener(Landroidx/core/util/Consumer;)V

    .line 285
    :cond_d
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    .line 288
    instance-of p2, p1, Landroidx/core/content/OnTrimMemoryProvider;

    .line 290
    if-eqz p2, :cond_e

    .line 292
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->mOnTrimMemoryListener:Landroidx/fragment/app/FragmentManager$$ExternalSyntheticLambda0;

    .line 294
    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->addOnTrimMemoryListener(Landroidx/fragment/app/FragmentManager$$ExternalSyntheticLambda0;)V

    .line 296
    :cond_e
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    .line 299
    instance-of p2, p1, Landroidx/core/app/OnMultiWindowModeChangedProvider;

    .line 301
    if-eqz p2, :cond_f

    .line 303
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->mOnMultiWindowModeChangedListener:Landroidx/fragment/app/FragmentManager$$ExternalSyntheticLambda0;

    .line 305
    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->addOnMultiWindowModeChangedListener(Landroidx/fragment/app/FragmentManager$$ExternalSyntheticLambda0;)V

    .line 307
    :cond_f
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    .line 310
    instance-of p2, p1, Landroidx/core/app/OnPictureInPictureModeChangedProvider;

    .line 312
    if-eqz p2, :cond_10

    .line 314
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->mOnPictureInPictureModeChangedListener:Landroidx/fragment/app/FragmentManager$$ExternalSyntheticLambda0;

    .line 316
    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->addOnPictureInPictureModeChangedListener(Landroidx/fragment/app/FragmentManager$$ExternalSyntheticLambda0;)V

    .line 318
    :cond_10
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    .line 321
    instance-of p2, p1, Landroidx/core/view/MenuHost;

    .line 323
    if-eqz p2, :cond_11

    .line 325
    if-nez p3, :cond_11

    .line 327
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->mMenuProvider:Landroidx/fragment/app/FragmentManager$2;

    .line 329
    invoke-virtual {p1, p0}, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->addMenuProvider(Landroidx/fragment/app/FragmentManager$2;)V

    .line 331
    :cond_11
    return-void

    .line 334
    :cond_12
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 335
    const-string p1, "Already attached"

    .line 337
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 339
    throw p0
    .line 342
.end method

.method public final attachFragment(Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 3
    move-result v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    :cond_0
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    .line 12
    if-eqz v1, :cond_2

    .line 14
    const/4 v1, 0x0

    .line 16
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    .line 17
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    .line 19
    if-nez v1, :cond_2

    .line 21
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 23
    invoke-virtual {v1, p1}, Landroidx/fragment/app/FragmentStore;->addFragment(Landroidx/fragment/app/Fragment;)V

    .line 25
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 28
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    .line 34
    :cond_1
    invoke-static {p1}, Landroidx/fragment/app/FragmentManager;->isMenuAvailable(Landroidx/fragment/app/Fragment;)Z

    .line 37
    move-result p1

    .line 40
    if-eqz p1, :cond_2

    .line 41
    const/4 p1, 0x1

    .line 43
    iput-boolean p1, p0, Landroidx/fragment/app/FragmentManager;->mNeedMenuInvalidate:Z

    .line 44
    :cond_2
    return-void
    .line 46
.end method

.method public final cleanupExec()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mExecutingActions:Z

    .line 3
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mTmpIsPop:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 7
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->mTmpRecords:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 12
    return-void
    .line 15
.end method

.method public final collectAllSpecialEffectsController()Ljava/util/Set;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 7
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentStore;->getActiveFragmentStateManagers()Ljava/util/List;

    .line 9
    move-result-object v1

    .line 12
    check-cast v1, Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object v1

    .line 18
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v2

    .line 22
    if-eqz v2, :cond_2

    .line 23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v2

    .line 28
    check-cast v2, Landroidx/fragment/app/FragmentStateManager;

    .line 29
    iget-object v2, v2, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 31
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 33
    if-eqz v2, :cond_0

    .line 35
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->getSpecialEffectsControllerFactory()Landroidx/fragment/app/FragmentManager$4;

    .line 37
    const v3, 0x7f0a08af    # @id/special_effects_controller_view_tag

    .line 40
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    .line 43
    move-result-object v4

    .line 46
    instance-of v5, v4, Landroidx/fragment/app/DefaultSpecialEffectsController;

    .line 47
    if-eqz v5, :cond_1

    .line 49
    check-cast v4, Landroidx/fragment/app/DefaultSpecialEffectsController;

    .line 51
    goto :goto_1

    .line 53
    :cond_1
    new-instance v4, Landroidx/fragment/app/DefaultSpecialEffectsController;

    .line 54
    invoke-direct {v4, v2}, Landroidx/fragment/app/DefaultSpecialEffectsController;-><init>(Landroid/view/ViewGroup;)V

    .line 56
    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 59
    :goto_1
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 62
    goto :goto_0

    .line 65
    :cond_2
    return-object v0
    .line 66
.end method

.method public final createOrGetFragmentStateManager(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentStateManager;
    .locals 3

    .line 1
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 2
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 4
    iget-object v2, v1, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/util/HashMap;

    .line 6
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Landroidx/fragment/app/FragmentStateManager;

    .line 12
    if-eqz v0, :cond_0

    .line 14
    return-object v0

    .line 16
    :cond_0
    new-instance v0, Landroidx/fragment/app/FragmentStateManager;

    .line 17
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mLifecycleCallbacksDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    .line 19
    invoke-direct {v0, v2, v1, p1}, Landroidx/fragment/app/FragmentStateManager;-><init>(Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;Landroidx/fragment/app/FragmentStore;Landroidx/fragment/app/Fragment;)V

    .line 21
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    .line 24
    iget-object p1, p1, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->mContext:Landroid/content/Context;

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 28
    move-result-object p1

    .line 31
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentStateManager;->restoreState(Ljava/lang/ClassLoader;)V

    .line 32
    iget p0, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    .line 35
    iput p0, v0, Landroidx/fragment/app/FragmentStateManager;->mFragmentManagerState:I

    .line 37
    return-object v0
    .line 39
.end method

.method public final detachFragment(Landroidx/fragment/app/Fragment;)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 3
    move-result v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    :cond_0
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    .line 12
    if-nez v1, :cond_3

    .line 14
    const/4 v1, 0x1

    .line 16
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    .line 17
    iget-boolean v2, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    .line 19
    if-eqz v2, :cond_3

    .line 21
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 23
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    .line 29
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 32
    iget-object v2, v0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    .line 34
    monitor-enter v2

    .line 36
    :try_start_0
    iget-object v0, v0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    .line 37
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 39
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    .line 44
    invoke-static {p1}, Landroidx/fragment/app/FragmentManager;->isMenuAvailable(Landroidx/fragment/app/Fragment;)Z

    .line 46
    move-result v0

    .line 49
    if-eqz v0, :cond_2

    .line 50
    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->mNeedMenuInvalidate:Z

    .line 52
    :cond_2
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->setVisibleRemovingFragment(Landroidx/fragment/app/Fragment;)V

    .line 54
    goto :goto_0

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    throw p0

    .line 60
    :cond_3
    :goto_0
    return-void
    .line 61
.end method

.method public final dispatchConfigurationChanged(ZLandroid/content/res/Configuration;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    .line 4
    instance-of v0, v0, Landroidx/core/content/OnConfigurationChangedProvider;

    .line 6
    if-nez v0, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 11
    const-string p2, "Do not call dispatchConfigurationChanged() on host. Host implements OnConfigurationChangedProvider and automatically dispatches configuration changes to fragments."

    .line 13
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->throwException(Ljava/lang/RuntimeException;)V

    .line 18
    const/4 p0, 0x0

    .line 21
    throw p0

    .line 22
    :cond_1
    :goto_0
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStore;->getFragments()Ljava/util/List;

    .line 25
    move-result-object p0

    .line 28
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    move-result-object p0

    .line 32
    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    move-result v0

    .line 36
    if-eqz v0, :cond_3

    .line 37
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    move-result-object v0

    .line 42
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 43
    if-eqz v0, :cond_2

    .line 45
    invoke-virtual {v0, p2}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 47
    if-eqz p1, :cond_2

    .line 50
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    .line 52
    const/4 v1, 0x1

    .line 54
    invoke-virtual {v0, v1, p2}, Landroidx/fragment/app/FragmentManager;->dispatchConfigurationChanged(ZLandroid/content/res/Configuration;)V

    .line 55
    goto :goto_1

    .line 58
    :cond_3
    return-void
    .line 59
.end method

.method public final dispatchContextItemSelected()Z
    .locals 3

    .line 1
    iget v0, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ge v0, v2, :cond_0

    .line 6
    return v1

    .line 8
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStore;->getFragments()Ljava/util/List;

    .line 11
    move-result-object p0

    .line 14
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object p0

    .line 18
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 28
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 29
    if-eqz v0, :cond_1

    .line 31
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->performContextItemSelected()Z

    .line 33
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    return v2

    .line 39
    :cond_2
    return v1
    .line 40
.end method

.method public final dispatchCreateOptionsMenu()Z
    .locals 7

    .line 1
    iget v0, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ge v0, v2, :cond_0

    .line 6
    return v1

    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 9
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->getFragments()Ljava/util/List;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object v0

    .line 18
    const/4 v3, 0x0

    .line 19
    move v4, v1

    .line 20
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v5

    .line 24
    if-eqz v5, :cond_4

    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v5

    .line 30
    check-cast v5, Landroidx/fragment/app/Fragment;

    .line 31
    if-eqz v5, :cond_1

    .line 33
    invoke-static {v5}, Landroidx/fragment/app/FragmentManager;->isParentMenuVisible(Landroidx/fragment/app/Fragment;)Z

    .line 35
    move-result v6

    .line 38
    if-eqz v6, :cond_1

    .line 39
    iget-boolean v6, v5, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 41
    if-nez v6, :cond_2

    .line 43
    iget-object v6, v5, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    .line 45
    invoke-virtual {v6}, Landroidx/fragment/app/FragmentManager;->dispatchCreateOptionsMenu()Z

    .line 47
    move-result v6

    .line 50
    or-int/2addr v6, v1

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    move v6, v1

    .line 53
    :goto_1
    if-eqz v6, :cond_1

    .line 54
    if-nez v3, :cond_3

    .line 56
    new-instance v3, Ljava/util/ArrayList;

    .line 58
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 60
    :cond_3
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    move v4, v2

    .line 66
    goto :goto_0

    .line 67
    :cond_4
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mCreatedMenus:Ljava/util/ArrayList;

    .line 68
    if-eqz v0, :cond_7

    .line 70
    :goto_2
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mCreatedMenus:Ljava/util/ArrayList;

    .line 72
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 74
    move-result v0

    .line 77
    if-ge v1, v0, :cond_7

    .line 78
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mCreatedMenus:Ljava/util/ArrayList;

    .line 80
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 82
    move-result-object v0

    .line 85
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 86
    if-eqz v3, :cond_5

    .line 88
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 90
    move-result v2

    .line 93
    if-nez v2, :cond_6

    .line 94
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 99
    goto :goto_2

    .line 101
    :cond_7
    iput-object v3, p0, Landroidx/fragment/app/FragmentManager;->mCreatedMenus:Ljava/util/ArrayList;

    .line 102
    return v4
    .line 104
.end method

.method public final dispatchDestroy()V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mDestroyed:Z

    .line 3
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->execPendingActions(Z)Z

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->collectAllSpecialEffectsController()Ljava/util/Set;

    .line 8
    move-result-object v1

    .line 11
    check-cast v1, Ljava/util/HashSet;

    .line 12
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object v1

    .line 17
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v2

    .line 27
    check-cast v2, Landroidx/fragment/app/DefaultSpecialEffectsController;

    .line 28
    invoke-virtual {v2}, Landroidx/fragment/app/DefaultSpecialEffectsController;->forceCompleteAllOperations()V

    .line 30
    goto :goto_0

    .line 33
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    .line 34
    instance-of v2, v1, Landroidx/lifecycle/ViewModelStoreOwner;

    .line 36
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 38
    if-eqz v2, :cond_1

    .line 40
    iget-object v0, v3, Landroidx/fragment/app/FragmentStore;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    .line 42
    iget-boolean v0, v0, Landroidx/fragment/app/FragmentManagerViewModel;->mHasBeenCleared:Z

    .line 44
    goto :goto_1

    .line 46
    :cond_1
    iget-object v1, v1, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->mContext:Landroid/content/Context;

    .line 47
    instance-of v2, v1, Landroid/app/Activity;

    .line 49
    if-eqz v2, :cond_2

    .line 51
    check-cast v1, Landroid/app/Activity;

    .line 53
    invoke-virtual {v1}, Landroid/app/Activity;->isChangingConfigurations()Z

    .line 55
    move-result v1

    .line 58
    xor-int/2addr v0, v1

    .line 59
    :cond_2
    :goto_1
    if-eqz v0, :cond_5

    .line 60
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStackStates:Ljava/util/Map;

    .line 62
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 64
    move-result-object v0

    .line 67
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 68
    move-result-object v0

    .line 71
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    move-result v1

    .line 75
    if-eqz v1, :cond_5

    .line 76
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    move-result-object v1

    .line 81
    check-cast v1, Landroidx/fragment/app/BackStackState;

    .line 82
    iget-object v1, v1, Landroidx/fragment/app/BackStackState;->mFragments:Ljava/util/List;

    .line 84
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 86
    move-result-object v1

    .line 89
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    move-result v2

    .line 93
    if-eqz v2, :cond_3

    .line 94
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    move-result-object v2

    .line 99
    check-cast v2, Ljava/lang/String;

    .line 100
    iget-object v4, v3, Landroidx/fragment/app/FragmentStore;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    .line 102
    const/4 v5, 0x3

    .line 104
    invoke-static {v5}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 105
    move-result v5

    .line 108
    if-eqz v5, :cond_4

    .line 109
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    new-instance v5, Ljava/lang/StringBuilder;

    .line 114
    const-string v6, "Clearing non-config state for saved state of Fragment "

    .line 116
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    move-result-object v5

    .line 127
    const-string v6, "FragmentManager"

    .line 128
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_4
    invoke-virtual {v4, v2}, Landroidx/fragment/app/FragmentManagerViewModel;->clearNonConfigStateInternal(Ljava/lang/String;)V

    .line 133
    goto :goto_2

    .line 136
    :cond_5
    const/4 v0, -0x1

    .line 137
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->dispatchStateChange(I)V

    .line 138
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    .line 141
    instance-of v1, v0, Landroidx/core/content/OnTrimMemoryProvider;

    .line 143
    if-eqz v1, :cond_6

    .line 145
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mOnTrimMemoryListener:Landroidx/fragment/app/FragmentManager$$ExternalSyntheticLambda0;

    .line 147
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->removeOnTrimMemoryListener(Landroidx/fragment/app/FragmentManager$$ExternalSyntheticLambda0;)V

    .line 149
    :cond_6
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    .line 152
    instance-of v1, v0, Landroidx/core/content/OnConfigurationChangedProvider;

    .line 154
    if-eqz v1, :cond_7

    .line 156
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mOnConfigurationChangedListener:Landroidx/fragment/app/FragmentManager$$ExternalSyntheticLambda0;

    .line 158
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->removeOnConfigurationChangedListener(Landroidx/core/util/Consumer;)V

    .line 160
    :cond_7
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    .line 163
    instance-of v1, v0, Landroidx/core/app/OnMultiWindowModeChangedProvider;

    .line 165
    if-eqz v1, :cond_8

    .line 167
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mOnMultiWindowModeChangedListener:Landroidx/fragment/app/FragmentManager$$ExternalSyntheticLambda0;

    .line 169
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->removeOnMultiWindowModeChangedListener(Landroidx/fragment/app/FragmentManager$$ExternalSyntheticLambda0;)V

    .line 171
    :cond_8
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    .line 174
    instance-of v1, v0, Landroidx/core/app/OnPictureInPictureModeChangedProvider;

    .line 176
    if-eqz v1, :cond_9

    .line 178
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mOnPictureInPictureModeChangedListener:Landroidx/fragment/app/FragmentManager$$ExternalSyntheticLambda0;

    .line 180
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->removeOnPictureInPictureModeChangedListener(Landroidx/fragment/app/FragmentManager$$ExternalSyntheticLambda0;)V

    .line 182
    :cond_9
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    .line 185
    instance-of v1, v0, Landroidx/core/view/MenuHost;

    .line 187
    if-eqz v1, :cond_a

    .line 189
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mParent:Landroidx/fragment/app/Fragment;

    .line 191
    if-nez v1, :cond_a

    .line 193
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mMenuProvider:Landroidx/fragment/app/FragmentManager$2;

    .line 195
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->removeMenuProvider(Landroidx/fragment/app/FragmentManager$2;)V

    .line 197
    :cond_a
    const/4 v0, 0x0

    .line 200
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    .line 201
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mContainer:Landroidx/fragment/app/FragmentContainer;

    .line 203
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mParent:Landroidx/fragment/app/Fragment;

    .line 205
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    .line 207
    if-eqz v1, :cond_c

    .line 209
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mOnBackPressedCallback:Landroidx/fragment/app/FragmentManager$1;

    .line 211
    iget-object v1, v1, Landroidx/fragment/app/FragmentManager$1;->cancellables:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 213
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 215
    move-result-object v1

    .line 218
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 219
    move-result v2

    .line 222
    if-eqz v2, :cond_b

    .line 223
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 225
    move-result-object v2

    .line 228
    check-cast v2, Landroidx/activity/Cancellable;

    .line 229
    invoke-interface {v2}, Landroidx/activity/Cancellable;->cancel()V

    .line 231
    goto :goto_3

    .line 234
    :cond_b
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    .line 235
    :cond_c
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mStartActivityForResult:Landroidx/activity/result/ActivityResultRegistry$3;

    .line 237
    if-eqz v0, :cond_16

    .line 239
    iget-object v1, v0, Landroidx/activity/result/ActivityResultRegistry$3;->this$0:Landroidx/activity/ComponentActivity$2;

    .line 241
    iget-object v2, v1, Landroidx/activity/ComponentActivity$2;->mLaunchedKeys:Ljava/util/ArrayList;

    .line 243
    iget-object v0, v0, Landroidx/activity/result/ActivityResultRegistry$3;->val$key:Ljava/lang/String;

    .line 245
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 247
    move-result v2

    .line 250
    if-nez v2, :cond_d

    .line 251
    iget-object v2, v1, Landroidx/activity/ComponentActivity$2;->mKeyToRc:Ljava/util/Map;

    .line 253
    check-cast v2, Ljava/util/HashMap;

    .line 255
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    move-result-object v2

    .line 260
    check-cast v2, Ljava/lang/Integer;

    .line 261
    if-eqz v2, :cond_d

    .line 263
    iget-object v3, v1, Landroidx/activity/ComponentActivity$2;->mRcToKey:Ljava/util/Map;

    .line 265
    check-cast v3, Ljava/util/HashMap;

    .line 267
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    :cond_d
    iget-object v2, v1, Landroidx/activity/ComponentActivity$2;->mKeyToCallback:Ljava/util/Map;

    .line 272
    check-cast v2, Ljava/util/HashMap;

    .line 274
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    iget-object v2, v1, Landroidx/activity/ComponentActivity$2;->mParsedPendingResults:Ljava/util/Map;

    .line 279
    check-cast v2, Ljava/util/HashMap;

    .line 281
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 283
    move-result v3

    .line 286
    const-string v4, "ActivityResultRegistry"

    .line 287
    const-string v5, "Dropping pending result for request "

    .line 289
    const-string v6, ": "

    .line 291
    if-eqz v3, :cond_e

    .line 293
    invoke-static {v5, v0, v6}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    move-result-object v3

    .line 298
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    move-result-object v7

    .line 302
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 306
    move-result-object v3

    .line 309
    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    :cond_e
    iget-object v2, v1, Landroidx/activity/ComponentActivity$2;->mPendingResults:Landroid/os/Bundle;

    .line 316
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 318
    move-result v3

    .line 321
    if-eqz v3, :cond_f

    .line 322
    invoke-static {v5, v0, v6}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    move-result-object v3

    .line 327
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 328
    move-result-object v7

    .line 331
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 332
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 335
    move-result-object v3

    .line 338
    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 342
    :cond_f
    iget-object v1, v1, Landroidx/activity/ComponentActivity$2;->mKeyToLifecycleContainers:Ljava/util/Map;

    .line 345
    check-cast v1, Ljava/util/HashMap;

    .line 347
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    move-result-object v0

    .line 352
    invoke-static {v0}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    .line 353
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mStartIntentSenderForResult:Landroidx/activity/result/ActivityResultRegistry$3;

    .line 356
    iget-object v1, v0, Landroidx/activity/result/ActivityResultRegistry$3;->this$0:Landroidx/activity/ComponentActivity$2;

    .line 358
    iget-object v2, v1, Landroidx/activity/ComponentActivity$2;->mLaunchedKeys:Ljava/util/ArrayList;

    .line 360
    iget-object v0, v0, Landroidx/activity/result/ActivityResultRegistry$3;->val$key:Ljava/lang/String;

    .line 362
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 364
    move-result v2

    .line 367
    if-nez v2, :cond_10

    .line 368
    iget-object v2, v1, Landroidx/activity/ComponentActivity$2;->mKeyToRc:Ljava/util/Map;

    .line 370
    check-cast v2, Ljava/util/HashMap;

    .line 372
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    move-result-object v2

    .line 377
    check-cast v2, Ljava/lang/Integer;

    .line 378
    if-eqz v2, :cond_10

    .line 380
    iget-object v3, v1, Landroidx/activity/ComponentActivity$2;->mRcToKey:Ljava/util/Map;

    .line 382
    check-cast v3, Ljava/util/HashMap;

    .line 384
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    :cond_10
    iget-object v2, v1, Landroidx/activity/ComponentActivity$2;->mKeyToCallback:Ljava/util/Map;

    .line 389
    check-cast v2, Ljava/util/HashMap;

    .line 391
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    iget-object v2, v1, Landroidx/activity/ComponentActivity$2;->mParsedPendingResults:Ljava/util/Map;

    .line 396
    check-cast v2, Ljava/util/HashMap;

    .line 398
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 400
    move-result v3

    .line 403
    if-eqz v3, :cond_11

    .line 404
    invoke-static {v5, v0, v6}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    move-result-object v3

    .line 409
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    move-result-object v7

    .line 413
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 414
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 417
    move-result-object v3

    .line 420
    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    :cond_11
    iget-object v2, v1, Landroidx/activity/ComponentActivity$2;->mPendingResults:Landroid/os/Bundle;

    .line 427
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 429
    move-result v3

    .line 432
    if-eqz v3, :cond_12

    .line 433
    invoke-static {v5, v0, v6}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    move-result-object v3

    .line 438
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 439
    move-result-object v7

    .line 442
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 443
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 446
    move-result-object v3

    .line 449
    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 453
    :cond_12
    iget-object v1, v1, Landroidx/activity/ComponentActivity$2;->mKeyToLifecycleContainers:Ljava/util/Map;

    .line 456
    check-cast v1, Ljava/util/HashMap;

    .line 458
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    move-result-object v0

    .line 463
    invoke-static {v0}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    .line 464
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->mRequestPermissions:Landroidx/activity/result/ActivityResultRegistry$3;

    .line 467
    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry$3;->this$0:Landroidx/activity/ComponentActivity$2;

    .line 469
    iget-object v1, v0, Landroidx/activity/ComponentActivity$2;->mLaunchedKeys:Ljava/util/ArrayList;

    .line 471
    iget-object p0, p0, Landroidx/activity/result/ActivityResultRegistry$3;->val$key:Ljava/lang/String;

    .line 473
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 475
    move-result v1

    .line 478
    if-nez v1, :cond_13

    .line 479
    iget-object v1, v0, Landroidx/activity/ComponentActivity$2;->mKeyToRc:Ljava/util/Map;

    .line 481
    check-cast v1, Ljava/util/HashMap;

    .line 483
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    move-result-object v1

    .line 488
    check-cast v1, Ljava/lang/Integer;

    .line 489
    if-eqz v1, :cond_13

    .line 491
    iget-object v2, v0, Landroidx/activity/ComponentActivity$2;->mRcToKey:Ljava/util/Map;

    .line 493
    check-cast v2, Ljava/util/HashMap;

    .line 495
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    :cond_13
    iget-object v1, v0, Landroidx/activity/ComponentActivity$2;->mKeyToCallback:Ljava/util/Map;

    .line 500
    check-cast v1, Ljava/util/HashMap;

    .line 502
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    iget-object v1, v0, Landroidx/activity/ComponentActivity$2;->mParsedPendingResults:Ljava/util/Map;

    .line 507
    check-cast v1, Ljava/util/HashMap;

    .line 509
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 511
    move-result v2

    .line 514
    if-eqz v2, :cond_14

    .line 515
    invoke-static {v5, p0, v6}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    move-result-object v2

    .line 520
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    move-result-object v3

    .line 524
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 525
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 528
    move-result-object v2

    .line 531
    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    :cond_14
    iget-object v1, v0, Landroidx/activity/ComponentActivity$2;->mPendingResults:Landroid/os/Bundle;

    .line 538
    invoke-virtual {v1, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 540
    move-result v2

    .line 543
    if-eqz v2, :cond_15

    .line 544
    invoke-static {v5, p0, v6}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    move-result-object v2

    .line 549
    invoke-virtual {v1, p0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 550
    move-result-object v3

    .line 553
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 554
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 557
    move-result-object v2

    .line 560
    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    invoke-virtual {v1, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 564
    :cond_15
    iget-object v0, v0, Landroidx/activity/ComponentActivity$2;->mKeyToLifecycleContainers:Ljava/util/Map;

    .line 567
    check-cast v0, Ljava/util/HashMap;

    .line 569
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    move-result-object p0

    .line 574
    invoke-static {p0}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    .line 575
    :cond_16
    return-void
    .line 578
.end method

.method public final dispatchLowMemory(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    .line 4
    instance-of v0, v0, Landroidx/core/content/OnTrimMemoryProvider;

    .line 6
    if-nez v0, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 11
    const-string v0, "Do not call dispatchLowMemory() on host. Host implements OnTrimMemoryProvider and automatically dispatches low memory callbacks to fragments."

    .line 13
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->throwException(Ljava/lang/RuntimeException;)V

    .line 18
    const/4 p0, 0x0

    .line 21
    throw p0

    .line 22
    :cond_1
    :goto_0
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStore;->getFragments()Ljava/util/List;

    .line 25
    move-result-object p0

    .line 28
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    move-result-object p0

    .line 32
    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    move-result v0

    .line 36
    if-eqz v0, :cond_3

    .line 37
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    move-result-object v0

    .line 42
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 43
    if-eqz v0, :cond_2

    .line 45
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->onLowMemory()V

    .line 47
    if-eqz p1, :cond_2

    .line 50
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    .line 52
    const/4 v1, 0x1

    .line 54
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->dispatchLowMemory(Z)V

    .line 55
    goto :goto_1

    .line 58
    :cond_3
    return-void
    .line 59
.end method

.method public final dispatchMultiWindowModeChanged(ZZ)V
    .locals 2

    .line 1
    if-eqz p2, :cond_1

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    .line 4
    instance-of v0, v0, Landroidx/core/app/OnMultiWindowModeChangedProvider;

    .line 6
    if-nez v0, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 11
    const-string p2, "Do not call dispatchMultiWindowModeChanged() on host. Host implements OnMultiWindowModeChangedProvider and automatically dispatches multi-window mode changes to fragments."

    .line 13
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->throwException(Ljava/lang/RuntimeException;)V

    .line 18
    const/4 p0, 0x0

    .line 21
    throw p0

    .line 22
    :cond_1
    :goto_0
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStore;->getFragments()Ljava/util/List;

    .line 25
    move-result-object p0

    .line 28
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    move-result-object p0

    .line 32
    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    move-result v0

    .line 36
    if-eqz v0, :cond_3

    .line 37
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    move-result-object v0

    .line 42
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 43
    if-eqz v0, :cond_2

    .line 45
    if-eqz p2, :cond_2

    .line 47
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    .line 49
    const/4 v1, 0x1

    .line 51
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentManager;->dispatchMultiWindowModeChanged(ZZ)V

    .line 52
    goto :goto_1

    .line 55
    :cond_3
    return-void
    .line 56
.end method

.method public final dispatchOnHiddenChanged()V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStore;->getActiveFragments()Ljava/util/List;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Ljava/util/ArrayList;

    .line 8
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object p0

    .line 13
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 23
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 24
    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    .line 28
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    .line 31
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->dispatchOnHiddenChanged()V

    .line 33
    goto :goto_0

    .line 36
    :cond_1
    return-void
    .line 37
.end method

.method public final dispatchOptionsItemSelected()Z
    .locals 4

    .line 1
    iget v0, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ge v0, v2, :cond_0

    .line 6
    return v1

    .line 8
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStore;->getFragments()Ljava/util/List;

    .line 11
    move-result-object p0

    .line 14
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object p0

    .line 18
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v0

    .line 22
    if-eqz v0, :cond_3

    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 28
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 29
    if-eqz v0, :cond_1

    .line 31
    iget-boolean v3, v0, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 33
    if-nez v3, :cond_2

    .line 35
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    .line 37
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->dispatchOptionsItemSelected()Z

    .line 39
    move-result v0

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    move v0, v1

    .line 44
    :goto_0
    if-eqz v0, :cond_1

    .line 45
    return v2

    .line 47
    :cond_3
    return v1
    .line 48
.end method

.method public final dispatchOptionsMenuClosed()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    .line 2
    const/4 v1, 0x1

    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    return-void

    .line 7
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStore;->getFragments()Ljava/util/List;

    .line 10
    move-result-object p0

    .line 13
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object p0

    .line 17
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v0

    .line 21
    if-eqz v0, :cond_2

    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 27
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 28
    if-eqz v0, :cond_1

    .line 30
    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 32
    if-nez v1, :cond_1

    .line 34
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    .line 36
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->dispatchOptionsMenuClosed()V

    .line 38
    goto :goto_0

    .line 41
    :cond_2
    return-void
    .line 42
.end method

.method public final dispatchParentPrimaryNavigationFragmentChanged(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 4
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findActiveFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 6
    move-result-object p0

    .line 9
    invoke-virtual {p1, p0}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p0

    .line 13
    if-eqz p0, :cond_1

    .line 14
    iget-object p0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    invoke-static {p1}, Landroidx/fragment/app/FragmentManager;->isPrimaryNavigation(Landroidx/fragment/app/Fragment;)Z

    .line 21
    move-result p0

    .line 24
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mIsPrimaryNavigationFragment:Ljava/lang/Boolean;

    .line 25
    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 29
    move-result v0

    .line 32
    if-eq v0, p0, :cond_1

    .line 33
    :cond_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 35
    move-result-object p0

    .line 38
    iput-object p0, p1, Landroidx/fragment/app/Fragment;->mIsPrimaryNavigationFragment:Ljava/lang/Boolean;

    .line 39
    iget-object p0, p1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    .line 41
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->updateOnBackPressedCallbackEnabled()V

    .line 43
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    .line 46
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->dispatchParentPrimaryNavigationFragmentChanged(Landroidx/fragment/app/Fragment;)V

    .line 48
    :cond_1
    return-void
    .line 51
.end method

.method public final dispatchPictureInPictureModeChanged(ZZ)V
    .locals 2

    .line 1
    if-eqz p2, :cond_1

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    .line 4
    instance-of v0, v0, Landroidx/core/app/OnPictureInPictureModeChangedProvider;

    .line 6
    if-nez v0, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 11
    const-string p2, "Do not call dispatchPictureInPictureModeChanged() on host. Host implements OnPictureInPictureModeChangedProvider and automatically dispatches picture-in-picture mode changes to fragments."

    .line 13
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->throwException(Ljava/lang/RuntimeException;)V

    .line 18
    const/4 p0, 0x0

    .line 21
    throw p0

    .line 22
    :cond_1
    :goto_0
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStore;->getFragments()Ljava/util/List;

    .line 25
    move-result-object p0

    .line 28
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    move-result-object p0

    .line 32
    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    move-result v0

    .line 36
    if-eqz v0, :cond_3

    .line 37
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    move-result-object v0

    .line 42
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 43
    if-eqz v0, :cond_2

    .line 45
    if-eqz p2, :cond_2

    .line 47
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    .line 49
    const/4 v1, 0x1

    .line 51
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentManager;->dispatchPictureInPictureModeChanged(ZZ)V

    .line 52
    goto :goto_1

    .line 55
    :cond_3
    return-void
    .line 56
.end method

.method public final dispatchPrepareOptionsMenu()Z
    .locals 5

    .line 1
    iget v0, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ge v0, v2, :cond_0

    .line 6
    return v1

    .line 8
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStore;->getFragments()Ljava/util/List;

    .line 11
    move-result-object p0

    .line 14
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object p0

    .line 18
    move v0, v1

    .line 19
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v3

    .line 23
    if-eqz v3, :cond_3

    .line 24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v3

    .line 29
    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 30
    if-eqz v3, :cond_1

    .line 32
    invoke-static {v3}, Landroidx/fragment/app/FragmentManager;->isParentMenuVisible(Landroidx/fragment/app/Fragment;)Z

    .line 34
    move-result v4

    .line 37
    if-eqz v4, :cond_1

    .line 38
    iget-boolean v4, v3, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 40
    if-nez v4, :cond_2

    .line 42
    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    .line 44
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager;->dispatchPrepareOptionsMenu()Z

    .line 46
    move-result v3

    .line 49
    or-int/2addr v3, v1

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    move v3, v1

    .line 52
    :goto_1
    if-eqz v3, :cond_1

    .line 53
    move v0, v2

    .line 55
    goto :goto_0

    .line 56
    :cond_3
    return v0
    .line 57
.end method

.method public final dispatchStateChange(I)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mExecutingActions:Z

    .line 4
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 6
    iget-object v2, v2, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/util/HashMap;

    .line 8
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 10
    move-result-object v2

    .line 13
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object v2

    .line 17
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v3

    .line 21
    if-eqz v3, :cond_1

    .line 22
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v3

    .line 27
    check-cast v3, Landroidx/fragment/app/FragmentStateManager;

    .line 28
    if-eqz v3, :cond_0

    .line 30
    iput p1, v3, Landroidx/fragment/app/FragmentStateManager;->mFragmentManagerState:I

    .line 32
    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/FragmentManager;->moveToState(IZ)V

    .line 35
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->collectAllSpecialEffectsController()Ljava/util/Set;

    .line 38
    move-result-object p1

    .line 41
    check-cast p1, Ljava/util/HashSet;

    .line 42
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 44
    move-result-object p1

    .line 47
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    move-result v2

    .line 51
    if-eqz v2, :cond_2

    .line 52
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    move-result-object v2

    .line 57
    check-cast v2, Landroidx/fragment/app/DefaultSpecialEffectsController;

    .line 58
    invoke-virtual {v2}, Landroidx/fragment/app/DefaultSpecialEffectsController;->forceCompleteAllOperations()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    goto :goto_1

    .line 63
    :cond_2
    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->mExecutingActions:Z

    .line 64
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->execPendingActions(Z)Z

    .line 66
    return-void

    .line 69
    :catchall_0
    move-exception p1

    .line 70
    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->mExecutingActions:Z

    .line 71
    throw p1
    .line 73
.end method

.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10

    .line 1
    const-string v0, "    "

    .line 2
    invoke-static {p1, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    const-string v3, "    "

    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v2

    .line 29
    iget-object v3, v1, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/util/HashMap;

    .line 30
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    .line 32
    move-result v4

    .line 35
    const/4 v5, 0x0

    .line 36
    if-nez v4, :cond_1c

    .line 37
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 39
    const-string v4, "Active Fragments:"

    .line 42
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 47
    move-result-object v3

    .line 50
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 51
    move-result-object v3

    .line 54
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    move-result v4

    .line 58
    if-eqz v4, :cond_1c

    .line 59
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    move-result-object v4

    .line 64
    check-cast v4, Landroidx/fragment/app/FragmentStateManager;

    .line 65
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 67
    if-eqz v4, :cond_1b

    .line 70
    iget-object v4, v4, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 72
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 74
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 80
    const-string v6, "mFragmentId=#"

    .line 83
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 85
    iget v6, v4, Landroidx/fragment/app/Fragment;->mFragmentId:I

    .line 88
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 90
    move-result-object v6

    .line 93
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 94
    const-string v6, " mContainerId=#"

    .line 97
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 99
    iget v6, v4, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 102
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 104
    move-result-object v6

    .line 107
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 108
    const-string v6, " mTag="

    .line 111
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 113
    iget-object v6, v4, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    .line 116
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 121
    const-string v6, "mState="

    .line 124
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 126
    iget v6, v4, Landroidx/fragment/app/Fragment;->mState:I

    .line 129
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 131
    const-string v6, " mWho="

    .line 134
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 136
    iget-object v6, v4, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 139
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 141
    const-string v6, " mBackStackNesting="

    .line 144
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 146
    iget v6, v4, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    .line 149
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 151
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 154
    const-string v6, "mAdded="

    .line 157
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 159
    iget-boolean v6, v4, Landroidx/fragment/app/Fragment;->mAdded:Z

    .line 162
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 164
    const-string v6, " mRemoving="

    .line 167
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 169
    iget-boolean v6, v4, Landroidx/fragment/app/Fragment;->mRemoving:Z

    .line 172
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 174
    const-string v6, " mFromLayout="

    .line 177
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 179
    iget-boolean v6, v4, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    .line 182
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 184
    const-string v6, " mInLayout="

    .line 187
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 189
    iget-boolean v6, v4, Landroidx/fragment/app/Fragment;->mInLayout:Z

    .line 192
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 194
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 197
    const-string v6, "mHidden="

    .line 200
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 202
    iget-boolean v6, v4, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 205
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 207
    const-string v6, " mDetached="

    .line 210
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 212
    iget-boolean v6, v4, Landroidx/fragment/app/Fragment;->mDetached:Z

    .line 215
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 217
    const-string v6, " mMenuVisible="

    .line 220
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 222
    iget-boolean v6, v4, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    .line 225
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 227
    const-string v6, " mHasMenu="

    .line 230
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 235
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 238
    const-string v6, "mRetainInstance="

    .line 241
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 243
    iget-boolean v6, v4, Landroidx/fragment/app/Fragment;->mRetainInstance:Z

    .line 246
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 248
    const-string v6, " mUserVisibleHint="

    .line 251
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 253
    iget-boolean v6, v4, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    .line 256
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 258
    iget-object v6, v4, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 261
    if-eqz v6, :cond_0

    .line 263
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 265
    const-string v6, "mFragmentManager="

    .line 268
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 270
    iget-object v6, v4, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 273
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 275
    :cond_0
    iget-object v6, v4, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    .line 278
    if-eqz v6, :cond_1

    .line 280
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 282
    const-string v6, "mHost="

    .line 285
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 287
    iget-object v6, v4, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    .line 290
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 292
    :cond_1
    iget-object v6, v4, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 295
    if-eqz v6, :cond_2

    .line 297
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 299
    const-string v6, "mParentFragment="

    .line 302
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 304
    iget-object v6, v4, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 307
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 309
    :cond_2
    iget-object v6, v4, Landroidx/fragment/app/Fragment;->mArguments:Landroid/os/Bundle;

    .line 312
    if-eqz v6, :cond_3

    .line 314
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 316
    const-string v6, "mArguments="

    .line 319
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 321
    iget-object v6, v4, Landroidx/fragment/app/Fragment;->mArguments:Landroid/os/Bundle;

    .line 324
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 326
    :cond_3
    iget-object v6, v4, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 329
    if-eqz v6, :cond_4

    .line 331
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 333
    const-string v6, "mSavedFragmentState="

    .line 336
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 338
    iget-object v6, v4, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 341
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 343
    :cond_4
    iget-object v6, v4, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 346
    if-eqz v6, :cond_5

    .line 348
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 350
    const-string v6, "mSavedViewState="

    .line 353
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 355
    iget-object v6, v4, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 358
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 360
    :cond_5
    iget-object v6, v4, Landroidx/fragment/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    .line 363
    if-eqz v6, :cond_6

    .line 365
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 367
    const-string v6, "mSavedViewRegistryState="

    .line 370
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 372
    iget-object v6, v4, Landroidx/fragment/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    .line 375
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 377
    :cond_6
    iget-object v6, v4, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    .line 380
    const/4 v7, 0x0

    .line 382
    if-eqz v6, :cond_7

    .line 383
    goto :goto_1

    .line 385
    :cond_7
    iget-object v6, v4, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 386
    if-eqz v6, :cond_8

    .line 388
    iget-object v8, v4, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 390
    if-eqz v8, :cond_8

    .line 392
    invoke-virtual {v6, v8}, Landroidx/fragment/app/FragmentManager;->findActiveFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 394
    move-result-object v6

    .line 397
    goto :goto_1

    .line 398
    :cond_8
    move-object v6, v7

    .line 399
    :goto_1
    if-eqz v6, :cond_9

    .line 400
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 402
    const-string v8, "mTarget="

    .line 405
    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 407
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 410
    const-string v6, " mTargetRequestCode="

    .line 413
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 415
    iget v6, v4, Landroidx/fragment/app/Fragment;->mTargetRequestCode:I

    .line 418
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 420
    :cond_9
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 423
    const-string v6, "mPopDirection="

    .line 426
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 428
    iget-object v6, v4, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    .line 431
    if-nez v6, :cond_a

    .line 433
    move v6, v5

    .line 435
    goto :goto_2

    .line 436
    :cond_a
    iget-boolean v6, v6, Landroidx/fragment/app/Fragment$AnimationInfo;->mIsPop:Z

    .line 437
    :goto_2
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 439
    iget-object v6, v4, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    .line 442
    if-nez v6, :cond_b

    .line 444
    move v6, v5

    .line 446
    goto :goto_3

    .line 447
    :cond_b
    iget v6, v6, Landroidx/fragment/app/Fragment$AnimationInfo;->mEnterAnim:I

    .line 448
    :goto_3
    if-eqz v6, :cond_d

    .line 450
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 452
    const-string v6, "getEnterAnim="

    .line 455
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 457
    iget-object v6, v4, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    .line 460
    if-nez v6, :cond_c

    .line 462
    move v6, v5

    .line 464
    goto :goto_4

    .line 465
    :cond_c
    iget v6, v6, Landroidx/fragment/app/Fragment$AnimationInfo;->mEnterAnim:I

    .line 466
    :goto_4
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 468
    :cond_d
    iget-object v6, v4, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    .line 471
    if-nez v6, :cond_e

    .line 473
    move v6, v5

    .line 475
    goto :goto_5

    .line 476
    :cond_e
    iget v6, v6, Landroidx/fragment/app/Fragment$AnimationInfo;->mExitAnim:I

    .line 477
    :goto_5
    if-eqz v6, :cond_10

    .line 479
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 481
    const-string v6, "getExitAnim="

    .line 484
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 486
    iget-object v6, v4, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    .line 489
    if-nez v6, :cond_f

    .line 491
    move v6, v5

    .line 493
    goto :goto_6

    .line 494
    :cond_f
    iget v6, v6, Landroidx/fragment/app/Fragment$AnimationInfo;->mExitAnim:I

    .line 495
    :goto_6
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 497
    :cond_10
    iget-object v6, v4, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    .line 500
    if-nez v6, :cond_11

    .line 502
    move v6, v5

    .line 504
    goto :goto_7

    .line 505
    :cond_11
    iget v6, v6, Landroidx/fragment/app/Fragment$AnimationInfo;->mPopEnterAnim:I

    .line 506
    :goto_7
    if-eqz v6, :cond_13

    .line 508
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 510
    const-string v6, "getPopEnterAnim="

    .line 513
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 515
    iget-object v6, v4, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    .line 518
    if-nez v6, :cond_12

    .line 520
    move v6, v5

    .line 522
    goto :goto_8

    .line 523
    :cond_12
    iget v6, v6, Landroidx/fragment/app/Fragment$AnimationInfo;->mPopEnterAnim:I

    .line 524
    :goto_8
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 526
    :cond_13
    iget-object v6, v4, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    .line 529
    if-nez v6, :cond_14

    .line 531
    move v6, v5

    .line 533
    goto :goto_9

    .line 534
    :cond_14
    iget v6, v6, Landroidx/fragment/app/Fragment$AnimationInfo;->mPopExitAnim:I

    .line 535
    :goto_9
    if-eqz v6, :cond_16

    .line 537
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 539
    const-string v6, "getPopExitAnim="

    .line 542
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 544
    iget-object v6, v4, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    .line 547
    if-nez v6, :cond_15

    .line 549
    move v6, v5

    .line 551
    goto :goto_a

    .line 552
    :cond_15
    iget v6, v6, Landroidx/fragment/app/Fragment$AnimationInfo;->mPopExitAnim:I

    .line 553
    :goto_a
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 555
    :cond_16
    iget-object v6, v4, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 558
    if-eqz v6, :cond_17

    .line 560
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 562
    const-string v6, "mContainer="

    .line 565
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 567
    iget-object v6, v4, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 570
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 572
    :cond_17
    iget-object v6, v4, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 575
    if-eqz v6, :cond_18

    .line 577
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 579
    const-string v6, "mView="

    .line 582
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 584
    iget-object v6, v4, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 587
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 589
    :cond_18
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 592
    move-result-object v6

    .line 595
    if-eqz v6, :cond_1a

    .line 596
    invoke-interface {v4}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    .line 598
    move-result-object v6

    .line 601
    new-instance v8, Landroidx/lifecycle/ViewModelProvider;

    .line 602
    sget-object v9, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->FACTORY:Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel$1;

    .line 604
    invoke-direct {v8, v6, v9}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    .line 606
    const-class v6, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    .line 609
    invoke-virtual {v8, v6}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 611
    move-result-object v6

    .line 614
    check-cast v6, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    .line 615
    iget-object v6, v6, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroidx/collection/SparseArrayCompat;

    .line 617
    iget v8, v6, Landroidx/collection/SparseArrayCompat;->size:I

    .line 619
    if-lez v8, :cond_1a

    .line 621
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 623
    const-string v8, "Loaders:"

    .line 626
    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 628
    iget v8, v6, Landroidx/collection/SparseArrayCompat;->size:I

    .line 631
    if-gtz v8, :cond_19

    .line 633
    goto :goto_b

    .line 635
    :cond_19
    iget-object p0, v6, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    .line 636
    aget-object p0, p0, v5

    .line 638
    invoke-static {p0}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    .line 640
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 643
    const-string p0, "  #"

    .line 646
    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 648
    iget-object p0, v6, Landroidx/collection/SparseArrayCompat;->keys:[I

    .line 651
    aget p0, p0, v5

    .line 653
    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->print(I)V

    .line 655
    const-string p0, ": "

    .line 658
    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 660
    throw v7

    .line 663
    :cond_1a
    :goto_b
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 664
    new-instance v6, Ljava/lang/StringBuilder;

    .line 667
    const-string v7, "Child "

    .line 669
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 671
    iget-object v7, v4, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    .line 674
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 676
    const-string v7, ":"

    .line 679
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 684
    move-result-object v6

    .line 687
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 688
    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    .line 691
    const-string v6, "  "

    .line 693
    invoke-static {v2, v6}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 695
    move-result-object v6

    .line 698
    invoke-virtual {v4, v6, p2, p3, p4}, Landroidx/fragment/app/FragmentManager;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 699
    goto/16 :goto_0

    .line 702
    :cond_1b
    const-string v4, "null"

    .line 704
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 706
    goto/16 :goto_0

    .line 709
    :cond_1c
    iget-object p2, v1, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    .line 711
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 713
    move-result p4

    .line 716
    if-lez p4, :cond_1d

    .line 717
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 719
    const-string v1, "Added Fragments:"

    .line 722
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 724
    move v1, v5

    .line 727
    :goto_c
    if-ge v1, p4, :cond_1d

    .line 728
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 730
    move-result-object v2

    .line 733
    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 734
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 736
    const-string v3, "  #"

    .line 739
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 741
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 744
    const-string v3, ": "

    .line 747
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 749
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    .line 752
    move-result-object v2

    .line 755
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 756
    add-int/lit8 v1, v1, 0x1

    .line 759
    goto :goto_c

    .line 761
    :cond_1d
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->mCreatedMenus:Ljava/util/ArrayList;

    .line 762
    if-eqz p2, :cond_1e

    .line 764
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 766
    move-result p2

    .line 769
    if-lez p2, :cond_1e

    .line 770
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 772
    const-string p4, "Fragments Created Menus:"

    .line 775
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 777
    move p4, v5

    .line 780
    :goto_d
    if-ge p4, p2, :cond_1e

    .line 781
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mCreatedMenus:Ljava/util/ArrayList;

    .line 783
    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 785
    move-result-object v1

    .line 788
    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 789
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 791
    const-string v2, "  #"

    .line 794
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 796
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    .line 799
    const-string v2, ": "

    .line 802
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 804
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    .line 807
    move-result-object v1

    .line 810
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 811
    add-int/lit8 p4, p4, 0x1

    .line 814
    goto :goto_d

    .line 816
    :cond_1e
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    .line 817
    if-eqz p2, :cond_1f

    .line 819
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 821
    move-result p2

    .line 824
    if-lez p2, :cond_1f

    .line 825
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 827
    const-string p4, "Back Stack:"

    .line 830
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 832
    move p4, v5

    .line 835
    :goto_e
    if-ge p4, p2, :cond_1f

    .line 836
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    .line 838
    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 840
    move-result-object v1

    .line 843
    check-cast v1, Landroidx/fragment/app/BackStackRecord;

    .line 844
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 846
    const-string v2, "  #"

    .line 849
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 851
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    .line 854
    const-string v2, ": "

    .line 857
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 859
    invoke-virtual {v1}, Landroidx/fragment/app/BackStackRecord;->toString()Ljava/lang/String;

    .line 862
    move-result-object v2

    .line 865
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 866
    const/4 v2, 0x1

    .line 869
    invoke-virtual {v1, v0, p3, v2}, Landroidx/fragment/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 870
    add-int/lit8 p4, p4, 0x1

    .line 873
    goto :goto_e

    .line 875
    :cond_1f
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 876
    new-instance p2, Ljava/lang/StringBuilder;

    .line 879
    const-string p4, "Back Stack Index: "

    .line 881
    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 883
    iget-object p4, p0, Landroidx/fragment/app/FragmentManager;->mBackStackIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 886
    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 888
    move-result p4

    .line 891
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 892
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 895
    move-result-object p2

    .line 898
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 899
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    .line 902
    monitor-enter p2

    .line 904
    :try_start_0
    iget-object p4, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    .line 905
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    .line 907
    move-result p4

    .line 910
    if-lez p4, :cond_20

    .line 911
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 913
    const-string v0, "Pending Actions:"

    .line 916
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 918
    :goto_f
    if-ge v5, p4, :cond_20

    .line 921
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    .line 923
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 925
    move-result-object v0

    .line 928
    check-cast v0, Landroidx/fragment/app/FragmentManager$OpGenerator;

    .line 929
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 931
    const-string v1, "  #"

    .line 934
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 936
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 939
    const-string v1, ": "

    .line 942
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 944
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 947
    add-int/lit8 v5, v5, 0x1

    .line 950
    goto :goto_f

    .line 952
    :cond_20
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 953
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 954
    const-string p2, "FragmentManager misc state:"

    .line 957
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 959
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 962
    const-string p2, "  mHost="

    .line 965
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 967
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    .line 970
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 972
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 975
    const-string p2, "  mContainer="

    .line 978
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 980
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->mContainer:Landroidx/fragment/app/FragmentContainer;

    .line 983
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 985
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->mParent:Landroidx/fragment/app/Fragment;

    .line 988
    if-eqz p2, :cond_21

    .line 990
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 992
    const-string p2, "  mParent="

    .line 995
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 997
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->mParent:Landroidx/fragment/app/Fragment;

    .line 1000
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1002
    :cond_21
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1005
    const-string p2, "  mCurState="

    .line 1008
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1010
    iget p2, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    .line 1013
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    .line 1015
    const-string p2, " mStateSaved="

    .line 1018
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1020
    iget-boolean p2, p0, Landroidx/fragment/app/FragmentManager;->mStateSaved:Z

    .line 1023
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1025
    const-string p2, " mStopped="

    .line 1028
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1030
    iget-boolean p2, p0, Landroidx/fragment/app/FragmentManager;->mStopped:Z

    .line 1033
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1035
    const-string p2, " mDestroyed="

    .line 1038
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1040
    iget-boolean p2, p0, Landroidx/fragment/app/FragmentManager;->mDestroyed:Z

    .line 1043
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1045
    iget-boolean p2, p0, Landroidx/fragment/app/FragmentManager;->mNeedMenuInvalidate:Z

    .line 1048
    if-eqz p2, :cond_22

    .line 1050
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1052
    const-string p1, "  mNeedMenuInvalidate="

    .line 1055
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1057
    iget-boolean p0, p0, Landroidx/fragment/app/FragmentManager;->mNeedMenuInvalidate:Z

    .line 1060
    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1062
    :cond_22
    return-void

    .line 1065
    :catchall_0
    move-exception p0

    .line 1066
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1067
    throw p0
    .line 1068
.end method

.method public final enqueueAction(Landroidx/fragment/app/FragmentManager$OpGenerator;Z)V
    .locals 2

    .line 1
    if-nez p2, :cond_5

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    .line 4
    if-nez v0, :cond_1

    .line 6
    iget-boolean p0, p0, Landroidx/fragment/app/FragmentManager;->mDestroyed:Z

    .line 8
    if-eqz p0, :cond_0

    .line 10
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 12
    const-string p1, "FragmentManager has been destroyed"

    .line 14
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 16
    throw p0

    .line 19
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 20
    const-string p1, "FragmentManager has not been attached to a host."

    .line 22
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    throw p0

    .line 27
    :cond_1
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mStateSaved:Z

    .line 28
    if-nez v0, :cond_3

    .line 30
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mStopped:Z

    .line 32
    if-eqz v0, :cond_2

    .line 34
    goto :goto_0

    .line 36
    :cond_2
    const/4 v0, 0x0

    .line 37
    goto :goto_1

    .line 38
    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 39
    :goto_1
    if-nez v0, :cond_4

    .line 40
    goto :goto_2

    .line 42
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 43
    const-string p1, "Can not perform this action after onSaveInstanceState"

    .line 45
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    throw p0

    .line 50
    :cond_5
    :goto_2
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    .line 51
    monitor-enter v0

    .line 53
    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    .line 54
    if-nez v1, :cond_7

    .line 56
    if-eqz p2, :cond_6

    .line 58
    monitor-exit v0

    .line 60
    return-void

    .line 61
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 62
    const-string p1, "Activity has been destroyed"

    .line 64
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 66
    throw p0

    .line 69
    :cond_7
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    .line 70
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->scheduleCommit()V

    .line 75
    monitor-exit v0

    .line 78
    return-void

    .line 79
    :catchall_0
    move-exception p0

    .line 80
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    throw p0
    .line 82
.end method

.method public final ensureExecReady(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mExecutingActions:Z

    .line 2
    if-nez v0, :cond_8

    .line 4
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    .line 6
    if-nez v0, :cond_1

    .line 8
    iget-boolean p0, p0, Landroidx/fragment/app/FragmentManager;->mDestroyed:Z

    .line 10
    if-eqz p0, :cond_0

    .line 12
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 14
    const-string p1, "FragmentManager has been destroyed"

    .line 16
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 18
    throw p0

    .line 21
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 22
    const-string p1, "FragmentManager has not been attached to a host."

    .line 24
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    throw p0

    .line 29
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 30
    move-result-object v0

    .line 33
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    .line 34
    iget-object v1, v1, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->mHandler:Landroid/os/Handler;

    .line 36
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 38
    move-result-object v1

    .line 41
    if-ne v0, v1, :cond_7

    .line 42
    if-nez p1, :cond_5

    .line 44
    iget-boolean p1, p0, Landroidx/fragment/app/FragmentManager;->mStateSaved:Z

    .line 46
    if-nez p1, :cond_3

    .line 48
    iget-boolean p1, p0, Landroidx/fragment/app/FragmentManager;->mStopped:Z

    .line 50
    if-eqz p1, :cond_2

    .line 52
    goto :goto_0

    .line 54
    :cond_2
    const/4 p1, 0x0

    .line 55
    goto :goto_1

    .line 56
    :cond_3
    :goto_0
    const/4 p1, 0x1

    .line 57
    :goto_1
    if-nez p1, :cond_4

    .line 58
    goto :goto_2

    .line 60
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 61
    const-string p1, "Can not perform this action after onSaveInstanceState"

    .line 63
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 65
    throw p0

    .line 68
    :cond_5
    :goto_2
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->mTmpRecords:Ljava/util/ArrayList;

    .line 69
    if-nez p1, :cond_6

    .line 71
    new-instance p1, Ljava/util/ArrayList;

    .line 73
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 75
    iput-object p1, p0, Landroidx/fragment/app/FragmentManager;->mTmpRecords:Ljava/util/ArrayList;

    .line 78
    new-instance p1, Ljava/util/ArrayList;

    .line 80
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 82
    iput-object p1, p0, Landroidx/fragment/app/FragmentManager;->mTmpIsPop:Ljava/util/ArrayList;

    .line 85
    :cond_6
    return-void

    .line 87
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 88
    const-string p1, "Must be called from main thread of fragment host"

    .line 90
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 92
    throw p0

    .line 95
    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 96
    const-string p1, "FragmentManager is already executing transactions"

    .line 98
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 100
    throw p0
    .line 103
.end method

.method public final execPendingActions(Z)Z
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->ensureExecReady(Z)V

    .line 2
    const/4 p1, 0x0

    .line 5
    move v0, p1

    .line 6
    :goto_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mTmpRecords:Ljava/util/ArrayList;

    .line 7
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mTmpIsPop:Ljava/util/ArrayList;

    .line 9
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    .line 11
    monitor-enter v3

    .line 13
    :try_start_0
    iget-object v4, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 16
    move-result v4

    .line 19
    if-eqz v4, :cond_0

    .line 20
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 22
    move v6, p1

    .line 23
    goto :goto_2

    .line 24
    :cond_0
    :try_start_1
    iget-object v4, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    .line 25
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 27
    move-result v4

    .line 30
    move v5, p1

    .line 31
    move v6, v5

    .line 32
    :goto_1
    if-ge v5, v4, :cond_1

    .line 33
    iget-object v7, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    .line 35
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    move-result-object v7

    .line 40
    check-cast v7, Landroidx/fragment/app/FragmentManager$OpGenerator;

    .line 41
    invoke-interface {v7, v1, v2}, Landroidx/fragment/app/FragmentManager$OpGenerator;->generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    .line 43
    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 46
    or-int/2addr v6, v7

    .line 47
    add-int/lit8 v5, v5, 0x1

    .line 48
    goto :goto_1

    .line 50
    :cond_1
    :try_start_2
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    .line 51
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 53
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    .line 56
    iget-object v1, v1, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->mHandler:Landroid/os/Handler;

    .line 58
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mExecCommit:Landroidx/fragment/app/FragmentManager$5;

    .line 60
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 62
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 65
    :goto_2
    if-eqz v6, :cond_2

    .line 66
    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mExecutingActions:Z

    .line 69
    :try_start_3
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mTmpRecords:Ljava/util/ArrayList;

    .line 71
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mTmpIsPop:Ljava/util/ArrayList;

    .line 73
    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/FragmentManager;->removeRedundantOperationsAndExecute(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 75
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->cleanupExec()V

    .line 78
    goto :goto_0

    .line 81
    :catchall_0
    move-exception p1

    .line 82
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->cleanupExec()V

    .line 83
    throw p1

    .line 86
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->updateOnBackPressedCallbackEnabled()V

    .line 87
    iget-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->mHavePendingDeferredStart:Z

    .line 90
    if-eqz v1, :cond_3

    .line 92
    iput-boolean p1, p0, Landroidx/fragment/app/FragmentManager;->mHavePendingDeferredStart:Z

    .line 94
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->startPendingDeferredFragments()V

    .line 96
    :cond_3
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 99
    iget-object p0, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/util/HashMap;

    .line 101
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 103
    move-result-object p0

    .line 106
    const/4 p1, 0x0

    .line 107
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 108
    move-result-object p1

    .line 111
    invoke-interface {p0, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 112
    return v0

    .line 115
    :catchall_1
    move-exception p1

    .line 116
    :try_start_4
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    .line 117
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 119
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    .line 122
    iget-object v0, v0, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->mHandler:Landroid/os/Handler;

    .line 124
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->mExecCommit:Landroidx/fragment/app/FragmentManager$5;

    .line 126
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 128
    throw p1

    .line 131
    :catchall_2
    move-exception p0

    .line 132
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 133
    throw p0
    .line 134
.end method

.method public final execSingleAction(Landroidx/fragment/app/FragmentManager$OpGenerator;Z)V
    .locals 1

    .line 1
    if-eqz p2, :cond_1

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mDestroyed:Z

    .line 8
    if-eqz v0, :cond_1

    .line 10
    :cond_0
    return-void

    .line 12
    :cond_1
    invoke-virtual {p0, p2}, Landroidx/fragment/app/FragmentManager;->ensureExecReady(Z)V

    .line 13
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->mTmpRecords:Ljava/util/ArrayList;

    .line 16
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mTmpIsPop:Ljava/util/ArrayList;

    .line 18
    invoke-interface {p1, p2, v0}, Landroidx/fragment/app/FragmentManager$OpGenerator;->generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    .line 20
    move-result p1

    .line 23
    if-eqz p1, :cond_2

    .line 24
    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Landroidx/fragment/app/FragmentManager;->mExecutingActions:Z

    .line 27
    :try_start_0
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->mTmpRecords:Ljava/util/ArrayList;

    .line 29
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->mTmpIsPop:Ljava/util/ArrayList;

    .line 31
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/FragmentManager;->removeRedundantOperationsAndExecute(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->cleanupExec()V

    .line 36
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->cleanupExec()V

    .line 41
    throw p1

    .line 44
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->updateOnBackPressedCallbackEnabled()V

    .line 45
    iget-boolean p1, p0, Landroidx/fragment/app/FragmentManager;->mHavePendingDeferredStart:Z

    .line 48
    if-eqz p1, :cond_3

    .line 50
    const/4 p1, 0x0

    .line 52
    iput-boolean p1, p0, Landroidx/fragment/app/FragmentManager;->mHavePendingDeferredStart:Z

    .line 53
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->startPendingDeferredFragments()V

    .line 55
    :cond_3
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 58
    iget-object p0, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/util/HashMap;

    .line 60
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 62
    move-result-object p0

    .line 65
    const/4 p1, 0x0

    .line 66
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 67
    move-result-object p1

    .line 70
    invoke-interface {p0, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 71
    return-void
    .line 74
.end method

.method public final executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    move-object/from16 v2, p2

    .line 6
    move/from16 v3, p3

    .line 8
    move/from16 v4, p4

    .line 10
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object v5

    .line 15
    check-cast v5, Landroidx/fragment/app/BackStackRecord;

    .line 16
    iget-boolean v5, v5, Landroidx/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    .line 18
    iget-object v6, v0, Landroidx/fragment/app/FragmentManager;->mTmpAddedFragments:Ljava/util/ArrayList;

    .line 20
    if-nez v6, :cond_0

    .line 22
    new-instance v6, Ljava/util/ArrayList;

    .line 24
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 26
    iput-object v6, v0, Landroidx/fragment/app/FragmentManager;->mTmpAddedFragments:Ljava/util/ArrayList;

    .line 29
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 32
    :goto_0
    iget-object v6, v0, Landroidx/fragment/app/FragmentManager;->mTmpAddedFragments:Ljava/util/ArrayList;

    .line 35
    iget-object v7, v0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 37
    invoke-virtual {v7}, Landroidx/fragment/app/FragmentStore;->getFragments()Ljava/util/List;

    .line 39
    move-result-object v8

    .line 42
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 43
    iget-object v6, v0, Landroidx/fragment/app/FragmentManager;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    .line 46
    move v9, v3

    .line 48
    const/4 v10, 0x0

    .line 49
    :goto_1
    const/4 v14, 0x1

    .line 50
    if-ge v9, v4, :cond_13

    .line 51
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    move-result-object v15

    .line 56
    check-cast v15, Landroidx/fragment/app/BackStackRecord;

    .line 57
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 59
    move-result-object v16

    .line 62
    check-cast v16, Ljava/lang/Boolean;

    .line 63
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    .line 65
    move-result v16

    .line 68
    if-nez v16, :cond_d

    .line 69
    iget-object v13, v0, Landroidx/fragment/app/FragmentManager;->mTmpAddedFragments:Ljava/util/ArrayList;

    .line 71
    const/4 v8, 0x0

    .line 73
    :goto_2
    iget-object v11, v15, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    .line 74
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 76
    move-result v12

    .line 79
    if-ge v8, v12, :cond_c

    .line 80
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 82
    move-result-object v12

    .line 85
    check-cast v12, Landroidx/fragment/app/FragmentTransaction$Op;

    .line 86
    iget v3, v12, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    .line 88
    if-eq v3, v14, :cond_b

    .line 90
    const/4 v14, 0x2

    .line 92
    if-eq v3, v14, :cond_5

    .line 93
    const/4 v14, 0x3

    .line 95
    if-eq v3, v14, :cond_3

    .line 96
    const/4 v14, 0x6

    .line 98
    if-eq v3, v14, :cond_3

    .line 99
    const/4 v14, 0x7

    .line 101
    if-eq v3, v14, :cond_2

    .line 102
    const/16 v14, 0x8

    .line 104
    if-eq v3, v14, :cond_1

    .line 106
    goto :goto_3

    .line 108
    :cond_1
    new-instance v3, Landroidx/fragment/app/FragmentTransaction$Op;

    .line 109
    const/4 v2, 0x0

    .line 111
    const/16 v14, 0x9

    .line 112
    invoke-direct {v3, v14, v6, v2}, Landroidx/fragment/app/FragmentTransaction$Op;-><init>(ILandroidx/fragment/app/Fragment;I)V

    .line 114
    invoke-virtual {v11, v8, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 117
    const/4 v2, 0x1

    .line 120
    iput-boolean v2, v12, Landroidx/fragment/app/FragmentTransaction$Op;->mFromExpandedOp:Z

    .line 121
    add-int/lit8 v8, v8, 0x1

    .line 123
    iget-object v6, v12, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    .line 125
    goto :goto_3

    .line 127
    :cond_2
    move-object/from16 v20, v7

    .line 128
    const/4 v1, 0x1

    .line 130
    goto/16 :goto_7

    .line 131
    :cond_3
    iget-object v2, v12, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    .line 133
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 135
    iget-object v2, v12, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    .line 138
    if-ne v2, v6, :cond_4

    .line 140
    new-instance v3, Landroidx/fragment/app/FragmentTransaction$Op;

    .line 142
    const/16 v6, 0x9

    .line 144
    invoke-direct {v3, v6, v2}, Landroidx/fragment/app/FragmentTransaction$Op;-><init>(ILandroidx/fragment/app/Fragment;)V

    .line 146
    invoke-virtual {v11, v8, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 149
    add-int/lit8 v8, v8, 0x1

    .line 152
    move-object/from16 v20, v7

    .line 154
    const/4 v1, 0x1

    .line 156
    const/4 v6, 0x0

    .line 157
    goto/16 :goto_8

    .line 158
    :cond_4
    :goto_3
    move-object/from16 v20, v7

    .line 160
    const/4 v1, 0x1

    .line 162
    goto/16 :goto_8

    .line 163
    :cond_5
    iget-object v2, v12, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    .line 165
    iget v3, v2, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 167
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 169
    move-result v14

    .line 172
    const/16 v16, -0x1

    .line 173
    add-int/lit8 v14, v14, -0x1

    .line 175
    const/16 v18, 0x0

    .line 177
    :goto_4
    if-ltz v14, :cond_9

    .line 179
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 181
    move-result-object v19

    .line 184
    move-object/from16 v20, v7

    .line 185
    move-object/from16 v7, v19

    .line 187
    check-cast v7, Landroidx/fragment/app/Fragment;

    .line 189
    iget v1, v7, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 191
    if-ne v1, v3, :cond_8

    .line 193
    if-ne v7, v2, :cond_6

    .line 195
    move/from16 v17, v3

    .line 197
    const/4 v1, 0x1

    .line 199
    const/16 v18, 0x1

    .line 200
    goto :goto_6

    .line 202
    :cond_6
    if-ne v7, v6, :cond_7

    .line 203
    new-instance v1, Landroidx/fragment/app/FragmentTransaction$Op;

    .line 205
    move/from16 v17, v3

    .line 207
    const/4 v3, 0x0

    .line 209
    const/16 v6, 0x9

    .line 210
    invoke-direct {v1, v6, v7, v3}, Landroidx/fragment/app/FragmentTransaction$Op;-><init>(ILandroidx/fragment/app/Fragment;I)V

    .line 212
    invoke-virtual {v11, v8, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 215
    add-int/lit8 v8, v8, 0x1

    .line 218
    const/4 v6, 0x0

    .line 220
    goto :goto_5

    .line 221
    :cond_7
    move/from16 v17, v3

    .line 222
    const/16 v1, 0x9

    .line 224
    const/4 v3, 0x0

    .line 226
    :goto_5
    new-instance v1, Landroidx/fragment/app/FragmentTransaction$Op;

    .line 227
    move-object/from16 v21, v6

    .line 229
    const/4 v6, 0x3

    .line 231
    invoke-direct {v1, v6, v7, v3}, Landroidx/fragment/app/FragmentTransaction$Op;-><init>(ILandroidx/fragment/app/Fragment;I)V

    .line 232
    iget v3, v12, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    .line 235
    iput v3, v1, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    .line 237
    iget v3, v12, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    .line 239
    iput v3, v1, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    .line 241
    iget v3, v12, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    .line 243
    iput v3, v1, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    .line 245
    iget v3, v12, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    .line 247
    iput v3, v1, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    .line 249
    invoke-virtual {v11, v8, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 251
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 254
    const/4 v1, 0x1

    .line 257
    add-int/2addr v8, v1

    .line 258
    move-object/from16 v6, v21

    .line 259
    goto :goto_6

    .line 261
    :cond_8
    move/from16 v17, v3

    .line 262
    const/4 v1, 0x1

    .line 264
    :goto_6
    add-int/lit8 v14, v14, -0x1

    .line 265
    move-object/from16 v1, p1

    .line 267
    move/from16 v3, v17

    .line 269
    move-object/from16 v7, v20

    .line 271
    goto :goto_4

    .line 273
    :cond_9
    move-object/from16 v20, v7

    .line 274
    const/4 v1, 0x1

    .line 276
    if-eqz v18, :cond_a

    .line 277
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 279
    add-int/lit8 v8, v8, -0x1

    .line 282
    goto :goto_8

    .line 284
    :cond_a
    iput v1, v12, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    .line 285
    iput-boolean v1, v12, Landroidx/fragment/app/FragmentTransaction$Op;->mFromExpandedOp:Z

    .line 287
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    goto :goto_8

    .line 292
    :cond_b
    move-object/from16 v20, v7

    .line 293
    move v1, v14

    .line 295
    :goto_7
    iget-object v2, v12, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    .line 296
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    :goto_8
    add-int/2addr v8, v1

    .line 301
    move-object/from16 v2, p2

    .line 302
    move/from16 v3, p3

    .line 304
    move v14, v1

    .line 306
    move-object/from16 v7, v20

    .line 307
    move-object/from16 v1, p1

    .line 309
    goto/16 :goto_2

    .line 311
    :cond_c
    move-object/from16 v20, v7

    .line 313
    goto :goto_b

    .line 315
    :cond_d
    move-object/from16 v20, v7

    .line 316
    move v1, v14

    .line 318
    iget-object v2, v0, Landroidx/fragment/app/FragmentManager;->mTmpAddedFragments:Ljava/util/ArrayList;

    .line 319
    iget-object v3, v15, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    .line 321
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 323
    move-result v7

    .line 326
    sub-int/2addr v7, v1

    .line 327
    :goto_9
    if-ltz v7, :cond_10

    .line 328
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 330
    move-result-object v8

    .line 333
    check-cast v8, Landroidx/fragment/app/FragmentTransaction$Op;

    .line 334
    iget v11, v8, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    .line 336
    if-eq v11, v1, :cond_f

    .line 338
    const/4 v1, 0x3

    .line 340
    if-eq v11, v1, :cond_e

    .line 341
    packed-switch v11, :pswitch_data_0

    .line 343
    goto :goto_a

    .line 346
    :pswitch_0
    iget-object v11, v8, Landroidx/fragment/app/FragmentTransaction$Op;->mOldMaxState:Landroidx/lifecycle/Lifecycle$State;

    .line 347
    iput-object v11, v8, Landroidx/fragment/app/FragmentTransaction$Op;->mCurrentMaxState:Landroidx/lifecycle/Lifecycle$State;

    .line 349
    goto :goto_a

    .line 351
    :pswitch_1
    iget-object v6, v8, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    .line 352
    goto :goto_a

    .line 354
    :pswitch_2
    const/4 v6, 0x0

    .line 355
    goto :goto_a

    .line 356
    :cond_e
    :pswitch_3
    iget-object v8, v8, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    .line 357
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    goto :goto_a

    .line 362
    :cond_f
    const/4 v1, 0x3

    .line 363
    :pswitch_4
    iget-object v8, v8, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    .line 364
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 366
    :goto_a
    add-int/lit8 v7, v7, -0x1

    .line 369
    const/4 v1, 0x1

    .line 371
    goto :goto_9

    .line 372
    :cond_10
    :goto_b
    if-nez v10, :cond_12

    .line 373
    iget-boolean v1, v15, Landroidx/fragment/app/BackStackRecord;->mAddToBackStack:Z

    .line 375
    if-eqz v1, :cond_11

    .line 377
    goto :goto_c

    .line 379
    :cond_11
    const/4 v10, 0x0

    .line 380
    goto :goto_d

    .line 381
    :cond_12
    :goto_c
    const/4 v10, 0x1

    .line 382
    :goto_d
    add-int/lit8 v9, v9, 0x1

    .line 383
    move-object/from16 v1, p1

    .line 385
    move-object/from16 v2, p2

    .line 387
    move/from16 v3, p3

    .line 389
    move-object/from16 v7, v20

    .line 391
    goto/16 :goto_1

    .line 393
    :cond_13
    move-object/from16 v20, v7

    .line 395
    iget-object v1, v0, Landroidx/fragment/app/FragmentManager;->mTmpAddedFragments:Ljava/util/ArrayList;

    .line 397
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 399
    if-nez v5, :cond_16

    .line 402
    iget v1, v0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    .line 404
    const/4 v2, 0x1

    .line 406
    if-lt v1, v2, :cond_16

    .line 407
    move/from16 v1, p3

    .line 409
    :goto_e
    if-ge v1, v4, :cond_16

    .line 411
    move-object/from16 v2, p1

    .line 413
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 415
    move-result-object v3

    .line 418
    check-cast v3, Landroidx/fragment/app/BackStackRecord;

    .line 419
    iget-object v3, v3, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    .line 421
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 423
    move-result-object v3

    .line 426
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 427
    move-result v5

    .line 430
    if-eqz v5, :cond_15

    .line 431
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 433
    move-result-object v5

    .line 436
    check-cast v5, Landroidx/fragment/app/FragmentTransaction$Op;

    .line 437
    iget-object v5, v5, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    .line 439
    if-eqz v5, :cond_14

    .line 441
    iget-object v6, v5, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 443
    if-eqz v6, :cond_14

    .line 445
    invoke-virtual {v0, v5}, Landroidx/fragment/app/FragmentManager;->createOrGetFragmentStateManager(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentStateManager;

    .line 447
    move-result-object v5

    .line 450
    move-object/from16 v6, v20

    .line 451
    invoke-virtual {v6, v5}, Landroidx/fragment/app/FragmentStore;->makeActive(Landroidx/fragment/app/FragmentStateManager;)V

    .line 453
    goto :goto_10

    .line 456
    :cond_14
    move-object/from16 v6, v20

    .line 457
    :goto_10
    move-object/from16 v20, v6

    .line 459
    goto :goto_f

    .line 461
    :cond_15
    move-object/from16 v6, v20

    .line 462
    add-int/lit8 v1, v1, 0x1

    .line 464
    goto :goto_e

    .line 466
    :cond_16
    move-object/from16 v2, p1

    .line 467
    move/from16 v1, p3

    .line 469
    :goto_11
    if-ge v1, v4, :cond_28

    .line 471
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 473
    move-result-object v3

    .line 476
    check-cast v3, Landroidx/fragment/app/BackStackRecord;

    .line 477
    move-object/from16 v5, p2

    .line 479
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 481
    move-result-object v6

    .line 484
    check-cast v6, Ljava/lang/Boolean;

    .line 485
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 487
    move-result v6

    .line 490
    const-string v7, "Unknown cmd: "

    .line 491
    if-eqz v6, :cond_20

    .line 493
    const/4 v6, -0x1

    .line 495
    invoke-virtual {v3, v6}, Landroidx/fragment/app/BackStackRecord;->bumpBackStackNesting(I)V

    .line 496
    iget-object v6, v3, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    .line 499
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 501
    move-result v8

    .line 504
    const/4 v9, 0x1

    .line 505
    sub-int/2addr v8, v9

    .line 506
    :goto_12
    if-ltz v8, :cond_27

    .line 507
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 509
    move-result-object v9

    .line 512
    check-cast v9, Landroidx/fragment/app/FragmentTransaction$Op;

    .line 513
    iget-object v10, v9, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    .line 515
    if-eqz v10, :cond_1c

    .line 517
    iget-object v11, v10, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    .line 519
    if-nez v11, :cond_17

    .line 521
    goto :goto_13

    .line 523
    :cond_17
    invoke-virtual {v10}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    .line 524
    move-result-object v11

    .line 527
    const/4 v12, 0x1

    .line 528
    iput-boolean v12, v11, Landroidx/fragment/app/Fragment$AnimationInfo;->mIsPop:Z

    .line 529
    :goto_13
    iget v11, v3, Landroidx/fragment/app/BackStackRecord;->mTransition:I

    .line 531
    const/16 v12, 0x2002

    .line 533
    const/16 v13, 0x1001

    .line 535
    if-eq v11, v13, :cond_1a

    .line 537
    if-eq v11, v12, :cond_19

    .line 539
    const/16 v12, 0x2005

    .line 541
    const/16 v13, 0x1004

    .line 543
    if-eq v11, v12, :cond_19

    .line 545
    const/16 v14, 0x1003

    .line 547
    if-eq v11, v14, :cond_18

    .line 549
    if-eq v11, v13, :cond_1a

    .line 551
    const/4 v12, 0x0

    .line 553
    goto :goto_14

    .line 554
    :cond_18
    move v12, v14

    .line 555
    goto :goto_14

    .line 556
    :cond_19
    move v12, v13

    .line 557
    :cond_1a
    :goto_14
    iget-object v11, v10, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    .line 558
    if-nez v11, :cond_1b

    .line 560
    if-nez v12, :cond_1b

    .line 562
    goto :goto_15

    .line 564
    :cond_1b
    invoke-virtual {v10}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    .line 565
    iget-object v11, v10, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    .line 568
    iput v12, v11, Landroidx/fragment/app/Fragment$AnimationInfo;->mNextTransition:I

    .line 570
    :goto_15
    iget-object v11, v3, Landroidx/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 572
    iget-object v12, v3, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 574
    invoke-virtual {v10}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    .line 576
    iget-object v13, v10, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    .line 579
    iput-object v11, v13, Landroidx/fragment/app/Fragment$AnimationInfo;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 581
    iput-object v12, v13, Landroidx/fragment/app/Fragment$AnimationInfo;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 583
    :cond_1c
    iget v11, v9, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    .line 585
    iget-object v12, v3, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    .line 587
    packed-switch v11, :pswitch_data_1

    .line 589
    :pswitch_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 592
    new-instance v1, Ljava/lang/StringBuilder;

    .line 594
    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 596
    iget v2, v9, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    .line 599
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 601
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 604
    move-result-object v1

    .line 607
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 608
    throw v0

    .line 611
    :pswitch_6
    iget-object v9, v9, Landroidx/fragment/app/FragmentTransaction$Op;->mOldMaxState:Landroidx/lifecycle/Lifecycle$State;

    .line 612
    invoke-virtual {v12, v10, v9}, Landroidx/fragment/app/FragmentManager;->setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)V

    .line 614
    goto/16 :goto_16

    .line 617
    :pswitch_7
    invoke-virtual {v12, v10}, Landroidx/fragment/app/FragmentManager;->setPrimaryNavigationFragment(Landroidx/fragment/app/Fragment;)V

    .line 619
    goto/16 :goto_16

    .line 622
    :pswitch_8
    const/4 v9, 0x0

    .line 624
    invoke-virtual {v12, v9}, Landroidx/fragment/app/FragmentManager;->setPrimaryNavigationFragment(Landroidx/fragment/app/Fragment;)V

    .line 625
    goto/16 :goto_16

    .line 628
    :pswitch_9
    iget v11, v9, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    .line 630
    iget v13, v9, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    .line 632
    iget v14, v9, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    .line 634
    iget v9, v9, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    .line 636
    invoke-virtual {v10, v11, v13, v14, v9}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    .line 638
    const/4 v9, 0x1

    .line 641
    invoke-virtual {v12, v10, v9}, Landroidx/fragment/app/FragmentManager;->setExitAnimationOrder(Landroidx/fragment/app/Fragment;Z)V

    .line 642
    invoke-virtual {v12, v10}, Landroidx/fragment/app/FragmentManager;->detachFragment(Landroidx/fragment/app/Fragment;)V

    .line 645
    goto/16 :goto_16

    .line 648
    :pswitch_a
    iget v11, v9, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    .line 650
    iget v13, v9, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    .line 652
    iget v14, v9, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    .line 654
    iget v9, v9, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    .line 656
    invoke-virtual {v10, v11, v13, v14, v9}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    .line 658
    invoke-virtual {v12, v10}, Landroidx/fragment/app/FragmentManager;->attachFragment(Landroidx/fragment/app/Fragment;)V

    .line 661
    goto :goto_16

    .line 664
    :pswitch_b
    iget v11, v9, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    .line 665
    iget v13, v9, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    .line 667
    iget v14, v9, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    .line 669
    iget v9, v9, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    .line 671
    invoke-virtual {v10, v11, v13, v14, v9}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    .line 673
    const/4 v9, 0x1

    .line 676
    invoke-virtual {v12, v10, v9}, Landroidx/fragment/app/FragmentManager;->setExitAnimationOrder(Landroidx/fragment/app/Fragment;Z)V

    .line 677
    const/4 v11, 0x2

    .line 680
    invoke-static {v11}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 681
    move-result v13

    .line 684
    if-eqz v13, :cond_1d

    .line 685
    invoke-static {v10}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 687
    :cond_1d
    iget-boolean v11, v10, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 690
    if-nez v11, :cond_1f

    .line 692
    iput-boolean v9, v10, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 694
    iget-boolean v11, v10, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 696
    xor-int/2addr v11, v9

    .line 698
    iput-boolean v11, v10, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 699
    invoke-virtual {v12, v10}, Landroidx/fragment/app/FragmentManager;->setVisibleRemovingFragment(Landroidx/fragment/app/Fragment;)V

    .line 701
    goto :goto_16

    .line 704
    :pswitch_c
    iget v11, v9, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    .line 705
    iget v13, v9, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    .line 707
    iget v14, v9, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    .line 709
    iget v9, v9, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    .line 711
    invoke-virtual {v10, v11, v13, v14, v9}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    .line 713
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 716
    const/4 v9, 0x2

    .line 719
    invoke-static {v9}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 720
    move-result v11

    .line 723
    if-eqz v11, :cond_1e

    .line 724
    invoke-static {v10}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 726
    :cond_1e
    iget-boolean v9, v10, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 729
    if-eqz v9, :cond_1f

    .line 731
    const/4 v9, 0x0

    .line 733
    iput-boolean v9, v10, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 734
    iget-boolean v9, v10, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 736
    const/4 v11, 0x1

    .line 738
    xor-int/2addr v9, v11

    .line 739
    iput-boolean v9, v10, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 740
    goto :goto_16

    .line 742
    :pswitch_d
    iget v11, v9, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    .line 743
    iget v13, v9, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    .line 745
    iget v14, v9, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    .line 747
    iget v9, v9, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    .line 749
    invoke-virtual {v10, v11, v13, v14, v9}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    .line 751
    invoke-virtual {v12, v10}, Landroidx/fragment/app/FragmentManager;->addFragment(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentStateManager;

    .line 754
    goto :goto_16

    .line 757
    :pswitch_e
    iget v11, v9, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    .line 758
    iget v13, v9, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    .line 760
    iget v14, v9, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    .line 762
    iget v9, v9, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    .line 764
    invoke-virtual {v10, v11, v13, v14, v9}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    .line 766
    const/4 v9, 0x1

    .line 769
    invoke-virtual {v12, v10, v9}, Landroidx/fragment/app/FragmentManager;->setExitAnimationOrder(Landroidx/fragment/app/Fragment;Z)V

    .line 770
    invoke-virtual {v12, v10}, Landroidx/fragment/app/FragmentManager;->removeFragment(Landroidx/fragment/app/Fragment;)V

    .line 773
    :cond_1f
    :goto_16
    add-int/lit8 v8, v8, -0x1

    .line 776
    goto/16 :goto_12

    .line 778
    :cond_20
    const/4 v6, 0x1

    .line 780
    invoke-virtual {v3, v6}, Landroidx/fragment/app/BackStackRecord;->bumpBackStackNesting(I)V

    .line 781
    iget-object v6, v3, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    .line 784
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 786
    move-result v8

    .line 789
    const/4 v9, 0x0

    .line 790
    :goto_17
    if-ge v9, v8, :cond_27

    .line 791
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 793
    move-result-object v10

    .line 796
    check-cast v10, Landroidx/fragment/app/FragmentTransaction$Op;

    .line 797
    iget-object v11, v10, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    .line 799
    if-eqz v11, :cond_23

    .line 801
    iget-object v12, v11, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    .line 803
    if-nez v12, :cond_21

    .line 805
    goto :goto_18

    .line 807
    :cond_21
    invoke-virtual {v11}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    .line 808
    move-result-object v12

    .line 811
    const/4 v13, 0x0

    .line 812
    iput-boolean v13, v12, Landroidx/fragment/app/Fragment$AnimationInfo;->mIsPop:Z

    .line 813
    :goto_18
    iget v12, v3, Landroidx/fragment/app/BackStackRecord;->mTransition:I

    .line 815
    iget-object v13, v11, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    .line 817
    if-nez v13, :cond_22

    .line 819
    if-nez v12, :cond_22

    .line 821
    goto :goto_19

    .line 823
    :cond_22
    invoke-virtual {v11}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    .line 824
    iget-object v13, v11, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    .line 827
    iput v12, v13, Landroidx/fragment/app/Fragment$AnimationInfo;->mNextTransition:I

    .line 829
    :goto_19
    iget-object v12, v3, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 831
    iget-object v13, v3, Landroidx/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 833
    invoke-virtual {v11}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    .line 835
    iget-object v14, v11, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    .line 838
    iput-object v12, v14, Landroidx/fragment/app/Fragment$AnimationInfo;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 840
    iput-object v13, v14, Landroidx/fragment/app/Fragment$AnimationInfo;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 842
    :cond_23
    iget v12, v10, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    .line 844
    iget-object v13, v3, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    .line 846
    packed-switch v12, :pswitch_data_2

    .line 848
    :pswitch_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 851
    new-instance v1, Ljava/lang/StringBuilder;

    .line 853
    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 855
    iget v2, v10, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    .line 858
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 860
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 863
    move-result-object v1

    .line 866
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 867
    throw v0

    .line 870
    :pswitch_10
    iget-object v10, v10, Landroidx/fragment/app/FragmentTransaction$Op;->mCurrentMaxState:Landroidx/lifecycle/Lifecycle$State;

    .line 871
    invoke-virtual {v13, v11, v10}, Landroidx/fragment/app/FragmentManager;->setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)V

    .line 873
    goto/16 :goto_1a

    .line 876
    :pswitch_11
    const/4 v12, 0x0

    .line 878
    invoke-virtual {v13, v12}, Landroidx/fragment/app/FragmentManager;->setPrimaryNavigationFragment(Landroidx/fragment/app/Fragment;)V

    .line 879
    goto/16 :goto_1a

    .line 882
    :pswitch_12
    const/4 v12, 0x0

    .line 884
    invoke-virtual {v13, v11}, Landroidx/fragment/app/FragmentManager;->setPrimaryNavigationFragment(Landroidx/fragment/app/Fragment;)V

    .line 885
    goto/16 :goto_1a

    .line 888
    :pswitch_13
    const/4 v12, 0x0

    .line 890
    iget v14, v10, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    .line 891
    iget v15, v10, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    .line 893
    iget v12, v10, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    .line 895
    iget v10, v10, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    .line 897
    invoke-virtual {v11, v14, v15, v12, v10}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    .line 899
    const/4 v10, 0x0

    .line 902
    invoke-virtual {v13, v11, v10}, Landroidx/fragment/app/FragmentManager;->setExitAnimationOrder(Landroidx/fragment/app/Fragment;Z)V

    .line 903
    invoke-virtual {v13, v11}, Landroidx/fragment/app/FragmentManager;->attachFragment(Landroidx/fragment/app/Fragment;)V

    .line 906
    goto :goto_1a

    .line 909
    :pswitch_14
    iget v12, v10, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    .line 910
    iget v14, v10, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    .line 912
    iget v15, v10, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    .line 914
    iget v10, v10, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    .line 916
    invoke-virtual {v11, v12, v14, v15, v10}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    .line 918
    invoke-virtual {v13, v11}, Landroidx/fragment/app/FragmentManager;->detachFragment(Landroidx/fragment/app/Fragment;)V

    .line 921
    goto :goto_1a

    .line 924
    :pswitch_15
    iget v12, v10, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    .line 925
    iget v14, v10, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    .line 927
    iget v15, v10, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    .line 929
    iget v10, v10, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    .line 931
    invoke-virtual {v11, v12, v14, v15, v10}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    .line 933
    const/4 v10, 0x0

    .line 936
    invoke-virtual {v13, v11, v10}, Landroidx/fragment/app/FragmentManager;->setExitAnimationOrder(Landroidx/fragment/app/Fragment;Z)V

    .line 937
    const/4 v12, 0x2

    .line 940
    invoke-static {v12}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 941
    move-result v13

    .line 944
    if-eqz v13, :cond_24

    .line 945
    invoke-static {v11}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 947
    :cond_24
    iget-boolean v12, v11, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 950
    if-eqz v12, :cond_26

    .line 952
    iput-boolean v10, v11, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 954
    iget-boolean v10, v11, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 956
    const/4 v12, 0x1

    .line 958
    xor-int/2addr v10, v12

    .line 959
    iput-boolean v10, v11, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 960
    goto :goto_1a

    .line 962
    :pswitch_16
    iget v12, v10, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    .line 963
    iget v14, v10, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    .line 965
    iget v15, v10, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    .line 967
    iget v10, v10, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    .line 969
    invoke-virtual {v11, v12, v14, v15, v10}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    .line 971
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 974
    const/4 v12, 0x2

    .line 977
    invoke-static {v12}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 978
    move-result v10

    .line 981
    if-eqz v10, :cond_25

    .line 982
    invoke-static {v11}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 984
    :cond_25
    iget-boolean v10, v11, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 987
    if-nez v10, :cond_26

    .line 989
    const/4 v10, 0x1

    .line 991
    iput-boolean v10, v11, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 992
    iget-boolean v14, v11, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 994
    xor-int/2addr v14, v10

    .line 996
    iput-boolean v14, v11, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 997
    invoke-virtual {v13, v11}, Landroidx/fragment/app/FragmentManager;->setVisibleRemovingFragment(Landroidx/fragment/app/Fragment;)V

    .line 999
    goto :goto_1a

    .line 1002
    :pswitch_17
    const/4 v12, 0x2

    .line 1003
    iget v14, v10, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    .line 1004
    iget v15, v10, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    .line 1006
    iget v12, v10, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    .line 1008
    iget v10, v10, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    .line 1010
    invoke-virtual {v11, v14, v15, v12, v10}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    .line 1012
    invoke-virtual {v13, v11}, Landroidx/fragment/app/FragmentManager;->removeFragment(Landroidx/fragment/app/Fragment;)V

    .line 1015
    :cond_26
    :goto_1a
    const/4 v12, 0x0

    .line 1018
    goto :goto_1b

    .line 1019
    :pswitch_18
    iget v12, v10, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    .line 1020
    iget v14, v10, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    .line 1022
    iget v15, v10, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    .line 1024
    iget v10, v10, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    .line 1026
    invoke-virtual {v11, v12, v14, v15, v10}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    .line 1028
    const/4 v12, 0x0

    .line 1031
    invoke-virtual {v13, v11, v12}, Landroidx/fragment/app/FragmentManager;->setExitAnimationOrder(Landroidx/fragment/app/Fragment;Z)V

    .line 1032
    invoke-virtual {v13, v11}, Landroidx/fragment/app/FragmentManager;->addFragment(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentStateManager;

    .line 1035
    :goto_1b
    add-int/lit8 v9, v9, 0x1

    .line 1038
    goto/16 :goto_17

    .line 1040
    :cond_27
    const/4 v12, 0x0

    .line 1042
    add-int/lit8 v1, v1, 0x1

    .line 1043
    goto/16 :goto_11

    .line 1045
    :cond_28
    move-object/from16 v5, p2

    .line 1047
    add-int/lit8 v1, v4, -0x1

    .line 1049
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1051
    move-result-object v1

    .line 1054
    check-cast v1, Ljava/lang/Boolean;

    .line 1055
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1057
    move-result v1

    .line 1060
    move/from16 v3, p3

    .line 1061
    :goto_1c
    if-ge v3, v4, :cond_2d

    .line 1063
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1065
    move-result-object v6

    .line 1068
    check-cast v6, Landroidx/fragment/app/BackStackRecord;

    .line 1069
    if-eqz v1, :cond_2a

    .line 1071
    iget-object v7, v6, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    .line 1073
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 1075
    move-result v7

    .line 1078
    const/4 v8, 0x1

    .line 1079
    sub-int/2addr v7, v8

    .line 1080
    :goto_1d
    if-ltz v7, :cond_2c

    .line 1081
    iget-object v8, v6, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    .line 1083
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1085
    move-result-object v8

    .line 1088
    check-cast v8, Landroidx/fragment/app/FragmentTransaction$Op;

    .line 1089
    iget-object v8, v8, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    .line 1091
    if-eqz v8, :cond_29

    .line 1093
    invoke-virtual {v0, v8}, Landroidx/fragment/app/FragmentManager;->createOrGetFragmentStateManager(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentStateManager;

    .line 1095
    move-result-object v8

    .line 1098
    invoke-virtual {v8}, Landroidx/fragment/app/FragmentStateManager;->moveToExpectedState()V

    .line 1099
    :cond_29
    add-int/lit8 v7, v7, -0x1

    .line 1102
    goto :goto_1d

    .line 1104
    :cond_2a
    iget-object v6, v6, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    .line 1105
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1107
    move-result-object v6

    .line 1110
    :cond_2b
    :goto_1e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 1111
    move-result v7

    .line 1114
    if-eqz v7, :cond_2c

    .line 1115
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1117
    move-result-object v7

    .line 1120
    check-cast v7, Landroidx/fragment/app/FragmentTransaction$Op;

    .line 1121
    iget-object v7, v7, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    .line 1123
    if-eqz v7, :cond_2b

    .line 1125
    invoke-virtual {v0, v7}, Landroidx/fragment/app/FragmentManager;->createOrGetFragmentStateManager(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentStateManager;

    .line 1127
    move-result-object v7

    .line 1130
    invoke-virtual {v7}, Landroidx/fragment/app/FragmentStateManager;->moveToExpectedState()V

    .line 1131
    goto :goto_1e

    .line 1134
    :cond_2c
    add-int/lit8 v3, v3, 0x1

    .line 1135
    goto :goto_1c

    .line 1137
    :cond_2d
    iget v3, v0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    .line 1138
    const/4 v6, 0x1

    .line 1140
    invoke-virtual {v0, v3, v6}, Landroidx/fragment/app/FragmentManager;->moveToState(IZ)V

    .line 1141
    new-instance v3, Ljava/util/HashSet;

    .line 1144
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1146
    move/from16 v6, p3

    .line 1149
    :goto_1f
    if-ge v6, v4, :cond_30

    .line 1151
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1153
    move-result-object v7

    .line 1156
    check-cast v7, Landroidx/fragment/app/BackStackRecord;

    .line 1157
    iget-object v7, v7, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    .line 1159
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1161
    move-result-object v7

    .line 1164
    :cond_2e
    :goto_20
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 1165
    move-result v8

    .line 1168
    if-eqz v8, :cond_2f

    .line 1169
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1171
    move-result-object v8

    .line 1174
    check-cast v8, Landroidx/fragment/app/FragmentTransaction$Op;

    .line 1175
    iget-object v8, v8, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    .line 1177
    if-eqz v8, :cond_2e

    .line 1179
    iget-object v8, v8, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1181
    if-eqz v8, :cond_2e

    .line 1183
    invoke-static {v8, v0}, Landroidx/fragment/app/DefaultSpecialEffectsController;->getOrCreateController(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/DefaultSpecialEffectsController;

    .line 1185
    move-result-object v8

    .line 1188
    invoke-virtual {v3, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1189
    goto :goto_20

    .line 1192
    :cond_2f
    add-int/lit8 v6, v6, 0x1

    .line 1193
    goto :goto_1f

    .line 1195
    :cond_30
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 1196
    move-result-object v0

    .line 1199
    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1200
    move-result v3

    .line 1203
    if-eqz v3, :cond_31

    .line 1204
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1206
    move-result-object v3

    .line 1209
    check-cast v3, Landroidx/fragment/app/DefaultSpecialEffectsController;

    .line 1210
    iput-boolean v1, v3, Landroidx/fragment/app/DefaultSpecialEffectsController;->operationDirectionIsPop:Z

    .line 1212
    invoke-virtual {v3}, Landroidx/fragment/app/DefaultSpecialEffectsController;->markPostponedState()V

    .line 1214
    invoke-virtual {v3}, Landroidx/fragment/app/DefaultSpecialEffectsController;->executePendingOperations()V

    .line 1217
    goto :goto_21

    .line 1220
    :cond_31
    move/from16 v0, p3

    .line 1221
    :goto_22
    if-ge v0, v4, :cond_33

    .line 1223
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1225
    move-result-object v1

    .line 1228
    check-cast v1, Landroidx/fragment/app/BackStackRecord;

    .line 1229
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1231
    move-result-object v3

    .line 1234
    check-cast v3, Ljava/lang/Boolean;

    .line 1235
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1237
    move-result v3

    .line 1240
    if-eqz v3, :cond_32

    .line 1241
    iget v3, v1, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    .line 1243
    if-ltz v3, :cond_32

    .line 1245
    const/4 v3, -0x1

    .line 1247
    iput v3, v1, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    .line 1248
    goto :goto_23

    .line 1250
    :cond_32
    const/4 v3, -0x1

    .line 1251
    :goto_23
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1252
    add-int/lit8 v0, v0, 0x1

    .line 1255
    goto :goto_22

    .line 1257
    :cond_33
    return-void

    .line 1258
    nop

    .line 1259
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1260
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_e
        :pswitch_5
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    .line 1274
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_18
        :pswitch_f
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch
    .line 1298
.end method

.method public final findActiveFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 2
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentStore;->findActiveFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public final findFragmentById(I)Landroidx/fragment/app/Fragment;
    .locals 4

    .line 1
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v1

    .line 9
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 10
    if-ltz v1, :cond_1

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object v2

    .line 17
    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 18
    if-eqz v2, :cond_0

    .line 20
    iget v3, v2, Landroidx/fragment/app/Fragment;->mFragmentId:I

    .line 22
    if-ne v3, p1, :cond_0

    .line 24
    goto :goto_0

    .line 26
    :cond_1
    iget-object p0, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/util/HashMap;

    .line 27
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 29
    move-result-object p0

    .line 32
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 33
    move-result-object p0

    .line 36
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    move-result v0

    .line 40
    if-eqz v0, :cond_3

    .line 41
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    move-result-object v0

    .line 46
    check-cast v0, Landroidx/fragment/app/FragmentStateManager;

    .line 47
    if-eqz v0, :cond_2

    .line 49
    iget-object v2, v0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 51
    iget v0, v2, Landroidx/fragment/app/Fragment;->mFragmentId:I

    .line 53
    if-ne v0, p1, :cond_2

    .line 55
    goto :goto_0

    .line 57
    :cond_3
    const/4 v2, 0x0

    .line 58
    :goto_0
    return-object v2
    .line 59
.end method

.method public final findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 4

    .line 1
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v1

    .line 9
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 10
    if-ltz v1, :cond_1

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object v2

    .line 17
    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 18
    if-eqz v2, :cond_0

    .line 20
    iget-object v3, v2, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    .line 22
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result v3

    .line 27
    if-eqz v3, :cond_0

    .line 28
    goto :goto_0

    .line 30
    :cond_1
    iget-object p0, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/util/HashMap;

    .line 31
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 33
    move-result-object p0

    .line 36
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 37
    move-result-object p0

    .line 40
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    move-result v0

    .line 44
    if-eqz v0, :cond_3

    .line 45
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    move-result-object v0

    .line 50
    check-cast v0, Landroidx/fragment/app/FragmentStateManager;

    .line 51
    if-eqz v0, :cond_2

    .line 53
    iget-object v2, v0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 55
    iget-object v0, v2, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    .line 57
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    move-result v0

    .line 62
    if-eqz v0, :cond_2

    .line 63
    goto :goto_0

    .line 65
    :cond_3
    const/4 v2, 0x0

    .line 66
    :goto_0
    return-object v2
    .line 67
.end method

.method public final getFragmentContainer(Landroidx/fragment/app/Fragment;)Landroid/view/ViewGroup;
    .locals 2

    .line 1
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    return-object v0

    .line 6
    :cond_0
    iget v0, p1, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 7
    const/4 v1, 0x0

    .line 9
    if-gtz v0, :cond_1

    .line 10
    return-object v1

    .line 12
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mContainer:Landroidx/fragment/app/FragmentContainer;

    .line 13
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentContainer;->onHasView()Z

    .line 15
    move-result v0

    .line 18
    if-eqz v0, :cond_2

    .line 19
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->mContainer:Landroidx/fragment/app/FragmentContainer;

    .line 21
    iget p1, p1, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 23
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    .line 25
    move-result-object p0

    .line 28
    instance-of p1, p0, Landroid/view/ViewGroup;

    .line 29
    if-eqz p1, :cond_2

    .line 31
    check-cast p0, Landroid/view/ViewGroup;

    .line 33
    return-object p0

    .line 35
    :cond_2
    return-object v1
    .line 36
.end method

.method public final getFragmentFactory()Landroidx/fragment/app/FragmentManager$3;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mParent:Landroidx/fragment/app/Fragment;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object p0, v0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->getFragmentFactory()Landroidx/fragment/app/FragmentManager$3;

    .line 8
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->mHostFragmentFactory:Landroidx/fragment/app/FragmentManager$3;

    .line 13
    return-object p0
    .line 15
.end method

.method public final getSpecialEffectsControllerFactory()Landroidx/fragment/app/FragmentManager$4;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mParent:Landroidx/fragment/app/Fragment;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object p0, v0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->getSpecialEffectsControllerFactory()Landroidx/fragment/app/FragmentManager$4;

    .line 8
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->mDefaultSpecialEffectsControllerFactory:Landroidx/fragment/app/FragmentManager$4;

    .line 13
    return-object p0
    .line 15
.end method

.method public final isParentAdded()Z
    .locals 3

    .line 1
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->mParent:Landroidx/fragment/app/Fragment;

    .line 2
    const/4 v0, 0x1

    .line 4
    if-nez p0, :cond_0

    .line 5
    return v0

    .line 7
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    .line 8
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_1

    .line 11
    iget-boolean v1, p0, Landroidx/fragment/app/Fragment;->mAdded:Z

    .line 13
    if-eqz v1, :cond_1

    .line 15
    move v1, v0

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    move v1, v2

    .line 19
    :goto_0
    if-eqz v1, :cond_2

    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 22
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->isParentAdded()Z

    .line 26
    move-result p0

    .line 29
    if-eqz p0, :cond_2

    .line 30
    goto :goto_1

    .line 32
    :cond_2
    move v0, v2

    .line 33
    :goto_1
    return v0
    .line 34
.end method

.method public final moveToState(IZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    .line 2
    if-nez v0, :cond_1

    .line 4
    const/4 v0, -0x1

    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    goto :goto_0

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 10
    const-string p1, "No activity"

    .line 12
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 14
    throw p0

    .line 17
    :cond_1
    :goto_0
    if-nez p2, :cond_2

    .line 18
    iget p2, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    .line 20
    if-ne p1, p2, :cond_2

    .line 22
    return-void

    .line 24
    :cond_2
    iput p1, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    .line 25
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 27
    iget-object p2, p1, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    .line 29
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 31
    move-result-object p2

    .line 34
    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    move-result v0

    .line 38
    iget-object v1, p1, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/util/HashMap;

    .line 39
    if-eqz v0, :cond_4

    .line 41
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    move-result-object v0

    .line 46
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 47
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 49
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    move-result-object v0

    .line 54
    check-cast v0, Landroidx/fragment/app/FragmentStateManager;

    .line 55
    if-eqz v0, :cond_3

    .line 57
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStateManager;->moveToExpectedState()V

    .line 59
    goto :goto_1

    .line 62
    :cond_4
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 63
    move-result-object p2

    .line 66
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 67
    move-result-object p2

    .line 70
    :cond_5
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    move-result v0

    .line 74
    const/4 v1, 0x0

    .line 75
    if-eqz v0, :cond_7

    .line 76
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    move-result-object v0

    .line 81
    check-cast v0, Landroidx/fragment/app/FragmentStateManager;

    .line 82
    if-eqz v0, :cond_5

    .line 84
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStateManager;->moveToExpectedState()V

    .line 86
    iget-object v2, v0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 89
    iget-boolean v3, v2, Landroidx/fragment/app/Fragment;->mRemoving:Z

    .line 91
    if-eqz v3, :cond_6

    .line 93
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    .line 95
    move-result v2

    .line 98
    if-nez v2, :cond_6

    .line 99
    const/4 v1, 0x1

    .line 101
    :cond_6
    if-eqz v1, :cond_5

    .line 102
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentStore;->makeInactive(Landroidx/fragment/app/FragmentStateManager;)V

    .line 104
    goto :goto_2

    .line 107
    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->startPendingDeferredFragments()V

    .line 108
    iget-boolean p1, p0, Landroidx/fragment/app/FragmentManager;->mNeedMenuInvalidate:Z

    .line 111
    if-eqz p1, :cond_8

    .line 113
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    .line 115
    if-eqz p1, :cond_8

    .line 117
    iget p2, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    .line 119
    const/4 v0, 0x7

    .line 121
    if-ne p2, v0, :cond_8

    .line 122
    iget-object p1, p1, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->this$0:Landroidx/fragment/app/FragmentActivity;

    .line 124
    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 126
    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->mNeedMenuInvalidate:Z

    .line 129
    :cond_8
    return-void
    .line 131
.end method

.method public final noteStateNotSaved()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mStateSaved:Z

    .line 8
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mStopped:Z

    .line 10
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    .line 12
    iput-boolean v0, v1, Landroidx/fragment/app/FragmentManagerViewModel;->mIsStateSaved:Z

    .line 14
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStore;->getFragments()Ljava/util/List;

    .line 18
    move-result-object p0

    .line 21
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object p0

    .line 25
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 35
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 36
    if-eqz v0, :cond_1

    .line 38
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    .line 40
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->noteStateNotSaved()V

    .line 42
    goto :goto_0

    .line 45
    :cond_2
    return-void
    .line 46
.end method

.method public final popBackStackImmediate()Z
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate(II)Z

    move-result p0

    return p0
.end method

.method public final popBackStackImmediate(II)Z
    .locals 9

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->execPendingActions(Z)Z

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentManager;->ensureExecReady(Z)V

    .line 4
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_0

    if-gez p1, :cond_0

    .line 5
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    .line 7
    :cond_0
    iget-object v4, p0, Landroidx/fragment/app/FragmentManager;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v5, p0, Landroidx/fragment/app/FragmentManager;->mTmpIsPop:Ljava/util/ArrayList;

    const/4 v6, 0x0

    move-object v3, p0

    move v7, p1

    move v8, p2

    invoke-virtual/range {v3 .. v8}, Landroidx/fragment/app/FragmentManager;->popBackStackState(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->mExecutingActions:Z

    .line 9
    :try_start_0
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-virtual {p0, p2, v1}, Landroidx/fragment/app/FragmentManager;->removeRedundantOperationsAndExecute(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->cleanupExec()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->cleanupExec()V

    .line 11
    throw p1

    .line 12
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->updateOnBackPressedCallbackEnabled()V

    .line 13
    iget-boolean p2, p0, Landroidx/fragment/app/FragmentManager;->mHavePendingDeferredStart:Z

    if-eqz p2, :cond_2

    .line 14
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mHavePendingDeferredStart:Z

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->startPendingDeferredFragments()V

    .line 16
    :cond_2
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    iget-object p0, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/util/HashMap;

    .line 17
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    const/4 p2, 0x0

    .line 18
    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    return p1
.end method

.method public final popBackStackState(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    and-int/2addr p5, v0

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p5, :cond_0

    .line 5
    move p5, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move p5, v1

    .line 9
    :goto_0
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    .line 10
    const/4 v3, -0x1

    .line 12
    if-eqz v2, :cond_d

    .line 13
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 15
    move-result v2

    .line 18
    if-eqz v2, :cond_1

    .line 19
    goto/16 :goto_5

    .line 21
    :cond_1
    if-nez p3, :cond_3

    .line 23
    if-gez p4, :cond_3

    .line 25
    if-eqz p5, :cond_2

    .line 27
    move v3, v1

    .line 29
    goto/16 :goto_5

    .line 30
    :cond_2
    iget-object p3, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    .line 32
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 34
    move-result p3

    .line 37
    add-int/2addr v3, p3

    .line 38
    goto :goto_5

    .line 39
    :cond_3
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    .line 40
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 42
    move-result v2

    .line 45
    add-int/2addr v2, v3

    .line 46
    :goto_1
    if-ltz v2, :cond_6

    .line 47
    iget-object v4, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    .line 49
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 51
    move-result-object v4

    .line 54
    check-cast v4, Landroidx/fragment/app/BackStackRecord;

    .line 55
    if-eqz p3, :cond_4

    .line 57
    iget-object v5, v4, Landroidx/fragment/app/BackStackRecord;->mName:Ljava/lang/String;

    .line 59
    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    move-result v5

    .line 64
    if-eqz v5, :cond_4

    .line 65
    goto :goto_2

    .line 67
    :cond_4
    if-ltz p4, :cond_5

    .line 68
    iget v4, v4, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    .line 70
    if-ne p4, v4, :cond_5

    .line 72
    goto :goto_2

    .line 74
    :cond_5
    add-int/lit8 v2, v2, -0x1

    .line 75
    goto :goto_1

    .line 77
    :cond_6
    :goto_2
    if-gez v2, :cond_8

    .line 78
    :cond_7
    :goto_3
    move v3, v2

    .line 80
    goto :goto_5

    .line 81
    :cond_8
    if-eqz p5, :cond_b

    .line 82
    :goto_4
    if-lez v2, :cond_7

    .line 84
    iget-object p5, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    .line 86
    add-int/lit8 v3, v2, -0x1

    .line 88
    invoke-virtual {p5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 90
    move-result-object p5

    .line 93
    check-cast p5, Landroidx/fragment/app/BackStackRecord;

    .line 94
    if-eqz p3, :cond_9

    .line 96
    iget-object v4, p5, Landroidx/fragment/app/BackStackRecord;->mName:Ljava/lang/String;

    .line 98
    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    move-result v4

    .line 103
    if-nez v4, :cond_a

    .line 104
    :cond_9
    if-ltz p4, :cond_7

    .line 106
    iget p5, p5, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    .line 108
    if-ne p4, p5, :cond_7

    .line 110
    :cond_a
    move v2, v3

    .line 112
    goto :goto_4

    .line 113
    :cond_b
    iget-object p3, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    .line 114
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 116
    move-result p3

    .line 119
    add-int/2addr p3, v3

    .line 120
    if-ne v2, p3, :cond_c

    .line 121
    goto :goto_5

    .line 123
    :cond_c
    add-int/lit8 v2, v2, 0x1

    .line 124
    goto :goto_3

    .line 126
    :cond_d
    :goto_5
    if-gez v3, :cond_e

    .line 127
    return v1

    .line 129
    :cond_e
    iget-object p3, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    .line 130
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 132
    move-result p3

    .line 135
    sub-int/2addr p3, v0

    .line 136
    :goto_6
    if-lt p3, v3, :cond_f

    .line 137
    iget-object p4, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    .line 139
    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 141
    move-result-object p4

    .line 144
    check-cast p4, Landroidx/fragment/app/BackStackRecord;

    .line 145
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 150
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    add-int/lit8 p3, p3, -0x1

    .line 155
    goto :goto_6

    .line 157
    :cond_f
    return v0
    .line 158
.end method

.method public final removeFragment(Landroidx/fragment/app/Fragment;)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 3
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    .line 12
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    xor-int/2addr v0, v1

    .line 17
    iget-boolean v2, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    .line 18
    if-eqz v2, :cond_1

    .line 20
    if-eqz v0, :cond_3

    .line 22
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 24
    iget-object v2, v0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    .line 26
    monitor-enter v2

    .line 28
    :try_start_0
    iget-object v0, v0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    .line 29
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 31
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    .line 36
    invoke-static {p1}, Landroidx/fragment/app/FragmentManager;->isMenuAvailable(Landroidx/fragment/app/Fragment;)Z

    .line 38
    move-result v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->mNeedMenuInvalidate:Z

    .line 44
    :cond_2
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    .line 46
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->setVisibleRemovingFragment(Landroidx/fragment/app/Fragment;)V

    .line 48
    :cond_3
    return-void

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    throw p0
    .line 54
.end method

.method public final removeRedundantOperationsAndExecute(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v0

    .line 12
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 13
    move-result v1

    .line 16
    if-ne v0, v1, :cond_6

    .line 17
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 19
    move-result v0

    .line 22
    const/4 v1, 0x0

    .line 23
    move v2, v1

    .line 24
    :goto_0
    if-ge v1, v0, :cond_4

    .line 25
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object v3

    .line 30
    check-cast v3, Landroidx/fragment/app/BackStackRecord;

    .line 31
    iget-boolean v3, v3, Landroidx/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    .line 33
    if-nez v3, :cond_3

    .line 35
    if-eq v2, v1, :cond_1

    .line 37
    invoke-virtual {p0, p1, p2, v2, v1}, Landroidx/fragment/app/FragmentManager;->executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 39
    :cond_1
    add-int/lit8 v2, v1, 0x1

    .line 42
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    move-result-object v3

    .line 47
    check-cast v3, Ljava/lang/Boolean;

    .line 48
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 50
    move-result v3

    .line 53
    if-eqz v3, :cond_2

    .line 54
    :goto_1
    if-ge v2, v0, :cond_2

    .line 56
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 58
    move-result-object v3

    .line 61
    check-cast v3, Ljava/lang/Boolean;

    .line 62
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 64
    move-result v3

    .line 67
    if-eqz v3, :cond_2

    .line 68
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 70
    move-result-object v3

    .line 73
    check-cast v3, Landroidx/fragment/app/BackStackRecord;

    .line 74
    iget-boolean v3, v3, Landroidx/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    .line 76
    if-nez v3, :cond_2

    .line 78
    add-int/lit8 v2, v2, 0x1

    .line 80
    goto :goto_1

    .line 82
    :cond_2
    invoke-virtual {p0, p1, p2, v1, v2}, Landroidx/fragment/app/FragmentManager;->executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 83
    add-int/lit8 v1, v2, -0x1

    .line 86
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 88
    goto :goto_0

    .line 90
    :cond_4
    if-eq v2, v0, :cond_5

    .line 91
    invoke-virtual {p0, p1, p2, v2, v0}, Landroidx/fragment/app/FragmentManager;->executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 93
    :cond_5
    return-void

    .line 96
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 97
    const-string p1, "Internal error with the back stack records"

    .line 99
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 101
    throw p0
    .line 104
.end method

.method public final restoreSaveStateInternal(Landroid/os/Parcelable;)V
    .locals 14

    .line 1
    check-cast p1, Landroid/os/Bundle;

    .line 2
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 4
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 21
    check-cast v1, Ljava/lang/String;

    .line 22
    const-string/jumbo v2, "result_"

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 27
    move-result v2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 33
    move-result-object v2

    .line 36
    if-eqz v2, :cond_0

    .line 37
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    .line 39
    iget-object v3, v3, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->mContext:Landroid/content/Context;

    .line 41
    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 43
    move-result-object v3

    .line 46
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 47
    const/4 v3, 0x7

    .line 50
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 51
    move-result-object v1

    .line 54
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mResults:Ljava/util/Map;

    .line 55
    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    goto :goto_0

    .line 60
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    .line 61
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 63
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 66
    move-result-object v1

    .line 69
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 70
    move-result-object v1

    .line 73
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    move-result v2

    .line 77
    if-eqz v2, :cond_3

    .line 78
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    move-result-object v2

    .line 83
    check-cast v2, Ljava/lang/String;

    .line 84
    const-string v3, "fragment_"

    .line 86
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 88
    move-result v3

    .line 91
    if-eqz v3, :cond_2

    .line 92
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 94
    move-result-object v3

    .line 97
    if-eqz v3, :cond_2

    .line 98
    iget-object v4, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    .line 100
    iget-object v4, v4, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->mContext:Landroid/content/Context;

    .line 102
    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 104
    move-result-object v4

    .line 107
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 108
    const/16 v4, 0x9

    .line 111
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 113
    move-result-object v2

    .line 116
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    goto :goto_1

    .line 120
    :cond_3
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 121
    iget-object v2, v1, Landroidx/fragment/app/FragmentStore;->mSavedState:Ljava/util/HashMap;

    .line 123
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 125
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 128
    const-string/jumbo v0, "state"

    .line 131
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 134
    move-result-object p1

    .line 137
    check-cast p1, Landroidx/fragment/app/FragmentManagerState;

    .line 138
    if-nez p1, :cond_4

    .line 140
    return-void

    .line 142
    :cond_4
    iget-object v2, v1, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/util/HashMap;

    .line 143
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 145
    iget-object v3, p1, Landroidx/fragment/app/FragmentManagerState;->mActive:Ljava/util/ArrayList;

    .line 148
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 150
    move-result-object v3

    .line 153
    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 154
    move-result v4

    .line 157
    iget-object v5, p0, Landroidx/fragment/app/FragmentManager;->mLifecycleCallbacksDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    .line 158
    const/4 v6, 0x0

    .line 160
    const/4 v7, 0x2

    .line 161
    if-eqz v4, :cond_9

    .line 162
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 164
    move-result-object v4

    .line 167
    check-cast v4, Ljava/lang/String;

    .line 168
    invoke-virtual {v1, v6, v4}, Landroidx/fragment/app/FragmentStore;->setSavedState(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    .line 170
    move-result-object v4

    .line 173
    if-eqz v4, :cond_5

    .line 174
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 176
    move-result-object v6

    .line 179
    check-cast v6, Landroidx/fragment/app/FragmentState;

    .line 180
    iget-object v8, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    .line 182
    iget-object v6, v6, Landroidx/fragment/app/FragmentState;->mWho:Ljava/lang/String;

    .line 184
    iget-object v8, v8, Landroidx/fragment/app/FragmentManagerViewModel;->mRetainedFragments:Ljava/util/HashMap;

    .line 186
    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    move-result-object v6

    .line 191
    check-cast v6, Landroidx/fragment/app/Fragment;

    .line 192
    if-eqz v6, :cond_7

    .line 194
    invoke-static {v7}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 196
    move-result v8

    .line 199
    if-eqz v8, :cond_6

    .line 200
    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    .line 202
    :cond_6
    new-instance v8, Landroidx/fragment/app/FragmentStateManager;

    .line 205
    invoke-direct {v8, v5, v1, v6, v4}, Landroidx/fragment/app/FragmentStateManager;-><init>(Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;Landroidx/fragment/app/FragmentStore;Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V

    .line 207
    goto :goto_3

    .line 210
    :cond_7
    new-instance v5, Landroidx/fragment/app/FragmentStateManager;

    .line 211
    iget-object v9, p0, Landroidx/fragment/app/FragmentManager;->mLifecycleCallbacksDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    .line 213
    iget-object v10, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 215
    iget-object v6, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    .line 217
    iget-object v6, v6, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->mContext:Landroid/content/Context;

    .line 219
    invoke-virtual {v6}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 221
    move-result-object v11

    .line 224
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->getFragmentFactory()Landroidx/fragment/app/FragmentManager$3;

    .line 225
    move-result-object v12

    .line 228
    move-object v8, v5

    .line 229
    move-object v13, v4

    .line 230
    invoke-direct/range {v8 .. v13}, Landroidx/fragment/app/FragmentStateManager;-><init>(Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;Landroidx/fragment/app/FragmentStore;Ljava/lang/ClassLoader;Landroidx/fragment/app/FragmentManager$3;Landroid/os/Bundle;)V

    .line 231
    :goto_3
    iget-object v5, v8, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 234
    iput-object v4, v5, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 236
    iput-object p0, v5, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 238
    invoke-static {v7}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 240
    move-result v4

    .line 243
    if-eqz v4, :cond_8

    .line 244
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    .line 246
    :cond_8
    iget-object v4, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    .line 249
    iget-object v4, v4, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->mContext:Landroid/content/Context;

    .line 251
    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 253
    move-result-object v4

    .line 256
    invoke-virtual {v8, v4}, Landroidx/fragment/app/FragmentStateManager;->restoreState(Ljava/lang/ClassLoader;)V

    .line 257
    invoke-virtual {v1, v8}, Landroidx/fragment/app/FragmentStore;->makeActive(Landroidx/fragment/app/FragmentStateManager;)V

    .line 260
    iget v4, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    .line 263
    iput v4, v8, Landroidx/fragment/app/FragmentStateManager;->mFragmentManagerState:I

    .line 265
    goto :goto_2

    .line 267
    :cond_9
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    .line 268
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 270
    new-instance v3, Ljava/util/ArrayList;

    .line 273
    iget-object v0, v0, Landroidx/fragment/app/FragmentManagerViewModel;->mRetainedFragments:Ljava/util/HashMap;

    .line 275
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 277
    move-result-object v0

    .line 280
    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 281
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 284
    move-result-object v0

    .line 287
    :cond_a
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 288
    move-result v3

    .line 291
    const/4 v4, 0x0

    .line 292
    const/4 v8, 0x1

    .line 293
    if-eqz v3, :cond_d

    .line 294
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 296
    move-result-object v3

    .line 299
    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 300
    iget-object v9, v3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 302
    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    move-result-object v9

    .line 307
    if-eqz v9, :cond_b

    .line 308
    move v4, v8

    .line 310
    :cond_b
    if-nez v4, :cond_a

    .line 311
    invoke-static {v7}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 313
    move-result v4

    .line 316
    if-eqz v4, :cond_c

    .line 317
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    .line 319
    iget-object v4, p1, Landroidx/fragment/app/FragmentManagerState;->mActive:Ljava/util/ArrayList;

    .line 322
    invoke-static {v4}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 324
    :cond_c
    iget-object v4, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    .line 327
    invoke-virtual {v4, v3}, Landroidx/fragment/app/FragmentManagerViewModel;->removeRetainedFragment(Landroidx/fragment/app/Fragment;)V

    .line 329
    iput-object p0, v3, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 332
    new-instance v4, Landroidx/fragment/app/FragmentStateManager;

    .line 334
    invoke-direct {v4, v5, v1, v3}, Landroidx/fragment/app/FragmentStateManager;-><init>(Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;Landroidx/fragment/app/FragmentStore;Landroidx/fragment/app/Fragment;)V

    .line 336
    iput v8, v4, Landroidx/fragment/app/FragmentStateManager;->mFragmentManagerState:I

    .line 339
    invoke-virtual {v4}, Landroidx/fragment/app/FragmentStateManager;->moveToExpectedState()V

    .line 341
    iput-boolean v8, v3, Landroidx/fragment/app/Fragment;->mRemoving:Z

    .line 344
    invoke-virtual {v4}, Landroidx/fragment/app/FragmentStateManager;->moveToExpectedState()V

    .line 346
    goto :goto_4

    .line 349
    :cond_d
    iget-object v0, p1, Landroidx/fragment/app/FragmentManagerState;->mAdded:Ljava/util/ArrayList;

    .line 350
    iget-object v2, v1, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    .line 352
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 354
    if-eqz v0, :cond_10

    .line 357
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 359
    move-result-object v0

    .line 362
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 363
    move-result v2

    .line 366
    if-eqz v2, :cond_10

    .line 367
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 369
    move-result-object v2

    .line 372
    check-cast v2, Ljava/lang/String;

    .line 373
    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentStore;->findActiveFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 375
    move-result-object v3

    .line 378
    if-eqz v3, :cond_f

    .line 379
    invoke-static {v7}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 381
    move-result v2

    .line 384
    if-eqz v2, :cond_e

    .line 385
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    .line 387
    :cond_e
    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentStore;->addFragment(Landroidx/fragment/app/Fragment;)V

    .line 390
    goto :goto_5

    .line 393
    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 394
    const-string p1, "No instantiated fragment for ("

    .line 396
    const-string v0, ")"

    .line 398
    invoke-static {p1, v2, v0}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 400
    move-result-object p1

    .line 403
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 404
    throw p0

    .line 407
    :cond_10
    iget-object v0, p1, Landroidx/fragment/app/FragmentManagerState;->mBackStack:[Landroidx/fragment/app/BackStackRecordState;

    .line 408
    if-eqz v0, :cond_17

    .line 410
    new-instance v0, Ljava/util/ArrayList;

    .line 412
    iget-object v1, p1, Landroidx/fragment/app/FragmentManagerState;->mBackStack:[Landroidx/fragment/app/BackStackRecordState;

    .line 414
    array-length v1, v1

    .line 416
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 417
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    .line 420
    move v0, v4

    .line 422
    :goto_6
    iget-object v1, p1, Landroidx/fragment/app/FragmentManagerState;->mBackStack:[Landroidx/fragment/app/BackStackRecordState;

    .line 423
    array-length v2, v1

    .line 425
    if-ge v0, v2, :cond_18

    .line 426
    aget-object v1, v1, v0

    .line 428
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 430
    new-instance v2, Landroidx/fragment/app/BackStackRecord;

    .line 433
    invoke-direct {v2, p0}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 435
    move v3, v4

    .line 438
    move v5, v3

    .line 439
    :goto_7
    iget-object v6, v1, Landroidx/fragment/app/BackStackRecordState;->mOps:[I

    .line 440
    array-length v9, v6

    .line 442
    if-ge v3, v9, :cond_13

    .line 443
    new-instance v9, Landroidx/fragment/app/FragmentTransaction$Op;

    .line 445
    invoke-direct {v9}, Landroidx/fragment/app/FragmentTransaction$Op;-><init>()V

    .line 447
    add-int/lit8 v10, v3, 0x1

    .line 450
    aget v3, v6, v3

    .line 452
    iput v3, v9, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    .line 454
    invoke-static {v7}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 456
    move-result v3

    .line 459
    if-eqz v3, :cond_11

    .line 460
    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 462
    iget-object v3, v1, Landroidx/fragment/app/BackStackRecordState;->mOps:[I

    .line 465
    aget v3, v3, v10

    .line 467
    :cond_11
    invoke-static {}, Landroidx/lifecycle/Lifecycle$State;->values()[Landroidx/lifecycle/Lifecycle$State;

    .line 469
    move-result-object v3

    .line 472
    iget-object v6, v1, Landroidx/fragment/app/BackStackRecordState;->mOldMaxLifecycleStates:[I

    .line 473
    aget v6, v6, v5

    .line 475
    aget-object v3, v3, v6

    .line 477
    iput-object v3, v9, Landroidx/fragment/app/FragmentTransaction$Op;->mOldMaxState:Landroidx/lifecycle/Lifecycle$State;

    .line 479
    invoke-static {}, Landroidx/lifecycle/Lifecycle$State;->values()[Landroidx/lifecycle/Lifecycle$State;

    .line 481
    move-result-object v3

    .line 484
    iget-object v6, v1, Landroidx/fragment/app/BackStackRecordState;->mCurrentMaxLifecycleStates:[I

    .line 485
    aget v6, v6, v5

    .line 487
    aget-object v3, v3, v6

    .line 489
    iput-object v3, v9, Landroidx/fragment/app/FragmentTransaction$Op;->mCurrentMaxState:Landroidx/lifecycle/Lifecycle$State;

    .line 491
    iget-object v3, v1, Landroidx/fragment/app/BackStackRecordState;->mOps:[I

    .line 493
    add-int/lit8 v6, v10, 0x1

    .line 495
    aget v10, v3, v10

    .line 497
    if-eqz v10, :cond_12

    .line 499
    move v10, v8

    .line 501
    goto :goto_8

    .line 502
    :cond_12
    move v10, v4

    .line 503
    :goto_8
    iput-boolean v10, v9, Landroidx/fragment/app/FragmentTransaction$Op;->mFromExpandedOp:Z

    .line 504
    add-int/lit8 v10, v6, 0x1

    .line 506
    aget v6, v3, v6

    .line 508
    iput v6, v9, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    .line 510
    add-int/lit8 v11, v10, 0x1

    .line 512
    aget v10, v3, v10

    .line 514
    iput v10, v9, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    .line 516
    add-int/lit8 v12, v11, 0x1

    .line 518
    aget v11, v3, v11

    .line 520
    iput v11, v9, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    .line 522
    add-int/lit8 v13, v12, 0x1

    .line 524
    aget v3, v3, v12

    .line 526
    iput v3, v9, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    .line 528
    iput v6, v2, Landroidx/fragment/app/BackStackRecord;->mEnterAnim:I

    .line 530
    iput v10, v2, Landroidx/fragment/app/BackStackRecord;->mExitAnim:I

    .line 532
    iput v11, v2, Landroidx/fragment/app/BackStackRecord;->mPopEnterAnim:I

    .line 534
    iput v3, v2, Landroidx/fragment/app/BackStackRecord;->mPopExitAnim:I

    .line 536
    invoke-virtual {v2, v9}, Landroidx/fragment/app/BackStackRecord;->addOp(Landroidx/fragment/app/FragmentTransaction$Op;)V

    .line 538
    add-int/lit8 v5, v5, 0x1

    .line 541
    move v3, v13

    .line 543
    goto :goto_7

    .line 544
    :cond_13
    iget v3, v1, Landroidx/fragment/app/BackStackRecordState;->mTransition:I

    .line 545
    iput v3, v2, Landroidx/fragment/app/BackStackRecord;->mTransition:I

    .line 547
    iget-object v3, v1, Landroidx/fragment/app/BackStackRecordState;->mName:Ljava/lang/String;

    .line 549
    iput-object v3, v2, Landroidx/fragment/app/BackStackRecord;->mName:Ljava/lang/String;

    .line 551
    iput-boolean v8, v2, Landroidx/fragment/app/BackStackRecord;->mAddToBackStack:Z

    .line 553
    iget v3, v1, Landroidx/fragment/app/BackStackRecordState;->mBreadCrumbTitleRes:I

    .line 555
    iput v3, v2, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbTitleRes:I

    .line 557
    iget-object v3, v1, Landroidx/fragment/app/BackStackRecordState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 559
    iput-object v3, v2, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 561
    iget v3, v1, Landroidx/fragment/app/BackStackRecordState;->mBreadCrumbShortTitleRes:I

    .line 563
    iput v3, v2, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    .line 565
    iget-object v3, v1, Landroidx/fragment/app/BackStackRecordState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 567
    iput-object v3, v2, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 569
    iget-object v3, v1, Landroidx/fragment/app/BackStackRecordState;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 571
    iput-object v3, v2, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 573
    iget-object v3, v1, Landroidx/fragment/app/BackStackRecordState;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 575
    iput-object v3, v2, Landroidx/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 577
    iget-boolean v3, v1, Landroidx/fragment/app/BackStackRecordState;->mReorderingAllowed:Z

    .line 579
    iput-boolean v3, v2, Landroidx/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    .line 581
    iget v3, v1, Landroidx/fragment/app/BackStackRecordState;->mIndex:I

    .line 583
    iput v3, v2, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    .line 585
    move v3, v4

    .line 587
    :goto_9
    iget-object v5, v1, Landroidx/fragment/app/BackStackRecordState;->mFragmentWhos:Ljava/util/ArrayList;

    .line 588
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 590
    move-result v5

    .line 593
    if-ge v3, v5, :cond_15

    .line 594
    iget-object v5, v1, Landroidx/fragment/app/BackStackRecordState;->mFragmentWhos:Ljava/util/ArrayList;

    .line 596
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 598
    move-result-object v5

    .line 601
    check-cast v5, Ljava/lang/String;

    .line 602
    if-eqz v5, :cond_14

    .line 604
    iget-object v6, v2, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    .line 606
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 608
    move-result-object v6

    .line 611
    check-cast v6, Landroidx/fragment/app/FragmentTransaction$Op;

    .line 612
    invoke-virtual {p0, v5}, Landroidx/fragment/app/FragmentManager;->findActiveFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 614
    move-result-object v5

    .line 617
    iput-object v5, v6, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    .line 618
    :cond_14
    add-int/lit8 v3, v3, 0x1

    .line 620
    goto :goto_9

    .line 622
    :cond_15
    invoke-virtual {v2, v8}, Landroidx/fragment/app/BackStackRecord;->bumpBackStackNesting(I)V

    .line 623
    invoke-static {v7}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 626
    move-result v1

    .line 629
    if-eqz v1, :cond_16

    .line 630
    invoke-virtual {v2}, Landroidx/fragment/app/BackStackRecord;->toString()Ljava/lang/String;

    .line 632
    new-instance v1, Landroidx/fragment/app/LogWriter;

    .line 635
    invoke-direct {v1}, Landroidx/fragment/app/LogWriter;-><init>()V

    .line 637
    new-instance v3, Ljava/io/PrintWriter;

    .line 640
    invoke-direct {v3, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 642
    const-string v1, "  "

    .line 645
    invoke-virtual {v2, v1, v3, v4}, Landroidx/fragment/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 647
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    .line 650
    :cond_16
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    .line 653
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 655
    add-int/lit8 v0, v0, 0x1

    .line 658
    goto/16 :goto_6

    .line 660
    :cond_17
    iput-object v6, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    .line 662
    :cond_18
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStackIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 664
    iget v1, p1, Landroidx/fragment/app/FragmentManagerState;->mBackStackIndex:I

    .line 666
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 668
    iget-object v0, p1, Landroidx/fragment/app/FragmentManagerState;->mPrimaryNavActiveWho:Ljava/lang/String;

    .line 671
    if-eqz v0, :cond_19

    .line 673
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findActiveFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 675
    move-result-object v0

    .line 678
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    .line 679
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->dispatchParentPrimaryNavigationFragmentChanged(Landroidx/fragment/app/Fragment;)V

    .line 681
    :cond_19
    iget-object v0, p1, Landroidx/fragment/app/FragmentManagerState;->mBackStackStateKeys:Ljava/util/ArrayList;

    .line 684
    if-eqz v0, :cond_1a

    .line 686
    :goto_a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 688
    move-result v1

    .line 691
    if-ge v4, v1, :cond_1a

    .line 692
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 694
    move-result-object v1

    .line 697
    check-cast v1, Ljava/lang/String;

    .line 698
    iget-object v2, p1, Landroidx/fragment/app/FragmentManagerState;->mBackStackStates:Ljava/util/ArrayList;

    .line 700
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 702
    move-result-object v2

    .line 705
    check-cast v2, Landroidx/fragment/app/BackStackState;

    .line 706
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mBackStackStates:Ljava/util/Map;

    .line 708
    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    add-int/lit8 v4, v4, 0x1

    .line 713
    goto :goto_a

    .line 715
    :cond_1a
    new-instance v0, Ljava/util/ArrayDeque;

    .line 716
    iget-object p1, p1, Landroidx/fragment/app/FragmentManagerState;->mLaunchedFragments:Ljava/util/ArrayList;

    .line 718
    invoke-direct {v0, p1}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    .line 720
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mLaunchedFragments:Ljava/util/ArrayDeque;

    .line 723
    return-void
    .line 725
.end method

.method public final saveAllStateInternal()Landroid/os/Bundle;
    .locals 11

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->collectAllSpecialEffectsController()Ljava/util/Set;

    .line 7
    move-result-object v1

    .line 10
    check-cast v1, Ljava/util/HashSet;

    .line 11
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v1

    .line 16
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v2

    .line 20
    const/4 v3, 0x0

    .line 21
    if-eqz v2, :cond_1

    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v2

    .line 27
    check-cast v2, Landroidx/fragment/app/DefaultSpecialEffectsController;

    .line 28
    iget-boolean v4, v2, Landroidx/fragment/app/DefaultSpecialEffectsController;->isContainerPostponed:Z

    .line 30
    if-eqz v4, :cond_0

    .line 32
    iput-boolean v3, v2, Landroidx/fragment/app/DefaultSpecialEffectsController;->isContainerPostponed:Z

    .line 34
    invoke-virtual {v2}, Landroidx/fragment/app/DefaultSpecialEffectsController;->executePendingOperations()V

    .line 36
    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->collectAllSpecialEffectsController()Ljava/util/Set;

    .line 40
    move-result-object v1

    .line 43
    check-cast v1, Ljava/util/HashSet;

    .line 44
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 46
    move-result-object v1

    .line 49
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    move-result v2

    .line 53
    if-eqz v2, :cond_2

    .line 54
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    move-result-object v2

    .line 59
    check-cast v2, Landroidx/fragment/app/DefaultSpecialEffectsController;

    .line 60
    invoke-virtual {v2}, Landroidx/fragment/app/DefaultSpecialEffectsController;->forceCompleteAllOperations()V

    .line 62
    goto :goto_1

    .line 65
    :cond_2
    const/4 v1, 0x1

    .line 66
    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentManager;->execPendingActions(Z)Z

    .line 67
    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->mStateSaved:Z

    .line 70
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    .line 72
    iput-boolean v1, v2, Landroidx/fragment/app/FragmentManagerViewModel;->mIsStateSaved:Z

    .line 74
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 76
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    new-instance v2, Ljava/util/ArrayList;

    .line 81
    iget-object v4, v1, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/util/HashMap;

    .line 83
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    .line 85
    move-result v5

    .line 88
    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 89
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 92
    move-result-object v4

    .line 95
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 96
    move-result-object v4

    .line 99
    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    move-result v5

    .line 103
    const/4 v6, 0x2

    .line 104
    if-eqz v5, :cond_4

    .line 105
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    move-result-object v5

    .line 110
    check-cast v5, Landroidx/fragment/app/FragmentStateManager;

    .line 111
    if-eqz v5, :cond_3

    .line 113
    iget-object v7, v5, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 115
    iget-object v8, v7, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 117
    invoke-virtual {v5}, Landroidx/fragment/app/FragmentStateManager;->saveState()Landroid/os/Bundle;

    .line 119
    move-result-object v5

    .line 122
    invoke-virtual {v1, v5, v8}, Landroidx/fragment/app/FragmentStore;->setSavedState(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    .line 123
    iget-object v5, v7, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 126
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-static {v6}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 131
    move-result v5

    .line 134
    if-eqz v5, :cond_3

    .line 135
    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    .line 137
    iget-object v5, v7, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 140
    invoke-static {v5}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 142
    goto :goto_2

    .line 145
    :cond_4
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 146
    iget-object v1, v1, Landroidx/fragment/app/FragmentStore;->mSavedState:Ljava/util/HashMap;

    .line 148
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    .line 150
    move-result v4

    .line 153
    if-eqz v4, :cond_5

    .line 154
    goto/16 :goto_8

    .line 156
    :cond_5
    iget-object v4, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 158
    iget-object v5, v4, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    .line 160
    monitor-enter v5

    .line 162
    :try_start_0
    iget-object v7, v4, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    .line 163
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 165
    move-result v7

    .line 168
    const/4 v8, 0x0

    .line 169
    if-eqz v7, :cond_6

    .line 170
    monitor-exit v5

    .line 172
    move-object v7, v8

    .line 173
    goto :goto_4

    .line 174
    :cond_6
    new-instance v7, Ljava/util/ArrayList;

    .line 175
    iget-object v9, v4, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    .line 177
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 179
    move-result v9

    .line 182
    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 183
    iget-object v4, v4, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    .line 186
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 188
    move-result-object v4

    .line 191
    :cond_7
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 192
    move-result v9

    .line 195
    if-eqz v9, :cond_8

    .line 196
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 198
    move-result-object v9

    .line 201
    check-cast v9, Landroidx/fragment/app/Fragment;

    .line 202
    iget-object v10, v9, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 204
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    invoke-static {v6}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 209
    move-result v10

    .line 212
    if-eqz v10, :cond_7

    .line 213
    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    .line 215
    goto :goto_3

    .line 218
    :cond_8
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    :goto_4
    iget-object v4, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    .line 220
    if-eqz v4, :cond_a

    .line 222
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 224
    move-result v4

    .line 227
    if-lez v4, :cond_a

    .line 228
    new-array v8, v4, [Landroidx/fragment/app/BackStackRecordState;

    .line 230
    :goto_5
    if-ge v3, v4, :cond_a

    .line 232
    new-instance v5, Landroidx/fragment/app/BackStackRecordState;

    .line 234
    iget-object v9, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    .line 236
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 238
    move-result-object v9

    .line 241
    check-cast v9, Landroidx/fragment/app/BackStackRecord;

    .line 242
    invoke-direct {v5, v9}, Landroidx/fragment/app/BackStackRecordState;-><init>(Landroidx/fragment/app/BackStackRecord;)V

    .line 244
    aput-object v5, v8, v3

    .line 247
    invoke-static {v6}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 249
    move-result v5

    .line 252
    if-eqz v5, :cond_9

    .line 253
    iget-object v5, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    .line 255
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 257
    move-result-object v5

    .line 260
    invoke-static {v5}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 261
    :cond_9
    add-int/lit8 v3, v3, 0x1

    .line 264
    goto :goto_5

    .line 266
    :cond_a
    new-instance v3, Landroidx/fragment/app/FragmentManagerState;

    .line 267
    invoke-direct {v3}, Landroidx/fragment/app/FragmentManagerState;-><init>()V

    .line 269
    iput-object v2, v3, Landroidx/fragment/app/FragmentManagerState;->mActive:Ljava/util/ArrayList;

    .line 272
    iput-object v7, v3, Landroidx/fragment/app/FragmentManagerState;->mAdded:Ljava/util/ArrayList;

    .line 274
    iput-object v8, v3, Landroidx/fragment/app/FragmentManagerState;->mBackStack:[Landroidx/fragment/app/BackStackRecordState;

    .line 276
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mBackStackIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 278
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 280
    move-result v2

    .line 283
    iput v2, v3, Landroidx/fragment/app/FragmentManagerState;->mBackStackIndex:I

    .line 284
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    .line 286
    if-eqz v2, :cond_b

    .line 288
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 290
    iput-object v2, v3, Landroidx/fragment/app/FragmentManagerState;->mPrimaryNavActiveWho:Ljava/lang/String;

    .line 292
    :cond_b
    iget-object v2, v3, Landroidx/fragment/app/FragmentManagerState;->mBackStackStateKeys:Ljava/util/ArrayList;

    .line 294
    iget-object v4, p0, Landroidx/fragment/app/FragmentManager;->mBackStackStates:Ljava/util/Map;

    .line 296
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 298
    move-result-object v4

    .line 301
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 302
    iget-object v2, v3, Landroidx/fragment/app/FragmentManagerState;->mBackStackStates:Ljava/util/ArrayList;

    .line 305
    iget-object v4, p0, Landroidx/fragment/app/FragmentManager;->mBackStackStates:Ljava/util/Map;

    .line 307
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 309
    move-result-object v4

    .line 312
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 313
    new-instance v2, Ljava/util/ArrayList;

    .line 316
    iget-object v4, p0, Landroidx/fragment/app/FragmentManager;->mLaunchedFragments:Ljava/util/ArrayDeque;

    .line 318
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 320
    iput-object v2, v3, Landroidx/fragment/app/FragmentManagerState;->mLaunchedFragments:Ljava/util/ArrayList;

    .line 323
    const-string/jumbo v2, "state"

    .line 325
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 328
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mResults:Ljava/util/Map;

    .line 331
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 333
    move-result-object v2

    .line 336
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 337
    move-result-object v2

    .line 340
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 341
    move-result v3

    .line 344
    if-eqz v3, :cond_c

    .line 345
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 347
    move-result-object v3

    .line 350
    check-cast v3, Ljava/lang/String;

    .line 351
    const-string/jumbo v4, "result_"

    .line 353
    invoke-static {v4, v3}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 356
    move-result-object v4

    .line 359
    iget-object v5, p0, Landroidx/fragment/app/FragmentManager;->mResults:Ljava/util/Map;

    .line 360
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    move-result-object v3

    .line 365
    check-cast v3, Landroid/os/Bundle;

    .line 366
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 368
    goto :goto_6

    .line 371
    :cond_c
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 372
    move-result-object p0

    .line 375
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 376
    move-result-object p0

    .line 379
    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 380
    move-result v2

    .line 383
    if-eqz v2, :cond_d

    .line 384
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 386
    move-result-object v2

    .line 389
    check-cast v2, Ljava/lang/String;

    .line 390
    const-string v3, "fragment_"

    .line 392
    invoke-static {v3, v2}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 394
    move-result-object v3

    .line 397
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    move-result-object v2

    .line 401
    check-cast v2, Landroid/os/Bundle;

    .line 402
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 404
    goto :goto_7

    .line 407
    :cond_d
    :goto_8
    return-object v0

    .line 408
    :catchall_0
    move-exception p0

    .line 409
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 410
    throw p0
    .line 411
.end method

.method public final scheduleCommit()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    move-result v1

    .line 10
    const/4 v2, 0x1

    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    const/4 v2, 0x0

    .line 15
    :goto_0
    if-eqz v2, :cond_1

    .line 16
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    .line 18
    iget-object v1, v1, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->mHandler:Landroid/os/Handler;

    .line 20
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mExecCommit:Landroidx/fragment/app/FragmentManager$5;

    .line 22
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 24
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    .line 27
    iget-object v1, v1, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->mHandler:Landroid/os/Handler;

    .line 29
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mExecCommit:Landroidx/fragment/app/FragmentManager$5;

    .line 31
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 33
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->updateOnBackPressedCallbackEnabled()V

    .line 36
    :cond_1
    monitor-exit v0

    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    throw p0
    .line 43
.end method

.method public final setExitAnimationOrder(Landroidx/fragment/app/Fragment;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->getFragmentContainer(Landroidx/fragment/app/Fragment;)Landroid/view/ViewGroup;

    .line 2
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    instance-of p1, p0, Landroidx/fragment/app/FragmentContainerView;

    .line 8
    if-eqz p1, :cond_0

    .line 10
    check-cast p0, Landroidx/fragment/app/FragmentContainerView;

    .line 12
    xor-int/lit8 p1, p2, 0x1

    .line 14
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentContainerView;->setDrawDisappearingViewsLast(Z)V

    .line 16
    :cond_0
    return-void
    .line 19
.end method

.method public final setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)V
    .locals 2

    .line 1
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 2
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findActiveFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    .line 14
    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 18
    if-ne v0, p0, :cond_1

    .line 20
    :cond_0
    iput-object p2, p1, Landroidx/fragment/app/Fragment;->mMaxState:Landroidx/lifecycle/Lifecycle$State;

    .line 22
    return-void

    .line 24
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    const-string v1, "Fragment "

    .line 29
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    const-string p1, " is not an active fragment of FragmentManager "

    .line 37
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object p0

    .line 48
    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 49
    throw p2
    .line 52
.end method

.method public final setPrimaryNavigationFragment(Landroidx/fragment/app/Fragment;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 4
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findActiveFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 6
    move-result-object v0

    .line 9
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    .line 16
    if-eqz v0, :cond_1

    .line 18
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 20
    if-ne v0, p0, :cond_0

    .line 22
    goto :goto_0

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    const-string v2, "Fragment "

    .line 29
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    const-string p1, " is not an active fragment of FragmentManager "

    .line 37
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object p0

    .line 48
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 49
    throw v0

    .line 52
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    .line 53
    iput-object p1, p0, Landroidx/fragment/app/FragmentManager;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    .line 55
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->dispatchParentPrimaryNavigationFragmentChanged(Landroidx/fragment/app/Fragment;)V

    .line 57
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    .line 60
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->dispatchParentPrimaryNavigationFragmentChanged(Landroidx/fragment/app/Fragment;)V

    .line 62
    return-void
    .line 65
.end method

.method public final setVisibleRemovingFragment(Landroidx/fragment/app/Fragment;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->getFragmentContainer(Landroidx/fragment/app/Fragment;)Landroid/view/ViewGroup;

    .line 2
    move-result-object p0

    .line 5
    if-eqz p0, :cond_7

    .line 6
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    .line 8
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    move v2, v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget v2, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mEnterAnim:I

    .line 15
    :goto_0
    if-nez v0, :cond_1

    .line 17
    move v3, v1

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    iget v3, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mExitAnim:I

    .line 21
    :goto_1
    add-int/2addr v3, v2

    .line 23
    if-nez v0, :cond_2

    .line 24
    move v2, v1

    .line 26
    goto :goto_2

    .line 27
    :cond_2
    iget v2, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mPopEnterAnim:I

    .line 28
    :goto_2
    add-int/2addr v2, v3

    .line 30
    if-nez v0, :cond_3

    .line 31
    move v0, v1

    .line 33
    goto :goto_3

    .line 34
    :cond_3
    iget v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mPopExitAnim:I

    .line 35
    :goto_3
    add-int/2addr v0, v2

    .line 37
    if-lez v0, :cond_7

    .line 38
    const v0, 0x7f0a0a70    # @id/visible_removing_fragment_view_tag

    .line 40
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    .line 43
    move-result-object v2

    .line 46
    if-nez v2, :cond_4

    .line 47
    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 49
    :cond_4
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    .line 52
    move-result-object p0

    .line 55
    check-cast p0, Landroidx/fragment/app/Fragment;

    .line 56
    iget-object p1, p1, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    .line 58
    if-nez p1, :cond_5

    .line 60
    goto :goto_4

    .line 62
    :cond_5
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment$AnimationInfo;->mIsPop:Z

    .line 63
    :goto_4
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    .line 65
    if-nez p1, :cond_6

    .line 67
    goto :goto_5

    .line 69
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    .line 70
    move-result-object p0

    .line 73
    iput-boolean v1, p0, Landroidx/fragment/app/Fragment$AnimationInfo;->mIsPop:Z

    .line 74
    :cond_7
    :goto_5
    return-void
    .line 76
.end method

.method public final startPendingDeferredFragments()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->getActiveFragmentStateManagers()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 13
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 17
    if-eqz v1, :cond_2

    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 23
    check-cast v1, Landroidx/fragment/app/FragmentStateManager;

    .line 24
    iget-object v2, v1, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 26
    iget-boolean v3, v2, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    .line 28
    if-eqz v3, :cond_0

    .line 30
    iget-boolean v3, p0, Landroidx/fragment/app/FragmentManager;->mExecutingActions:Z

    .line 32
    if-eqz v3, :cond_1

    .line 34
    const/4 v1, 0x1

    .line 36
    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->mHavePendingDeferredStart:Z

    .line 37
    goto :goto_0

    .line 39
    :cond_1
    const/4 v3, 0x0

    .line 40
    iput-boolean v3, v2, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    .line 41
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentStateManager;->moveToExpectedState()V

    .line 43
    goto :goto_0

    .line 46
    :cond_2
    return-void
    .line 47
.end method

.method public final throwException(Ljava/lang/RuntimeException;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    .line 2
    move-result-object v0

    .line 5
    const-string v1, "FragmentManager"

    .line 6
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    const-string v0, "Activity state:"

    .line 11
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    new-instance v0, Landroidx/fragment/app/LogWriter;

    .line 16
    invoke-direct {v0}, Landroidx/fragment/app/LogWriter;-><init>()V

    .line 18
    new-instance v2, Ljava/io/PrintWriter;

    .line 21
    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 23
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    .line 26
    const-string v3, "Failed dumping state"

    .line 28
    const/4 v4, 0x0

    .line 30
    const/4 v5, 0x0

    .line 31
    const-string v6, "  "

    .line 32
    if-eqz v0, :cond_0

    .line 34
    :try_start_0
    new-array p0, v4, [Ljava/lang/String;

    .line 36
    iget-object v0, v0, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->this$0:Landroidx/fragment/app/FragmentActivity;

    .line 38
    invoke-virtual {v0, v6, v5, v2, p0}, Landroidx/fragment/app/FragmentActivity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    goto :goto_0

    .line 43
    :catch_0
    move-exception p0

    .line 44
    invoke-static {v1, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    goto :goto_0

    .line 48
    :cond_0
    :try_start_1
    new-array v0, v4, [Ljava/lang/String;

    .line 49
    invoke-virtual {p0, v6, v5, v2, v0}, Landroidx/fragment/app/FragmentManager;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 51
    goto :goto_0

    .line 54
    :catch_1
    move-exception p0

    .line 55
    invoke-static {v1, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    :goto_0
    throw p1
    .line 59
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const/16 v1, 0x80

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    const-string v1, "FragmentManager{"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 14
    move-result v1

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, " in "

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mParent:Landroidx/fragment/app/Fragment;

    .line 30
    const-string/jumbo v2, "}"

    .line 32
    const-string/jumbo v3, "{"

    .line 35
    if-eqz v1, :cond_0

    .line 38
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->mParent:Landroidx/fragment/app/Fragment;

    .line 54
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 56
    move-result p0

    .line 59
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 60
    move-result-object p0

    .line 63
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    goto :goto_0

    .line 70
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    .line 71
    if-eqz v1, :cond_1

    .line 73
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    move-result-object v1

    .line 78
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 79
    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    .line 89
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 91
    move-result p0

    .line 94
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 95
    move-result-object p0

    .line 98
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    goto :goto_0

    .line 105
    :cond_1
    const-string p0, "null"

    .line 106
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    :goto_0
    const-string/jumbo p0, "}}"

    .line 111
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    move-result-object p0

    .line 120
    return-object p0
    .line 121
.end method

.method public final updateOnBackPressedCallbackEnabled()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 7
    move-result v1

    .line 10
    const/4 v2, 0x1

    .line 11
    if-nez v1, :cond_1

    .line 12
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->mOnBackPressedCallback:Landroidx/fragment/app/FragmentManager$1;

    .line 14
    iput-boolean v2, p0, Landroidx/fragment/app/FragmentManager$1;->isEnabled:Z

    .line 16
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager$1;->enabledChangedCallback:Lkotlin/jvm/functions/Function0;

    .line 18
    if-eqz p0, :cond_0

    .line 20
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 22
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_3

    .line 27
    :cond_0
    :goto_0
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mOnBackPressedCallback:Landroidx/fragment/app/FragmentManager$1;

    .line 31
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    .line 33
    const/4 v3, 0x0

    .line 35
    if-eqz v1, :cond_2

    .line 36
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 38
    move-result v1

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    move v1, v3

    .line 43
    :goto_1
    if-lez v1, :cond_3

    .line 44
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->mParent:Landroidx/fragment/app/Fragment;

    .line 46
    invoke-static {p0}, Landroidx/fragment/app/FragmentManager;->isPrimaryNavigation(Landroidx/fragment/app/Fragment;)Z

    .line 48
    move-result p0

    .line 51
    if-eqz p0, :cond_3

    .line 52
    goto :goto_2

    .line 54
    :cond_3
    move v2, v3

    .line 55
    :goto_2
    iput-boolean v2, v0, Landroidx/fragment/app/FragmentManager$1;->isEnabled:Z

    .line 56
    iget-object p0, v0, Landroidx/fragment/app/FragmentManager$1;->enabledChangedCallback:Lkotlin/jvm/functions/Function0;

    .line 58
    if-eqz p0, :cond_4

    .line 60
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 62
    :cond_4
    return-void

    .line 65
    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    throw p0
    .line 67
.end method
