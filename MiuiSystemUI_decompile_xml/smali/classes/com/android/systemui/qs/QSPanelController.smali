.class public final Lcom/android/systemui/qs/QSPanelController;
.super Lcom/android/systemui/qs/QSPanelControllerBase;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mBrightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

.field public final mBrightnessMirrorHandler:Lcom/android/systemui/settings/brightness/BrightnessMirrorHandler;

.field public final mBrightnessSliderController:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

.field public final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public final mQsCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

.field public final mQsTileRevealControllerFactory:Lcom/android/systemui/qs/QSTileRevealController$Factory;

.field public final mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field public final mTileLayoutTouchListener:Lcom/android/systemui/qs/QSPanelController$1;

.field public final mTunerService:Lcom/android/systemui/tuner/TunerService;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/customize/QSCustomizerController;ZLcom/android/systemui/media/controls/ui/MediaHost;Lcom/android/systemui/qs/QSTileRevealController$Factory;Lcom/android/systemui/dump/DumpManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/settings/brightness/BrightnessController$Factory;Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V
    .locals 13

    .line 1
    move-object v10, p0

    .line 2
    move-object v11, p1

    .line 3
    move-object/from16 v12, p12

    .line 4
    move-object v0, p0

    .line 6
    move-object v1, p1

    .line 7
    move-object/from16 v2, p3

    .line 8
    move-object/from16 v3, p4

    .line 10
    move/from16 v4, p5

    .line 12
    move-object/from16 v5, p6

    .line 14
    move-object/from16 v6, p9

    .line 16
    move-object/from16 v7, p10

    .line 18
    move-object/from16 v8, p11

    .line 20
    move-object/from16 v9, p8

    .line 22
    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/qs/QSPanelControllerBase;-><init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/customize/QSCustomizerController;ZLcom/android/systemui/media/controls/ui/MediaHost;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/dump/DumpManager;)V

    .line 24
    new-instance v0, Lcom/android/systemui/qs/QSPanelController$1;

    .line 27
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSPanelController$1;-><init>(Lcom/android/systemui/qs/QSPanelController;)V

    .line 29
    iput-object v0, v10, Lcom/android/systemui/qs/QSPanelController;->mTileLayoutTouchListener:Lcom/android/systemui/qs/QSPanelController$1;

    .line 32
    move-object v0, p2

    .line 34
    iput-object v0, v10, Lcom/android/systemui/qs/QSPanelController;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    .line 35
    move-object/from16 v0, p4

    .line 37
    iput-object v0, v10, Lcom/android/systemui/qs/QSPanelController;->mQsCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

    .line 39
    move-object/from16 v0, p7

    .line 41
    iput-object v0, v10, Lcom/android/systemui/qs/QSPanelController;->mQsTileRevealControllerFactory:Lcom/android/systemui/qs/QSTileRevealController$Factory;

    .line 43
    move-object/from16 v0, p14

    .line 45
    iput-object v0, v10, Lcom/android/systemui/qs/QSPanelController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 47
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 49
    move-result-object v0

    .line 52
    move-object/from16 v1, p13

    .line 53
    invoke-virtual {v1, v0, p1}, Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;->create(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    .line 55
    move-result-object v0

    .line 58
    iput-object v0, v10, Lcom/android/systemui/qs/QSPanelController;->mBrightnessSliderController:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    .line 59
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 61
    invoke-virtual {p1, v1}, Lcom/android/systemui/qs/QSPanel;->setBrightnessView(Landroid/view/View;)V

    .line 63
    invoke-virtual/range {p12 .. p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    new-instance v1, Lcom/android/systemui/settings/brightness/BrightnessController;

    .line 69
    iget-object v2, v12, Lcom/android/systemui/settings/brightness/BrightnessController$Factory;->mContext:Landroid/content/Context;

    .line 71
    iget-object v3, v12, Lcom/android/systemui/settings/brightness/BrightnessController$Factory;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 73
    iget-object v4, v12, Lcom/android/systemui/settings/brightness/BrightnessController$Factory;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    .line 75
    iget-object v5, v12, Lcom/android/systemui/settings/brightness/BrightnessController$Factory;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 77
    iget-object v6, v12, Lcom/android/systemui/settings/brightness/BrightnessController$Factory;->mBackgroundHandler:Landroid/os/Handler;

    .line 79
    move-object p1, v1

    .line 81
    move-object p2, v2

    .line 82
    move-object/from16 p3, v0

    .line 83
    move-object/from16 p4, v3

    .line 85
    move-object/from16 p5, v4

    .line 87
    move-object/from16 p6, v5

    .line 89
    move-object/from16 p7, v6

    .line 91
    invoke-direct/range {p1 .. p7}, Lcom/android/systemui/settings/brightness/BrightnessController;-><init>(Landroid/content/Context;Lcom/android/systemui/settings/brightness/BrightnessSliderController;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/settings/DisplayTracker;Ljava/util/concurrent/Executor;Landroid/os/Handler;)V

    .line 93
    iput-object v1, v10, Lcom/android/systemui/qs/QSPanelController;->mBrightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

    .line 96
    new-instance v0, Lcom/android/systemui/settings/brightness/BrightnessMirrorHandler;

    .line 98
    invoke-direct {v0, v1}, Lcom/android/systemui/settings/brightness/BrightnessMirrorHandler;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;)V

    .line 100
    iput-object v0, v10, Lcom/android/systemui/qs/QSPanelController;->mBrightnessMirrorHandler:Lcom/android/systemui/settings/brightness/BrightnessMirrorHandler;

    .line 103
    move-object/from16 v0, p15

    .line 105
    iput-object v0, v10, Lcom/android/systemui/qs/QSPanelController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 107
    return-void
    .line 109
.end method


# virtual methods
.method public final createTileRevealController()Lcom/android/systemui/qs/QSTileRevealController;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 2
    check-cast v0, Lcom/android/systemui/qs/QSPanel;

    .line 4
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->getOrCreateTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    .line 6
    move-result-object v0

    .line 9
    check-cast v0, Lcom/android/systemui/qs/PagedTileLayout;

    .line 10
    new-instance v1, Lcom/android/systemui/qs/QSTileRevealController;

    .line 12
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanelController;->mQsTileRevealControllerFactory:Lcom/android/systemui/qs/QSTileRevealController$Factory;

    .line 14
    iget-object v3, v2, Lcom/android/systemui/qs/QSTileRevealController$Factory;->mContext:Landroid/content/Context;

    .line 16
    iget-object v2, v2, Lcom/android/systemui/qs/QSTileRevealController$Factory;->mQsCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

    .line 18
    invoke-direct {v1, v3, p0, v0, v2}, Lcom/android/systemui/qs/QSTileRevealController;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/QSPanelController;Lcom/android/systemui/qs/PagedTileLayout;Lcom/android/systemui/qs/customize/QSCustomizerController;)V

    .line 20
    return-object v1
    .line 23
.end method

.method public final getTileCallbackType()I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method

.method public final onConfigurationChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 2
    move-object v1, v0

    .line 4
    check-cast v1, Lcom/android/systemui/qs/QSPanel;

    .line 5
    invoke-virtual {v1}, Lcom/android/systemui/qs/QSPanel;->updateResources()V

    .line 7
    check-cast v0, Lcom/android/systemui/qs/QSPanel;

    .line 10
    iget-boolean v0, v0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    .line 12
    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanelController;->refreshAllTiles()V

    .line 16
    :cond_0
    return-void
    .line 19
.end method

.method public final onInit()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/android/systemui/qs/QSPanelControllerBase;->onInit()V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mMediaHost:Lcom/android/systemui/media/controls/ui/MediaHost;

    .line 5
    const/high16 v1, 0x3f800000    # 1.0f

    .line 7
    invoke-virtual {v0, v1}, Lcom/android/systemui/media/controls/ui/MediaHost;->setExpansion(F)V

    .line 9
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 12
    iget-object v2, v0, Lcom/android/systemui/media/controls/ui/MediaHost;->state:Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;

    .line 14
    iget-boolean v3, v2, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->showsOnlyActiveMedia:Z

    .line 16
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 18
    move-result-object v3

    .line 21
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result v1

    .line 25
    const/4 v3, 0x0

    .line 26
    if-nez v1, :cond_0

    .line 27
    iput-boolean v3, v2, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->showsOnlyActiveMedia:Z

    .line 29
    iget-object v1, v2, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->changedListener:Lkotlin/jvm/functions/Function0;

    .line 31
    if-eqz v1, :cond_0

    .line 33
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 35
    :cond_0
    invoke-virtual {v0, v3}, Lcom/android/systemui/media/controls/ui/MediaHost;->init(I)V

    .line 38
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelController;->mQsCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

    .line 41
    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    .line 43
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelController;->mBrightnessSliderController:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    .line 46
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->init()V

    .line 48
    return-void
    .line 51
.end method

.method public final onSplitShadeChanged(Z)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 2
    move-object v0, p0

    .line 4
    check-cast v0, Lcom/android/systemui/qs/QSPanel;

    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->getOrCreateTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    .line 7
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/systemui/qs/PagedTileLayout;

    .line 11
    const-string v1, "Split shade state changed"

    .line 13
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/PagedTileLayout;->forceTilesRedistribution(Ljava/lang/String;)V

    .line 15
    check-cast p0, Lcom/android/systemui/qs/QSPanel;

    .line 18
    xor-int/lit8 p1, p1, 0x1

    .line 20
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSPanel;->setCanCollapse(Z)V

    .line 22
    return-void
    .line 25
.end method

.method public final onViewAttached()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/android/systemui/qs/QSPanelControllerBase;->onViewAttached()V

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanelControllerBase;->updateMediaDisappearParameters()V

    .line 5
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 8
    move-object v1, v0

    .line 10
    check-cast v1, Lcom/android/systemui/tuner/TunerService$Tunable;

    .line 11
    const-string v2, "qs_show_brightness"

    .line 13
    filled-new-array {v2}, [Ljava/lang/String;

    .line 15
    move-result-object v2

    .line 18
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanelController;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    .line 19
    invoke-virtual {v3, v1, v2}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 21
    check-cast v0, Lcom/android/systemui/qs/QSPanel;

    .line 24
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->updateResources()V

    .line 26
    iget-boolean v1, v0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    .line 29
    if-eqz v1, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanelController;->refreshAllTiles()V

    .line 33
    :cond_0
    const/4 v1, 0x1

    .line 36
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSPanelControllerBase;->switchTileLayout(Z)Z

    .line 37
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanelController;->mBrightnessMirrorHandler:Lcom/android/systemui/settings/brightness/BrightnessMirrorHandler;

    .line 40
    iget-object v2, v1, Lcom/android/systemui/settings/brightness/BrightnessMirrorHandler;->mirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    .line 42
    if-eqz v2, :cond_1

    .line 44
    iget-object v1, v1, Lcom/android/systemui/settings/brightness/BrightnessMirrorHandler;->brightnessMirrorListener:Lcom/android/systemui/settings/brightness/BrightnessMirrorHandler$brightnessMirrorListener$1;

    .line 46
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirrorListeners:Landroid/util/ArraySet;

    .line 51
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->getOrCreateTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    .line 56
    move-result-object v0

    .line 59
    check-cast v0, Lcom/android/systemui/qs/PagedTileLayout;

    .line 60
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelController;->mTileLayoutTouchListener:Lcom/android/systemui/qs/QSPanelController$1;

    .line 62
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 64
    return-void
    .line 67
.end method

.method public final onViewDetached()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 2
    check-cast v0, Lcom/android/systemui/tuner/TunerService$Tunable;

    .line 4
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanelController;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    .line 6
    invoke-virtual {v1, v0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    .line 8
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelController;->mBrightnessMirrorHandler:Lcom/android/systemui/settings/brightness/BrightnessMirrorHandler;

    .line 11
    iget-object v1, v0, Lcom/android/systemui/settings/brightness/BrightnessMirrorHandler;->mirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    .line 13
    if-eqz v1, :cond_0

    .line 15
    iget-object v0, v0, Lcom/android/systemui/settings/brightness/BrightnessMirrorHandler;->brightnessMirrorListener:Lcom/android/systemui/settings/brightness/BrightnessMirrorHandler$brightnessMirrorListener$1;

    .line 17
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->removeCallback(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;)V

    .line 19
    :cond_0
    invoke-super {p0}, Lcom/android/systemui/qs/QSPanelControllerBase;->onViewDetached()V

    .line 22
    return-void
    .line 25
.end method

.method public final refreshAllTiles()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelController;->mBrightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance v1, Lcom/android/systemui/settings/brightness/BrightnessController$2;

    .line 7
    const/4 v2, 0x1

    .line 9
    invoke-direct {v1, v0, v2}, Lcom/android/systemui/settings/brightness/BrightnessController$2;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;I)V

    .line 10
    iget-object v0, v0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15
    invoke-super {p0}, Lcom/android/systemui/qs/QSPanelControllerBase;->refreshAllTiles()V

    .line 18
    return-void
    .line 21
.end method
