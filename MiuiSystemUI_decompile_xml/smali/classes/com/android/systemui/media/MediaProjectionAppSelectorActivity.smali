.class public final Lcom/android/systemui/media/MediaProjectionAppSelectorActivity;
.super Lcom/android/internal/app/ChooserActivity;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorView;
.implements Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorResultHandler;


# instance fields
.field public final activityLauncher:Lcom/android/systemui/util/AsyncActivityLauncher;

.field public component:Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorComponent;

.field public final componentFactory:Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorComponent$Factory;

.field public configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public controller:Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController;

.field public final listControllerFactory:Lkotlin/jvm/functions/Function1;

.field public recentsViewController:Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController;

.field public reviewGrantedConsentRequired:Z

.field public taskSelected:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorComponent$Factory;Lcom/android/systemui/util/AsyncActivityLauncher;)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/media/MediaProjectionAppSelectorActivity;-><init>(Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorComponent$Factory;Lcom/android/systemui/util/AsyncActivityLauncher;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorComponent$Factory;Lcom/android/systemui/util/AsyncActivityLauncher;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/media/MediaProjectionAppSelectorActivity;->componentFactory:Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorComponent$Factory;

    .line 3
    iput-object p2, p0, Lcom/android/systemui/media/MediaProjectionAppSelectorActivity;->activityLauncher:Lcom/android/systemui/util/AsyncActivityLauncher;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/media/MediaProjectionAppSelectorActivity;->listControllerFactory:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final appliedThemeResId()I
    .locals 0

    .line 1
    const p0, 0x7f14056e    # @style/Theme.SystemUI.MediaProjectionAppSelector

    .line 2
    return p0
    .line 5
.end method

.method public final createBlockerEmptyStateProvider()Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyStateProvider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/MediaProjectionAppSelectorActivity;->component:Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorComponent;

    .line 2
    if-nez p0, :cond_0

    .line 4
    const/4 p0, 0x0

    .line 6
    :cond_0
    invoke-interface {p0}, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorComponent;->getEmptyStateProvider()Lcom/android/systemui/mediaprojection/appselector/MediaProjectionBlockerEmptyStateProvider;

    .line 7
    move-result-object p0

    .line 10
    return-object p0
    .line 11
.end method

.method public final createContentPreviewView(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/MediaProjectionAppSelectorActivity;->recentsViewController:Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController;

    .line 2
    if-nez p0, :cond_0

    .line 4
    const/4 p0, 0x0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController;->views:Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController$Views;

    .line 7
    if-eqz v0, :cond_1

    .line 9
    iget-object v0, v0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController$Views;->root:Landroid/view/ViewGroup;

    .line 11
    if-nez v0, :cond_2

    .line 13
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 15
    move-result-object v0

    .line 18
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 19
    move-result-object v0

    .line 22
    const v1, 0x7f0d0186    # @layout/media_projection_recent_tasks 'res/layout/media_projection_recent_tasks.xml'

    .line 23
    const/4 v2, 0x0

    .line 26
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 27
    move-result-object v0

    .line 30
    check-cast v0, Landroid/view/ViewGroup;

    .line 31
    const v1, 0x7f0a0592    # @id/media_projection_recent_tasks_container

    .line 33
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 36
    move-result-object v1

    .line 39
    invoke-virtual {p0, v1}, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController;->setTaskHeightSize(Landroid/view/View;)V

    .line 40
    const v3, 0x7f0a0593    # @id/media_projection_recent_tasks_loader

    .line 43
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 46
    move-result-object v3

    .line 49
    const v4, 0x7f0a0594    # @id/media_projection_recent_tasks_recycler

    .line 50
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 53
    move-result-object v4

    .line 56
    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    .line 57
    new-instance v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 59
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 61
    invoke-direct {v5, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 64
    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 67
    new-instance v2, Lcom/android/systemui/util/recycler/HorizontalSpacerItemDecoration;

    .line 70
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 72
    move-result-object p1

    .line 75
    const v5, 0x7f0707b3    # @dimen/media_projection_app_selector_recents_padding '16.0dp'

    .line 76
    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 79
    move-result p1

    .line 82
    invoke-direct {v2, p1}, Lcom/android/systemui/util/recycler/HorizontalSpacerItemDecoration;-><init>(I)V

    .line 83
    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 86
    new-instance p1, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController$Views;

    .line 89
    invoke-direct {p1, v0, v1, v3, v4}, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController$Views;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 91
    iput-object p1, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController;->views:Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController$Views;

    .line 94
    iget-object p1, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController;->lastBoundData:Ljava/util/List;

    .line 96
    if-eqz p1, :cond_2

    .line 98
    invoke-virtual {p0, p1}, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController;->bind(Ljava/util/List;)V

    .line 100
    :cond_2
    return-object v0
    .line 103
.end method

.method public final createListController(Landroid/os/UserHandle;)Lcom/android/internal/app/ResolverListController;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/MediaProjectionAppSelectorActivity;->listControllerFactory:Lkotlin/jvm/functions/Function1;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 9
    check-cast v0, Lcom/android/internal/app/ResolverListController;

    .line 10
    if-nez v0, :cond_1

    .line 12
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/app/ChooserActivity;->createListController(Landroid/os/UserHandle;)Lcom/android/internal/app/ResolverListController;

    .line 14
    move-result-object v0

    .line 17
    :cond_1
    return-object v0
    .line 18
.end method

.method public final createMyUserIdProvider()Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$MyUserIdProvider;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/media/MediaProjectionAppSelectorActivity$createMyUserIdProvider$1;

    .line 2
    invoke-direct {v0, p0}, Lcom/android/systemui/media/MediaProjectionAppSelectorActivity$createMyUserIdProvider$1;-><init>(Lcom/android/systemui/media/MediaProjectionAppSelectorActivity;)V

    .line 4
    return-object v0
    .line 7
.end method

.method public final getLayoutResource()I
    .locals 0

    .line 1
    const p0, 0x7f0d0185    # @layout/media_projection_app_selector 'res/layout/media_projection_app_selector.xml'

    .line 2
    return p0
    .line 5
.end method

.method public final onActivityStarted(Lcom/android/internal/app/chooser/TargetInfo;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/internal/app/ChooserActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object p0, p0, Lcom/android/systemui/media/MediaProjectionAppSelectorActivity;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 5
    if-nez p0, :cond_0

    .line 7
    const/4 p0, 0x0

    .line 9
    :cond_0
    check-cast p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 10
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 12
    return-void
    .line 15
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/MediaProjectionAppSelectorActivity;->componentFactory:Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorComponent$Factory;

    .line 2
    invoke-interface {v0, p0, p0, p0}, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorComponent$Factory;->create(Lcom/android/systemui/media/MediaProjectionAppSelectorActivity;Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorView;Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorResultHandler;)Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorComponent;

    .line 4
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/android/systemui/media/MediaProjectionAppSelectorActivity;->component:Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorComponent;

    .line 8
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    move-object v0, v1

    .line 13
    :cond_0
    invoke-interface {v0}, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorComponent;->getConfigurationController()Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 14
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/android/systemui/media/MediaProjectionAppSelectorActivity;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 18
    iget-object v0, p0, Lcom/android/systemui/media/MediaProjectionAppSelectorActivity;->component:Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorComponent;

    .line 20
    if-nez v0, :cond_1

    .line 22
    move-object v0, v1

    .line 24
    :cond_1
    invoke-interface {v0}, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorComponent;->getController()Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController;

    .line 25
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/android/systemui/media/MediaProjectionAppSelectorActivity;->controller:Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController;

    .line 29
    iget-object v0, p0, Lcom/android/systemui/media/MediaProjectionAppSelectorActivity;->component:Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorComponent;

    .line 31
    if-nez v0, :cond_2

    .line 33
    move-object v0, v1

    .line 35
    :cond_2
    invoke-interface {v0}, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorComponent;->getRecentsViewController()Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController;

    .line 36
    move-result-object v0

    .line 39
    iput-object v0, p0, Lcom/android/systemui/media/MediaProjectionAppSelectorActivity;->recentsViewController:Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController;

    .line 40
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getIntent()Landroid/content/Intent;

    .line 42
    move-result-object v0

    .line 45
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    .line 46
    move-result-object v2

    .line 49
    iget-object v3, p0, Lcom/android/systemui/media/MediaProjectionAppSelectorActivity;->component:Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorComponent;

    .line 50
    if-nez v3, :cond_3

    .line 52
    move-object v3, v1

    .line 54
    :cond_3
    invoke-interface {v3}, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorComponent;->getHostUserHandle()Landroid/os/UserHandle;

    .line 55
    move-result-object v3

    .line 58
    iget-object v4, p0, Lcom/android/systemui/media/MediaProjectionAppSelectorActivity;->component:Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorComponent;

    .line 59
    if-nez v4, :cond_4

    .line 61
    move-object v4, v1

    .line 63
    :cond_4
    invoke-interface {v4}, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorComponent;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    .line 64
    move-result-object v4

    .line 67
    new-instance v5, Landroid/content/Intent;

    .line 68
    const-string v6, "android.intent.action.MAIN"

    .line 70
    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    const-string v6, "android.intent.category.LAUNCHER"

    .line 75
    invoke-virtual {v5, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    const-string v6, "android.intent.extra.INTENT"

    .line 80
    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 82
    const v5, 0x7f130a63    # @string/screen_share_permission_app_selector_title 'Share or record an app'

    .line 85
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 88
    move-result-object v2

    .line 91
    const-string v5, "android.intent.extra.TITLE"

    .line 92
    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 97
    move-result v2

    .line 100
    xor-int/lit8 v2, v2, 0x1

    .line 101
    const-string v3, "com.android.internal.app.ResolverActivity.EXTRA_SELECTED_PROFILE"

    .line 103
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 105
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getIntent()Landroid/content/Intent;

    .line 108
    move-result-object v0

    .line 111
    const-string v2, "extra_media_projection_user_consent_required"

    .line 112
    const/4 v3, 0x0

    .line 114
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 115
    move-result v0

    .line 118
    iput-boolean v0, p0, Lcom/android/systemui/media/MediaProjectionAppSelectorActivity;->reviewGrantedConsentRequired:Z

    .line 119
    invoke-super {p0, p1}, Lcom/android/internal/app/ChooserActivity;->onCreate(Landroid/os/Bundle;)V

    .line 121
    iget-object p0, p0, Lcom/android/systemui/media/MediaProjectionAppSelectorActivity;->controller:Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController;

    .line 124
    if-nez p0, :cond_5

    .line 126
    goto :goto_0

    .line 128
    :cond_5
    move-object v1, p0

    .line 129
    :goto_0
    invoke-virtual {v1}, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController;->init()V

    .line 130
    return-void
    .line 133
.end method

.method public final onDestroy()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/media/MediaProjectionAppSelectorActivity;->taskSelected:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    sget-object v0, Lcom/android/systemui/media/MediaProjectionServiceHelper;->service:Landroid/media/projection/IMediaProjectionManager;

    .line 7
    const/4 v0, 0x0

    .line 9
    iget-boolean v2, p0, Lcom/android/systemui/media/MediaProjectionAppSelectorActivity;->reviewGrantedConsentRequired:Z

    .line 10
    invoke-static {v0, v2, v1}, Lcom/android/systemui/media/MediaProjectionServiceHelper$Companion;->setReviewedConsentIfNeeded(IZLandroid/media/projection/IMediaProjection;)V

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/MediaProjectionAppSelectorActivity;->activityLauncher:Lcom/android/systemui/util/AsyncActivityLauncher;

    .line 15
    iput-object v1, v0, Lcom/android/systemui/util/AsyncActivityLauncher;->pendingCallback:Lkotlin/jvm/functions/Function1;

    .line 17
    iget-object v0, p0, Lcom/android/systemui/media/MediaProjectionAppSelectorActivity;->controller:Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController;

    .line 19
    if-nez v0, :cond_1

    .line 21
    goto :goto_0

    .line 23
    :cond_1
    move-object v1, v0

    .line 24
    :goto_0
    iget-object v0, v1, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 25
    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel$default(Lkotlinx/coroutines/CoroutineScope;)V

    .line 27
    invoke-super {p0}, Lcom/android/internal/app/ChooserActivity;->onDestroy()V

    .line 30
    return-void
    .line 33
.end method

.method public final returnSelectedApp(Landroid/os/IBinder;)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/media/MediaProjectionAppSelectorActivity;->taskSelected:Z

    .line 3
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getIntent()Landroid/content/Intent;

    .line 5
    move-result-object v0

    .line 8
    const-string v1, "capture_region_result_receiver"

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 11
    move-result v0

    .line 14
    const/4 v2, -0x1

    .line 15
    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getIntent()Landroid/content/Intent;

    .line 18
    move-result-object v0

    .line 21
    const-class v3, Landroid/os/ResultReceiver;

    .line 22
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 27
    check-cast v0, Landroid/os/ResultReceiver;

    .line 28
    new-instance v1, Lcom/android/systemui/media/MediaProjectionCaptureTarget;

    .line 30
    invoke-direct {v1, p1}, Lcom/android/systemui/media/MediaProjectionCaptureTarget;-><init>(Landroid/os/IBinder;)V

    .line 32
    new-instance p1, Landroid/os/Bundle;

    .line 35
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 37
    const-string v3, "capture_region"

    .line 40
    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 42
    invoke-virtual {v0, v2, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 45
    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getIntent()Landroid/content/Intent;

    .line 49
    move-result-object v0

    .line 52
    const-string v1, "android.media.projection.extra.EXTRA_MEDIA_PROJECTION"

    .line 53
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIBinderExtra(Ljava/lang/String;)Landroid/os/IBinder;

    .line 55
    move-result-object v0

    .line 58
    invoke-static {v0}, Landroid/media/projection/IMediaProjection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjection;

    .line 59
    move-result-object v0

    .line 62
    invoke-interface {v0, p1}, Landroid/media/projection/IMediaProjection;->setLaunchCookie(Landroid/os/IBinder;)V

    .line 63
    new-instance p1, Landroid/content/Intent;

    .line 66
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 68
    invoke-interface {v0}, Landroid/media/projection/IMediaProjection;->asBinder()Landroid/os/IBinder;

    .line 71
    move-result-object v3

    .line 74
    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    .line 75
    invoke-virtual {p0, v2, p1}, Lcom/android/internal/app/ChooserActivity;->setResult(ILandroid/content/Intent;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->setForceSendResultForMediaProjection()V

    .line 81
    sget-object p1, Lcom/android/systemui/media/MediaProjectionServiceHelper;->service:Landroid/media/projection/IMediaProjectionManager;

    .line 84
    const/4 p1, 0x2

    .line 86
    iget-boolean v1, p0, Lcom/android/systemui/media/MediaProjectionAppSelectorActivity;->reviewGrantedConsentRequired:Z

    .line 87
    invoke-static {p1, v1, v0}, Lcom/android/systemui/media/MediaProjectionServiceHelper$Companion;->setReviewedConsentIfNeeded(IZLandroid/media/projection/IMediaProjection;)V

    .line 89
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->finish()V

    .line 92
    return-void
    .line 95
.end method

.method public final shouldGetOnlyDefaultActivities()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final shouldShowContentPreview()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method

.method public final shouldShowContentPreviewWhenEmpty()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method

.method public final startSelected(IZZ)V
    .locals 5

    .line 1
    iget-object p2, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    .line 2
    invoke-virtual {p2}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    .line 4
    move-result-object p2

    .line 7
    invoke-virtual {p2, p1, p3}, Lcom/android/internal/app/ChooserListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/chooser/TargetInfo;

    .line 8
    move-result-object p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    return-void

    .line 14
    :cond_0
    instance-of p2, p1, Lcom/android/internal/app/chooser/NotSelectableTargetInfo;

    .line 15
    if-eqz p2, :cond_1

    .line 17
    return-void

    .line 19
    :cond_1
    new-instance p2, Landroid/content/Intent;

    .line 20
    invoke-interface {p1}, Lcom/android/internal/app/chooser/TargetInfo;->getResolvedIntent()Landroid/content/Intent;

    .line 22
    move-result-object p3

    .line 25
    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 26
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    .line 29
    move-result p3

    .line 32
    const/high16 v0, 0x10000000

    .line 33
    or-int/2addr p3, v0

    .line 35
    invoke-virtual {p2, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 36
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    .line 39
    move-result p3

    .line 42
    const v1, -0x2000001

    .line 43
    and-int/2addr p3, v1

    .line 46
    invoke-virtual {p2, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 47
    new-instance p3, Landroid/os/Binder;

    .line 50
    const-string v1, "media_projection_launch_token"

    .line 52
    invoke-direct {p3, v1}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 57
    move-result-object v1

    .line 60
    invoke-virtual {v1, p3}, Landroid/app/ActivityOptions;->setLaunchCookie(Landroid/os/IBinder;)V

    .line 61
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 64
    invoke-virtual {v2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    .line 66
    move-result-object v2

    .line 69
    invoke-virtual {v2}, Lcom/android/internal/app/ResolverListAdapter;->getUserHandle()Landroid/os/UserHandle;

    .line 70
    move-result-object v2

    .line 73
    iget-object v3, p0, Lcom/android/systemui/media/MediaProjectionAppSelectorActivity;->activityLauncher:Lcom/android/systemui/util/AsyncActivityLauncher;

    .line 74
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 76
    move-result-object v1

    .line 79
    new-instance v4, Lcom/android/systemui/media/MediaProjectionAppSelectorActivity$startSelected$activityStarted$1;

    .line 80
    invoke-direct {v4, p0, p3}, Lcom/android/systemui/media/MediaProjectionAppSelectorActivity$startSelected$activityStarted$1;-><init>(Lcom/android/systemui/media/MediaProjectionAppSelectorActivity;Landroid/os/IBinder;)V

    .line 82
    iget-object p0, v3, Lcom/android/systemui/util/AsyncActivityLauncher;->pendingCallback:Lkotlin/jvm/functions/Function1;

    .line 85
    if-eqz p0, :cond_2

    .line 87
    goto :goto_0

    .line 89
    :cond_2
    iput-object v4, v3, Lcom/android/systemui/util/AsyncActivityLauncher;->pendingCallback:Lkotlin/jvm/functions/Function1;

    .line 90
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    .line 92
    move-result p0

    .line 95
    or-int/2addr p0, v0

    .line 96
    invoke-virtual {p2, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 97
    new-instance p0, Lcom/android/systemui/util/AsyncActivityLauncher$startActivityAsUser$1;

    .line 100
    invoke-direct {p0, v3, p2, v1, v2}, Lcom/android/systemui/util/AsyncActivityLauncher$startActivityAsUser$1;-><init>(Lcom/android/systemui/util/AsyncActivityLauncher;Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 102
    iget-object p2, v3, Lcom/android/systemui/util/AsyncActivityLauncher;->backgroundExecutor:Ljava/util/concurrent/Executor;

    .line 105
    invoke-interface {p2, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 107
    :goto_0
    invoke-interface {p1}, Lcom/android/internal/app/chooser/TargetInfo;->isSuspended()Z

    .line 110
    return-void
    .line 113
.end method
