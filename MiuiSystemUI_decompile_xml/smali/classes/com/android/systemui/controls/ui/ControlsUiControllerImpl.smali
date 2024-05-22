.class public final Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/controls/ui/ControlsUiController;
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public activityContext:Landroid/content/Context;

.field public final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public allStructures:Ljava/util/List;

.field public final authorizedPanelsRepository:Lcom/android/systemui/controls/panels/AuthorizedPanelsRepository;

.field public final bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final context:Landroid/content/Context;

.field public final controlActionCoordinator:Lcom/android/systemui/controls/ui/ControlActionCoordinator;

.field public final controlViewsById:Ljava/util/Map;

.field public final controlsById:Ljava/util/Map;

.field public final controlsController:Ldagger/Lazy;

.field public final controlsListingController:Ldagger/Lazy;

.field public final controlsMetricsLogger:Lcom/android/systemui/controls/ControlsMetricsLogger;

.field public final controlsSettingsRepository:Lcom/android/systemui/controls/settings/ControlsSettingsRepository;

.field public final dialogsFactory:Lcom/android/systemui/controls/ui/ControlsDialogsFactory;

.field public final featureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public hidden:Z

.field public final iconCache:Lcom/android/systemui/controls/CustomIconCache;

.field public final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public lastSelections:Ljava/util/List;

.field public listingCallback:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createCallback$1;

.field public final localeComparator:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$special$$inlined$compareBy$1;

.field public onDismiss:Ljava/lang/Runnable;

.field public final onSeedingComplete:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$onSeedingComplete$1;

.field public openAppIntent:Landroid/content/Intent;

.field public overflowMenuAdapter:Lcom/android/systemui/controls/ui/OverflowMenuAdapter;

.field public final packageManager:Landroid/content/pm/PackageManager;

.field public parent:Landroid/view/ViewGroup;

.field public popup:Landroid/widget/ListPopupWindow;

.field public final popupThemedContext:Landroid/view/ContextThemeWrapper;

.field public removeAppDialog:Landroid/app/Dialog;

.field public retainCache:Z

.field public final selectedComponentRepository:Lcom/android/systemui/controls/panels/SelectedComponentRepository;

.field public selectedItem:Lcom/android/systemui/controls/ui/SelectedItem;

.field public selectionItem:Lcom/android/systemui/controls/ui/SelectionItem;

.field public taskViewController:Lcom/android/systemui/controls/ui/PanelTaskViewController;

.field public final taskViewFactory:Ljava/util/Optional;

.field public final uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public constructor <init>(Ldagger/Lazy;Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Ldagger/Lazy;Lcom/android/systemui/controls/ui/ControlActionCoordinator;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/controls/CustomIconCache;Lcom/android/systemui/controls/ControlsMetricsLogger;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/settings/UserTracker;Ljava/util/Optional;Lcom/android/systemui/controls/settings/ControlsSettingsRepository;Lcom/android/systemui/controls/panels/AuthorizedPanelsRepositoryImpl;Lcom/android/systemui/controls/panels/SelectedComponentRepository;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/controls/ui/ControlsDialogsFactory;Lcom/android/systemui/dump/DumpManager;)V
    .locals 4

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    move-object v2, p1

    .line 7
    iput-object v2, v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsController:Ldagger/Lazy;

    .line 8
    iput-object v1, v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->context:Landroid/content/Context;

    .line 10
    move-object v2, p3

    .line 12
    iput-object v2, v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->packageManager:Landroid/content/pm/PackageManager;

    .line 13
    move-object v2, p4

    .line 15
    iput-object v2, v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 16
    move-object v2, p5

    .line 18
    iput-object v2, v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 19
    move-object v2, p6

    .line 21
    iput-object v2, v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsListingController:Ldagger/Lazy;

    .line 22
    move-object v2, p7

    .line 24
    iput-object v2, v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlActionCoordinator:Lcom/android/systemui/controls/ui/ControlActionCoordinator;

    .line 25
    move-object v2, p8

    .line 27
    iput-object v2, v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 28
    move-object v2, p9

    .line 30
    iput-object v2, v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->iconCache:Lcom/android/systemui/controls/CustomIconCache;

    .line 31
    move-object v2, p10

    .line 33
    iput-object v2, v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsMetricsLogger:Lcom/android/systemui/controls/ControlsMetricsLogger;

    .line 34
    move-object v2, p11

    .line 36
    iput-object v2, v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 37
    move-object/from16 v2, p12

    .line 39
    iput-object v2, v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 41
    move-object/from16 v2, p13

    .line 43
    iput-object v2, v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->taskViewFactory:Ljava/util/Optional;

    .line 45
    move-object/from16 v2, p14

    .line 47
    iput-object v2, v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsSettingsRepository:Lcom/android/systemui/controls/settings/ControlsSettingsRepository;

    .line 49
    move-object/from16 v2, p15

    .line 51
    iput-object v2, v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->authorizedPanelsRepository:Lcom/android/systemui/controls/panels/AuthorizedPanelsRepository;

    .line 53
    move-object/from16 v2, p16

    .line 55
    iput-object v2, v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->selectedComponentRepository:Lcom/android/systemui/controls/panels/SelectedComponentRepository;

    .line 57
    move-object/from16 v2, p17

    .line 59
    iput-object v2, v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 61
    move-object/from16 v2, p18

    .line 63
    iput-object v2, v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->dialogsFactory:Lcom/android/systemui/controls/ui/ControlsDialogsFactory;

    .line 65
    sget-object v2, Lcom/android/systemui/controls/ui/SelectedItem;->EMPTY_SELECTION:Lcom/android/systemui/controls/ui/SelectedItem$StructureItem;

    .line 67
    iput-object v2, v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->selectedItem:Lcom/android/systemui/controls/ui/SelectedItem;

    .line 69
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 71
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 73
    iput-object v2, v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsById:Ljava/util/Map;

    .line 76
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 78
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 80
    iput-object v2, v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlViewsById:Ljava/util/Map;

    .line 83
    const/4 v2, 0x1

    .line 85
    iput-boolean v2, v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->hidden:Z

    .line 86
    new-instance v2, Landroid/view/ContextThemeWrapper;

    .line 88
    const v3, 0x7f14016c    # @style/Control.ListPopupWindow

    .line 90
    invoke-direct {v2, p2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 93
    iput-object v2, v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->popupThemedContext:Landroid/view/ContextThemeWrapper;

    .line 96
    sget-object v2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 98
    iput-object v2, v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->lastSelections:Ljava/util/List;

    .line 100
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 102
    move-result-object v1

    .line 105
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 106
    move-result-object v1

    .line 109
    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    .line 110
    move-result-object v1

    .line 113
    const/4 v2, 0x0

    .line 114
    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    .line 115
    move-result-object v1

    .line 118
    invoke-static {v1}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    .line 119
    move-result-object v1

    .line 122
    new-instance v2, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$special$$inlined$compareBy$1;

    .line 123
    invoke-direct {v2, v1}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$special$$inlined$compareBy$1;-><init>(Ljava/util/Comparator;)V

    .line 125
    iput-object v2, v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->localeComparator:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$special$$inlined$compareBy$1;

    .line 128
    new-instance v1, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$onSeedingComplete$1;

    .line 130
    invoke-direct {v1, p0}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$onSeedingComplete$1;-><init>(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;)V

    .line 132
    iput-object v1, v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->onSeedingComplete:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$onSeedingComplete$1;

    .line 135
    const-class v1, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;

    .line 137
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 139
    move-result-object v1

    .line 142
    sget-object v2, Lcom/android/systemui/dump/DumpPriority;->CRITICAL:Lcom/android/systemui/dump/DumpPriority;

    .line 143
    move-object/from16 v3, p19

    .line 145
    invoke-virtual {v3, v1, p0, v2}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;Lcom/android/systemui/dump/DumpPriority;)V

    .line 147
    return-void
    .line 150
.end method

.method public static reload$default(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Landroid/view/ViewGroup;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->hidden:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    goto :goto_1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsListingController:Ldagger/Lazy;

    .line 7
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 12
    check-cast v0, Lcom/android/systemui/controls/management/ControlsListingController;

    .line 13
    iget-object v1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->listingCallback:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createCallback$1;

    .line 15
    const/4 v2, 0x0

    .line 17
    if-nez v1, :cond_1

    .line 18
    move-object v1, v2

    .line 20
    :cond_1
    check-cast v0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;

    .line 21
    invoke-virtual {v0, v1}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 23
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsController:Ldagger/Lazy;

    .line 26
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 31
    check-cast v0, Lcom/android/systemui/controls/controller/ControlsController;

    .line 32
    check-cast v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 34
    invoke-virtual {v0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->confirmAvailability()Z

    .line 36
    move-result v1

    .line 39
    if-nez v1, :cond_2

    .line 40
    goto :goto_0

    .line 42
    :cond_2
    iget-object v0, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->bindingController:Lcom/android/systemui/controls/controller/ControlsBindingController;

    .line 43
    check-cast v0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;

    .line 45
    invoke-virtual {v0}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->unsubscribe()V

    .line 47
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->taskViewController:Lcom/android/systemui/controls/ui/PanelTaskViewController;

    .line 50
    if-eqz v0, :cond_3

    .line 52
    iget-object v0, v0, Lcom/android/systemui/controls/ui/PanelTaskViewController;->taskView:Lcom/android/wm/shell/taskview/TaskView;

    .line 54
    invoke-virtual {v0}, Lcom/android/wm/shell/taskview/TaskView;->removeTask()V

    .line 56
    :cond_3
    iput-object v2, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->taskViewController:Lcom/android/systemui/controls/ui/PanelTaskViewController;

    .line 59
    const/4 v0, 0x2

    .line 61
    new-array v0, v0, [F

    .line 62
    fill-array-data v0, :array_0

    .line 64
    const-string v1, "alpha"

    .line 67
    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 69
    move-result-object v0

    .line 72
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    .line 73
    const/high16 v2, 0x3f800000    # 1.0f

    .line 75
    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    .line 77
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 80
    const-wide/16 v1, 0xc8

    .line 83
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 85
    new-instance v1, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$reload$1;

    .line 88
    invoke-direct {v1, p0, p1}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$reload$1;-><init>(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Landroid/view/ViewGroup;)V

    .line 90
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 93
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 96
    :goto_1
    return-void

    .line 99
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
    .line 100
.end method


# virtual methods
.method public final createListView(Lcom/android/systemui/controls/ui/SelectionItem;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->selectedItem:Lcom/android/systemui/controls/ui/SelectedItem;

    .line 4
    instance-of v2, v1, Lcom/android/systemui/controls/ui/SelectedItem$StructureItem;

    .line 6
    if-nez v2, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    check-cast v1, Lcom/android/systemui/controls/ui/SelectedItem$StructureItem;

    .line 11
    iget-object v2, v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->activityContext:Landroid/content/Context;

    .line 13
    const/4 v3, 0x0

    .line 15
    if-nez v2, :cond_1

    .line 16
    move-object v2, v3

    .line 18
    :cond_1
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 19
    move-result-object v2

    .line 22
    iget-object v4, v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->activityContext:Landroid/content/Context;

    .line 23
    if-nez v4, :cond_2

    .line 25
    move-object v4, v3

    .line 27
    :cond_2
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 28
    move-result-object v4

    .line 31
    const v5, 0x7f0b004f    # @integer/controls_max_columns '2'

    .line 32
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    .line 35
    move-result v5

    .line 38
    const v6, 0x7f0b0050    # @integer/controls_max_columns_adjust_below_width_dp '320'

    .line 39
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 42
    move-result v6

    .line 45
    new-instance v7, Landroid/util/TypedValue;

    .line 46
    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    .line 48
    const v8, 0x7f070245    # @dimen/controls_max_columns_adjust_above_font_scale '1.25'

    .line 51
    const/4 v9, 0x1

    .line 54
    invoke-virtual {v4, v8, v7, v9}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 55
    invoke-virtual {v7}, Landroid/util/TypedValue;->getFloat()F

    .line 58
    move-result v7

    .line 61
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 62
    move-result-object v4

    .line 65
    iget v8, v4, Landroid/content/res/Configuration;->orientation:I

    .line 66
    const/4 v10, 0x0

    .line 68
    if-ne v8, v9, :cond_3

    .line 69
    move v8, v9

    .line 71
    goto :goto_0

    .line 72
    :cond_3
    move v8, v10

    .line 73
    :goto_0
    if-eqz v8, :cond_4

    .line 74
    iget v8, v4, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 76
    if-eqz v8, :cond_4

    .line 78
    if-gt v8, v6, :cond_4

    .line 80
    iget v4, v4, Landroid/content/res/Configuration;->fontScale:F

    .line 82
    cmpl-float v4, v4, v7

    .line 84
    if-ltz v4, :cond_4

    .line 86
    add-int/lit8 v5, v5, -0x1

    .line 88
    :cond_4
    iget-object v4, v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->parent:Landroid/view/ViewGroup;

    .line 90
    if-nez v4, :cond_5

    .line 92
    goto :goto_1

    .line 94
    :cond_5
    move-object v3, v4

    .line 95
    :goto_1
    const v4, 0x7f0a03a9    # @id/global_actions_controls_list

    .line 96
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 99
    move-result-object v3

    .line 102
    check-cast v3, Landroid/view/ViewGroup;

    .line 103
    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 105
    const v4, 0x7f0d0085    # @layout/controls_row 'res/layout/controls_row.xml'

    .line 108
    invoke-virtual {v2, v4, v3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 111
    move-result-object v6

    .line 114
    check-cast v6, Landroid/view/ViewGroup;

    .line 115
    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 117
    iget-object v1, v1, Lcom/android/systemui/controls/ui/SelectedItem$StructureItem;->structure:Lcom/android/systemui/controls/controller/StructureInfo;

    .line 120
    iget-object v7, v1, Lcom/android/systemui/controls/controller/StructureInfo;->controls:Ljava/util/List;

    .line 122
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 124
    move-result-object v7

    .line 127
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 128
    move-result v8

    .line 131
    if-eqz v8, :cond_9

    .line 132
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 134
    move-result-object v8

    .line 137
    check-cast v8, Lcom/android/systemui/controls/controller/ControlInfo;

    .line 138
    new-instance v11, Lcom/android/systemui/controls/ui/ControlKey;

    .line 140
    iget-object v8, v8, Lcom/android/systemui/controls/controller/ControlInfo;->controlId:Ljava/lang/String;

    .line 142
    iget-object v12, v1, Lcom/android/systemui/controls/controller/StructureInfo;->componentName:Landroid/content/ComponentName;

    .line 144
    invoke-direct {v11, v8, v12}, Lcom/android/systemui/controls/ui/ControlKey;-><init>(Ljava/lang/String;Landroid/content/ComponentName;)V

    .line 146
    iget-object v8, v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsById:Ljava/util/Map;

    .line 149
    check-cast v8, Ljava/util/LinkedHashMap;

    .line 151
    invoke-virtual {v8, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    move-result-object v8

    .line 156
    check-cast v8, Lcom/android/systemui/controls/ui/ControlWithState;

    .line 157
    if-eqz v8, :cond_8

    .line 159
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    .line 161
    move-result v12

    .line 164
    if-ne v12, v5, :cond_6

    .line 165
    invoke-virtual {v2, v4, v3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 167
    move-result-object v6

    .line 170
    check-cast v6, Landroid/view/ViewGroup;

    .line 171
    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 173
    :cond_6
    const v12, 0x7f0d0078    # @layout/controls_base_item 'res/layout/controls_base_item.xml'

    .line 176
    invoke-virtual {v2, v12, v6, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 179
    move-result-object v12

    .line 182
    move-object v14, v12

    .line 183
    check-cast v14, Landroid/view/ViewGroup;

    .line 184
    invoke-virtual {v6, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 186
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    .line 189
    move-result v12

    .line 192
    if-ne v12, v9, :cond_7

    .line 193
    invoke-virtual {v14}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 195
    move-result-object v12

    .line 198
    check-cast v12, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 199
    invoke-virtual {v12, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 201
    :cond_7
    new-instance v12, Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 204
    iget-object v13, v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsController:Ldagger/Lazy;

    .line 206
    invoke-interface {v13}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 208
    move-result-object v13

    .line 211
    move-object v15, v13

    .line 212
    check-cast v15, Lcom/android/systemui/controls/controller/ControlsController;

    .line 213
    iget-object v13, v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 215
    iget-object v4, v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 217
    iget-object v9, v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlActionCoordinator:Lcom/android/systemui/controls/ui/ControlActionCoordinator;

    .line 219
    iget-object v10, v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsMetricsLogger:Lcom/android/systemui/controls/ControlsMetricsLogger;

    .line 221
    move-object/from16 v21, v2

    .line 223
    move-object/from16 v22, v3

    .line 225
    move-object/from16 v2, p1

    .line 227
    iget v3, v2, Lcom/android/systemui/controls/ui/SelectionItem;->uid:I

    .line 229
    move-object/from16 v16, v13

    .line 231
    move-object v13, v12

    .line 233
    move-object/from16 v17, v4

    .line 234
    move-object/from16 v18, v9

    .line 236
    move-object/from16 v19, v10

    .line 238
    move/from16 v20, v3

    .line 240
    invoke-direct/range {v13 .. v20}, Lcom/android/systemui/controls/ui/ControlViewHolder;-><init>(Landroid/view/ViewGroup;Lcom/android/systemui/controls/controller/ControlsController;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/controls/ui/ControlActionCoordinator;Lcom/android/systemui/controls/ControlsMetricsLogger;I)V

    .line 242
    const/4 v3, 0x0

    .line 245
    invoke-virtual {v12, v8, v3}, Lcom/android/systemui/controls/ui/ControlViewHolder;->bindData(Lcom/android/systemui/controls/ui/ControlWithState;Z)V

    .line 246
    iget-object v3, v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlViewsById:Ljava/util/Map;

    .line 249
    invoke-interface {v3, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    goto :goto_3

    .line 254
    :cond_8
    move-object/from16 v21, v2

    .line 255
    move-object/from16 v22, v3

    .line 257
    move-object/from16 v2, p1

    .line 259
    :goto_3
    move-object/from16 v2, v21

    .line 261
    move-object/from16 v3, v22

    .line 263
    const v4, 0x7f0d0085    # @layout/controls_row 'res/layout/controls_row.xml'

    .line 265
    const/4 v9, 0x1

    .line 268
    const/4 v10, 0x0

    .line 269
    goto/16 :goto_2

    .line 270
    :cond_9
    iget-object v1, v1, Lcom/android/systemui/controls/controller/StructureInfo;->controls:Ljava/util/List;

    .line 272
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 274
    move-result v1

    .line 277
    rem-int/2addr v1, v5

    .line 278
    if-nez v1, :cond_a

    .line 279
    const/4 v3, 0x0

    .line 281
    goto :goto_4

    .line 282
    :cond_a
    sub-int v3, v5, v1

    .line 283
    :goto_4
    iget-object v0, v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->context:Landroid/content/Context;

    .line 285
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 287
    move-result-object v1

    .line 290
    const v2, 0x7f07021f    # @dimen/control_spacing '8.0dp'

    .line 291
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 294
    move-result v1

    .line 297
    :goto_5
    if-lez v3, :cond_b

    .line 298
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 300
    const/high16 v4, 0x3f800000    # 1.0f

    .line 302
    const/4 v5, 0x0

    .line 304
    invoke-direct {v2, v5, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 305
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 308
    new-instance v4, Landroid/widget/Space;

    .line 311
    invoke-direct {v4, v0}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    .line 313
    invoke-virtual {v6, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 316
    add-int/lit8 v3, v3, -0x1

    .line 319
    goto :goto_5

    .line 321
    :cond_b
    return-void
    .line 322
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string p2, "ControlsUiControllerImpl:"

    .line 2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    invoke-static {p1}, Lcom/android/systemui/util/DumpUtilsKt;->asIndenting(Ljava/io/PrintWriter;)Landroid/util/IndentingPrintWriter;

    .line 7
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 11
    iget-boolean p2, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->hidden:Z

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    const-string v1, "hidden: "

    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object p2

    .line 29
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 30
    iget-object p2, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->selectedItem:Lcom/android/systemui/controls/ui/SelectedItem;

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    const-string/jumbo v1, "selectedItem: "

    .line 37
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object p2

    .line 49
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 50
    iget-object p2, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->lastSelections:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    .line 55
    const-string v1, "lastSelections: "

    .line 57
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object p2

    .line 68
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 69
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsSettingsRepository:Lcom/android/systemui/controls/settings/ControlsSettingsRepository;

    .line 72
    check-cast p0, Lcom/android/systemui/controls/settings/ControlsSettingsRepositoryImpl;

    .line 74
    iget-object p0, p0, Lcom/android/systemui/controls/settings/ControlsSettingsRepositoryImpl;->allowActionOnTrivialControlsInLockscreen:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 76
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->getValue()Ljava/lang/Object;

    .line 78
    move-result-object p0

    .line 81
    new-instance p2, Ljava/lang/StringBuilder;

    .line 82
    const-string/jumbo v0, "setting: "

    .line 84
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object p0

    .line 96
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 100
    return-void
    .line 103
.end method

.method public final getPreferredSelectedItem(Ljava/util/List;)Lcom/android/systemui/controls/ui/SelectedItem;
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->selectedComponentRepository:Lcom/android/systemui/controls/panels/SelectedComponentRepository;

    .line 2
    check-cast p0, Lcom/android/systemui/controls/panels/SelectedComponentRepositoryImpl;

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/controls/panels/SelectedComponentRepositoryImpl;->getSelectedComponent()Lcom/android/systemui/controls/panels/SelectedComponentRepository$SelectedComponent;

    .line 6
    move-result-object p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/android/systemui/controls/panels/SelectedComponentRepository$SelectedComponent;->componentName:Landroid/content/ComponentName;

    .line 12
    if-nez v0, :cond_1

    .line 14
    :cond_0
    sget-object v0, Lcom/android/systemui/controls/controller/StructureInfo;->EMPTY_COMPONENT:Landroid/content/ComponentName;

    .line 16
    :cond_1
    const/4 v1, 0x1

    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz p0, :cond_2

    .line 20
    iget-boolean v3, p0, Lcom/android/systemui/controls/panels/SelectedComponentRepository$SelectedComponent;->isPanel:Z

    .line 22
    if-ne v3, v1, :cond_2

    .line 24
    move v3, v1

    .line 26
    goto :goto_0

    .line 27
    :cond_2
    move v3, v2

    .line 28
    :goto_0
    if-eqz v3, :cond_3

    .line 29
    new-instance p1, Lcom/android/systemui/controls/ui/SelectedItem$PanelItem;

    .line 31
    iget-object p0, p0, Lcom/android/systemui/controls/panels/SelectedComponentRepository$SelectedComponent;->name:Ljava/lang/String;

    .line 33
    invoke-direct {p1, v0, p0}, Lcom/android/systemui/controls/ui/SelectedItem$PanelItem;-><init>(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V

    .line 35
    goto :goto_2

    .line 38
    :cond_3
    check-cast p1, Ljava/util/ArrayList;

    .line 39
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 41
    move-result v3

    .line 44
    if-eqz v3, :cond_4

    .line 45
    sget-object p0, Lcom/android/systemui/controls/ui/SelectedItem;->EMPTY_SELECTION:Lcom/android/systemui/controls/ui/SelectedItem$StructureItem;

    .line 47
    return-object p0

    .line 49
    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 50
    move-result-object v3

    .line 53
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    move-result v4

    .line 57
    const/4 v5, 0x0

    .line 58
    if-eqz v4, :cond_8

    .line 59
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    move-result-object v4

    .line 64
    move-object v6, v4

    .line 65
    check-cast v6, Lcom/android/systemui/controls/controller/StructureInfo;

    .line 66
    iget-object v7, v6, Lcom/android/systemui/controls/controller/StructureInfo;->componentName:Landroid/content/ComponentName;

    .line 68
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    move-result v7

    .line 73
    if-eqz v7, :cond_7

    .line 74
    if-eqz p0, :cond_6

    .line 76
    iget-object v5, p0, Lcom/android/systemui/controls/panels/SelectedComponentRepository$SelectedComponent;->name:Ljava/lang/String;

    .line 78
    :cond_6
    iget-object v6, v6, Lcom/android/systemui/controls/controller/StructureInfo;->structure:Ljava/lang/CharSequence;

    .line 80
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 82
    move-result v5

    .line 85
    if-eqz v5, :cond_7

    .line 86
    move v5, v1

    .line 88
    goto :goto_1

    .line 89
    :cond_7
    move v5, v2

    .line 90
    :goto_1
    if-eqz v5, :cond_5

    .line 91
    move-object v5, v4

    .line 93
    :cond_8
    check-cast v5, Lcom/android/systemui/controls/controller/StructureInfo;

    .line 94
    if-nez v5, :cond_9

    .line 96
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 98
    move-result-object p0

    .line 101
    move-object v5, p0

    .line 102
    check-cast v5, Lcom/android/systemui/controls/controller/StructureInfo;

    .line 103
    :cond_9
    new-instance p1, Lcom/android/systemui/controls/ui/SelectedItem$StructureItem;

    .line 105
    invoke-direct {p1, v5}, Lcom/android/systemui/controls/ui/SelectedItem$StructureItem;-><init>(Lcom/android/systemui/controls/controller/StructureInfo;)V

    .line 107
    :goto_2
    return-object p1
    .line 110
.end method

.method public final maybeUpdateSelectedItem(Lcom/android/systemui/controls/ui/SelectionItem;)Z
    .locals 9

    .line 1
    iget-boolean v0, p1, Lcom/android/systemui/controls/ui/SelectionItem;->isPanel:Z

    .line 2
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object v3, p1, Lcom/android/systemui/controls/ui/SelectionItem;->componentName:Landroid/content/ComponentName;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    new-instance v0, Lcom/android/systemui/controls/ui/SelectedItem$PanelItem;

    .line 10
    iget-object p1, p1, Lcom/android/systemui/controls/ui/SelectionItem;->appName:Ljava/lang/CharSequence;

    .line 12
    invoke-direct {v0, v3, p1}, Lcom/android/systemui/controls/ui/SelectedItem$PanelItem;-><init>(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V

    .line 14
    goto :goto_1

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->allStructures:Ljava/util/List;

    .line 18
    const/4 v4, 0x0

    .line 20
    if-nez v0, :cond_1

    .line 21
    move-object v0, v4

    .line 23
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object v0

    .line 27
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    move-result v5

    .line 31
    if-eqz v5, :cond_4

    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    move-result-object v5

    .line 37
    move-object v6, v5

    .line 38
    check-cast v6, Lcom/android/systemui/controls/controller/StructureInfo;

    .line 39
    iget-object v7, v6, Lcom/android/systemui/controls/controller/StructureInfo;->structure:Ljava/lang/CharSequence;

    .line 41
    iget-object v8, p1, Lcom/android/systemui/controls/ui/SelectionItem;->structure:Ljava/lang/CharSequence;

    .line 43
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    move-result v7

    .line 48
    if-eqz v7, :cond_3

    .line 49
    iget-object v6, v6, Lcom/android/systemui/controls/controller/StructureInfo;->componentName:Landroid/content/ComponentName;

    .line 51
    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    move-result v6

    .line 56
    if-eqz v6, :cond_3

    .line 57
    move v6, v1

    .line 59
    goto :goto_0

    .line 60
    :cond_3
    move v6, v2

    .line 61
    :goto_0
    if-eqz v6, :cond_2

    .line 62
    move-object v4, v5

    .line 64
    :cond_4
    check-cast v4, Lcom/android/systemui/controls/controller/StructureInfo;

    .line 65
    if-nez v4, :cond_5

    .line 67
    sget-object p1, Lcom/android/systemui/controls/controller/StructureInfo;->EMPTY_COMPONENT:Landroid/content/ComponentName;

    .line 69
    sget-object v4, Lcom/android/systemui/controls/controller/StructureInfo;->EMPTY_STRUCTURE:Lcom/android/systemui/controls/controller/StructureInfo;

    .line 71
    :cond_5
    new-instance v0, Lcom/android/systemui/controls/ui/SelectedItem$StructureItem;

    .line 73
    invoke-direct {v0, v4}, Lcom/android/systemui/controls/ui/SelectedItem$StructureItem;-><init>(Lcom/android/systemui/controls/controller/StructureInfo;)V

    .line 75
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->selectedItem:Lcom/android/systemui/controls/ui/SelectedItem;

    .line 78
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 80
    move-result p1

    .line 83
    if-nez p1, :cond_6

    .line 84
    iput-object v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->selectedItem:Lcom/android/systemui/controls/ui/SelectedItem;

    .line 86
    invoke-virtual {p0, v0}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->updatePreferences(Lcom/android/systemui/controls/ui/SelectedItem;)V

    .line 88
    goto :goto_2

    .line 91
    :cond_6
    move v1, v2

    .line 92
    :goto_2
    return v1
    .line 93
.end method

.method public final show(Landroid/view/ViewGroup;Ljava/lang/Runnable;Landroid/content/Context;)V
    .locals 6

    .line 1
    const-string v0, "ControlsUiController"

    .line 2
    const-string/jumbo v1, "show()"

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    const-wide/16 v0, 0x1000

    .line 10
    const-string v2, "ControlsUiControllerImpl#show"

    .line 12
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 14
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->parent:Landroid/view/ViewGroup;

    .line 17
    iput-object p2, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->onDismiss:Ljava/lang/Runnable;

    .line 19
    iput-object p3, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->activityContext:Landroid/content/Context;

    .line 21
    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->openAppIntent:Landroid/content/Intent;

    .line 24
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->overflowMenuAdapter:Lcom/android/systemui/controls/ui/OverflowMenuAdapter;

    .line 26
    const/4 p2, 0x0

    .line 28
    iput-boolean p2, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->hidden:Z

    .line 29
    iput-boolean p2, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->retainCache:Z

    .line 31
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->selectionItem:Lcom/android/systemui/controls/ui/SelectionItem;

    .line 33
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlActionCoordinator:Lcom/android/systemui/controls/ui/ControlActionCoordinator;

    .line 35
    check-cast v0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    .line 37
    iput-object p3, v0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->activityContext:Landroid/content/Context;

    .line 39
    iget-object p3, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsController:Ldagger/Lazy;

    .line 41
    invoke-interface {p3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 43
    move-result-object v0

    .line 46
    check-cast v0, Lcom/android/systemui/controls/controller/ControlsController;

    .line 47
    check-cast v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 49
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    invoke-static {}, Lcom/android/systemui/controls/controller/Favorites;->getAllStructures()Ljava/util/List;

    .line 54
    move-result-object v0

    .line 57
    iput-object v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->allStructures:Ljava/util/List;

    .line 58
    invoke-virtual {p0, v0}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->getPreferredSelectedItem(Ljava/util/List;)Lcom/android/systemui/controls/ui/SelectedItem;

    .line 60
    move-result-object v0

    .line 63
    iput-object v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->selectedItem:Lcom/android/systemui/controls/ui/SelectedItem;

    .line 64
    invoke-interface {p3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 66
    move-result-object v0

    .line 69
    check-cast v0, Lcom/android/systemui/controls/controller/ControlsController;

    .line 70
    check-cast v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 72
    iget-boolean v1, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->seedingInProgress:Z

    .line 74
    const/4 v2, 0x1

    .line 76
    if-nez v1, :cond_0

    .line 77
    goto :goto_0

    .line 79
    :cond_0
    new-instance p2, Lcom/android/systemui/controls/controller/ControlsControllerImpl$removeFavorites$1;

    .line 80
    iget-object v1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->onSeedingComplete:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$onSeedingComplete$1;

    .line 82
    invoke-direct {p2, v0, v1}, Lcom/android/systemui/controls/controller/ControlsControllerImpl$removeFavorites$1;-><init>(Lcom/android/systemui/controls/controller/ControlsControllerImpl;Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$onSeedingComplete$1;)V

    .line 84
    iget-object v0, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 87
    check-cast v0, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 89
    invoke-virtual {v0, p2}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 91
    move p2, v2

    .line 94
    :goto_0
    if-eqz p2, :cond_1

    .line 95
    new-instance p2, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$show$1;

    .line 97
    invoke-direct {p2, p0}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$show$1;-><init>(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;)V

    .line 99
    new-instance p3, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createCallback$1;

    .line 102
    invoke-direct {p3, p0, p2}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createCallback$1;-><init>(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Lkotlin/jvm/functions/Function1;)V

    .line 104
    iput-object p3, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->listingCallback:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createCallback$1;

    .line 107
    goto/16 :goto_5

    .line 109
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->selectedItem:Lcom/android/systemui/controls/ui/SelectedItem;

    .line 111
    instance-of v0, p2, Lcom/android/systemui/controls/ui/SelectedItem$PanelItem;

    .line 113
    if-nez v0, :cond_3

    .line 115
    invoke-virtual {p2}, Lcom/android/systemui/controls/ui/SelectedItem;->getHasControls()Z

    .line 117
    move-result p2

    .line 120
    if-nez p2, :cond_3

    .line 121
    iget-object p2, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->allStructures:Ljava/util/List;

    .line 123
    if-nez p2, :cond_2

    .line 125
    move-object p2, p1

    .line 127
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 128
    move-result p2

    .line 131
    if-gt p2, v2, :cond_3

    .line 132
    new-instance p2, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$show$2;

    .line 134
    invoke-direct {p2, p0}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$show$2;-><init>(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;)V

    .line 136
    new-instance p3, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createCallback$1;

    .line 139
    invoke-direct {p3, p0, p2}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createCallback$1;-><init>(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Lkotlin/jvm/functions/Function1;)V

    .line 141
    iput-object p3, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->listingCallback:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createCallback$1;

    .line 144
    goto/16 :goto_5

    .line 146
    :cond_3
    iget-object p2, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->selectedItem:Lcom/android/systemui/controls/ui/SelectedItem;

    .line 148
    instance-of v0, p2, Lcom/android/systemui/controls/ui/SelectedItem$StructureItem;

    .line 150
    if-eqz v0, :cond_8

    .line 152
    check-cast p2, Lcom/android/systemui/controls/ui/SelectedItem$StructureItem;

    .line 154
    iget-object v0, p2, Lcom/android/systemui/controls/ui/SelectedItem$StructureItem;->structure:Lcom/android/systemui/controls/controller/StructureInfo;

    .line 156
    iget-object v0, v0, Lcom/android/systemui/controls/controller/StructureInfo;->controls:Ljava/util/List;

    .line 158
    new-instance v1, Ljava/util/ArrayList;

    .line 160
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    .line 162
    move-result v2

    .line 165
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 166
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 169
    move-result-object v0

    .line 172
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 173
    move-result v2

    .line 176
    iget-object v3, p2, Lcom/android/systemui/controls/ui/SelectedItem$StructureItem;->structure:Lcom/android/systemui/controls/controller/StructureInfo;

    .line 177
    if-eqz v2, :cond_4

    .line 179
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 181
    move-result-object v2

    .line 184
    check-cast v2, Lcom/android/systemui/controls/controller/ControlInfo;

    .line 185
    new-instance v4, Lcom/android/systemui/controls/ui/ControlWithState;

    .line 187
    iget-object v3, v3, Lcom/android/systemui/controls/controller/StructureInfo;->componentName:Landroid/content/ComponentName;

    .line 189
    invoke-direct {v4, v3, v2, p1}, Lcom/android/systemui/controls/ui/ControlWithState;-><init>(Landroid/content/ComponentName;Lcom/android/systemui/controls/controller/ControlInfo;Landroid/service/controls/Control;)V

    .line 191
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    goto :goto_1

    .line 197
    :cond_4
    iget-object p2, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsById:Ljava/util/Map;

    .line 198
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 200
    move-result-object v0

    .line 203
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 204
    move-result v1

    .line 207
    if-eqz v1, :cond_5

    .line 208
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 210
    move-result-object v1

    .line 213
    move-object v2, v1

    .line 214
    check-cast v2, Lcom/android/systemui/controls/ui/ControlWithState;

    .line 215
    new-instance v4, Lcom/android/systemui/controls/ui/ControlKey;

    .line 217
    iget-object v5, v3, Lcom/android/systemui/controls/controller/StructureInfo;->componentName:Landroid/content/ComponentName;

    .line 219
    iget-object v2, v2, Lcom/android/systemui/controls/ui/ControlWithState;->ci:Lcom/android/systemui/controls/controller/ControlInfo;

    .line 221
    iget-object v2, v2, Lcom/android/systemui/controls/controller/ControlInfo;->controlId:Ljava/lang/String;

    .line 223
    invoke-direct {v4, v2, v5}, Lcom/android/systemui/controls/ui/ControlKey;-><init>(Ljava/lang/String;Landroid/content/ComponentName;)V

    .line 225
    invoke-interface {p2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    goto :goto_2

    .line 231
    :cond_5
    invoke-interface {p3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 232
    move-result-object p2

    .line 235
    check-cast p2, Lcom/android/systemui/controls/controller/ControlsController;

    .line 236
    check-cast p2, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 238
    invoke-virtual {p2}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->confirmAvailability()Z

    .line 240
    move-result p3

    .line 243
    if-nez p3, :cond_6

    .line 244
    goto :goto_4

    .line 246
    :cond_6
    iget-object p2, p2, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->bindingController:Lcom/android/systemui/controls/controller/ControlsBindingController;

    .line 247
    check-cast p2, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;

    .line 249
    invoke-virtual {p2}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->unsubscribe()V

    .line 251
    iget-object p3, v3, Lcom/android/systemui/controls/controller/StructureInfo;->componentName:Landroid/content/ComponentName;

    .line 254
    invoke-virtual {p2, p3}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->retrieveLifecycleManager(Landroid/content/ComponentName;)Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    .line 256
    move-result-object p3

    .line 259
    new-instance v0, Lcom/android/systemui/controls/controller/StatefulControlSubscriber;

    .line 260
    iget-object v1, p2, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->lazyController:Ldagger/Lazy;

    .line 262
    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 264
    move-result-object v1

    .line 267
    check-cast v1, Lcom/android/systemui/controls/controller/ControlsController;

    .line 268
    iget-object v2, p2, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->backgroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 270
    invoke-direct {v0, v1, p3, v2}, Lcom/android/systemui/controls/controller/StatefulControlSubscriber;-><init>(Lcom/android/systemui/controls/controller/ControlsController;Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V

    .line 272
    iput-object v0, p2, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->statefulControlSubscriber:Lcom/android/systemui/controls/controller/StatefulControlSubscriber;

    .line 275
    new-instance p2, Ljava/util/ArrayList;

    .line 277
    iget-object v1, v3, Lcom/android/systemui/controls/controller/StructureInfo;->controls:Ljava/util/List;

    .line 279
    invoke-static {v1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    .line 281
    move-result v2

    .line 284
    invoke-direct {p2, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 285
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 288
    move-result-object v1

    .line 291
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 292
    move-result v2

    .line 295
    if-eqz v2, :cond_7

    .line 296
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 298
    move-result-object v2

    .line 301
    check-cast v2, Lcom/android/systemui/controls/controller/ControlInfo;

    .line 302
    iget-object v2, v2, Lcom/android/systemui/controls/controller/ControlInfo;->controlId:Ljava/lang/String;

    .line 304
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    goto :goto_3

    .line 309
    :cond_7
    new-instance v1, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Action;

    .line 310
    invoke-direct {v1, p3, p2, v0}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Action;-><init>(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;Ljava/util/List;Lcom/android/systemui/controls/controller/StatefulControlSubscriber;)V

    .line 312
    invoke-virtual {p3, v1}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->invokeOrQueue(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$ServiceMethod;)V

    .line 315
    goto :goto_4

    .line 318
    :cond_8
    invoke-interface {p3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 319
    move-result-object p3

    .line 322
    check-cast p3, Lcom/android/systemui/controls/controller/ControlsController;

    .line 323
    invoke-virtual {p2}, Lcom/android/systemui/controls/ui/SelectedItem;->getComponentName()Landroid/content/ComponentName;

    .line 325
    move-result-object p2

    .line 328
    check-cast p3, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 329
    iget-object p3, p3, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->bindingController:Lcom/android/systemui/controls/controller/ControlsBindingController;

    .line 331
    check-cast p3, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;

    .line 333
    invoke-virtual {p3, p2}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->retrieveLifecycleManager(Landroid/content/ComponentName;)Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    .line 335
    move-result-object p2

    .line 338
    invoke-virtual {p2, v2, v2}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->bindService(ZZ)V

    .line 339
    :goto_4
    new-instance p2, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$show$5;

    .line 342
    invoke-direct {p2, p0}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$show$5;-><init>(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;)V

    .line 344
    new-instance p3, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createCallback$1;

    .line 347
    invoke-direct {p3, p0, p2}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createCallback$1;-><init>(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Lkotlin/jvm/functions/Function1;)V

    .line 349
    iput-object p3, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->listingCallback:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createCallback$1;

    .line 352
    :goto_5
    iget-object p2, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsListingController:Ldagger/Lazy;

    .line 354
    invoke-interface {p2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 356
    move-result-object p2

    .line 359
    check-cast p2, Lcom/android/systemui/controls/management/ControlsListingController;

    .line 360
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->listingCallback:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createCallback$1;

    .line 362
    if-nez p0, :cond_9

    .line 364
    goto :goto_6

    .line 366
    :cond_9
    move-object p1, p0

    .line 367
    :goto_6
    check-cast p2, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;

    .line 368
    invoke-virtual {p2, p1}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 370
    return-void
    .line 373
.end method

.method public final showControlsView(Ljava/util/List;)V
    .locals 15

    .line 1
    move-object v6, p0

    .line 2
    iget-object v0, v6, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlViewsById:Ljava/util/Map;

    .line 3
    check-cast v0, Ljava/util/LinkedHashMap;

    .line 5
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    .line 15
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object v2

    .line 23
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v3

    .line 27
    if-eqz v3, :cond_1

    .line 28
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v3

    .line 33
    move-object v4, v3

    .line 34
    check-cast v4, Lcom/android/systemui/controls/ui/SelectionItem;

    .line 35
    iget-boolean v4, v4, Lcom/android/systemui/controls/ui/SelectionItem;->isPanel:Z

    .line 37
    if-eqz v4, :cond_0

    .line 39
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    goto :goto_0

    .line 48
    :cond_1
    new-instance v2, Lkotlin/Pair;

    .line 49
    invoke-direct {v2, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 51
    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 54
    move-result-object v0

    .line 57
    check-cast v0, Ljava/util/List;

    .line 58
    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 60
    move-result-object v1

    .line 63
    check-cast v1, Ljava/util/List;

    .line 64
    new-instance v2, Ljava/util/ArrayList;

    .line 66
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    .line 68
    move-result v3

    .line 71
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 72
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 75
    move-result-object v3

    .line 78
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    move-result v4

    .line 82
    if-eqz v4, :cond_2

    .line 83
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    move-result-object v4

    .line 88
    check-cast v4, Lcom/android/systemui/controls/ui/SelectionItem;

    .line 89
    iget-object v4, v4, Lcom/android/systemui/controls/ui/SelectionItem;->componentName:Landroid/content/ComponentName;

    .line 91
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    goto :goto_1

    .line 96
    :cond_2
    invoke-static {v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 97
    move-result-object v2

    .line 100
    invoke-static {v1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    .line 101
    move-result v3

    .line 104
    invoke-static {v3}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    .line 105
    move-result v3

    .line 108
    const/16 v4, 0x10

    .line 109
    if-ge v3, v4, :cond_3

    .line 111
    move v3, v4

    .line 113
    :cond_3
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 114
    invoke-direct {v4, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 116
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 119
    move-result-object v1

    .line 122
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 123
    move-result v3

    .line 126
    if-eqz v3, :cond_4

    .line 127
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 129
    move-result-object v3

    .line 132
    move-object v5, v3

    .line 133
    check-cast v5, Lcom/android/systemui/controls/ui/SelectionItem;

    .line 134
    iget-object v5, v5, Lcom/android/systemui/controls/ui/SelectionItem;->componentName:Landroid/content/ComponentName;

    .line 136
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    goto :goto_2

    .line 141
    :cond_4
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 142
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 144
    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 147
    move-result-object v3

    .line 150
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 151
    move-result-object v3

    .line 154
    :cond_5
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 155
    move-result v4

    .line 158
    if-eqz v4, :cond_6

    .line 159
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 161
    move-result-object v4

    .line 164
    check-cast v4, Ljava/util/Map$Entry;

    .line 165
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 167
    move-result-object v5

    .line 170
    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 171
    move-result v5

    .line 174
    if-nez v5, :cond_5

    .line 175
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 177
    move-result-object v5

    .line 180
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 181
    move-result-object v4

    .line 184
    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    goto :goto_3

    .line 188
    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    .line 189
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 191
    iget-object v3, v6, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->allStructures:Ljava/util/List;

    .line 194
    const/4 v4, 0x0

    .line 196
    if-nez v3, :cond_7

    .line 197
    move-object v3, v4

    .line 199
    :cond_7
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 200
    move-result-object v3

    .line 203
    :cond_8
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 204
    move-result v5

    .line 207
    if-eqz v5, :cond_a

    .line 208
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 210
    move-result-object v5

    .line 213
    check-cast v5, Lcom/android/systemui/controls/controller/StructureInfo;

    .line 214
    iget-object v7, v5, Lcom/android/systemui/controls/controller/StructureInfo;->componentName:Landroid/content/ComponentName;

    .line 216
    invoke-virtual {v1, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    move-result-object v7

    .line 221
    check-cast v7, Lcom/android/systemui/controls/ui/SelectionItem;

    .line 222
    if-eqz v7, :cond_9

    .line 224
    iget-object v10, v5, Lcom/android/systemui/controls/controller/StructureInfo;->structure:Ljava/lang/CharSequence;

    .line 226
    iget-object v9, v7, Lcom/android/systemui/controls/ui/SelectionItem;->appName:Ljava/lang/CharSequence;

    .line 228
    iget-object v11, v7, Lcom/android/systemui/controls/ui/SelectionItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 230
    iget-object v12, v7, Lcom/android/systemui/controls/ui/SelectionItem;->componentName:Landroid/content/ComponentName;

    .line 232
    iget v13, v7, Lcom/android/systemui/controls/ui/SelectionItem;->uid:I

    .line 234
    iget-object v14, v7, Lcom/android/systemui/controls/ui/SelectionItem;->panelComponentName:Landroid/content/ComponentName;

    .line 236
    new-instance v5, Lcom/android/systemui/controls/ui/SelectionItem;

    .line 238
    move-object v8, v5

    .line 240
    invoke-direct/range {v8 .. v14}, Lcom/android/systemui/controls/ui/SelectionItem;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/content/ComponentName;ILandroid/content/ComponentName;)V

    .line 241
    goto :goto_5

    .line 244
    :cond_9
    move-object v5, v4

    .line 245
    :goto_5
    if-eqz v5, :cond_8

    .line 246
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    goto :goto_4

    .line 251
    :cond_a
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 252
    iget-object v1, v6, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->localeComparator:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$special$$inlined$compareBy$1;

    .line 255
    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 257
    iput-object v2, v6, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->lastSelections:Ljava/util/List;

    .line 260
    iget-object v1, v6, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->selectedItem:Lcom/android/systemui/controls/ui/SelectedItem;

    .line 262
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 264
    move-result-object v3

    .line 267
    :cond_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 268
    move-result v5

    .line 271
    const/4 v7, 0x1

    .line 272
    const/4 v8, 0x0

    .line 273
    if-eqz v5, :cond_f

    .line 274
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 276
    move-result-object v5

    .line 279
    move-object v9, v5

    .line 280
    check-cast v9, Lcom/android/systemui/controls/ui/SelectionItem;

    .line 281
    iget-object v10, v9, Lcom/android/systemui/controls/ui/SelectionItem;->componentName:Landroid/content/ComponentName;

    .line 283
    invoke-virtual {v1}, Lcom/android/systemui/controls/ui/SelectedItem;->getComponentName()Landroid/content/ComponentName;

    .line 285
    move-result-object v11

    .line 288
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 289
    move-result v10

    .line 292
    if-nez v10, :cond_c

    .line 293
    move v9, v8

    .line 295
    goto :goto_7

    .line 296
    :cond_c
    iget-boolean v10, v9, Lcom/android/systemui/controls/ui/SelectionItem;->isPanel:Z

    .line 297
    if-nez v10, :cond_e

    .line 299
    instance-of v10, v1, Lcom/android/systemui/controls/ui/SelectedItem$PanelItem;

    .line 301
    if-eqz v10, :cond_d

    .line 303
    goto :goto_6

    .line 305
    :cond_d
    move-object v10, v1

    .line 306
    check-cast v10, Lcom/android/systemui/controls/ui/SelectedItem$StructureItem;

    .line 307
    iget-object v10, v10, Lcom/android/systemui/controls/ui/SelectedItem$StructureItem;->structure:Lcom/android/systemui/controls/controller/StructureInfo;

    .line 309
    iget-object v10, v10, Lcom/android/systemui/controls/controller/StructureInfo;->structure:Ljava/lang/CharSequence;

    .line 311
    iget-object v9, v9, Lcom/android/systemui/controls/ui/SelectionItem;->structure:Ljava/lang/CharSequence;

    .line 313
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 315
    move-result v9

    .line 318
    goto :goto_7

    .line 319
    :cond_e
    :goto_6
    move v9, v7

    .line 320
    :goto_7
    if-eqz v9, :cond_b

    .line 321
    goto :goto_8

    .line 323
    :cond_f
    move-object v5, v4

    .line 324
    :goto_8
    check-cast v5, Lcom/android/systemui/controls/ui/SelectionItem;

    .line 325
    if-nez v5, :cond_11

    .line 327
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 329
    move-result v1

    .line 332
    xor-int/2addr v1, v7

    .line 333
    if-eqz v1, :cond_10

    .line 334
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 336
    move-result-object v0

    .line 339
    check-cast v0, Lcom/android/systemui/controls/ui/SelectionItem;

    .line 340
    goto :goto_9

    .line 342
    :cond_10
    move-object/from16 v0, p1

    .line 343
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 345
    move-result-object v0

    .line 348
    check-cast v0, Lcom/android/systemui/controls/ui/SelectionItem;

    .line 349
    :goto_9
    move-object v5, v0

    .line 351
    :cond_11
    invoke-virtual {p0, v5}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->maybeUpdateSelectedItem(Lcom/android/systemui/controls/ui/SelectionItem;)Z

    .line 352
    iget-object v0, v6, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->activityContext:Landroid/content/Context;

    .line 355
    if-nez v0, :cond_12

    .line 357
    move-object v0, v4

    .line 359
    :cond_12
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 360
    move-result-object v0

    .line 363
    iget-object v1, v6, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->parent:Landroid/view/ViewGroup;

    .line 364
    if-nez v1, :cond_13

    .line 366
    move-object v1, v4

    .line 368
    :cond_13
    const v3, 0x7f0d0088    # @layout/controls_with_favorites 'res/layout/controls_with_favorites.xml'

    .line 369
    invoke-virtual {v0, v3, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 372
    iget-object v0, v6, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->parent:Landroid/view/ViewGroup;

    .line 375
    if-nez v0, :cond_14

    .line 377
    move-object v0, v4

    .line 379
    :cond_14
    const v1, 0x7f0a0244    # @id/controls_close

    .line 380
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 383
    move-result-object v0

    .line 386
    check-cast v0, Landroid/widget/ImageView;

    .line 387
    new-instance v1, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createControlsSpaceFrame$1$1;

    .line 389
    invoke-direct {v1, p0}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createControlsSpaceFrame$1$1;-><init>(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;)V

    .line 391
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 397
    iget-object v0, v6, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->taskViewFactory:Ljava/util/Optional;

    .line 400
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    .line 402
    move-result v0

    .line 405
    iget-boolean v1, v5, Lcom/android/systemui/controls/ui/SelectionItem;->isPanel:Z

    .line 406
    if-eqz v0, :cond_17

    .line 408
    if-eqz v1, :cond_17

    .line 410
    iget-object v0, v5, Lcom/android/systemui/controls/ui/SelectionItem;->panelComponentName:Landroid/content/ComponentName;

    .line 412
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 414
    iget-object v1, v6, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsSettingsRepository:Lcom/android/systemui/controls/settings/ControlsSettingsRepository;

    .line 417
    check-cast v1, Lcom/android/systemui/controls/settings/ControlsSettingsRepositoryImpl;

    .line 419
    iget-object v1, v1, Lcom/android/systemui/controls/settings/ControlsSettingsRepositoryImpl;->allowActionOnTrivialControlsInLockscreen:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 421
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->getValue()Ljava/lang/Object;

    .line 423
    move-result-object v1

    .line 426
    check-cast v1, Ljava/lang/Boolean;

    .line 427
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 429
    move-result v1

    .line 432
    iget-object v9, v6, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->context:Landroid/content/Context;

    .line 433
    const/4 v10, 0x0

    .line 435
    new-instance v3, Landroid/content/Intent;

    .line 436
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 438
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 441
    move-result-object v0

    .line 444
    const-string v3, "android.service.controls.extra.LOCKSCREEN_ALLOW_TRIVIAL_CONTROLS"

    .line 445
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 447
    move-result-object v11

    .line 450
    const/high16 v12, 0xc000000

    .line 451
    const/4 v13, 0x0

    .line 453
    iget-object v0, v6, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 454
    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 456
    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserHandle()Landroid/os/UserHandle;

    .line 458
    move-result-object v14

    .line 461
    invoke-static/range {v9 .. v14}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 462
    move-result-object v0

    .line 465
    iget-object v1, v6, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->parent:Landroid/view/ViewGroup;

    .line 466
    if-nez v1, :cond_15

    .line 468
    move-object v1, v4

    .line 470
    :cond_15
    const v3, 0x7f0a0250    # @id/controls_scroll_view

    .line 471
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 474
    move-result-object v1

    .line 477
    const/16 v3, 0x8

    .line 478
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 480
    iget-object v1, v6, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->parent:Landroid/view/ViewGroup;

    .line 483
    if-nez v1, :cond_16

    .line 485
    move-object v1, v4

    .line 487
    :cond_16
    const v3, 0x7f0a024d    # @id/controls_panel

    .line 488
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 491
    move-result-object v1

    .line 494
    check-cast v1, Landroid/widget/FrameLayout;

    .line 495
    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 497
    new-instance v3, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createPanelView$1;

    .line 500
    invoke-direct {v3, p0, v0, v1, v8}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createPanelView$1;-><init>(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 502
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 505
    goto :goto_a

    .line 508
    :cond_17
    if-nez v1, :cond_18

    .line 509
    iget-object v0, v6, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 511
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isUnlocked()Z

    .line 513
    move-result v0

    .line 516
    xor-int/2addr v0, v7

    .line 517
    iget-object v1, v6, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsMetricsLogger:Lcom/android/systemui/controls/ControlsMetricsLogger;

    .line 518
    check-cast v1, Lcom/android/systemui/controls/ControlsMetricsLoggerImpl;

    .line 520
    iget v3, v5, Lcom/android/systemui/controls/ui/SelectionItem;->uid:I

    .line 522
    invoke-virtual {v1, v3, v0}, Lcom/android/systemui/controls/ControlsMetricsLoggerImpl;->refreshBegin(IZ)V

    .line 524
    invoke-virtual {p0, v5}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->createListView(Lcom/android/systemui/controls/ui/SelectionItem;)V

    .line 527
    goto :goto_a

    .line 530
    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 531
    const-string v1, "Not TaskViewFactory to display panel "

    .line 533
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 535
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 538
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 541
    move-result-object v0

    .line 544
    const-string v1, "ControlsUiController"

    .line 545
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :goto_a
    iput-object v5, v6, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->selectionItem:Lcom/android/systemui/controls/ui/SelectionItem;

    .line 550
    new-instance v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$showControlsView$3;

    .line 552
    invoke-direct {v0, p0, v5}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$showControlsView$3;-><init>(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Lcom/android/systemui/controls/ui/SelectionItem;)V

    .line 554
    iget-object v1, v6, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 557
    check-cast v1, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 559
    invoke-virtual {v1, v0}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 561
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 564
    move-result-object v0

    .line 567
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 568
    move-result v1

    .line 571
    if-eqz v1, :cond_19

    .line 572
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 574
    move-result-object v1

    .line 577
    check-cast v1, Lcom/android/systemui/controls/ui/SelectionItem;

    .line 578
    sget-object v3, Lcom/android/systemui/controls/ui/RenderInfo;->iconMap:Landroid/util/SparseArray;

    .line 580
    iget-object v3, v1, Lcom/android/systemui/controls/ui/SelectionItem;->componentName:Landroid/content/ComponentName;

    .line 582
    sget-object v9, Lcom/android/systemui/controls/ui/RenderInfo;->appIconMap:Landroid/util/ArrayMap;

    .line 584
    iget-object v1, v1, Lcom/android/systemui/controls/ui/SelectionItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 586
    invoke-virtual {v9, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    goto :goto_b

    .line 591
    :cond_19
    new-instance v0, Lcom/android/systemui/controls/ui/ItemAdapter;

    .line 592
    iget-object v1, v6, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->context:Landroid/content/Context;

    .line 594
    invoke-direct {v0, v1}, Lcom/android/systemui/controls/ui/ItemAdapter;-><init>(Landroid/content/Context;)V

    .line 596
    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 599
    new-instance v3, Ljava/util/ArrayList;

    .line 602
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 604
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 607
    move-result-object v9

    .line 610
    :cond_1a
    :goto_c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 611
    move-result v10

    .line 614
    if-eqz v10, :cond_1c

    .line 615
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 617
    move-result-object v10

    .line 620
    move-object v11, v10

    .line 621
    check-cast v11, Lcom/android/systemui/controls/ui/SelectionItem;

    .line 622
    if-eq v11, v5, :cond_1b

    .line 624
    move v11, v7

    .line 626
    goto :goto_d

    .line 627
    :cond_1b
    move v11, v8

    .line 628
    :goto_d
    if-eqz v11, :cond_1a

    .line 629
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 631
    goto :goto_c

    .line 634
    :cond_1c
    new-instance v9, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createDropDown$lambda$19$$inlined$sortedBy$1;

    .line 635
    invoke-direct {v9}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createDropDown$lambda$19$$inlined$sortedBy$1;-><init>()V

    .line 637
    invoke-static {v3, v9}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 640
    move-result-object v3

    .line 643
    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 644
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 647
    move-result-object v3

    .line 650
    const v9, 0x7f07022f    # @dimen/controls_header_app_icon_size '24.0dp'

    .line 651
    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 654
    move-result v3

    .line 657
    iget-object v9, v6, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->parent:Landroid/view/ViewGroup;

    .line 658
    if-nez v9, :cond_1d

    .line 660
    move-object v9, v4

    .line 662
    :cond_1d
    const v10, 0x7f0a00d2    # @id/app_or_structure_spinner

    .line 663
    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 666
    move-result-object v9

    .line 669
    check-cast v9, Landroid/widget/TextView;

    .line 670
    invoke-virtual {v5}, Lcom/android/systemui/controls/ui/SelectionItem;->getTitle()Ljava/lang/CharSequence;

    .line 672
    move-result-object v11

    .line 675
    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 676
    invoke-virtual {v9}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 679
    move-result-object v11

    .line 682
    check-cast v11, Landroid/graphics/drawable/LayerDrawable;

    .line 683
    invoke-virtual {v11, v8}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 685
    move-result-object v11

    .line 688
    invoke-virtual {v9}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    .line 689
    move-result-object v12

    .line 692
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 693
    move-result-object v12

    .line 696
    const v13, 0x7f0600d1    # @color/control_spinner_dropdown '@android:color/foreground_material_dark'

    .line 697
    invoke-virtual {v12, v13, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 700
    move-result v12

    .line 703
    invoke-virtual {v11, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 704
    iget-object v11, v5, Lcom/android/systemui/controls/ui/SelectionItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 707
    invoke-virtual {v11, v8, v8, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 709
    int-to-float v3, v3

    .line 712
    const v12, 0x4019999a    # 2.4f

    .line 713
    div-float/2addr v3, v12

    .line 716
    float-to-int v3, v3

    .line 717
    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 718
    invoke-virtual {v9, v11, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 721
    iget-object v3, v6, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->parent:Landroid/view/ViewGroup;

    .line 724
    if-nez v3, :cond_1e

    .line 726
    move-object v3, v4

    .line 728
    :cond_1e
    invoke-virtual {v3, v10}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 729
    move-result-object v3

    .line 732
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 733
    move-result v10

    .line 736
    if-ne v10, v7, :cond_1f

    .line 737
    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 739
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 742
    invoke-virtual {v3, v8}, Landroid/view/View;->setClickable(Z)V

    .line 745
    goto :goto_e

    .line 748
    :cond_1f
    iget-object v8, v6, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->parent:Landroid/view/ViewGroup;

    .line 749
    if-nez v8, :cond_20

    .line 751
    move-object v8, v4

    .line 753
    :cond_20
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 754
    move-result-object v8

    .line 757
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 758
    move-result-object v8

    .line 761
    const v10, 0x7f080c03    # @drawable/control_spinner_background 'res/drawable/control_spinner_background.xml'

    .line 762
    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 765
    move-result-object v8

    .line 768
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 769
    new-instance v8, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createDropDown$2;

    .line 772
    invoke-direct {v8, p0, v3, v0}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createDropDown$2;-><init>(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Landroid/view/View;Lcom/android/systemui/controls/ui/ItemAdapter;)V

    .line 774
    invoke-virtual {v3, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 777
    :goto_e
    new-instance v0, Ljava/util/ArrayList;

    .line 780
    invoke-static {v2}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    .line 782
    move-result v3

    .line 785
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 786
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 789
    move-result-object v2

    .line 792
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 793
    move-result v3

    .line 796
    if-eqz v3, :cond_21

    .line 797
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 799
    move-result-object v3

    .line 802
    check-cast v3, Lcom/android/systemui/controls/ui/SelectionItem;

    .line 803
    iget-object v3, v3, Lcom/android/systemui/controls/ui/SelectionItem;->componentName:Landroid/content/ComponentName;

    .line 805
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 807
    goto :goto_f

    .line 810
    :cond_21
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 811
    move-result-object v0

    .line 814
    iget-object v2, v6, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsListingController:Ldagger/Lazy;

    .line 815
    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 817
    move-result-object v2

    .line 820
    check-cast v2, Lcom/android/systemui/controls/management/ControlsListingController;

    .line 821
    check-cast v2, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;

    .line 823
    invoke-virtual {v2}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->getCurrentServices()Ljava/util/List;

    .line 825
    move-result-object v2

    .line 828
    new-instance v3, Ljava/util/ArrayList;

    .line 829
    invoke-static {v2}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    .line 831
    move-result v8

    .line 834
    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 835
    check-cast v2, Ljava/util/ArrayList;

    .line 838
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 840
    move-result-object v2

    .line 843
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 844
    move-result v8

    .line 847
    if-eqz v8, :cond_22

    .line 848
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 850
    move-result-object v8

    .line 853
    check-cast v8, Lcom/android/systemui/controls/ControlsServiceInfo;

    .line 854
    iget-object v8, v8, Lcom/android/settingslib/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    .line 856
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 858
    goto :goto_10

    .line 861
    :cond_22
    invoke-static {v3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 862
    move-result-object v2

    .line 865
    invoke-static {v2, v0}, Lkotlin/collections/SetsKt;->minus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    .line 866
    move-result-object v0

    .line 869
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 870
    move-result v0

    .line 873
    xor-int/2addr v0, v7

    .line 874
    iget-object v2, v6, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->selectedItem:Lcom/android/systemui/controls/ui/SelectedItem;

    .line 875
    instance-of v3, v2, Lcom/android/systemui/controls/ui/SelectedItem$PanelItem;

    .line 877
    instance-of v7, v2, Lcom/android/systemui/controls/ui/SelectedItem$StructureItem;

    .line 879
    if-eqz v7, :cond_23

    .line 881
    check-cast v2, Lcom/android/systemui/controls/ui/SelectedItem$StructureItem;

    .line 883
    goto :goto_11

    .line 885
    :cond_23
    move-object v2, v4

    .line 886
    :goto_11
    if-eqz v2, :cond_24

    .line 887
    iget-object v2, v2, Lcom/android/systemui/controls/ui/SelectedItem$StructureItem;->structure:Lcom/android/systemui/controls/controller/StructureInfo;

    .line 889
    if-nez v2, :cond_25

    .line 891
    :cond_24
    sget-object v2, Lcom/android/systemui/controls/controller/StructureInfo;->EMPTY_STRUCTURE:Lcom/android/systemui/controls/controller/StructureInfo;

    .line 893
    :cond_25
    move-object v7, v2

    .line 895
    sget-object v2, Lcom/android/systemui/flags/Flags;->CONTROLS_MANAGEMENT_NEW_FLOWS:Lcom/android/systemui/flags/ReleasedFlag;

    .line 896
    iget-object v8, v6, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 898
    check-cast v8, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 900
    invoke-virtual {v8, v2}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 902
    move-result v2

    .line 905
    new-instance v9, Lkotlin/collections/builders/ListBuilder;

    .line 906
    invoke-direct {v9}, Lkotlin/collections/builders/ListBuilder;-><init>()V

    .line 908
    new-instance v10, Lcom/android/systemui/controls/ui/OverflowMenuAdapter$MenuItem;

    .line 911
    const v11, 0x7f130320    # @string/controls_open_app 'Open app'

    .line 913
    invoke-virtual {v1, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 916
    move-result-object v11

    .line 919
    const-wide/16 v12, 0x0

    .line 920
    invoke-direct {v10, v11, v12, v13}, Lcom/android/systemui/controls/ui/OverflowMenuAdapter$MenuItem;-><init>(Ljava/lang/CharSequence;J)V

    .line 922
    invoke-virtual {v9, v10}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 925
    if-nez v2, :cond_27

    .line 928
    if-eqz v3, :cond_26

    .line 930
    goto :goto_12

    .line 932
    :cond_26
    new-instance v0, Lcom/android/systemui/controls/ui/OverflowMenuAdapter$MenuItem;

    .line 933
    const v2, 0x7f13031b    # @string/controls_menu_add 'Add controls'

    .line 935
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 938
    move-result-object v2

    .line 941
    const-wide/16 v10, 0x1

    .line 942
    invoke-direct {v0, v2, v10, v11}, Lcom/android/systemui/controls/ui/OverflowMenuAdapter$MenuItem;-><init>(Ljava/lang/CharSequence;J)V

    .line 944
    invoke-virtual {v9, v0}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 947
    goto :goto_13

    .line 950
    :cond_27
    :goto_12
    if-eqz v0, :cond_28

    .line 951
    new-instance v0, Lcom/android/systemui/controls/ui/OverflowMenuAdapter$MenuItem;

    .line 953
    const v2, 0x7f13031c    # @string/controls_menu_add_another_app 'Add app'

    .line 955
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 958
    move-result-object v2

    .line 961
    const-wide/16 v10, 0x2

    .line 962
    invoke-direct {v0, v2, v10, v11}, Lcom/android/systemui/controls/ui/OverflowMenuAdapter$MenuItem;-><init>(Ljava/lang/CharSequence;J)V

    .line 964
    invoke-virtual {v9, v0}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 967
    :cond_28
    sget-object v0, Lcom/android/systemui/flags/Flags;->APP_PANELS_REMOVE_APPS_ALLOWED:Lcom/android/systemui/flags/ReleasedFlag;

    .line 970
    invoke-virtual {v8, v0}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 972
    move-result v0

    .line 975
    if-eqz v0, :cond_29

    .line 976
    new-instance v0, Lcom/android/systemui/controls/ui/OverflowMenuAdapter$MenuItem;

    .line 978
    const v2, 0x7f13031e    # @string/controls_menu_remove 'Remove app'

    .line 980
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 983
    move-result-object v2

    .line 986
    const-wide/16 v10, 0x4

    .line 987
    invoke-direct {v0, v2, v10, v11}, Lcom/android/systemui/controls/ui/OverflowMenuAdapter$MenuItem;-><init>(Ljava/lang/CharSequence;J)V

    .line 989
    invoke-virtual {v9, v0}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 992
    :cond_29
    :goto_13
    if-nez v3, :cond_2a

    .line 995
    new-instance v0, Lcom/android/systemui/controls/ui/OverflowMenuAdapter$MenuItem;

    .line 997
    const v2, 0x7f13031d    # @string/controls_menu_edit 'Edit controls'

    .line 999
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 1002
    move-result-object v2

    .line 1005
    const-wide/16 v10, 0x3

    .line 1006
    invoke-direct {v0, v2, v10, v11}, Lcom/android/systemui/controls/ui/OverflowMenuAdapter$MenuItem;-><init>(Ljava/lang/CharSequence;J)V

    .line 1008
    invoke-virtual {v9, v0}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 1011
    :cond_2a
    invoke-virtual {v9}, Lkotlin/collections/builders/ListBuilder;->build()V

    .line 1014
    new-instance v8, Lcom/android/systemui/controls/ui/OverflowMenuAdapter;

    .line 1017
    new-instance v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createMenu$adapter$1;

    .line 1019
    invoke-direct {v0, p0}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createMenu$adapter$1;-><init>(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;)V

    .line 1021
    invoke-direct {v8, v1, v9, v0}, Lcom/android/systemui/controls/ui/OverflowMenuAdapter;-><init>(Landroid/content/Context;Lkotlin/collections/builders/ListBuilder;Lkotlin/jvm/functions/Function2;)V

    .line 1024
    iget-object v0, v6, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->parent:Landroid/view/ViewGroup;

    .line 1027
    if-nez v0, :cond_2b

    .line 1029
    goto :goto_14

    .line 1031
    :cond_2b
    move-object v4, v0

    .line 1032
    :goto_14
    const v0, 0x7f0a024a    # @id/controls_more

    .line 1033
    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 1036
    move-result-object v0

    .line 1039
    move-object v9, v0

    .line 1040
    check-cast v9, Landroid/widget/ImageView;

    .line 1041
    new-instance v10, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createMenu$1;

    .line 1043
    move-object v0, v10

    .line 1045
    move-object v1, p0

    .line 1046
    move-object v2, v9

    .line 1047
    move-object v3, v8

    .line 1048
    move-object v4, v7

    .line 1049
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createMenu$1;-><init>(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Landroid/widget/ImageView;Lcom/android/systemui/controls/ui/OverflowMenuAdapter;Lcom/android/systemui/controls/controller/StructureInfo;Lcom/android/systemui/controls/ui/SelectionItem;)V

    .line 1050
    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1053
    iput-object v8, v6, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->overflowMenuAdapter:Lcom/android/systemui/controls/ui/OverflowMenuAdapter;

    .line 1056
    return-void
    .line 1058
.end method

.method public final startActivity(Landroid/content/Intent;Z)V
    .locals 2

    .line 1
    if-eqz p2, :cond_0

    .line 2
    const-string p2, "extra_animate"

    .line 4
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 7
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 10
    check-cast p2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 12
    iget-boolean p2, p2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 14
    const/4 v0, 0x0

    .line 16
    if-eqz p2, :cond_1

    .line 17
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 19
    invoke-interface {p0, p1, v0}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    .line 21
    goto :goto_1

    .line 24
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->activityContext:Landroid/content/Context;

    .line 25
    const/4 p2, 0x0

    .line 27
    if-nez p0, :cond_2

    .line 28
    move-object v1, p2

    .line 30
    goto :goto_0

    .line 31
    :cond_2
    move-object v1, p0

    .line 32
    :goto_0
    if-nez p0, :cond_3

    .line 33
    move-object p0, p2

    .line 35
    :cond_3
    check-cast p0, Landroid/app/Activity;

    .line 36
    new-array p2, v0, [Landroid/util/Pair;

    .line 38
    invoke-static {p0, p2}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/util/Pair;)Landroid/app/ActivityOptions;

    .line 40
    move-result-object p0

    .line 43
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 44
    move-result-object p0

    .line 47
    invoke-virtual {v1, p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 48
    :goto_1
    return-void
    .line 51
.end method

.method public final startRemovingApp$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$startRemovingApp$1;

    .line 2
    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$startRemovingApp$1;-><init>(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Landroid/content/ComponentName;Ljava/lang/CharSequence;)V

    .line 4
    const/4 p1, 0x0

    .line 7
    const/4 p2, 0x1

    .line 8
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 9
    invoke-interface {p0, v0, p1, p2}, Lcom/android/systemui/plugins/ActivityStarter;->dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V

    .line 11
    return-void
    .line 14
.end method

.method public final startTargetedActivity(Lcom/android/systemui/controls/controller/StructureInfo;Ljava/lang/Class;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->activityContext:Landroid/content/Context;

    .line 4
    if-nez v1, :cond_0

    .line 6
    const/4 v1, 0x0

    .line 8
    :cond_0
    invoke-direct {v0, v1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 9
    iget-object p2, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsListingController:Ldagger/Lazy;

    .line 12
    invoke-interface {p2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 14
    move-result-object p2

    .line 17
    check-cast p2, Lcom/android/systemui/controls/management/ControlsListingController;

    .line 18
    iget-object v1, p1, Lcom/android/systemui/controls/controller/StructureInfo;->componentName:Landroid/content/ComponentName;

    .line 20
    check-cast p2, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;

    .line 22
    invoke-virtual {p2, v1}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->getAppLabel(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    .line 24
    move-result-object p2

    .line 27
    const-string v1, "extra_app_label"

    .line 28
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 30
    const-string p2, "extra_structure"

    .line 33
    iget-object v1, p1, Lcom/android/systemui/controls/controller/StructureInfo;->structure:Ljava/lang/CharSequence;

    .line 35
    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 37
    const-string p2, "android.intent.extra.COMPONENT_NAME"

    .line 40
    iget-object p1, p1, Lcom/android/systemui/controls/controller/StructureInfo;->componentName:Landroid/content/ComponentName;

    .line 42
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 44
    const/4 p1, 0x1

    .line 47
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->startActivity(Landroid/content/Intent;Z)V

    .line 48
    iput-boolean p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->retainCache:Z

    .line 51
    return-void
    .line 53
.end method

.method public final updatePreferences(Lcom/android/systemui/controls/ui/SelectedItem;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/SelectedItem;->getName()Ljava/lang/CharSequence;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 9
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/SelectedItem;->getComponentName()Landroid/content/ComponentName;

    .line 10
    move-result-object v1

    .line 13
    instance-of p1, p1, Lcom/android/systemui/controls/ui/SelectedItem$PanelItem;

    .line 14
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->selectedComponentRepository:Lcom/android/systemui/controls/panels/SelectedComponentRepository;

    .line 16
    check-cast p0, Lcom/android/systemui/controls/panels/SelectedComponentRepositoryImpl;

    .line 18
    invoke-virtual {p0}, Lcom/android/systemui/controls/panels/SelectedComponentRepositoryImpl;->getSharedPreferences()Landroid/content/SharedPreferences;

    .line 20
    move-result-object p0

    .line 23
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 24
    move-result-object p0

    .line 27
    if-eqz v1, :cond_0

    .line 28
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v1, 0x0

    .line 35
    :goto_0
    const-string v2, "controls_component"

    .line 36
    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 38
    move-result-object p0

    .line 41
    const-string v1, "controls_structure"

    .line 42
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 44
    move-result-object p0

    .line 47
    const-string v0, "controls_is_panel"

    .line 48
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 50
    move-result-object p0

    .line 53
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 54
    return-void
    .line 57
.end method
