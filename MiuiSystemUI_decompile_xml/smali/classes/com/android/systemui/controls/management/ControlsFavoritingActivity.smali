.class public Lcom/android/systemui/controls/management/ControlsFavoritingActivity;
.super Landroidx/activity/ComponentActivity;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public appName:Ljava/lang/CharSequence;

.field public cancelLoadRunnable:Ljava/lang/Runnable;

.field public comparator:Lcom/android/systemui/controls/management/ControlsFavoritingActivity$onCreate$$inlined$compareBy$1;

.field public component:Landroid/content/ComponentName;

.field public final controller:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

.field public final controlsModelCallback:Lcom/android/systemui/controls/management/ControlsFavoritingActivity$controlsModelCallback$1;

.field public doneButton:Landroid/view/View;

.field public final executor:Ljava/util/concurrent/Executor;

.field public final isNewFlowEnabled:Z

.field public isPagerLoaded:Z

.field public listOfStructures:Ljava/util/List;

.field public final listingCallback:Lcom/android/systemui/controls/management/ControlsFavoritingActivity$listingCallback$1;

.field public final listingController:Lcom/android/systemui/controls/management/ControlsListingController;

.field public final mOnBackInvokedCallback:Lcom/android/systemui/controls/management/ControlsFavoritingActivity$mOnBackInvokedCallback$1;

.field public mTooltipManager:Lcom/android/systemui/controls/TooltipManager;

.field public openSource:B

.field public otherAppsButton:Landroid/view/View;

.field public pageIndicator:Lcom/android/systemui/controls/management/ManagementPageIndicator;

.field public rearrangeButton:Landroid/widget/Button;

.field public statusText:Landroid/widget/TextView;

.field public structureExtra:Ljava/lang/CharSequence;

.field public structurePager:Landroidx/viewpager2/widget/ViewPager2;

.field public subtitleView:Landroid/widget/TextView;

.field public titleView:Landroid/widget/TextView;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;

.field public final userTrackerCallback:Lcom/android/systemui/settings/UserTracker$Callback;


# direct methods
.method public constructor <init>(Lcom/android/systemui/flags/FeatureFlags;Ljava/util/concurrent/Executor;Lcom/android/systemui/controls/controller/ControlsControllerImpl;Lcom/android/systemui/controls/management/ControlsListingController;Lcom/android/systemui/settings/UserTracker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/activity/ComponentActivity;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->executor:Ljava/util/concurrent/Executor;

    .line 5
    iput-object p3, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->controller:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 7
    iput-object p4, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->listingController:Lcom/android/systemui/controls/management/ControlsListingController;

    .line 9
    iput-object p5, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 11
    sget-object p2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 13
    iput-object p2, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->listOfStructures:Ljava/util/List;

    .line 15
    sget-object p2, Lcom/android/systemui/flags/Flags;->CONTROLS_MANAGEMENT_NEW_FLOWS:Lcom/android/systemui/flags/ReleasedFlag;

    .line 17
    check-cast p1, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 19
    invoke-virtual {p1, p2}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 21
    move-result p1

    .line 24
    iput-boolean p1, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->isNewFlowEnabled:Z

    .line 25
    new-instance p1, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$userTrackerCallback$1;

    .line 27
    invoke-direct {p1, p0}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$userTrackerCallback$1;-><init>(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)V

    .line 29
    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->userTrackerCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    .line 32
    new-instance p1, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$mOnBackInvokedCallback$1;

    .line 34
    invoke-direct {p1, p0}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$mOnBackInvokedCallback$1;-><init>(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)V

    .line 36
    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->mOnBackInvokedCallback:Lcom/android/systemui/controls/management/ControlsFavoritingActivity$mOnBackInvokedCallback$1;

    .line 39
    new-instance p1, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$listingCallback$1;

    .line 41
    invoke-direct {p1, p0}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$listingCallback$1;-><init>(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)V

    .line 43
    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->listingCallback:Lcom/android/systemui/controls/management/ControlsFavoritingActivity$listingCallback$1;

    .line 46
    new-instance p1, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$controlsModelCallback$1;

    .line 48
    invoke-direct {p1, p0}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$controlsModelCallback$1;-><init>(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)V

    .line 50
    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->controlsModelCallback:Lcom/android/systemui/controls/management/ControlsFavoritingActivity$controlsModelCallback$1;

    .line 53
    return-void
    .line 55
.end method

.method public static final access$saveFavorites(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->listOfStructures:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/systemui/controls/management/StructureContainer;

    .line 18
    iget-object v2, v1, Lcom/android/systemui/controls/management/StructureContainer;->model:Lcom/android/systemui/controls/management/ControlsModel;

    .line 20
    invoke-interface {v2}, Lcom/android/systemui/controls/management/ControlsModel;->getFavorites()Ljava/util/List;

    .line 22
    move-result-object v2

    .line 25
    new-instance v3, Lcom/android/systemui/controls/controller/StructureInfo;

    .line 26
    iget-object v4, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->component:Landroid/content/ComponentName;

    .line 28
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 30
    iget-object v1, v1, Lcom/android/systemui/controls/management/StructureContainer;->structureName:Ljava/lang/CharSequence;

    .line 33
    invoke-direct {v3, v4, v1, v2}, Lcom/android/systemui/controls/controller/StructureInfo;-><init>(Landroid/content/ComponentName;Ljava/lang/CharSequence;Ljava/util/List;)V

    .line 35
    iget-object v1, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->controller:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 38
    invoke-virtual {v1}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->confirmAvailability()Z

    .line 40
    move-result v2

    .line 43
    if-nez v2, :cond_0

    .line 44
    goto :goto_0

    .line 46
    :cond_0
    new-instance v2, Lcom/android/systemui/controls/controller/ControlsControllerImpl$removeFavorites$1;

    .line 47
    const/4 v4, 0x3

    .line 49
    invoke-direct {v2, v3, v1, v4}, Lcom/android/systemui/controls/controller/ControlsControllerImpl$removeFavorites$1;-><init>(Ljava/lang/Object;Lcom/android/systemui/controls/controller/ControlsControllerImpl;I)V

    .line 50
    iget-object v1, v1, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 53
    check-cast v1, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 55
    invoke-virtual {v1, v2}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 57
    goto :goto_0

    .line 60
    :cond_1
    return-void
    .line 61
.end method


# virtual methods
.method public animateExitAndFinish$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core()V
    .locals 2

    .line 1
    const v0, 0x7f0a0249    # @id/controls_management_root

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 5
    move-result-object v0

    .line 8
    check-cast v0, Landroid/view/ViewGroup;

    .line 9
    new-instance v1, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$animateExitAndFinish$1;

    .line 11
    invoke-direct {v1, p0}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$animateExitAndFinish$1;-><init>(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)V

    .line 13
    invoke-static {v0, v1}, Lcom/android/systemui/controls/management/ControlsAnimations;->exitAnimation(Landroid/view/View;Ljava/lang/Runnable;)Landroid/animation/Animator;

    .line 16
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    .line 20
    return-void
    .line 23
.end method

.method public final onBackPressed()V
    .locals 4

    .line 1
    iget-byte v0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->openSource:B

    .line 2
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    move v0, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v0, v3

    .line 11
    :goto_0
    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->animateExitAndFinish$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core()V

    .line 14
    :cond_1
    iget-byte v0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->openSource:B

    .line 17
    if-ne v0, v2, :cond_2

    .line 19
    goto :goto_1

    .line 21
    :cond_2
    move v2, v3

    .line 22
    :goto_1
    if-nez v2, :cond_3

    .line 23
    new-instance v0, Landroid/content/Intent;

    .line 25
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    .line 27
    move-result-object v1

    .line 30
    const-class v2, Lcom/android/systemui/controls/ui/ControlsActivity;

    .line 31
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 33
    new-array v1, v3, [Landroid/util/Pair;

    .line 36
    invoke-static {p0, v1}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/util/Pair;)Landroid/app/ActivityOptions;

    .line 38
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 42
    move-result-object v1

    .line 45
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 46
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->animateExitAndFinish$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core()V

    .line 49
    return-void
    .line 52
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->mTooltipManager:Lcom/android/systemui/controls/TooltipManager;

    .line 5
    if-eqz p0, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/TooltipManager;->hide(Z)V

    .line 10
    :cond_0
    return-void
    .line 13
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 5
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 9
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    .line 13
    move-result-object p1

    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p1, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    .line 18
    move-result-object p1

    .line 21
    invoke-static {p1}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    .line 22
    move-result-object p1

    .line 25
    new-instance v1, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$onCreate$$inlined$compareBy$1;

    .line 26
    invoke-direct {v1, p1}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$onCreate$$inlined$compareBy$1;-><init>(Ljava/util/Comparator;)V

    .line 28
    iput-object v1, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->comparator:Lcom/android/systemui/controls/management/ControlsFavoritingActivity$onCreate$$inlined$compareBy$1;

    .line 31
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 33
    move-result-object p1

    .line 36
    const-string v1, "extra_app_label"

    .line 37
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 39
    move-result-object p1

    .line 42
    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->appName:Ljava/lang/CharSequence;

    .line 43
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 45
    move-result-object p1

    .line 48
    const-string v1, "extra_structure"

    .line 49
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 51
    move-result-object p1

    .line 54
    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->structureExtra:Ljava/lang/CharSequence;

    .line 55
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 57
    move-result-object p1

    .line 60
    const-string v1, "android.intent.extra.COMPONENT_NAME"

    .line 61
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 63
    move-result-object p1

    .line 66
    check-cast p1, Landroid/content/ComponentName;

    .line 67
    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->component:Landroid/content/ComponentName;

    .line 69
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 71
    move-result-object p1

    .line 74
    const-string v1, "extra_source"

    .line 75
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    .line 77
    move-result p1

    .line 80
    iput-byte p1, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->openSource:B

    .line 81
    const p1, 0x7f0d007e    # @layout/controls_management 'res/layout/controls_management.xml'

    .line 83
    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    .line 86
    const p1, 0x7f0a0249    # @id/controls_management_root

    .line 89
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 92
    move-result-object p1

    .line 95
    check-cast p1, Landroid/view/ViewGroup;

    .line 96
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 98
    move-result-object v1

    .line 101
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 102
    move-result-object v2

    .line 105
    new-instance v3, Lcom/android/systemui/controls/management/ControlsAnimations$observerForAnimations$1;

    .line 106
    const/4 v4, 0x1

    .line 108
    invoke-direct {v3, v2, p1, v1, v4}, Lcom/android/systemui/controls/management/ControlsAnimations$observerForAnimations$1;-><init>(Landroid/content/Intent;Landroid/view/ViewGroup;Landroid/view/Window;Z)V

    .line 109
    iget-object p1, p0, Landroidx/activity/ComponentActivity;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    .line 112
    invoke-virtual {p1, v3}, Landroidx/lifecycle/LifecycleRegistry;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 114
    const p1, 0x7f0a08f8    # @id/stub

    .line 117
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 120
    move-result-object p1

    .line 123
    check-cast p1, Landroid/view/ViewStub;

    .line 124
    const v1, 0x7f0d0081    # @layout/controls_management_favorites 'res/layout/controls_management_favorites.xml'

    .line 126
    invoke-virtual {p1, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 129
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 132
    const p1, 0x7f0a08ef    # @id/status_message

    .line 135
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 138
    move-result-object p1

    .line 141
    check-cast p1, Landroid/widget/TextView;

    .line 142
    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->statusText:Landroid/widget/TextView;

    .line 144
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    .line 146
    move-result-object p1

    .line 149
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 150
    move-result-object v1

    .line 153
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 154
    move-result-object p1

    .line 157
    const-string v1, "ControlsStructureSwipeTooltipCount"

    .line 158
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 160
    move-result p1

    .line 163
    const/4 v1, 0x2

    .line 164
    if-ge p1, v1, :cond_0

    .line 165
    move p1, v4

    .line 167
    goto :goto_0

    .line 168
    :cond_0
    move p1, v0

    .line 169
    :goto_0
    if-eqz p1, :cond_2

    .line 170
    new-instance p1, Lcom/android/systemui/controls/TooltipManager;

    .line 172
    iget-object v2, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->statusText:Landroid/widget/TextView;

    .line 174
    if-nez v2, :cond_1

    .line 176
    const/4 v2, 0x0

    .line 178
    :cond_1
    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    .line 179
    move-result-object v2

    .line 182
    invoke-direct {p1, v2}, Lcom/android/systemui/controls/TooltipManager;-><init>(Landroid/content/Context;)V

    .line 183
    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->mTooltipManager:Lcom/android/systemui/controls/TooltipManager;

    .line 186
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 188
    const/16 v3, 0x33

    .line 190
    const/4 v5, -0x2

    .line 192
    invoke-direct {v2, v5, v5, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 193
    iget-object p1, p1, Lcom/android/systemui/controls/TooltipManager;->layout:Landroid/view/ViewGroup;

    .line 196
    invoke-virtual {p0, p1, v2}, Landroidx/activity/ComponentActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    :cond_2
    const p1, 0x7f0a08f6    # @id/structure_page_indicator

    .line 201
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 204
    move-result-object p1

    .line 207
    check-cast p1, Lcom/android/systemui/controls/management/ManagementPageIndicator;

    .line 208
    new-instance v2, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$bindViews$2$1;

    .line 210
    invoke-direct {v2, p0}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$bindViews$2$1;-><init>(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)V

    .line 212
    invoke-virtual {p1, v2}, Lcom/android/systemui/controls/management/ManagementPageIndicator;->setVisibilityListener(Lkotlin/jvm/functions/Function1;)V

    .line 215
    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->pageIndicator:Lcom/android/systemui/controls/management/ManagementPageIndicator;

    .line 218
    iget-object p1, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->structureExtra:Ljava/lang/CharSequence;

    .line 220
    if-nez p1, :cond_3

    .line 222
    iget-object p1, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->appName:Ljava/lang/CharSequence;

    .line 224
    if-nez p1, :cond_3

    .line 226
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 228
    move-result-object p1

    .line 231
    const v2, 0x7f1302fe    # @string/controls_favorite_default_title 'Controls'

    .line 232
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 235
    move-result-object p1

    .line 238
    :cond_3
    const v2, 0x7f0a09a2    # @id/id_0x7f0a09a2

    .line 239
    invoke-virtual {p0, v2}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 242
    move-result-object v2

    .line 245
    check-cast v2, Landroid/widget/TextView;

    .line 246
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iput-object v2, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->titleView:Landroid/widget/TextView;

    .line 251
    const p1, 0x7f0a08ff    # @id/subtitle

    .line 253
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 256
    move-result-object p1

    .line 259
    check-cast p1, Landroid/widget/TextView;

    .line 260
    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    .line 262
    move-result-object v2

    .line 265
    const v3, 0x7f130306    # @string/controls_favorite_subtitle 'Choose device controls to access quickly'

    .line 266
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 269
    move-result-object v2

    .line 272
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->subtitleView:Landroid/widget/TextView;

    .line 276
    const p1, 0x7f0a08f7    # @id/structure_pager

    .line 278
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 281
    move-result-object p1

    .line 284
    check-cast p1, Landroidx/viewpager2/widget/ViewPager2;

    .line 285
    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->structurePager:Landroidx/viewpager2/widget/ViewPager2;

    .line 287
    new-instance v2, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$bindViews$5;

    .line 289
    invoke-direct {v2, p0, v0}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$bindViews$5;-><init>(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;I)V

    .line 291
    iget-object p1, p1, Landroidx/viewpager2/widget/ViewPager2;->mExternalPageChangeCallbacks:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    .line 294
    iget-object p1, p1, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;->mCallbacks:Ljava/util/List;

    .line 296
    check-cast p1, Ljava/util/ArrayList;

    .line 298
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    const p1, 0x7f0a077c    # @id/rearrange

    .line 303
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 306
    move-result-object p1

    .line 309
    check-cast p1, Landroid/widget/Button;

    .line 310
    iget-byte v2, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->openSource:B

    .line 312
    if-ne v2, v1, :cond_4

    .line 314
    move v1, v4

    .line 316
    goto :goto_1

    .line 317
    :cond_4
    move v1, v0

    .line 318
    :goto_1
    if-eqz v1, :cond_5

    .line 319
    const v1, 0x7f1302fd    # @string/controls_favorite_back_to_editing 'Back to editing'

    .line 321
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 324
    move-result-object v1

    .line 327
    goto :goto_2

    .line 328
    :cond_5
    const v1, 0x7f130303    # @string/controls_favorite_rearrange_button 'Rearrange'

    .line 329
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 332
    move-result-object v1

    .line 335
    :goto_2
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 336
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 339
    iget-boolean v1, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->isNewFlowEnabled:Z

    .line 342
    if-eqz v1, :cond_6

    .line 344
    move v1, v0

    .line 346
    goto :goto_3

    .line 347
    :cond_6
    const/16 v1, 0x8

    .line 348
    :goto_3
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 350
    new-instance v1, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$bindButtons$1$1;

    .line 353
    invoke-direct {v1, p0, p1, v0}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$bindButtons$1$1;-><init>(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;Landroid/widget/Button;I)V

    .line 355
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->rearrangeButton:Landroid/widget/Button;

    .line 361
    const p1, 0x7f0a06d5    # @id/other_apps

    .line 363
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 366
    move-result-object p1

    .line 369
    move-object v1, p1

    .line 370
    check-cast v1, Landroid/widget/Button;

    .line 371
    new-instance v2, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$bindButtons$1$1;

    .line 373
    invoke-direct {v2, p0, v1, v4}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$bindButtons$1$1;-><init>(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;Landroid/widget/Button;I)V

    .line 375
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->otherAppsButton:Landroid/view/View;

    .line 381
    const p1, 0x7f0a02eb    # @id/done

    .line 383
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 386
    move-result-object p1

    .line 389
    move-object v1, p1

    .line 390
    check-cast v1, Landroid/widget/Button;

    .line 391
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 393
    new-instance v0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$bindButtons$3$1;

    .line 396
    invoke-direct {v0, p0}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$bindButtons$3$1;-><init>(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)V

    .line 398
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->doneButton:Landroid/view/View;

    .line 404
    return-void
    .line 406
.end method

.method public final onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->cancelLoadRunnable:Ljava/lang/Runnable;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 6
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 9
    return-void
    .line 12
.end method

.method public final onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->mTooltipManager:Lcom/android/systemui/controls/TooltipManager;

    .line 5
    if-eqz p0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/systemui/controls/TooltipManager;->hide(Z)V

    .line 10
    :cond_0
    return-void
    .line 13
.end method

.method public final onResume()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    iget-boolean v0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->isPagerLoaded:Z

    .line 5
    if-nez v0, :cond_5

    .line 7
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->structurePager:Landroidx/viewpager2/widget/ViewPager2;

    .line 9
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    move-object v0, v1

    .line 14
    :cond_0
    const/4 v2, 0x0

    .line 15
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 16
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->pageIndicator:Lcom/android/systemui/controls/management/ManagementPageIndicator;

    .line 19
    if-nez v0, :cond_1

    .line 21
    move-object v0, v1

    .line 23
    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 24
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->structurePager:Landroidx/viewpager2/widget/ViewPager2;

    .line 27
    if-nez v0, :cond_2

    .line 29
    move-object v0, v1

    .line 31
    :cond_2
    new-instance v2, Lcom/android/systemui/controls/management/StructureAdapter;

    .line 32
    sget-object v3, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 34
    invoke-direct {v2, v3}, Lcom/android/systemui/controls/management/StructureAdapter;-><init>(Ljava/util/List;)V

    .line 36
    invoke-virtual {v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 39
    new-instance v2, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$bindViews$5;

    .line 42
    const/4 v3, 0x1

    .line 44
    invoke-direct {v2, p0, v3}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$bindViews$5;-><init>(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;I)V

    .line 45
    iget-object v0, v0, Landroidx/viewpager2/widget/ViewPager2;->mExternalPageChangeCallbacks:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    .line 48
    iget-object v0, v0, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;->mCallbacks:Ljava/util/List;

    .line 50
    check-cast v0, Ljava/util/ArrayList;

    .line 52
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->component:Landroid/content/ComponentName;

    .line 57
    if-eqz v0, :cond_4

    .line 59
    iget-object v2, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->statusText:Landroid/widget/TextView;

    .line 61
    if-nez v2, :cond_3

    .line 63
    goto :goto_0

    .line 65
    :cond_3
    move-object v1, v2

    .line 66
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 67
    move-result-object v2

    .line 70
    const v4, 0x1040547    # @android:string/mediasize_iso_b7

    .line 71
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 74
    move-result-object v2

    .line 77
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 81
    move-result-object v1

    .line 84
    const v2, 0x7f130301    # @string/controls_favorite_other_zone_header 'Other'

    .line 85
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 88
    move-result-object v1

    .line 91
    new-instance v2, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$1$1;

    .line 92
    invoke-direct {v2, p0, v1}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$1$1;-><init>(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;Ljava/lang/CharSequence;)V

    .line 94
    new-instance v1, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$1$2;

    .line 97
    invoke-direct {v1, p0}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$1$2;-><init>(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)V

    .line 99
    iget-object v4, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->controller:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 102
    invoke-virtual {v4, v0, v2, v1}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->loadForComponent(Landroid/content/ComponentName;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 104
    :cond_4
    iput-boolean v3, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->isPagerLoaded:Z

    .line 107
    :cond_5
    return-void
    .line 109
.end method

.method public final onStart()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->listingController:Lcom/android/systemui/controls/management/ControlsListingController;

    .line 5
    check-cast v0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;

    .line 7
    iget-object v1, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->listingCallback:Lcom/android/systemui/controls/management/ControlsFavoritingActivity$listingCallback$1;

    .line 9
    invoke-virtual {v0, v1}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->userTrackerCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    .line 14
    iget-object v1, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 16
    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 18
    iget-object v2, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->executor:Ljava/util/concurrent/Executor;

    .line 20
    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    .line 22
    invoke-virtual {p0}, Landroid/app/Activity;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    .line 25
    move-result-object v0

    .line 28
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->mOnBackInvokedCallback:Lcom/android/systemui/controls/management/ControlsFavoritingActivity$mOnBackInvokedCallback$1;

    .line 29
    const/4 v1, 0x0

    .line 31
    invoke-interface {v0, v1, p0}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    .line 32
    return-void
    .line 35
.end method

.method public final onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->listingController:Lcom/android/systemui/controls/management/ControlsListingController;

    .line 5
    check-cast v0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;

    .line 7
    iget-object v1, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->listingCallback:Lcom/android/systemui/controls/management/ControlsFavoritingActivity$listingCallback$1;

    .line 9
    invoke-virtual {v0, v1}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->userTrackerCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    .line 14
    iget-object v1, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 16
    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 18
    invoke-virtual {v1, v0}, Lcom/android/systemui/settings/UserTrackerImpl;->removeCallback(Lcom/android/systemui/settings/UserTracker$Callback;)V

    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    .line 23
    move-result-object v0

    .line 26
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->mOnBackInvokedCallback:Lcom/android/systemui/controls/management/ControlsFavoritingActivity$mOnBackInvokedCallback$1;

    .line 27
    invoke-interface {v0, p0}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 29
    return-void
    .line 32
.end method
