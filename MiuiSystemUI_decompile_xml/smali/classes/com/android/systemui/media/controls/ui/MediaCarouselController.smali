.class public final Lcom/android/systemui/media/controls/ui/MediaCarouselController;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# static fields
.field public static final TRANSFORM_BEZIER:Landroid/view/animation/PathInterpolator;


# instance fields
.field public final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final animationScaleObserver:Lcom/android/systemui/media/controls/ui/MediaCarouselController$animationScaleObserver$1;

.field public final bgColor:I

.field public carouselLocale:Ljava/util/Locale;

.field public carouselMeasureHeight:I

.field public carouselMeasureWidth:I

.field public final context:Landroid/content/Context;

.field public currentCarouselHeight:I

.field public currentCarouselWidth:I

.field public currentEndLocation:I

.field public currentStartLocation:I

.field public currentTransitionProgress:F

.field public currentlyExpanded:Z

.field public currentlyShowingOnlyActive:Z

.field public final debugLogger:Lcom/android/systemui/media/controls/ui/MediaCarouselControllerLogger;

.field public desiredHostState:Lcom/android/systemui/media/controls/ui/MediaHostState;

.field public desiredLocation:I

.field public isRtl:Z

.field public final keyguardTransitionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

.field public final keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final keyguardUpdateMonitorCallback:Lcom/android/systemui/media/controls/ui/MediaCarouselController$keyguardUpdateMonitorCallback$1;

.field public final keysNeedRemoval:Ljava/util/Set;

.field public final logger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

.field public mSidePaddings:I

.field public final mediaCarousel:Lcom/android/systemui/media/controls/ui/MediaScrollView;

.field public final mediaCarouselScrollHandler:Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;

.field public final mediaContent:Landroid/view/ViewGroup;

.field public final mediaControlPanelFactory:Ljavax/inject/Provider;

.field public mediaData:Lcom/android/systemui/media/controls/models/player/MediaData;

.field public final mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

.field public final mediaFrame:Landroid/view/ViewGroup;

.field public final mediaHostStatesManager:Lcom/android/systemui/media/controls/ui/MediaHostStatesManager;

.field public final mediaManager:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

.field public needsReordering:Z

.field public final pageIndicator:Lcom/android/systemui/qs/PageIndicator;

.field public playersVisible:Z

.field public settingsButton:Landroid/view/View;

.field public shouldScrollToKey:Z

.field public final systemClock:Lcom/android/systemui/util/time/SystemClock;

.field public updateHostVisibility:Lkotlin/jvm/functions/Function0;

.field public updateUserVisibility:Lkotlin/jvm/functions/Function0;

.field public final visualStabilityCallback:Lcom/android/systemui/media/controls/ui/MediaCarouselController$6;

.field public final visualStabilityProvider:Lcom/android/systemui/statusbar/notification/collection/provider/VisualStabilityProvider;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 2
    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    const v2, 0x3f2e147b    # 0.68f

    .line 6
    const/4 v3, 0x0

    .line 9
    invoke-direct {v0, v2, v3, v3, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 10
    sput-object v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->TRANSFORM_BEZIER:Landroid/view/animation/PathInterpolator;

    .line 13
    return-void
    .line 15
.end method

.method public constructor <init>(Landroid/content/Context;Ljavax/inject/Provider;Lcom/android/systemui/statusbar/notification/collection/provider/VisualStabilityProvider;Lcom/android/systemui/media/controls/ui/MediaHostStatesManager;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/media/controls/pipeline/MediaDataManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/media/controls/util/MediaUiEventLogger;Lcom/android/systemui/media/controls/ui/MediaCarouselControllerLogger;Lcom/android/systemui/media/controls/util/MediaFlags;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lcom/android/systemui/util/settings/GlobalSettings;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    move-object/from16 v2, p3

    .line 6
    move-object/from16 v3, p4

    .line 8
    move-object/from16 v4, p8

    .line 10
    move-object/from16 v5, p16

    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v1, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->context:Landroid/content/Context;

    .line 17
    move-object/from16 v6, p2

    .line 19
    iput-object v6, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->mediaControlPanelFactory:Ljavax/inject/Provider;

    .line 21
    iput-object v2, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->visualStabilityProvider:Lcom/android/systemui/statusbar/notification/collection/provider/VisualStabilityProvider;

    .line 23
    iput-object v3, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->mediaHostStatesManager:Lcom/android/systemui/media/controls/ui/MediaHostStatesManager;

    .line 25
    move-object/from16 v6, p5

    .line 27
    iput-object v6, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 29
    move-object/from16 v6, p6

    .line 31
    iput-object v6, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 33
    iput-object v4, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->mediaManager:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

    .line 35
    move-object/from16 v15, p13

    .line 37
    iput-object v15, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->logger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

    .line 39
    move-object/from16 v6, p14

    .line 41
    iput-object v6, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->debugLogger:Lcom/android/systemui/media/controls/ui/MediaCarouselControllerLogger;

    .line 43
    move-object/from16 v6, p15

    .line 45
    iput-object v6, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

    .line 47
    iput-object v5, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 49
    move-object/from16 v6, p17

    .line 51
    iput-object v6, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->keyguardTransitionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

    .line 53
    const/4 v6, -0x1

    .line 55
    iput v6, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->desiredLocation:I

    .line 56
    iput v6, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->currentEndLocation:I

    .line 58
    iput v6, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->currentStartLocation:I

    .line 60
    const/high16 v6, 0x3f800000    # 1.0f

    .line 62
    iput v6, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->currentTransitionProgress:F

    .line 64
    new-instance v6, Ljava/util/LinkedHashSet;

    .line 66
    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    .line 68
    iput-object v6, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->keysNeedRemoval:Ljava/util/Set;

    .line 71
    const v6, 0x1060046    # @android:color/system_accent2_50

    .line 73
    invoke-virtual {v1, v6}, Landroid/content/Context;->getColor(I)I

    .line 76
    move-result v6

    .line 79
    iput v6, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->bgColor:I

    .line 80
    new-instance v14, Lcom/android/systemui/media/controls/ui/MediaCarouselController$animationScaleObserver$1;

    .line 82
    invoke-direct {v14}, Lcom/android/systemui/media/controls/ui/MediaCarouselController$animationScaleObserver$1;-><init>()V

    .line 84
    iput-object v14, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->animationScaleObserver:Lcom/android/systemui/media/controls/ui/MediaCarouselController$animationScaleObserver$1;

    .line 87
    const/4 v13, 0x1

    .line 89
    iput-boolean v13, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->currentlyExpanded:Z

    .line 90
    new-instance v12, Lcom/android/systemui/media/controls/ui/MediaCarouselController$configListener$1;

    .line 92
    invoke-direct {v12, v0}, Lcom/android/systemui/media/controls/ui/MediaCarouselController$configListener$1;-><init>(Lcom/android/systemui/media/controls/ui/MediaCarouselController;)V

    .line 94
    new-instance v11, Lcom/android/systemui/media/controls/ui/MediaCarouselController$keyguardUpdateMonitorCallback$1;

    .line 97
    invoke-direct {v11, v0}, Lcom/android/systemui/media/controls/ui/MediaCarouselController$keyguardUpdateMonitorCallback$1;-><init>(Lcom/android/systemui/media/controls/ui/MediaCarouselController;)V

    .line 99
    iput-object v11, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->keyguardUpdateMonitorCallback:Lcom/android/systemui/media/controls/ui/MediaCarouselController$keyguardUpdateMonitorCallback$1;

    .line 102
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 104
    move-result-object v6

    .line 107
    const v7, 0x7f070dfa    # @dimen/notification_side_paddings '14.0dp'

    .line 108
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 111
    move-result v6

    .line 114
    iput v6, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->mSidePaddings:I

    .line 115
    sget-object v6, Lcom/android/systemui/dump/DumpPriority;->CRITICAL:Lcom/android/systemui/dump/DumpPriority;

    .line 117
    const-string v7, "MediaCarouselController"

    .line 119
    move-object/from16 v8, p12

    .line 121
    invoke-virtual {v8, v7, v0, v6}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;Lcom/android/systemui/dump/DumpPriority;)V

    .line 123
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 126
    move-result-object v6

    .line 129
    new-instance v7, Lcom/android/systemui/util/animation/UniqueObjectHostView;

    .line 130
    invoke-direct {v7, v1}, Lcom/android/systemui/util/animation/UniqueObjectHostView;-><init>(Landroid/content/Context;)V

    .line 132
    const v8, 0x7f0d017b    # @layout/media_carousel 'res/layout/media_carousel.xml'

    .line 135
    const/4 v10, 0x0

    .line 138
    invoke-virtual {v6, v8, v7, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 139
    move-result-object v6

    .line 142
    move-object v9, v6

    .line 143
    check-cast v9, Landroid/view/ViewGroup;

    .line 144
    const/4 v6, 0x3

    .line 146
    invoke-virtual {v9, v6}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 147
    iput-object v9, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->mediaFrame:Landroid/view/ViewGroup;

    .line 150
    const v6, 0x7f0a0580    # @id/media_carousel_scroller

    .line 152
    invoke-virtual {v9, v6}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 155
    move-result-object v6

    .line 158
    move-object v8, v6

    .line 159
    check-cast v8, Lcom/android/systemui/media/controls/ui/MediaScrollView;

    .line 160
    iput-object v8, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->mediaCarousel:Lcom/android/systemui/media/controls/ui/MediaScrollView;

    .line 162
    const v6, 0x7f0a0590    # @id/media_page_indicator

    .line 164
    invoke-virtual {v9, v6}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 167
    move-result-object v6

    .line 170
    move-object v7, v6

    .line 171
    check-cast v7, Lcom/android/systemui/qs/PageIndicator;

    .line 172
    iput-object v7, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->pageIndicator:Lcom/android/systemui/qs/PageIndicator;

    .line 174
    new-instance v6, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;

    .line 176
    new-instance v10, Lcom/android/systemui/media/controls/ui/MediaCarouselController$1;

    .line 178
    invoke-direct {v10, v0}, Lcom/android/systemui/media/controls/ui/MediaCarouselController$1;-><init>(Ljava/lang/Object;)V

    .line 180
    new-instance v13, Lcom/android/systemui/media/controls/ui/MediaCarouselController$2;

    .line 183
    invoke-direct {v13, v0}, Lcom/android/systemui/media/controls/ui/MediaCarouselController$2;-><init>(Ljava/lang/Object;)V

    .line 185
    new-instance v1, Lcom/android/systemui/media/controls/ui/MediaCarouselController$3;

    .line 188
    invoke-direct {v1, v0}, Lcom/android/systemui/media/controls/ui/MediaCarouselController$3;-><init>(Ljava/lang/Object;)V

    .line 190
    move-object/from16 p6, v14

    .line 193
    new-instance v14, Lcom/android/systemui/media/controls/ui/MediaCarouselController$4;

    .line 195
    invoke-direct {v14, v0}, Lcom/android/systemui/media/controls/ui/MediaCarouselController$4;-><init>(Ljava/lang/Object;)V

    .line 197
    new-instance v5, Lcom/android/systemui/media/controls/ui/MediaCarouselController$5;

    .line 200
    invoke-direct {v5, v0}, Lcom/android/systemui/media/controls/ui/MediaCarouselController$5;-><init>(Ljava/lang/Object;)V

    .line 202
    move-object/from16 p12, v6

    .line 205
    move-object/from16 v16, v7

    .line 207
    move-object v7, v8

    .line 209
    move-object v3, v8

    .line 210
    move-object/from16 v8, v16

    .line 211
    move-object v4, v9

    .line 213
    move-object/from16 v9, p7

    .line 214
    const/4 v2, 0x0

    .line 216
    move-object/from16 v18, v11

    .line 217
    move-object v11, v13

    .line 219
    move-object v13, v12

    .line 220
    move-object v12, v1

    .line 221
    move-object/from16 v19, v13

    .line 222
    const/4 v1, 0x1

    .line 224
    move-object v13, v14

    .line 225
    move-object/from16 v20, p6

    .line 226
    move-object/from16 v14, p10

    .line 228
    move-object/from16 v15, p11

    .line 230
    move-object/from16 v16, v5

    .line 232
    move-object/from16 v17, p13

    .line 234
    invoke-direct/range {v6 .. v17}, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;-><init>(Lcom/android/systemui/media/controls/ui/MediaScrollView;Lcom/android/systemui/qs/PageIndicator;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/plugins/FalsingManager;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/media/controls/util/MediaUiEventLogger;)V

    .line 236
    move-object/from16 v5, p12

    .line 239
    iput-object v5, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;

    .line 241
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 243
    move-result-object v5

    .line 246
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 247
    move-result-object v5

    .line 250
    invoke-virtual {v5}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    .line 251
    move-result-object v5

    .line 254
    invoke-virtual {v5, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    .line 255
    move-result-object v5

    .line 258
    iput-object v5, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->carouselLocale:Ljava/util/Locale;

    .line 259
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 261
    move-result-object v5

    .line 264
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 265
    move-result-object v5

    .line 268
    invoke-virtual {v5}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 269
    move-result v5

    .line 272
    if-ne v5, v1, :cond_0

    .line 273
    move v13, v1

    .line 275
    goto :goto_0

    .line 276
    :cond_0
    move v13, v2

    .line 277
    :goto_0
    iget-boolean v1, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->isRtl:Z

    .line 278
    if-eq v13, v1, :cond_1

    .line 280
    iput-boolean v13, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->isRtl:Z

    .line 282
    invoke-virtual {v4, v13}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 284
    invoke-virtual {v3, v2}, Lcom/android/systemui/media/controls/ui/MediaScrollView;->setRelativeScrollX(I)V

    .line 287
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->inflateSettingsButton()V

    .line 290
    const v1, 0x7f0a057f    # @id/media_carousel

    .line 293
    invoke-virtual {v3, v1}, Landroid/widget/HorizontalScrollView;->requireViewById(I)Landroid/view/View;

    .line 296
    move-result-object v1

    .line 299
    check-cast v1, Landroid/view/ViewGroup;

    .line 300
    iput-object v1, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    .line 302
    move-object/from16 v1, p9

    .line 304
    check-cast v1, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 306
    move-object/from16 v5, v19

    .line 308
    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 310
    new-instance v1, Lcom/android/systemui/media/controls/ui/MediaCarouselController$6;

    .line 313
    invoke-direct {v1, v0}, Lcom/android/systemui/media/controls/ui/MediaCarouselController$6;-><init>(Lcom/android/systemui/media/controls/ui/MediaCarouselController;)V

    .line 315
    iput-object v1, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->visualStabilityCallback:Lcom/android/systemui/media/controls/ui/MediaCarouselController$6;

    .line 318
    move v5, v2

    .line 320
    move-object/from16 v2, p3

    .line 321
    iget-object v6, v2, Lcom/android/systemui/statusbar/notification/collection/provider/VisualStabilityProvider;->temporaryListeners:Landroid/util/ArraySet;

    .line 323
    invoke-virtual {v6, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 325
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/provider/VisualStabilityProvider;->allListeners:Lcom/android/systemui/util/ListenerSet;

    .line 328
    invoke-virtual {v2, v1}, Lcom/android/systemui/util/ListenerSet;->addIfAbsent(Ljava/lang/Object;)Z

    .line 330
    new-instance v1, Lcom/android/systemui/media/controls/ui/MediaCarouselController$7;

    .line 333
    invoke-direct {v1, v0}, Lcom/android/systemui/media/controls/ui/MediaCarouselController$7;-><init>(Lcom/android/systemui/media/controls/ui/MediaCarouselController;)V

    .line 335
    move-object/from16 v2, p8

    .line 338
    move-object v6, v4

    .line 340
    iget-object v2, v2, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->mediaDataFilter:Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;

    .line 341
    iget-object v2, v2, Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;->_listeners:Ljava/util/Set;

    .line 343
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 345
    new-instance v1, Lcom/android/systemui/media/controls/ui/MediaCarouselController$8;

    .line 348
    invoke-direct {v1, v0}, Lcom/android/systemui/media/controls/ui/MediaCarouselController$8;-><init>(Lcom/android/systemui/media/controls/ui/MediaCarouselController;)V

    .line 350
    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 353
    new-instance v1, Lcom/android/systemui/media/controls/ui/MediaCarouselController$9;

    .line 356
    invoke-direct {v1, v0}, Lcom/android/systemui/media/controls/ui/MediaCarouselController$9;-><init>(Lcom/android/systemui/media/controls/ui/MediaCarouselController;)V

    .line 358
    move-object/from16 v2, p4

    .line 361
    move-object v6, v3

    .line 363
    iget-object v2, v2, Lcom/android/systemui/media/controls/ui/MediaHostStatesManager;->callbacks:Ljava/util/Set;

    .line 364
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 366
    move-object/from16 v1, p16

    .line 369
    move-object/from16 v2, v18

    .line 371
    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 373
    new-instance v1, Lcom/android/systemui/media/controls/ui/MediaCarouselController$10;

    .line 376
    const/4 v2, 0x0

    .line 378
    invoke-direct {v1, v0, v2}, Lcom/android/systemui/media/controls/ui/MediaCarouselController$10;-><init>(Lcom/android/systemui/media/controls/ui/MediaCarouselController;Lkotlin/coroutines/Continuation;)V

    .line 379
    invoke-static {v6, v1}, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt;->repeatWhenAttached$default(Landroid/view/View;Lkotlin/jvm/functions/Function3;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    .line 382
    const-string v0, "animator_duration_scale"

    .line 385
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 387
    move-result-object v0

    .line 390
    invoke-interface/range {p18 .. p18}, Lcom/android/systemui/util/settings/SettingsProxy;->getUserId()I

    .line 391
    move-result v1

    .line 394
    move-object/from16 v2, p18

    .line 395
    move-object/from16 v3, v20

    .line 397
    invoke-interface {v2, v0, v5, v3, v1}, Lcom/android/systemui/util/settings/SettingsProxy;->registerContentObserverForUser(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 399
    return-void
.end method

.method public static final access$updateCarouselDimensions(Lcom/android/systemui/media/controls/ui/MediaCarouselController;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    sget-object v0, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/controls/ui/MediaPlayerData;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    invoke-static {}, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->players()Ljava/util/Collection;

    .line 10
    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object v0

    .line 17
    const/4 v1, 0x0

    .line 18
    move v2, v1

    .line 19
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v3

    .line 23
    if-eqz v3, :cond_2

    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v3

    .line 29
    check-cast v3, Lcom/android/systemui/media/controls/ui/MediaControlPanel;

    .line 30
    iget-object v3, v3, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/controls/ui/MediaViewController;

    .line 32
    iget v4, v3, Lcom/android/systemui/media/controls/ui/MediaViewController;->currentWidth:I

    .line 34
    iget-object v5, v3, Lcom/android/systemui/media/controls/ui/MediaViewController;->transitionLayout:Lcom/android/systemui/util/animation/TransitionLayout;

    .line 36
    const/4 v6, 0x0

    .line 38
    if-eqz v5, :cond_0

    .line 39
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getTranslationX()F

    .line 41
    move-result v5

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    move v5, v6

    .line 46
    :goto_1
    float-to-int v5, v5

    .line 47
    add-int/2addr v4, v5

    .line 48
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    .line 49
    move-result v1

    .line 52
    iget v4, v3, Lcom/android/systemui/media/controls/ui/MediaViewController;->currentHeight:I

    .line 53
    iget-object v3, v3, Lcom/android/systemui/media/controls/ui/MediaViewController;->transitionLayout:Lcom/android/systemui/util/animation/TransitionLayout;

    .line 55
    if-eqz v3, :cond_1

    .line 57
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getTranslationY()F

    .line 59
    move-result v6

    .line 62
    :cond_1
    float-to-int v3, v6

    .line 63
    add-int/2addr v4, v3

    .line 64
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    .line 65
    move-result v2

    .line 68
    goto :goto_0

    .line 69
    :cond_2
    iget v0, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->currentCarouselWidth:I

    .line 70
    if-ne v1, v0, :cond_3

    .line 72
    iget v0, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->currentCarouselHeight:I

    .line 74
    if-eq v2, v0, :cond_6

    .line 76
    :cond_3
    iput v1, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->currentCarouselWidth:I

    .line 78
    iput v2, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->currentCarouselHeight:I

    .line 80
    iget v0, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->mSidePaddings:I

    .line 82
    mul-int/lit8 v0, v0, 0x2

    .line 84
    add-int/2addr v0, v1

    .line 86
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;

    .line 87
    iget v3, v1, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->carouselHeight:I

    .line 89
    if-ne v2, v3, :cond_4

    .line 91
    iget v3, v1, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->carouselWidth:I

    .line 93
    if-eq v0, v3, :cond_5

    .line 95
    :cond_4
    iput v0, v1, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->carouselWidth:I

    .line 97
    iput v2, v1, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->carouselHeight:I

    .line 99
    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->scrollView$com$android$systemui$media$controls$ui$MediaCarouselScrollHandler:Lcom/android/systemui/media/controls/ui/MediaScrollView;

    .line 101
    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->invalidateOutline()V

    .line 103
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->updatePageIndicatorLocation()V

    .line 106
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->updatePageIndicatorAlpha()V

    .line 109
    :cond_6
    return-void
    .line 112
.end method

.method public static final access$updatePlayers(Lcom/android/systemui/media/controls/ui/MediaCarouselController;Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->context:Landroid/content/Context;

    .line 2
    const v1, 0x7f060386    # @color/media_paging_indicator '@color/material_dynamic_neutral_variant80'

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    .line 7
    move-result v0

    .line 10
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 11
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->pageIndicator:Lcom/android/systemui/qs/PageIndicator;

    .line 15
    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/PageIndicator;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 17
    sget-object v0, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/controls/ui/MediaPlayerData;

    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    invoke-static {}, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->visiblePlayerKeys()Ljava/util/Collection;

    .line 25
    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;

    .line 29
    iget v1, v1, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->visibleMediaIndex:I

    .line 31
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->elementAtOrNull(Ljava/lang/Iterable;I)Ljava/lang/Object;

    .line 33
    move-result-object v0

    .line 36
    check-cast v0, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;

    .line 37
    sget-object v1, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->mediaData:Ljava/util/Map;

    .line 39
    check-cast v1, Ljava/util/LinkedHashMap;

    .line 41
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 43
    move-result-object v1

    .line 46
    new-instance v2, Ljava/util/ArrayList;

    .line 47
    invoke-static {v1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    .line 49
    move-result v3

    .line 52
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 53
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 56
    move-result-object v1

    .line 59
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    move-result v3

    .line 63
    if-eqz v3, :cond_0

    .line 64
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    move-result-object v3

    .line 69
    check-cast v3, Ljava/util/Map$Entry;

    .line 70
    new-instance v4, Lkotlin/Triple;

    .line 72
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 74
    move-result-object v5

    .line 77
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 78
    move-result-object v6

    .line 81
    check-cast v6, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;

    .line 82
    iget-object v6, v6, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;->data:Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 84
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 86
    move-result-object v3

    .line 89
    check-cast v3, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;

    .line 90
    iget-boolean v3, v3, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;->isSsMediaRec:Z

    .line 92
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 94
    move-result-object v3

    .line 97
    invoke-direct {v4, v5, v6, v3}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 98
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 105
    move-result-object v1

    .line 108
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 109
    move-result v2

    .line 112
    if-eqz v2, :cond_6

    .line 113
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 115
    move-result-object v2

    .line 118
    check-cast v2, Lkotlin/Triple;

    .line 119
    invoke-virtual {v2}, Lkotlin/Triple;->component1()Ljava/lang/Object;

    .line 121
    move-result-object v3

    .line 124
    check-cast v3, Ljava/lang/String;

    .line 125
    invoke-virtual {v2}, Lkotlin/Triple;->component2()Ljava/lang/Object;

    .line 127
    move-result-object v4

    .line 130
    check-cast v4, Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 131
    invoke-virtual {v2}, Lkotlin/Triple;->component3()Ljava/lang/Object;

    .line 133
    move-result-object v2

    .line 136
    check-cast v2, Ljava/lang/Boolean;

    .line 137
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 139
    move-result v2

    .line 142
    const/4 v5, 0x0

    .line 143
    const/4 v6, 0x0

    .line 144
    if-eqz v2, :cond_2

    .line 145
    sget-object v2, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/controls/ui/MediaPlayerData;

    .line 147
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    sget-object v2, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->smartspaceMediaData:Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;

    .line 152
    invoke-virtual {p0, v3, v6, v6}, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->removePlayer(Ljava/lang/String;ZZ)Lcom/android/systemui/media/controls/ui/MediaControlPanel;

    .line 154
    if-eqz v2, :cond_5

    .line 157
    sget-boolean v3, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->shouldPrioritizeSs:Z

    .line 159
    iget-object v4, v2, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->targetId:Ljava/lang/String;

    .line 161
    invoke-virtual {p0, v4, v2, v3}, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->addSmartspaceMediaRecommendations(Ljava/lang/String;Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;Z)V

    .line 163
    goto :goto_3

    .line 166
    :cond_2
    sget-object v2, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/controls/ui/MediaPlayerData;

    .line 167
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 169
    sget-object v2, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->mediaData:Ljava/util/Map;

    .line 172
    check-cast v2, Ljava/util/LinkedHashMap;

    .line 174
    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    move-result-object v2

    .line 179
    check-cast v2, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;

    .line 180
    if-eqz v2, :cond_3

    .line 182
    iget-boolean v2, v2, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;->isSsReactivated:Z

    .line 184
    goto :goto_2

    .line 186
    :cond_3
    move v2, v6

    .line 187
    :goto_2
    if-eqz p1, :cond_4

    .line 188
    invoke-virtual {p0, v3, v6, v6}, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->removePlayer(Ljava/lang/String;ZZ)Lcom/android/systemui/media/controls/ui/MediaControlPanel;

    .line 190
    :cond_4
    invoke-virtual {p0, v3, v5, v4, v2}, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->addOrUpdatePlayer(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/models/player/MediaData;Z)Z

    .line 193
    :cond_5
    :goto_3
    if-eqz p1, :cond_1

    .line 196
    invoke-virtual {p0, v0, v5}, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->reorderAllPlayers(Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;Ljava/lang/String;)V

    .line 198
    goto :goto_1

    .line 201
    :cond_6
    return-void
    .line 202
.end method

.method public static synthetic getCurrentEndLocation$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public static synthetic getCurrentlyExpanded$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public static synthetic getMediaCarousel$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public static synthetic getPageIndicator$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public static synthetic getSettingsButton$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public static logSmartspaceCardReported$default(Lcom/android/systemui/media/controls/ui/MediaCarouselController;III[IIIIIZI)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    move/from16 v1, p1

    .line 4
    move/from16 v2, p2

    .line 6
    move/from16 v3, p3

    .line 8
    move-object/from16 v4, p4

    .line 10
    move/from16 v5, p10

    .line 12
    and-int/lit8 v6, v5, 0x10

    .line 14
    if-eqz v6, :cond_0

    .line 16
    const/4 v6, 0x0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move/from16 v6, p5

    .line 20
    :goto_0
    and-int/lit8 v7, v5, 0x20

    .line 22
    if-eqz v7, :cond_1

    .line 24
    const/4 v7, 0x0

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    move/from16 v7, p6

    .line 28
    :goto_1
    and-int/lit8 v8, v5, 0x40

    .line 30
    if-eqz v8, :cond_2

    .line 32
    iget-object v8, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;

    .line 34
    iget v8, v8, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->visibleMediaIndex:I

    .line 36
    goto :goto_2

    .line 38
    :cond_2
    move/from16 v8, p7

    .line 39
    :goto_2
    and-int/lit16 v9, v5, 0x80

    .line 41
    if-eqz v9, :cond_3

    .line 43
    const/4 v9, 0x0

    .line 45
    goto :goto_3

    .line 46
    :cond_3
    move/from16 v9, p8

    .line 47
    :goto_3
    and-int/lit16 v5, v5, 0x100

    .line 49
    if-eqz v5, :cond_4

    .line 51
    const/4 v5, 0x0

    .line 53
    goto :goto_4

    .line 54
    :cond_4
    move/from16 v5, p9

    .line 55
    :goto_4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    sget-object v10, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/controls/ui/MediaPlayerData;

    .line 60
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    invoke-static {}, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->players()Ljava/util/Collection;

    .line 65
    move-result-object v10

    .line 68
    invoke-interface {v10}, Ljava/util/Collection;->size()I

    .line 69
    move-result v10

    .line 72
    if-gt v10, v8, :cond_5

    .line 73
    goto/16 :goto_9

    .line 75
    :cond_5
    invoke-static {}, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->visiblePlayerKeys()Ljava/util/Collection;

    .line 77
    move-result-object v10

    .line 80
    invoke-static {v10, v8}, Lkotlin/collections/CollectionsKt___CollectionsKt;->elementAt(Ljava/lang/Iterable;I)Ljava/lang/Object;

    .line 81
    move-result-object v10

    .line 84
    check-cast v10, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;

    .line 85
    iget-boolean v11, v10, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;->isSsMediaRec:Z

    .line 87
    if-nez v11, :cond_6

    .line 89
    iget-object v11, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->mediaManager:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

    .line 91
    iget-object v11, v11, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->smartspaceMediaData:Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;

    .line 93
    iget-boolean v11, v11, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->isActive:Z

    .line 95
    if-nez v11, :cond_6

    .line 97
    sget-object v11, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->smartspaceMediaData:Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;

    .line 99
    if-nez v11, :cond_6

    .line 101
    goto/16 :goto_9

    .line 103
    :cond_6
    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    .line 105
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 107
    move-result v0

    .line 110
    array-length v11, v4

    .line 111
    const/4 v12, 0x0

    .line 112
    :goto_5
    if-ge v12, v11, :cond_b

    .line 113
    aget v13, v4, v12

    .line 115
    if-eqz v5, :cond_7

    .line 117
    const/4 v14, -0x1

    .line 119
    goto :goto_6

    .line 120
    :cond_7
    move v14, v8

    .line 121
    :goto_6
    iget-boolean v15, v10, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;->isSsReactivated:Z

    .line 122
    iget-boolean v4, v10, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;->isSsMediaRec:Z

    .line 124
    if-eqz v4, :cond_8

    .line 126
    const/16 v16, 0xf

    .line 128
    :goto_7
    move/from16 p5, v5

    .line 130
    move/from16 v5, v16

    .line 132
    goto :goto_8

    .line 134
    :cond_8
    if-eqz v15, :cond_9

    .line 135
    const/16 v16, 0x2b

    .line 137
    goto :goto_7

    .line 139
    :cond_9
    const/16 v16, 0x1f

    .line 140
    goto :goto_7

    .line 142
    :goto_8
    move-object/from16 p6, v10

    .line 143
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    .line 145
    move-result-object v10

    .line 148
    move/from16 v16, v11

    .line 149
    const/16 v11, 0x160

    .line 151
    invoke-virtual {v10, v11}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 153
    invoke-virtual {v10, v1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 156
    invoke-virtual {v10, v2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 159
    const/4 v11, 0x0

    .line 162
    invoke-virtual {v10, v11}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 163
    invoke-virtual {v10, v13}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 166
    invoke-virtual {v10, v14}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 169
    invoke-virtual {v10, v0}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 172
    invoke-virtual {v10, v5}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 175
    invoke-virtual {v10, v3}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 178
    const/4 v5, 0x1

    .line 181
    invoke-virtual {v10, v5, v5}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    .line 182
    invoke-virtual {v10, v6}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 185
    invoke-virtual {v10, v7}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 188
    invoke-virtual {v10, v9}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 191
    new-array v5, v11, [B

    .line 194
    invoke-virtual {v10, v5}, Landroid/util/StatsEvent$Builder;->writeByteArray([B)Landroid/util/StatsEvent$Builder;

    .line 196
    new-array v5, v11, [B

    .line 199
    invoke-virtual {v10, v5}, Landroid/util/StatsEvent$Builder;->writeByteArray([B)Landroid/util/StatsEvent$Builder;

    .line 201
    invoke-virtual {v10}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 204
    invoke-virtual {v10}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    .line 207
    move-result-object v5

    .line 210
    invoke-static {v5}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 211
    sget-boolean v5, Lcom/android/systemui/media/controls/ui/MediaCarouselControllerKt;->DEBUG:Z

    .line 214
    if-eqz v5, :cond_a

    .line 216
    const-string v5, "Log Smartspace card event id: "

    .line 218
    const-string v10, " instance id: "

    .line 220
    const-string v11, " surface: "

    .line 222
    invoke-static {v5, v1, v10, v2, v11}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    move-result-object v5

    .line 227
    const-string v10, " rank: "

    .line 228
    const-string v11, " cardinality: "

    .line 230
    invoke-static {v5, v13, v10, v8, v11}, Landroidx/viewpager/widget/OriginalViewPager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 232
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 235
    const-string v10, " isRecommendationCard: "

    .line 238
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 243
    const-string v4, " isSsReactivated: "

    .line 246
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 251
    const-string/jumbo v4, "uid: "

    .line 254
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 260
    const-string v4, " interactedSubcardRank: "

    .line 263
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    const-string v4, " interactedSubcardCardinality: "

    .line 268
    const-string v10, " received_latency_millis: "

    .line 270
    invoke-static {v5, v6, v4, v7, v10}, Landroidx/viewpager/widget/OriginalViewPager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 272
    const-string v4, "MediaCarouselController"

    .line 275
    invoke-static {v5, v9, v4}, Lcom/android/keyguard/AwesomeLockScreen$2$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 277
    :cond_a
    add-int/lit8 v12, v12, 0x1

    .line 280
    move-object/from16 v4, p4

    .line 282
    move/from16 v5, p5

    .line 284
    move-object/from16 v10, p6

    .line 286
    move/from16 v11, v16

    .line 288
    goto/16 :goto_5

    .line 290
    :cond_b
    :goto_9
    return-void
    .line 292
.end method

.method public static synthetic onDesiredLocationChanged$default(Lcom/android/systemui/media/controls/ui/MediaCarouselController;ILcom/android/systemui/media/controls/ui/MediaHostState;)V
    .locals 8

    .line 1
    const/4 v3, 0x0

    .line 2
    const-wide/16 v4, 0xc8

    .line 3
    const-wide/16 v6, 0x0

    .line 5
    move-object v0, p0

    .line 7
    move v1, p1

    .line 8
    move-object v2, p2

    .line 9
    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->onDesiredLocationChanged(ILcom/android/systemui/media/controls/ui/MediaHostState;ZJJ)Lkotlin/Unit;

    .line 10
    return-void
    .line 13
.end method

.method public static synthetic removePlayer$default(Lcom/android/systemui/media/controls/ui/MediaCarouselController;Ljava/lang/String;I)Lcom/android/systemui/media/controls/ui/MediaControlPanel;
    .locals 3

    .line 1
    and-int/lit8 v0, p2, 0x2

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    move v0, v2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, v1

    .line 10
    :goto_0
    and-int/lit8 p2, p2, 0x4

    .line 11
    if-eqz p2, :cond_1

    .line 13
    move v1, v2

    .line 15
    :cond_1
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->removePlayer(Ljava/lang/String;ZZ)Lcom/android/systemui/media/controls/ui/MediaControlPanel;

    .line 16
    move-result-object p0

    .line 19
    return-object p0
    .line 20
.end method


# virtual methods
.method public final addOrUpdatePlayer(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/models/player/MediaData;Z)Z
    .locals 46

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    move-object/from16 v2, p2

    .line 6
    move-object/from16 v15, p3

    .line 8
    move/from16 v14, p4

    .line 10
    const-wide/16 v12, 0x1000

    .line 12
    invoke-static {v12, v13}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 14
    move-result v3

    .line 17
    iget-object v11, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->debugLogger:Lcom/android/systemui/media/controls/ui/MediaCarouselControllerLogger;

    .line 18
    const/4 v10, 0x1

    .line 20
    iget-object v9, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->mediaFrame:Landroid/view/ViewGroup;

    .line 21
    iget-object v8, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->visualStabilityProvider:Lcom/android/systemui/statusbar/notification/collection/provider/VisualStabilityProvider;

    .line 23
    iget-object v5, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    .line 25
    iget-object v4, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->context:Landroid/content/Context;

    .line 27
    iget-object v14, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->mediaControlPanelFactory:Ljavax/inject/Provider;

    .line 29
    const-string v6, "media_data_arrive: addOrUpdatePlayer"

    .line 31
    const-string v7, "MediaCarouselController"

    .line 33
    const/16 v20, 0x0

    .line 35
    move-object/from16 v18, v14

    .line 37
    iget-object v14, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;

    .line 39
    if-eqz v3, :cond_b

    .line 41
    const-string v3, "MediaCarouselController#addOrUpdatePlayer"

    .line 43
    invoke-static {v12, v13, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 45
    :try_start_0
    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iput-object v15, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->mediaData:Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 51
    iget v6, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->bgColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 53
    const/4 v7, 0x0

    .line 55
    const/16 v19, 0x0

    .line 56
    const/16 v21, 0x0

    .line 58
    const/16 v22, 0x0

    .line 60
    const/16 v23, 0x0

    .line 62
    const/16 v24, 0x0

    .line 64
    const/16 v25, 0x0

    .line 66
    const/16 v26, 0x0

    .line 68
    const/16 v27, 0x0

    .line 70
    const/16 v28, 0x0

    .line 72
    const/16 v29, 0x0

    .line 74
    const/16 v30, 0x0

    .line 76
    const/16 v31, 0x0

    .line 78
    const/16 v32, 0x0

    .line 80
    const v33, 0xffffffb

    .line 82
    move-object/from16 v3, p3

    .line 85
    move-object/from16 v34, v4

    .line 87
    move v4, v6

    .line 89
    move-object v6, v5

    .line 90
    move-object v5, v7

    .line 91
    move-object/from16 v35, v6

    .line 92
    const/4 v7, -0x1

    .line 94
    move-object/from16 v6, v19

    .line 95
    move-object/from16 v7, v21

    .line 97
    move-object/from16 v36, v8

    .line 99
    move-object/from16 v8, v22

    .line 101
    move-object/from16 v37, v9

    .line 103
    move-object/from16 v9, v23

    .line 105
    move-object/from16 v10, v24

    .line 107
    move-object/from16 v38, v11

    .line 109
    move/from16 v11, v25

    .line 111
    move-wide/from16 v21, v12

    .line 113
    move-object/from16 v12, v26

    .line 115
    move/from16 v13, v27

    .line 117
    move-object/from16 v39, v14

    .line 119
    move-object/from16 v23, v18

    .line 121
    move/from16 v14, v28

    .line 123
    move-object/from16 v15, v29

    .line 125
    move/from16 v16, v30

    .line 127
    move-object/from16 v17, v31

    .line 129
    move/from16 v18, v32

    .line 131
    move/from16 v19, v33

    .line 133
    :try_start_1
    invoke-static/range {v3 .. v19}, Lcom/android/systemui/media/controls/models/player/MediaData;->copy$default(Lcom/android/systemui/media/controls/models/player/MediaData;ILjava/util/List;Ljava/util/List;Lcom/android/systemui/media/controls/models/player/MediaButton;Ljava/lang/String;Landroid/app/PendingIntent;Lcom/android/systemui/media/controls/models/player/MediaDeviceData;ZLcom/android/systemui/media/controls/resume/MediaResumeListener$getResumeAction$1;ZZLjava/lang/Boolean;ZLcom/android/internal/logging/InstanceId;II)Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 135
    sget-object v3, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/controls/ui/MediaPlayerData;

    .line 138
    invoke-static {v3, v2, v1}, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->moveIfExists$default(Lcom/android/systemui/media/controls/ui/MediaPlayerData;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->getMediaPlayer(Ljava/lang/String;)Lcom/android/systemui/media/controls/ui/MediaControlPanel;

    .line 143
    move-result-object v2

    .line 146
    invoke-static {}, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->visiblePlayerKeys()Ljava/util/Collection;

    .line 147
    move-result-object v3

    .line 150
    move-object/from16 v15, v39

    .line 151
    iget v4, v15, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->visibleMediaIndex:I

    .line 153
    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt___CollectionsKt;->elementAtOrNull(Ljava/lang/Iterable;I)Ljava/lang/Object;

    .line 155
    move-result-object v3

    .line 158
    check-cast v3, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    move-object/from16 v14, p3

    .line 161
    iget-object v4, v14, Lcom/android/systemui/media/controls/models/player/MediaData;->isPlaying:Ljava/lang/Boolean;

    .line 163
    if-nez v2, :cond_5

    .line 165
    :try_start_2
    invoke-interface/range {v23 .. v23}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 167
    move-result-object v5

    .line 170
    check-cast v5, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaControlPanel;

    .line 171
    sget-object v6, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->controlsIds:Ljava/util/Set;

    .line 173
    invoke-static/range {v34 .. v34}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 175
    move-result-object v6

    .line 178
    move-object/from16 v13, v35

    .line 179
    invoke-static {v6, v13}, Lcom/android/systemui/media/controls/models/player/MediaViewHolder$Companion;->create(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/android/systemui/media/controls/models/player/MediaViewHolder;

    .line 181
    move-result-object v6

    .line 184
    invoke-virtual {v5, v6}, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->attachPlayer(Lcom/android/systemui/media/controls/models/player/MediaViewHolder;)V

    .line 185
    iget-object v6, v5, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/controls/ui/MediaViewController;

    .line 188
    new-instance v7, Lcom/android/systemui/media/controls/ui/MediaCarouselController$addOrUpdatePlayer$1$1;

    .line 190
    invoke-direct {v7, v0}, Lcom/android/systemui/media/controls/ui/MediaCarouselController$addOrUpdatePlayer$1$1;-><init>(Ljava/lang/Object;)V

    .line 192
    iput-object v7, v6, Lcom/android/systemui/media/controls/ui/MediaViewController;->sizeChangedListener:Lkotlin/jvm/functions/Function0;

    .line 195
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 197
    const/4 v11, -0x1

    .line 199
    const/4 v12, -0x2

    .line 200
    invoke-direct {v6, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 201
    iget-object v7, v5, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/controls/models/player/MediaViewHolder;

    .line 204
    if-eqz v7, :cond_0

    .line 206
    iget-object v7, v7, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->player:Lcom/android/systemui/util/animation/TransitionLayout;

    .line 208
    if-eqz v7, :cond_0

    .line 210
    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    :cond_0
    invoke-virtual {v5, v14, v1}, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaControlPanel;->bindPlayer(Lcom/android/systemui/media/controls/models/player/MediaData;Ljava/lang/String;)V

    .line 215
    iget-boolean v6, v15, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->visibleToUser:Z

    .line 218
    if-eqz v6, :cond_1

    .line 220
    iget-boolean v6, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->currentlyExpanded:Z

    .line 222
    if-eqz v6, :cond_1

    .line 224
    const/4 v10, 0x1

    .line 226
    goto :goto_0

    .line 227
    :cond_1
    move/from16 v10, v20

    .line 228
    :goto_0
    iget-object v6, v5, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mSeekBarViewModel:Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;

    .line 230
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 232
    new-instance v7, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$listening$1;

    .line 235
    invoke-direct {v7, v6, v10}, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$listening$1;-><init>(Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;Z)V

    .line 237
    iget-object v6, v6, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;->bgExecutor:Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl;

    .line 240
    invoke-virtual {v6, v7}, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 242
    move/from16 v10, p4

    .line 245
    move-object/from16 v9, v38

    .line 247
    invoke-static {v1, v14, v5, v10, v9}, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->addMediaPlayer(Ljava/lang/String;Lcom/android/systemui/media/controls/models/player/MediaData;Lcom/android/systemui/media/controls/ui/MediaControlPanel;ZLcom/android/systemui/media/controls/ui/MediaCarouselControllerLogger;)V

    .line 249
    const/4 v8, 0x1

    .line 252
    invoke-virtual {v0, v5, v8}, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->updatePlayerToState(Lcom/android/systemui/media/controls/ui/MediaControlPanel;Z)V

    .line 253
    iget-boolean v5, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->shouldScrollToKey:Z

    .line 256
    if-eqz v5, :cond_2

    .line 258
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 260
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 262
    move-result v4

    .line 265
    if-nez v4, :cond_3

    .line 266
    :cond_2
    iget-boolean v4, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->shouldScrollToKey:Z

    .line 268
    if-nez v4, :cond_4

    .line 270
    iget-boolean v4, v14, Lcom/android/systemui/media/controls/models/player/MediaData;->active:Z

    .line 272
    if-eqz v4, :cond_4

    .line 274
    :cond_3
    invoke-virtual {v0, v3, v1}, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->reorderAllPlayers(Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;Ljava/lang/String;)V

    .line 276
    goto :goto_2

    .line 279
    :cond_4
    iput-boolean v8, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->needsReordering:Z

    .line 280
    goto :goto_2

    .line 282
    :catchall_0
    move-exception v0

    .line 283
    goto :goto_4

    .line 284
    :cond_5
    move/from16 v10, p4

    .line 285
    move-object/from16 v9, v38

    .line 287
    const/4 v8, 0x1

    .line 289
    invoke-virtual {v2, v14, v1}, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->bindPlayer(Lcom/android/systemui/media/controls/models/player/MediaData;Ljava/lang/String;)V

    .line 290
    invoke-static {v1, v14, v2, v10, v9}, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->addMediaPlayer(Ljava/lang/String;Lcom/android/systemui/media/controls/models/player/MediaData;Lcom/android/systemui/media/controls/ui/MediaControlPanel;ZLcom/android/systemui/media/controls/ui/MediaCarouselControllerLogger;)V

    .line 293
    sget-object v5, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->smartspaceMediaData:Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;

    .line 296
    if-eqz v5, :cond_6

    .line 298
    iget-object v5, v5, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->packageName:Ljava/lang/String;

    .line 300
    if-nez v5, :cond_7

    .line 302
    :cond_6
    new-instance v5, Ljava/lang/String;

    .line 304
    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    .line 306
    :cond_7
    move-object/from16 v6, v36

    .line 309
    iget-boolean v6, v6, Lcom/android/systemui/statusbar/notification/collection/provider/VisualStabilityProvider;->isReorderingAllowed:Z

    .line 311
    if-nez v6, :cond_9

    .line 313
    iget-boolean v6, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->shouldScrollToKey:Z

    .line 315
    if-eqz v6, :cond_8

    .line 317
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 319
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 321
    move-result v4

    .line 324
    if-eqz v4, :cond_8

    .line 325
    iget-object v4, v14, Lcom/android/systemui/media/controls/models/player/MediaData;->packageName:Ljava/lang/String;

    .line 327
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 329
    move-result v4

    .line 332
    if-eqz v4, :cond_8

    .line 333
    goto :goto_1

    .line 335
    :cond_8
    iput-boolean v8, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->needsReordering:Z

    .line 336
    goto :goto_2

    .line 338
    :cond_9
    :goto_1
    invoke-virtual {v0, v3, v1}, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->reorderAllPlayers(Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;Ljava/lang/String;)V

    .line 339
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->updatePageIndicator()V

    .line 342
    invoke-virtual {v15}, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->updatePlayerVisibilities()V

    .line 345
    invoke-virtual {v15}, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->updateMediaPaddings()V

    .line 348
    move-object/from16 v3, v37

    .line 351
    invoke-static {v3, v8}, Lcom/android/systemui/util/animation/UniqueObjectHostViewKt;->setRequiresRemeasuring(Landroid/view/View;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 353
    if-nez v2, :cond_a

    .line 356
    move v10, v8

    .line 358
    goto :goto_3

    .line 359
    :cond_a
    move/from16 v10, v20

    .line 360
    :goto_3
    invoke-static/range {v21 .. v22}, Landroid/os/Trace;->traceEnd(J)V

    .line 362
    return v10

    .line 365
    :catchall_1
    move-exception v0

    .line 366
    move-wide/from16 v21, v12

    .line 367
    :goto_4
    invoke-static/range {v21 .. v22}, Landroid/os/Trace;->traceEnd(J)V

    .line 369
    throw v0

    .line 372
    :cond_b
    move-object/from16 v34, v4

    .line 373
    move-object v13, v5

    .line 375
    move-object v5, v8

    .line 376
    move-object v3, v9

    .line 377
    move v8, v10

    .line 378
    move-object v9, v11

    .line 379
    move-object/from16 v23, v18

    .line 380
    const/4 v11, -0x1

    .line 382
    const/4 v12, -0x2

    .line 383
    move/from16 v10, p4

    .line 384
    move-object/from16 v45, v15

    .line 386
    move-object v15, v14

    .line 388
    move-object/from16 v14, v45

    .line 389
    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iput-object v14, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->mediaData:Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 394
    iget v4, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->bgColor:I

    .line 396
    const/4 v6, 0x0

    .line 398
    move-object v7, v5

    .line 399
    move-object v5, v6

    .line 400
    const/16 v16, 0x0

    .line 401
    move-object/from16 v40, v7

    .line 403
    move-object/from16 v7, v16

    .line 405
    move-object/from16 v8, v16

    .line 407
    move-object/from16 v41, v9

    .line 409
    move-object/from16 v9, v16

    .line 411
    move-object/from16 v10, v16

    .line 413
    const/16 v16, 0x0

    .line 415
    move/from16 v11, v16

    .line 417
    const/16 v16, 0x0

    .line 419
    move-object/from16 v12, v16

    .line 421
    const/16 v16, 0x0

    .line 423
    move-object/from16 v42, v13

    .line 425
    move/from16 v13, v16

    .line 427
    move/from16 v14, v16

    .line 429
    const/16 v16, 0x0

    .line 431
    move-object/from16 v43, v15

    .line 433
    move-object/from16 v15, v16

    .line 435
    const/16 v16, 0x0

    .line 437
    const/16 v17, 0x0

    .line 439
    const/16 v18, 0x0

    .line 441
    const v19, 0xffffffb

    .line 443
    move-object/from16 v44, v3

    .line 446
    move-object/from16 v3, p3

    .line 448
    invoke-static/range {v3 .. v19}, Lcom/android/systemui/media/controls/models/player/MediaData;->copy$default(Lcom/android/systemui/media/controls/models/player/MediaData;ILjava/util/List;Ljava/util/List;Lcom/android/systemui/media/controls/models/player/MediaButton;Ljava/lang/String;Landroid/app/PendingIntent;Lcom/android/systemui/media/controls/models/player/MediaDeviceData;ZLcom/android/systemui/media/controls/resume/MediaResumeListener$getResumeAction$1;ZZLjava/lang/Boolean;ZLcom/android/internal/logging/InstanceId;II)Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 450
    sget-object v3, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/controls/ui/MediaPlayerData;

    .line 453
    invoke-static {v3, v2, v1}, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->moveIfExists$default(Lcom/android/systemui/media/controls/ui/MediaPlayerData;Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->getMediaPlayer(Ljava/lang/String;)Lcom/android/systemui/media/controls/ui/MediaControlPanel;

    .line 458
    move-result-object v2

    .line 461
    invoke-static {}, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->visiblePlayerKeys()Ljava/util/Collection;

    .line 462
    move-result-object v3

    .line 465
    move-object/from16 v4, v43

    .line 466
    iget v5, v4, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->visibleMediaIndex:I

    .line 468
    invoke-static {v3, v5}, Lkotlin/collections/CollectionsKt___CollectionsKt;->elementAtOrNull(Ljava/lang/Iterable;I)Ljava/lang/Object;

    .line 470
    move-result-object v3

    .line 473
    check-cast v3, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;

    .line 474
    move-object/from16 v5, p3

    .line 476
    iget-object v6, v5, Lcom/android/systemui/media/controls/models/player/MediaData;->isPlaying:Ljava/lang/Boolean;

    .line 478
    if-nez v2, :cond_11

    .line 480
    invoke-interface/range {v23 .. v23}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 482
    move-result-object v7

    .line 485
    check-cast v7, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaControlPanel;

    .line 486
    sget-object v8, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->controlsIds:Ljava/util/Set;

    .line 488
    invoke-static/range {v34 .. v34}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 490
    move-result-object v8

    .line 493
    move-object/from16 v9, v42

    .line 494
    invoke-static {v8, v9}, Lcom/android/systemui/media/controls/models/player/MediaViewHolder$Companion;->create(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/android/systemui/media/controls/models/player/MediaViewHolder;

    .line 496
    move-result-object v8

    .line 499
    invoke-virtual {v7, v8}, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->attachPlayer(Lcom/android/systemui/media/controls/models/player/MediaViewHolder;)V

    .line 500
    new-instance v8, Lcom/android/systemui/media/controls/ui/MediaCarouselController$addOrUpdatePlayer$1$1;

    .line 503
    invoke-direct {v8, v0}, Lcom/android/systemui/media/controls/ui/MediaCarouselController$addOrUpdatePlayer$1$1;-><init>(Ljava/lang/Object;)V

    .line 505
    iget-object v9, v7, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/controls/ui/MediaViewController;

    .line 508
    iput-object v8, v9, Lcom/android/systemui/media/controls/ui/MediaViewController;->sizeChangedListener:Lkotlin/jvm/functions/Function0;

    .line 510
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 512
    const/4 v9, -0x2

    .line 514
    const/4 v10, -0x1

    .line 515
    invoke-direct {v8, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 516
    iget-object v9, v7, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/controls/models/player/MediaViewHolder;

    .line 519
    if-eqz v9, :cond_c

    .line 521
    iget-object v9, v9, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->player:Lcom/android/systemui/util/animation/TransitionLayout;

    .line 523
    if-eqz v9, :cond_c

    .line 525
    invoke-virtual {v9, v8}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 527
    :cond_c
    invoke-virtual {v7, v5, v1}, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaControlPanel;->bindPlayer(Lcom/android/systemui/media/controls/models/player/MediaData;Ljava/lang/String;)V

    .line 530
    iget-boolean v8, v4, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->visibleToUser:Z

    .line 533
    if-eqz v8, :cond_d

    .line 535
    iget-boolean v8, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->currentlyExpanded:Z

    .line 537
    if-eqz v8, :cond_d

    .line 539
    const/4 v10, 0x1

    .line 541
    goto :goto_5

    .line 542
    :cond_d
    move/from16 v10, v20

    .line 543
    :goto_5
    iget-object v8, v7, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mSeekBarViewModel:Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;

    .line 545
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 547
    new-instance v9, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$listening$1;

    .line 550
    invoke-direct {v9, v8, v10}, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$listening$1;-><init>(Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;Z)V

    .line 552
    iget-object v8, v8, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;->bgExecutor:Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl;

    .line 555
    invoke-virtual {v8, v9}, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 557
    move/from16 v8, p4

    .line 560
    move-object/from16 v9, v41

    .line 562
    invoke-static {v1, v5, v7, v8, v9}, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->addMediaPlayer(Ljava/lang/String;Lcom/android/systemui/media/controls/models/player/MediaData;Lcom/android/systemui/media/controls/ui/MediaControlPanel;ZLcom/android/systemui/media/controls/ui/MediaCarouselControllerLogger;)V

    .line 564
    const/4 v10, 0x1

    .line 567
    invoke-virtual {v0, v7, v10}, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->updatePlayerToState(Lcom/android/systemui/media/controls/ui/MediaControlPanel;Z)V

    .line 568
    iget-boolean v7, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->shouldScrollToKey:Z

    .line 571
    if-eqz v7, :cond_e

    .line 573
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 575
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 577
    move-result v6

    .line 580
    if-nez v6, :cond_f

    .line 581
    :cond_e
    iget-boolean v6, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->shouldScrollToKey:Z

    .line 583
    if-nez v6, :cond_10

    .line 585
    iget-boolean v5, v5, Lcom/android/systemui/media/controls/models/player/MediaData;->active:Z

    .line 587
    if-eqz v5, :cond_10

    .line 589
    :cond_f
    invoke-virtual {v0, v3, v1}, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->reorderAllPlayers(Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;Ljava/lang/String;)V

    .line 591
    goto :goto_7

    .line 594
    :cond_10
    iput-boolean v10, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->needsReordering:Z

    .line 595
    goto :goto_7

    .line 597
    :cond_11
    move/from16 v8, p4

    .line 598
    move-object/from16 v9, v41

    .line 600
    const/4 v10, 0x1

    .line 602
    invoke-virtual {v2, v5, v1}, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->bindPlayer(Lcom/android/systemui/media/controls/models/player/MediaData;Ljava/lang/String;)V

    .line 603
    invoke-static {v1, v5, v2, v8, v9}, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->addMediaPlayer(Ljava/lang/String;Lcom/android/systemui/media/controls/models/player/MediaData;Lcom/android/systemui/media/controls/ui/MediaControlPanel;ZLcom/android/systemui/media/controls/ui/MediaCarouselControllerLogger;)V

    .line 606
    sget-object v7, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->smartspaceMediaData:Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;

    .line 609
    if-eqz v7, :cond_12

    .line 611
    iget-object v7, v7, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->packageName:Ljava/lang/String;

    .line 613
    if-nez v7, :cond_13

    .line 615
    :cond_12
    new-instance v7, Ljava/lang/String;

    .line 617
    invoke-direct {v7}, Ljava/lang/String;-><init>()V

    .line 619
    :cond_13
    move-object/from16 v8, v40

    .line 622
    iget-boolean v8, v8, Lcom/android/systemui/statusbar/notification/collection/provider/VisualStabilityProvider;->isReorderingAllowed:Z

    .line 624
    if-nez v8, :cond_15

    .line 626
    iget-boolean v8, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->shouldScrollToKey:Z

    .line 628
    if-eqz v8, :cond_14

    .line 630
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 632
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 634
    move-result v6

    .line 637
    if-eqz v6, :cond_14

    .line 638
    iget-object v5, v5, Lcom/android/systemui/media/controls/models/player/MediaData;->packageName:Ljava/lang/String;

    .line 640
    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 642
    move-result v5

    .line 645
    if-eqz v5, :cond_14

    .line 646
    goto :goto_6

    .line 648
    :cond_14
    iput-boolean v10, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->needsReordering:Z

    .line 649
    goto :goto_7

    .line 651
    :cond_15
    :goto_6
    invoke-virtual {v0, v3, v1}, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->reorderAllPlayers(Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;Ljava/lang/String;)V

    .line 652
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->updatePageIndicator()V

    .line 655
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->updatePlayerVisibilities()V

    .line 658
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->updateMediaPaddings()V

    .line 661
    move-object/from16 v0, v44

    .line 664
    invoke-static {v0, v10}, Lcom/android/systemui/util/animation/UniqueObjectHostViewKt;->setRequiresRemeasuring(Landroid/view/View;Z)V

    .line 666
    if-nez v2, :cond_16

    .line 669
    goto :goto_8

    .line 671
    :cond_16
    move/from16 v10, v20

    .line 672
    :goto_8
    return v10
    .line 674
.end method

.method public final addSmartspaceMediaRecommendations(Ljava/lang/String;Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;Z)V
    .locals 38

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v8, p1

    .line 4
    move-object/from16 v9, p2

    .line 6
    const-wide/16 v1, 0x1000

    .line 8
    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 10
    move-result v1

    .line 13
    const-string v10, "."

    .line 14
    const-string v11, ". View count is "

    .line 16
    iget-object v12, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->mediaFrame:Landroid/view/ViewGroup;

    .line 18
    iget-object v2, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;

    .line 20
    iget-object v3, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->debugLogger:Lcom/android/systemui/media/controls/ui/MediaCarouselControllerLogger;

    .line 22
    iget-object v4, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->context:Landroid/content/Context;

    .line 24
    iget-object v5, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->mediaControlPanelFactory:Ljavax/inject/Provider;

    .line 26
    const-string v6, "Skip adding smartspace target in carousel"

    .line 28
    const-string v7, "Updating smartspace target in carousel"

    .line 30
    iget-object v13, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

    .line 32
    iget-object v14, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    .line 34
    const-string v15, "MediaCarouselController"

    .line 36
    move-object/from16 v16, v10

    .line 38
    const-string v10, "Size of players list and number of views in carousel are out of sync. Players size is "

    .line 40
    if-eqz v1, :cond_6

    .line 42
    const-string v1, "MediaCarouselController#addSmartspaceMediaRecommendations"

    .line 44
    move-object/from16 v18, v10

    .line 46
    move-object/from16 v17, v11

    .line 48
    const-wide/16 v10, 0x1000

    .line 50
    invoke-static {v10, v11, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 52
    :try_start_0
    sget-boolean v1, Lcom/android/systemui/media/controls/ui/MediaCarouselControllerKt;->DEBUG:Z

    .line 55
    if-eqz v1, :cond_0

    .line 57
    invoke-static {v15, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_0
    sget-object v1, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/controls/ui/MediaPlayerData;

    .line 62
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->getMediaPlayer(Ljava/lang/String;)Lcom/android/systemui/media/controls/ui/MediaControlPanel;

    .line 67
    move-result-object v1

    .line 70
    if-eqz v1, :cond_1

    .line 71
    invoke-virtual {v13}, Lcom/android/systemui/media/controls/util/MediaFlags;->isPersistentSsCardEnabled()V

    .line 73
    invoke-static {v15, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    const-wide/16 v0, 0x1000

    .line 79
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 81
    return-void

    .line 84
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->smartspaceMediaKey()Ljava/lang/String;

    .line 85
    move-result-object v1

    .line 88
    if-eqz v1, :cond_2

    .line 89
    const/4 v6, 0x4

    .line 91
    invoke-static {v0, v1, v6}, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->removePlayer$default(Lcom/android/systemui/media/controls/ui/MediaCarouselController;Ljava/lang/String;I)Lcom/android/systemui/media/controls/ui/MediaControlPanel;

    .line 92
    move-result-object v6

    .line 95
    if-eqz v6, :cond_2

    .line 96
    invoke-virtual {v3, v1}, Lcom/android/systemui/media/controls/ui/MediaCarouselControllerLogger;->logPotentialMemoryLeak(Ljava/lang/String;)V

    .line 98
    :cond_2
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 101
    move-result-object v1

    .line 104
    move-object v10, v1

    .line 105
    check-cast v10, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaControlPanel;

    .line 106
    sget-object v1, Lcom/android/systemui/media/controls/models/recommendation/RecommendationViewHolder;->controlsIds:Ljava/util/Set;

    .line 108
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 110
    move-result-object v1

    .line 113
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    sget-object v4, Lcom/android/systemui/flags/Flags;->MEDIA_RECOMMENDATION_CARD_UPDATE:Lcom/android/systemui/flags/ReleasedFlag;

    .line 117
    iget-object v5, v13, Lcom/android/systemui/media/controls/util/MediaFlags;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 119
    check-cast v5, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 121
    invoke-virtual {v5, v4}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 123
    move-result v4

    .line 126
    invoke-static {v1, v14, v4}, Lcom/android/systemui/media/controls/models/recommendation/RecommendationViewHolder$Companion;->create(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/android/systemui/media/controls/models/recommendation/RecommendationViewHolder;

    .line 127
    move-result-object v1

    .line 130
    invoke-virtual {v10, v1}, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->attachRecommendation(Lcom/android/systemui/media/controls/models/recommendation/RecommendationViewHolder;)V

    .line 131
    iget-object v1, v10, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/controls/ui/MediaViewController;

    .line 134
    new-instance v4, Lcom/android/systemui/media/controls/ui/MediaCarouselController$addSmartspaceMediaRecommendations$1$3;

    .line 136
    invoke-direct {v4, v0}, Lcom/android/systemui/media/controls/ui/MediaCarouselController$addSmartspaceMediaRecommendations$1$3;-><init>(Ljava/lang/Object;)V

    .line 138
    iput-object v4, v1, Lcom/android/systemui/media/controls/ui/MediaViewController;->sizeChangedListener:Lkotlin/jvm/functions/Function0;

    .line 141
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 143
    const/4 v4, -0x1

    .line 145
    const/4 v5, -0x2

    .line 146
    invoke-direct {v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 147
    iget-object v4, v10, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/controls/models/recommendation/RecommendationViewHolder;

    .line 150
    if-eqz v4, :cond_3

    .line 152
    iget-object v4, v4, Lcom/android/systemui/media/controls/models/recommendation/RecommendationViewHolder;->recommendations:Lcom/android/systemui/util/animation/TransitionLayout;

    .line 154
    if-eqz v4, :cond_3

    .line 156
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    :cond_3
    invoke-virtual {v10, v9}, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->bindRecommendation(Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;)V

    .line 161
    invoke-static {}, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->visiblePlayerKeys()Ljava/util/Collection;

    .line 164
    move-result-object v1

    .line 167
    iget v2, v2, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->visibleMediaIndex:I

    .line 168
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->elementAtOrNull(Ljava/lang/Iterable;I)Ljava/lang/Object;

    .line 170
    move-result-object v1

    .line 173
    move-object v11, v1

    .line 174
    check-cast v11, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;

    .line 175
    sput-boolean p3, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->shouldPrioritizeSs:Z

    .line 177
    const/4 v1, 0x0

    .line 179
    invoke-static {v8, v1}, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->removeMediaPlayer(Ljava/lang/String;Z)Lcom/android/systemui/media/controls/ui/MediaControlPanel;

    .line 180
    move-result-object v1

    .line 183
    if-eqz v1, :cond_4

    .line 184
    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 186
    move-result v1

    .line 189
    if-nez v1, :cond_4

    .line 190
    if-eqz v3, :cond_4

    .line 192
    invoke-virtual {v3, v8}, Lcom/android/systemui/media/controls/ui/MediaCarouselControllerLogger;->logPotentialMemoryLeak(Ljava/lang/String;)V

    .line 194
    :cond_4
    new-instance v13, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;

    .line 197
    const/4 v2, 0x1

    .line 199
    sget-object v19, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->EMPTY:Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 200
    const/16 v20, 0x0

    .line 202
    const/16 v21, 0x0

    .line 204
    const/16 v22, 0x0

    .line 206
    const/16 v23, 0x0

    .line 208
    const/16 v24, 0x0

    .line 210
    const/16 v25, 0x0

    .line 212
    const/16 v26, 0x0

    .line 214
    iget-boolean v1, v9, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->isActive:Z

    .line 216
    const/16 v28, 0x0

    .line 218
    const/16 v29, 0x0

    .line 220
    const/16 v30, 0x0

    .line 222
    sget-object v31, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 224
    const/16 v32, 0x0

    .line 226
    const/16 v33, 0x0

    .line 228
    const/16 v34, 0x0

    .line 230
    const v35, 0xfdf7fff    # 2.20388E-29f

    .line 232
    move/from16 v27, v1

    .line 235
    invoke-static/range {v19 .. v35}, Lcom/android/systemui/media/controls/models/player/MediaData;->copy$default(Lcom/android/systemui/media/controls/models/player/MediaData;ILjava/util/List;Ljava/util/List;Lcom/android/systemui/media/controls/models/player/MediaButton;Ljava/lang/String;Landroid/app/PendingIntent;Lcom/android/systemui/media/controls/models/player/MediaDeviceData;ZLcom/android/systemui/media/controls/resume/MediaResumeListener$getResumeAction$1;ZZLjava/lang/Boolean;ZLcom/android/internal/logging/InstanceId;II)Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 237
    move-result-object v3

    .line 240
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 241
    move-result-wide v5

    .line 244
    const/4 v7, 0x1

    .line 245
    move-object v1, v13

    .line 246
    move-object/from16 v4, p1

    .line 247
    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;-><init>(ZLcom/android/systemui/media/controls/models/player/MediaData;Ljava/lang/String;JZ)V

    .line 249
    sget-object v1, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->mediaData:Ljava/util/Map;

    .line 252
    invoke-interface {v1, v8, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v1, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->mediaPlayers:Ljava/util/TreeMap;

    .line 257
    invoke-virtual {v1, v13, v10}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    sget-object v1, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->visibleMediaPlayers:Ljava/util/LinkedHashMap;

    .line 262
    invoke-virtual {v1, v8, v13}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sput-object v9, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->smartspaceMediaData:Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;

    .line 267
    const/4 v1, 0x1

    .line 269
    invoke-virtual {v0, v10, v1}, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->updatePlayerToState(Lcom/android/systemui/media/controls/ui/MediaControlPanel;Z)V

    .line 270
    const/4 v2, 0x0

    .line 273
    invoke-virtual {v0, v11, v2}, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->reorderAllPlayers(Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;Ljava/lang/String;)V

    .line 274
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->updatePageIndicator()V

    .line 277
    invoke-static {v12, v1}, Lcom/android/systemui/util/animation/UniqueObjectHostViewKt;->setRequiresRemeasuring(Landroid/view/View;Z)V

    .line 280
    invoke-static {}, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->players()Ljava/util/Collection;

    .line 283
    move-result-object v0

    .line 286
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 287
    move-result v0

    .line 290
    invoke-virtual {v14}, Landroid/view/ViewGroup;->getChildCount()I

    .line 291
    move-result v1

    .line 294
    if-eq v0, v1, :cond_5

    .line 295
    invoke-static {}, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->players()Ljava/util/Collection;

    .line 297
    move-result-object v0

    .line 300
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 301
    move-result v0

    .line 304
    invoke-virtual {v14}, Landroid/view/ViewGroup;->getChildCount()I

    .line 305
    move-result v1

    .line 308
    new-instance v2, Ljava/lang/StringBuilder;

    .line 309
    move-object/from16 v10, v18

    .line 311
    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 313
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 316
    move-object/from16 v11, v17

    .line 319
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 324
    move-object/from16 v1, v16

    .line 327
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 332
    move-result-object v0

    .line 335
    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 336
    :cond_5
    const-wide/16 v0, 0x1000

    .line 339
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 341
    goto/16 :goto_0

    .line 344
    :catchall_0
    move-exception v0

    .line 346
    const-wide/16 v1, 0x1000

    .line 347
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 349
    throw v0

    .line 352
    :cond_6
    move-object/from16 v1, v16

    .line 353
    sget-boolean v16, Lcom/android/systemui/media/controls/ui/MediaCarouselControllerKt;->DEBUG:Z

    .line 355
    if-eqz v16, :cond_7

    .line 357
    invoke-static {v15, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_7
    sget-object v7, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/controls/ui/MediaPlayerData;

    .line 362
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 364
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->getMediaPlayer(Ljava/lang/String;)Lcom/android/systemui/media/controls/ui/MediaControlPanel;

    .line 367
    move-result-object v7

    .line 370
    if-eqz v7, :cond_8

    .line 371
    invoke-virtual {v13}, Lcom/android/systemui/media/controls/util/MediaFlags;->isPersistentSsCardEnabled()V

    .line 373
    invoke-static {v15, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    return-void

    .line 379
    :cond_8
    invoke-static {}, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->smartspaceMediaKey()Ljava/lang/String;

    .line 380
    move-result-object v6

    .line 383
    if-eqz v6, :cond_9

    .line 384
    const/4 v7, 0x4

    .line 386
    invoke-static {v0, v6, v7}, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->removePlayer$default(Lcom/android/systemui/media/controls/ui/MediaCarouselController;Ljava/lang/String;I)Lcom/android/systemui/media/controls/ui/MediaControlPanel;

    .line 387
    move-result-object v7

    .line 390
    if-eqz v7, :cond_9

    .line 391
    invoke-virtual {v3, v6}, Lcom/android/systemui/media/controls/ui/MediaCarouselControllerLogger;->logPotentialMemoryLeak(Ljava/lang/String;)V

    .line 393
    :cond_9
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 396
    move-result-object v5

    .line 399
    move-object v7, v5

    .line 400
    check-cast v7, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaControlPanel;

    .line 401
    sget-object v5, Lcom/android/systemui/media/controls/models/recommendation/RecommendationViewHolder;->controlsIds:Ljava/util/Set;

    .line 403
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 405
    move-result-object v4

    .line 408
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 409
    sget-object v5, Lcom/android/systemui/flags/Flags;->MEDIA_RECOMMENDATION_CARD_UPDATE:Lcom/android/systemui/flags/ReleasedFlag;

    .line 412
    iget-object v6, v13, Lcom/android/systemui/media/controls/util/MediaFlags;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 414
    check-cast v6, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 416
    invoke-virtual {v6, v5}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 418
    move-result v5

    .line 421
    invoke-static {v4, v14, v5}, Lcom/android/systemui/media/controls/models/recommendation/RecommendationViewHolder$Companion;->create(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/android/systemui/media/controls/models/recommendation/RecommendationViewHolder;

    .line 422
    move-result-object v4

    .line 425
    invoke-virtual {v7, v4}, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->attachRecommendation(Lcom/android/systemui/media/controls/models/recommendation/RecommendationViewHolder;)V

    .line 426
    new-instance v4, Lcom/android/systemui/media/controls/ui/MediaCarouselController$addSmartspaceMediaRecommendations$1$3;

    .line 429
    invoke-direct {v4, v0}, Lcom/android/systemui/media/controls/ui/MediaCarouselController$addSmartspaceMediaRecommendations$1$3;-><init>(Ljava/lang/Object;)V

    .line 431
    iget-object v5, v7, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/controls/ui/MediaViewController;

    .line 434
    iput-object v4, v5, Lcom/android/systemui/media/controls/ui/MediaViewController;->sizeChangedListener:Lkotlin/jvm/functions/Function0;

    .line 436
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 438
    const/4 v5, -0x1

    .line 440
    const/4 v6, -0x2

    .line 441
    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 442
    iget-object v5, v7, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/controls/models/recommendation/RecommendationViewHolder;

    .line 445
    if-eqz v5, :cond_a

    .line 447
    iget-object v5, v5, Lcom/android/systemui/media/controls/models/recommendation/RecommendationViewHolder;->recommendations:Lcom/android/systemui/util/animation/TransitionLayout;

    .line 449
    if-eqz v5, :cond_a

    .line 451
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 453
    :cond_a
    invoke-virtual {v7, v9}, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->bindRecommendation(Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;)V

    .line 456
    invoke-static {}, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->visiblePlayerKeys()Ljava/util/Collection;

    .line 459
    move-result-object v4

    .line 462
    iget v2, v2, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->visibleMediaIndex:I

    .line 463
    invoke-static {v4, v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->elementAtOrNull(Ljava/lang/Iterable;I)Ljava/lang/Object;

    .line 465
    move-result-object v2

    .line 468
    move-object v13, v2

    .line 469
    check-cast v13, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;

    .line 470
    sput-boolean p3, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->shouldPrioritizeSs:Z

    .line 472
    const/4 v2, 0x0

    .line 474
    invoke-static {v8, v2}, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->removeMediaPlayer(Ljava/lang/String;Z)Lcom/android/systemui/media/controls/ui/MediaControlPanel;

    .line 475
    move-result-object v2

    .line 478
    if-eqz v2, :cond_b

    .line 479
    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 481
    move-result v2

    .line 484
    if-nez v2, :cond_b

    .line 485
    if-eqz v3, :cond_b

    .line 487
    invoke-virtual {v3, v8}, Lcom/android/systemui/media/controls/ui/MediaCarouselControllerLogger;->logPotentialMemoryLeak(Ljava/lang/String;)V

    .line 489
    :cond_b
    new-instance v5, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;

    .line 492
    const/4 v2, 0x1

    .line 494
    sget-object v16, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->EMPTY:Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 495
    const/16 v17, 0x0

    .line 497
    const/16 v18, 0x0

    .line 499
    const/16 v19, 0x0

    .line 501
    const/16 v20, 0x0

    .line 503
    const/16 v21, 0x0

    .line 505
    const/16 v22, 0x0

    .line 507
    const/16 v23, 0x0

    .line 509
    iget-boolean v3, v9, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->isActive:Z

    .line 511
    move/from16 v24, v3

    .line 513
    const/16 v25, 0x0

    .line 515
    const/16 v26, 0x0

    .line 517
    const/16 v27, 0x0

    .line 519
    sget-object v28, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 521
    const/16 v29, 0x0

    .line 523
    const/16 v30, 0x0

    .line 525
    const/16 v31, 0x0

    .line 527
    const v32, 0xfdf7fff    # 2.20388E-29f

    .line 529
    invoke-static/range {v16 .. v32}, Lcom/android/systemui/media/controls/models/player/MediaData;->copy$default(Lcom/android/systemui/media/controls/models/player/MediaData;ILjava/util/List;Ljava/util/List;Lcom/android/systemui/media/controls/models/player/MediaButton;Ljava/lang/String;Landroid/app/PendingIntent;Lcom/android/systemui/media/controls/models/player/MediaDeviceData;ZLcom/android/systemui/media/controls/resume/MediaResumeListener$getResumeAction$1;ZZLjava/lang/Boolean;ZLcom/android/internal/logging/InstanceId;II)Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 532
    move-result-object v3

    .line 535
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 536
    move-result-wide v16

    .line 539
    const/16 v18, 0x1

    .line 540
    move-object v6, v1

    .line 542
    move-object v1, v5

    .line 543
    move-object/from16 v4, p1

    .line 544
    move-object/from16 v37, v5

    .line 546
    move-object/from16 v36, v6

    .line 548
    move-wide/from16 v5, v16

    .line 550
    move-object/from16 v16, v15

    .line 552
    move-object v15, v7

    .line 554
    move/from16 v7, v18

    .line 555
    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;-><init>(ZLcom/android/systemui/media/controls/models/player/MediaData;Ljava/lang/String;JZ)V

    .line 557
    sget-object v1, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->mediaData:Ljava/util/Map;

    .line 560
    move-object/from16 v2, v37

    .line 562
    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    sget-object v1, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->mediaPlayers:Ljava/util/TreeMap;

    .line 567
    invoke-virtual {v1, v2, v15}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    sget-object v1, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->visibleMediaPlayers:Ljava/util/LinkedHashMap;

    .line 572
    invoke-virtual {v1, v8, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    sput-object v9, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->smartspaceMediaData:Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;

    .line 577
    const/4 v1, 0x1

    .line 579
    invoke-virtual {v0, v15, v1}, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->updatePlayerToState(Lcom/android/systemui/media/controls/ui/MediaControlPanel;Z)V

    .line 580
    const/4 v2, 0x0

    .line 583
    invoke-virtual {v0, v13, v2}, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->reorderAllPlayers(Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;Ljava/lang/String;)V

    .line 584
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->updatePageIndicator()V

    .line 587
    invoke-static {v12, v1}, Lcom/android/systemui/util/animation/UniqueObjectHostViewKt;->setRequiresRemeasuring(Landroid/view/View;Z)V

    .line 590
    invoke-static {}, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->players()Ljava/util/Collection;

    .line 593
    move-result-object v0

    .line 596
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 597
    move-result v0

    .line 600
    invoke-virtual {v14}, Landroid/view/ViewGroup;->getChildCount()I

    .line 601
    move-result v1

    .line 604
    if-eq v0, v1, :cond_c

    .line 605
    invoke-static {}, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->players()Ljava/util/Collection;

    .line 607
    move-result-object v0

    .line 610
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 611
    move-result v0

    .line 614
    invoke-virtual {v14}, Landroid/view/ViewGroup;->getChildCount()I

    .line 615
    move-result v1

    .line 618
    move-object/from16 v2, v36

    .line 619
    invoke-static {v10, v0, v11, v1, v2}, Landroidx/room/RoomOpenHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 621
    move-result-object v0

    .line 624
    move-object/from16 v1, v16

    .line 625
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    :cond_c
    :goto_0
    return-void
    .line 630
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object p2, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->keysNeedRemoval:Ljava/util/Set;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    const-string v1, "keysNeedRemoval: "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    move-result-object p2

    .line 17
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 18
    sget-object p2, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/controls/ui/MediaPlayerData;

    .line 21
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    sget-object p2, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->mediaData:Ljava/util/Map;

    .line 26
    check-cast p2, Ljava/util/LinkedHashMap;

    .line 28
    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 30
    move-result-object p2

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    const-string v1, "dataKeys: "

    .line 36
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p2

    .line 47
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 48
    sget-object p2, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->mediaPlayers:Ljava/util/TreeMap;

    .line 51
    invoke-virtual {p2}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    .line 53
    move-result-object p2

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    .line 57
    const-string v1, "orderedPlayerSortKeys: "

    .line 59
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object p2

    .line 70
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 71
    invoke-static {}, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->visiblePlayerKeys()Ljava/util/Collection;

    .line 74
    move-result-object p2

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    .line 78
    const-string/jumbo v1, "visiblePlayerSortKeys: "

    .line 80
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object p2

    .line 92
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 93
    sget-object p2, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->smartspaceMediaData:Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    .line 98
    const-string/jumbo v1, "smartspaceMediaData: "

    .line 100
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    move-result-object p2

    .line 112
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 113
    sget-boolean p2, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->shouldPrioritizeSs:Z

    .line 116
    const-string/jumbo v0, "shouldPrioritizeSs: "

    .line 118
    invoke-static {v0, p2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    .line 121
    iget p2, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->currentCarouselWidth:I

    .line 124
    iget v0, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->currentCarouselHeight:I

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    .line 128
    const-string v2, "current size: "

    .line 130
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    const-string p2, " x "

    .line 138
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    move-result-object p2

    .line 149
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 150
    iget p2, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->desiredLocation:I

    .line 153
    const-string v0, "location: "

    .line 155
    invoke-static {v0, p2, p1}, Lcom/android/systemui/biometrics/SideFpsController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/io/PrintWriter;)V

    .line 157
    iget-object p2, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->desiredHostState:Lcom/android/systemui/media/controls/ui/MediaHostState;

    .line 160
    const/4 v0, 0x0

    .line 162
    if-eqz p2, :cond_0

    .line 163
    invoke-interface {p2}, Lcom/android/systemui/media/controls/ui/MediaHostState;->getExpansion()F

    .line 165
    move-result p2

    .line 168
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 169
    move-result-object p2

    .line 172
    goto :goto_0

    .line 173
    :cond_0
    move-object p2, v0

    .line 174
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->desiredHostState:Lcom/android/systemui/media/controls/ui/MediaHostState;

    .line 175
    if-eqz p0, :cond_1

    .line 177
    invoke-interface {p0}, Lcom/android/systemui/media/controls/ui/MediaHostState;->getShowsOnlyActiveMedia()Z

    .line 179
    move-result p0

    .line 182
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 183
    move-result-object v0

    .line 186
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 187
    const-string/jumbo v1, "state: "

    .line 189
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 195
    const-string p2, ", only active "

    .line 198
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    move-result-object p0

    .line 209
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 210
    return-void
    .line 213
.end method

.method public final inflateSettingsButton()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->context:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    move-result-object v0

    .line 7
    const v1, 0x7f0d017c    # @layout/media_carousel_settings_button 'res/layout/media_carousel_settings_button.xml'

    .line 8
    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->mediaFrame:Landroid/view/ViewGroup;

    .line 11
    const/4 v3, 0x0

    .line 13
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 14
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->settingsButton:Landroid/view/View;

    .line 18
    const/4 v3, 0x0

    .line 20
    if-eqz v1, :cond_1

    .line 21
    if-eqz v1, :cond_0

    .line 23
    goto :goto_0

    .line 25
    :cond_0
    move-object v1, v3

    .line 26
    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 27
    :cond_1
    iput-object v0, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->settingsButton:Landroid/view/View;

    .line 30
    if-eqz v0, :cond_2

    .line 32
    move-object v1, v0

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    move-object v1, v3

    .line 36
    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 37
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;

    .line 40
    iput-object v0, v1, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->settingsButton:Landroid/view/View;

    .line 42
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 44
    move-result-object v0

    .line 47
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->settingsButton:Landroid/view/View;

    .line 48
    if-nez v2, :cond_3

    .line 50
    move-object v2, v3

    .line 52
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 53
    move-result-object v2

    .line 56
    const v4, 0x1010571    # @android:attr/dialogCornerRadius

    .line 57
    invoke-static {v4, v2}, Lcom/android/settingslib/Utils;->getThemeAttr(ILandroid/content/Context;)I

    .line 60
    move-result v2

    .line 63
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 64
    move-result v0

    .line 67
    iput v0, v1, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->cornerRadius:I

    .line 68
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->updateSettingsPresentation()V

    .line 70
    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->scrollView$com$android$systemui$media$controls$ui$MediaCarouselScrollHandler:Lcom/android/systemui/media/controls/ui/MediaScrollView;

    .line 73
    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->invalidateOutline()V

    .line 75
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->settingsButton:Landroid/view/View;

    .line 78
    if-eqz v0, :cond_4

    .line 80
    move-object v3, v0

    .line 82
    :cond_4
    new-instance v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController$inflateSettingsButton$2;

    .line 83
    invoke-direct {v0, p0}, Lcom/android/systemui/media/controls/ui/MediaCarouselController$inflateSettingsButton$2;-><init>(Lcom/android/systemui/media/controls/ui/MediaCarouselController;)V

    .line 85
    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    return-void
    .line 91
.end method

.method public final listenForAnyStateToGoneKeyguardTransition$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core(Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController$listenForAnyStateToGoneKeyguardTransition$1;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/media/controls/ui/MediaCarouselController$listenForAnyStateToGoneKeyguardTransition$1;-><init>(Lcom/android/systemui/media/controls/ui/MediaCarouselController;Lkotlin/coroutines/Continuation;)V

    .line 5
    const/4 p0, 0x3

    .line 8
    invoke-static {p1, v1, v1, v0, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 9
    move-result-object p0

    .line 12
    return-object p0
    .line 13
.end method

.method public final logSmartspaceImpression(Z)V
    .locals 13

    .line 1
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;

    .line 2
    iget v1, v1, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->visibleMediaIndex:I

    .line 4
    sget-object v2, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/controls/ui/MediaPlayerData;

    .line 6
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-static {}, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->players()Ljava/util/Collection;

    .line 11
    move-result-object v2

    .line 14
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 15
    move-result v2

    .line 18
    if-le v2, v1, :cond_6

    .line 19
    sget-object v2, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->mediaPlayers:Ljava/util/TreeMap;

    .line 21
    invoke-static {}, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->visiblePlayerKeys()Ljava/util/Collection;

    .line 23
    move-result-object v3

    .line 26
    invoke-static {v3, v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->elementAt(Ljava/lang/Iterable;I)Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 30
    invoke-virtual {v2, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    move-result-object v1

    .line 34
    move-object v11, v1

    .line 35
    check-cast v11, Lcom/android/systemui/media/controls/ui/MediaControlPanel;

    .line 36
    sget-object v1, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->smartspaceMediaData:Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;

    .line 38
    const/4 v12, 0x1

    .line 40
    if-eqz v1, :cond_0

    .line 41
    iget-boolean v1, v1, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->isActive:Z

    .line 43
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 45
    move-result-object v1

    .line 48
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 49
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 52
    move-result v1

    .line 55
    if-eqz v1, :cond_0

    .line 56
    goto :goto_2

    .line 58
    :cond_0
    invoke-virtual {v2}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    .line 59
    move-result-object v1

    .line 62
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 63
    move-result-object v1

    .line 66
    const/4 v2, 0x0

    .line 67
    move v3, v2

    .line 68
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    move-result v4

    .line 72
    const/4 v5, -0x1

    .line 73
    if-eqz v4, :cond_3

    .line 74
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    move-result-object v4

    .line 79
    add-int/lit8 v6, v3, 0x1

    .line 80
    if-ltz v3, :cond_2

    .line 82
    check-cast v4, Ljava/util/Map$Entry;

    .line 84
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 86
    move-result-object v7

    .line 89
    check-cast v7, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;

    .line 90
    iget-boolean v7, v7, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;->isSsMediaRec:Z

    .line 92
    if-nez v7, :cond_1

    .line 94
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 96
    move-result-object v4

    .line 99
    check-cast v4, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;

    .line 100
    iget-object v4, v4, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;->data:Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 102
    iget-boolean v4, v4, Lcom/android/systemui/media/controls/models/player/MediaData;->active:Z

    .line 104
    if-eqz v4, :cond_1

    .line 106
    goto :goto_1

    .line 108
    :cond_1
    move v3, v6

    .line 109
    goto :goto_0

    .line 110
    :cond_2
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    .line 111
    const/4 v0, 0x0

    .line 114
    throw v0

    .line 115
    :cond_3
    move v3, v5

    .line 116
    :goto_1
    if-eq v3, v5, :cond_4

    .line 117
    :goto_2
    move v2, v12

    .line 119
    :cond_4
    if-nez v2, :cond_5

    .line 120
    if-nez p1, :cond_5

    .line 122
    return-void

    .line 124
    :cond_5
    if-eqz v11, :cond_6

    .line 125
    const/16 v1, 0x320

    .line 127
    iget v2, v11, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mSmartspaceId:I

    .line 129
    iget v3, v11, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mUid:I

    .line 131
    invoke-virtual {v11}, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->getSurfaceForSmartspaceLogging()I

    .line 133
    move-result v4

    .line 136
    filled-new-array {v4}, [I

    .line 137
    move-result-object v4

    .line 140
    const/4 v5, 0x0

    .line 141
    const/4 v6, 0x0

    .line 142
    const/4 v7, 0x0

    .line 143
    const/4 v8, 0x0

    .line 144
    const/4 v9, 0x0

    .line 145
    const/16 v10, 0x1f0

    .line 146
    move-object v0, p0

    .line 148
    invoke-static/range {v0 .. v10}, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->logSmartspaceCardReported$default(Lcom/android/systemui/media/controls/ui/MediaCarouselController;III[IIIIIZI)V

    .line 149
    iput-boolean v12, v11, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mIsImpressed:Z

    .line 152
    :cond_6
    return-void
    .line 154
.end method

.method public final onDesiredLocationChanged(ILcom/android/systemui/media/controls/ui/MediaHostState;ZJJ)Lkotlin/Unit;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    move/from16 v1, p1

    .line 4
    move-object/from16 v2, p2

    .line 6
    move-wide/from16 v3, p4

    .line 8
    move-wide/from16 v5, p6

    .line 10
    const-wide/16 v7, 0x1000

    .line 12
    invoke-static {v7, v8}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 14
    move-result v9

    .line 17
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 18
    iget-object v13, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->mediaManager:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

    .line 20
    iget-object v14, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->logger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

    .line 22
    const/4 v15, 0x0

    .line 24
    iget-object v11, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;

    .line 25
    const/4 v12, 0x1

    .line 27
    if-eqz v9, :cond_b

    .line 28
    const-string v9, "MediaCarouselController#onDesiredLocationChanged"

    .line 30
    invoke-static {v7, v8, v9}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 32
    if-eqz v2, :cond_a

    .line 35
    :try_start_0
    iget v9, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->desiredLocation:I

    .line 37
    if-eq v9, v1, :cond_0

    .line 39
    invoke-virtual {v14, v1}, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->logCarouselPosition(I)V

    .line 41
    :cond_0
    iput v1, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->desiredLocation:I

    .line 44
    iput-object v2, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->desiredHostState:Lcom/android/systemui/media/controls/ui/MediaHostState;

    .line 46
    invoke-interface/range {p2 .. p2}, Lcom/android/systemui/media/controls/ui/MediaHostState;->getExpansion()F

    .line 48
    move-result v9

    .line 51
    cmpl-float v9, v9, v15

    .line 52
    if-lez v9, :cond_1

    .line 54
    move v9, v12

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    const/4 v9, 0x0

    .line 58
    :goto_0
    iget-boolean v14, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->currentlyExpanded:Z

    .line 59
    if-eq v14, v9, :cond_2

    .line 61
    iput-boolean v9, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->currentlyExpanded:Z

    .line 63
    iget-boolean v9, v11, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->visibleToUser:Z

    .line 65
    invoke-virtual {v0, v9}, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->updateSeekbarListening(Z)V

    .line 67
    :cond_2
    iget-boolean v9, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->currentlyExpanded:Z

    .line 70
    if-nez v9, :cond_3

    .line 72
    invoke-virtual {v13}, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->hasActiveMediaOrRecommendation()Z

    .line 74
    move-result v9

    .line 77
    if-nez v9, :cond_3

    .line 78
    invoke-interface/range {p2 .. p2}, Lcom/android/systemui/media/controls/ui/MediaHostState;->getShowsOnlyActiveMedia()Z

    .line 80
    move-result v9

    .line 83
    if-eqz v9, :cond_3

    .line 84
    move v9, v12

    .line 86
    goto :goto_1

    .line 87
    :cond_3
    const/4 v9, 0x0

    .line 88
    :goto_1
    sget-object v13, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/controls/ui/MediaPlayerData;

    .line 89
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    invoke-static {}, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->players()Ljava/util/Collection;

    .line 94
    move-result-object v13

    .line 97
    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 98
    move-result-object v13

    .line 101
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 102
    move-result v14

    .line 105
    if-eqz v14, :cond_7

    .line 106
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 108
    move-result-object v14

    .line 111
    check-cast v14, Lcom/android/systemui/media/controls/ui/MediaControlPanel;

    .line 112
    if-eqz p3, :cond_4

    .line 114
    iget-object v15, v14, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/controls/ui/MediaViewController;

    .line 116
    iput-boolean v12, v15, Lcom/android/systemui/media/controls/ui/MediaViewController;->animateNextStateChange:Z

    .line 118
    iput-wide v3, v15, Lcom/android/systemui/media/controls/ui/MediaViewController;->animationDuration:J

    .line 120
    iput-wide v5, v15, Lcom/android/systemui/media/controls/ui/MediaViewController;->animationDelay:J

    .line 122
    :cond_4
    if-eqz v9, :cond_6

    .line 124
    iget-object v15, v14, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/controls/ui/MediaViewController;

    .line 126
    iget-boolean v15, v15, Lcom/android/systemui/media/controls/ui/MediaViewController;->isGutsVisible:Z

    .line 128
    if-eqz v15, :cond_6

    .line 130
    if-nez p3, :cond_5

    .line 132
    move v15, v12

    .line 134
    goto :goto_3

    .line 135
    :cond_5
    const/4 v15, 0x0

    .line 136
    :goto_3
    invoke-virtual {v14, v15}, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->closeGuts(Z)V

    .line 137
    :cond_6
    iget-object v14, v14, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/controls/ui/MediaViewController;

    .line 140
    invoke-virtual {v14, v1}, Lcom/android/systemui/media/controls/ui/MediaViewController;->onLocationPreChange(I)V

    .line 142
    goto :goto_2

    .line 145
    :cond_7
    invoke-interface/range {p2 .. p2}, Lcom/android/systemui/media/controls/ui/MediaHostState;->getShowsOnlyActiveMedia()Z

    .line 146
    move-result v1

    .line 149
    if-nez v1, :cond_8

    .line 150
    goto :goto_4

    .line 152
    :cond_8
    const/4 v12, 0x0

    .line 153
    :goto_4
    iput-boolean v12, v11, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->showsSettingsButton:Z

    .line 154
    invoke-interface/range {p2 .. p2}, Lcom/android/systemui/media/controls/ui/MediaHostState;->getFalsingProtectionNeeded()Z

    .line 156
    move-result v1

    .line 159
    iput-boolean v1, v11, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->falsingProtectionNeeded:Z

    .line 160
    invoke-interface/range {p2 .. p2}, Lcom/android/systemui/media/controls/ui/MediaHostState;->getVisible()Z

    .line 162
    move-result v1

    .line 165
    iget-boolean v2, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->playersVisible:Z

    .line 166
    if-eq v1, v2, :cond_9

    .line 168
    iput-boolean v1, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->playersVisible:Z

    .line 170
    if-eqz v1, :cond_9

    .line 172
    const/4 v1, 0x0

    .line 174
    invoke-virtual {v11, v1}, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->resetTranslation(Z)V

    .line 175
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->updateCarouselSize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    goto :goto_5

    .line 181
    :catchall_0
    move-exception v0

    .line 182
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 183
    throw v0

    .line 186
    :cond_a
    const/4 v10, 0x0

    .line 187
    :goto_5
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 188
    goto/16 :goto_9

    .line 191
    :cond_b
    if-eqz v2, :cond_14

    .line 193
    iget v7, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->desiredLocation:I

    .line 195
    if-eq v7, v1, :cond_c

    .line 197
    invoke-virtual {v14, v1}, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->logCarouselPosition(I)V

    .line 199
    :cond_c
    iput v1, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->desiredLocation:I

    .line 202
    iput-object v2, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->desiredHostState:Lcom/android/systemui/media/controls/ui/MediaHostState;

    .line 204
    invoke-interface/range {p2 .. p2}, Lcom/android/systemui/media/controls/ui/MediaHostState;->getExpansion()F

    .line 206
    move-result v7

    .line 209
    cmpl-float v7, v7, v15

    .line 210
    if-lez v7, :cond_d

    .line 212
    move v7, v12

    .line 214
    goto :goto_6

    .line 215
    :cond_d
    const/4 v7, 0x0

    .line 216
    :goto_6
    iget-boolean v8, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->currentlyExpanded:Z

    .line 217
    if-eq v8, v7, :cond_e

    .line 219
    iput-boolean v7, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->currentlyExpanded:Z

    .line 221
    iget-boolean v7, v11, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->visibleToUser:Z

    .line 223
    invoke-virtual {v0, v7}, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->updateSeekbarListening(Z)V

    .line 225
    :cond_e
    iget-boolean v7, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->currentlyExpanded:Z

    .line 228
    if-nez v7, :cond_f

    .line 230
    invoke-virtual {v13}, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->hasActiveMediaOrRecommendation()Z

    .line 232
    move-result v7

    .line 235
    if-nez v7, :cond_f

    .line 236
    invoke-interface/range {p2 .. p2}, Lcom/android/systemui/media/controls/ui/MediaHostState;->getShowsOnlyActiveMedia()Z

    .line 238
    move-result v7

    .line 241
    if-eqz v7, :cond_f

    .line 242
    move v7, v12

    .line 244
    goto :goto_7

    .line 245
    :cond_f
    const/4 v7, 0x0

    .line 246
    :goto_7
    sget-object v8, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/controls/ui/MediaPlayerData;

    .line 247
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 249
    invoke-static {}, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->players()Ljava/util/Collection;

    .line 252
    move-result-object v8

    .line 255
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 256
    move-result-object v8

    .line 259
    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 260
    move-result v9

    .line 263
    if-eqz v9, :cond_12

    .line 264
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 266
    move-result-object v9

    .line 269
    check-cast v9, Lcom/android/systemui/media/controls/ui/MediaControlPanel;

    .line 270
    if-eqz p3, :cond_10

    .line 272
    iget-object v13, v9, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/controls/ui/MediaViewController;

    .line 274
    iput-boolean v12, v13, Lcom/android/systemui/media/controls/ui/MediaViewController;->animateNextStateChange:Z

    .line 276
    iput-wide v3, v13, Lcom/android/systemui/media/controls/ui/MediaViewController;->animationDuration:J

    .line 278
    iput-wide v5, v13, Lcom/android/systemui/media/controls/ui/MediaViewController;->animationDelay:J

    .line 280
    :cond_10
    if-eqz v7, :cond_11

    .line 282
    iget-object v13, v9, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/controls/ui/MediaViewController;

    .line 284
    iget-boolean v13, v13, Lcom/android/systemui/media/controls/ui/MediaViewController;->isGutsVisible:Z

    .line 286
    if-eqz v13, :cond_11

    .line 288
    xor-int/lit8 v13, p3, 0x1

    .line 290
    invoke-virtual {v9, v13}, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->closeGuts(Z)V

    .line 292
    :cond_11
    iget-object v9, v9, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/controls/ui/MediaViewController;

    .line 295
    invoke-virtual {v9, v1}, Lcom/android/systemui/media/controls/ui/MediaViewController;->onLocationPreChange(I)V

    .line 297
    goto :goto_8

    .line 300
    :cond_12
    invoke-interface/range {p2 .. p2}, Lcom/android/systemui/media/controls/ui/MediaHostState;->getShowsOnlyActiveMedia()Z

    .line 301
    move-result v1

    .line 304
    xor-int/2addr v1, v12

    .line 305
    iput-boolean v1, v11, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->showsSettingsButton:Z

    .line 306
    invoke-interface/range {p2 .. p2}, Lcom/android/systemui/media/controls/ui/MediaHostState;->getFalsingProtectionNeeded()Z

    .line 308
    move-result v1

    .line 311
    iput-boolean v1, v11, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->falsingProtectionNeeded:Z

    .line 312
    invoke-interface/range {p2 .. p2}, Lcom/android/systemui/media/controls/ui/MediaHostState;->getVisible()Z

    .line 314
    move-result v1

    .line 317
    iget-boolean v2, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->playersVisible:Z

    .line 318
    if-eq v1, v2, :cond_13

    .line 320
    iput-boolean v1, v0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->playersVisible:Z

    .line 322
    if-eqz v1, :cond_13

    .line 324
    const/4 v1, 0x0

    .line 326
    invoke-virtual {v11, v1}, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->resetTranslation(Z)V

    .line 327
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->updateCarouselSize()V

    .line 330
    goto :goto_9

    .line 333
    :cond_14
    const/4 v10, 0x0

    .line 334
    :goto_9
    return-object v10
    .line 335
.end method

.method public final removePlayer(Ljava/lang/String;ZZ)Lcom/android/systemui/media/controls/ui/MediaControlPanel;
    .locals 8

    .line 1
    sget-object v0, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/controls/ui/MediaPlayerData;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-static {}, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->smartspaceMediaKey()Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    sget-object v0, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->smartspaceMediaData:Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;

    .line 18
    if-eqz v0, :cond_0

    .line 20
    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->logger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

    .line 22
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    sget-object v3, Lcom/android/systemui/media/controls/util/MediaUiEvent;->MEDIA_RECOMMENDATION_REMOVED:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 27
    iget-object v4, v0, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->packageName:Ljava/lang/String;

    .line 29
    iget-object v0, v0, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    .line 31
    iget-object v2, v2, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->logger:Lcom/android/internal/logging/UiEventLogger;

    .line 33
    invoke-interface {v2, v3, v1, v4, v0}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    .line 35
    :cond_0
    const/4 v0, 0x1

    .line 38
    if-nez p2, :cond_2

    .line 39
    if-eqz p3, :cond_1

    .line 41
    goto :goto_0

    .line 43
    :cond_1
    move v2, v1

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    :goto_0
    move v2, v0

    .line 46
    :goto_1
    invoke-static {p1, v2}, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->removeMediaPlayer(Ljava/lang/String;Z)Lcom/android/systemui/media/controls/ui/MediaControlPanel;

    .line 47
    move-result-object v2

    .line 50
    const/4 v3, 0x0

    .line 51
    if-eqz v2, :cond_14

    .line 52
    iget-object v4, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;

    .line 54
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    iget-object v5, v2, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/controls/models/player/MediaViewHolder;

    .line 59
    if-eqz v5, :cond_3

    .line 61
    iget-object v5, v5, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->player:Lcom/android/systemui/util/animation/TransitionLayout;

    .line 63
    goto :goto_2

    .line 65
    :cond_3
    move-object v5, v3

    .line 66
    :goto_2
    iget-object v6, v4, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->mediaContent:Landroid/view/ViewGroup;

    .line 67
    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 69
    move-result v5

    .line 72
    iget v6, v4, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->visibleMediaIndex:I

    .line 73
    if-gt v5, v6, :cond_4

    .line 75
    move v5, v0

    .line 77
    goto :goto_3

    .line 78
    :cond_4
    move v5, v1

    .line 79
    :goto_3
    if-eqz v5, :cond_5

    .line 80
    sub-int/2addr v6, v0

    .line 82
    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    .line 83
    move-result v6

    .line 86
    iput v6, v4, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->visibleMediaIndex:I

    .line 87
    :cond_5
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->isRtl()Z

    .line 89
    move-result v6

    .line 92
    if-eqz v6, :cond_7

    .line 93
    if-nez v5, :cond_6

    .line 95
    goto :goto_4

    .line 97
    :cond_6
    move v0, v1

    .line 98
    goto :goto_4

    .line 99
    :cond_7
    move v0, v5

    .line 100
    :goto_4
    if-eqz v0, :cond_8

    .line 101
    iget-object v0, v4, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->scrollView$com$android$systemui$media$controls$ui$MediaCarouselScrollHandler:Lcom/android/systemui/media/controls/ui/MediaScrollView;

    .line 103
    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    .line 105
    move-result v5

    .line 108
    iget v6, v4, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->playerWidthPlusPadding:I

    .line 109
    sub-int/2addr v5, v6

    .line 111
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    .line 112
    move-result v5

    .line 115
    invoke-virtual {v0, v5}, Landroid/widget/HorizontalScrollView;->setScrollX(I)V

    .line 116
    :cond_8
    iget-object v0, v2, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/controls/models/player/MediaViewHolder;

    .line 119
    if-eqz v0, :cond_9

    .line 121
    iget-object v0, v0, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->player:Lcom/android/systemui/util/animation/TransitionLayout;

    .line 123
    goto :goto_5

    .line 125
    :cond_9
    move-object v0, v3

    .line 126
    :goto_5
    iget-object v5, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    .line 127
    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 129
    iget-object v0, v2, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/controls/models/recommendation/RecommendationViewHolder;

    .line 132
    if-eqz v0, :cond_a

    .line 134
    iget-object v0, v0, Lcom/android/systemui/media/controls/models/recommendation/RecommendationViewHolder;->recommendations:Lcom/android/systemui/util/animation/TransitionLayout;

    .line 136
    goto :goto_6

    .line 138
    :cond_a
    move-object v0, v3

    .line 139
    :goto_6
    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 140
    move-object v0, v2

    .line 143
    check-cast v0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaControlPanel;

    .line 144
    iget-object v5, v0, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mSeekBarObserver:Lcom/android/systemui/media/controls/models/player/SeekBarObserver;

    .line 146
    iget-object v6, v0, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mSeekBarViewModel:Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;

    .line 148
    if-eqz v5, :cond_b

    .line 150
    iget-object v7, v6, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;->_progress:Landroidx/lifecycle/MutableLiveData;

    .line 152
    invoke-virtual {v7, v5}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 154
    :cond_b
    iget-object v5, v6, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;->scrubbingChangeListener:Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda0;

    .line 157
    iget-object v7, v0, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mScrubbingChangeListener:Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda0;

    .line 159
    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 161
    move-result v5

    .line 164
    if-eqz v5, :cond_c

    .line 165
    iput-object v3, v6, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;->scrubbingChangeListener:Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda0;

    .line 167
    :cond_c
    iget-object v5, v6, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;->enabledChangeListener:Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda0;

    .line 169
    iget-object v7, v0, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mEnabledChangeListener:Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda0;

    .line 171
    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 173
    move-result v5

    .line 176
    if-eqz v5, :cond_d

    .line 177
    iput-object v3, v6, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;->enabledChangeListener:Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda0;

    .line 179
    :cond_d
    new-instance v3, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$onDestroy$1;

    .line 181
    invoke-direct {v3, v6, v1}, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$onDestroy$1;-><init>(Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;I)V

    .line 183
    iget-object v1, v6, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;->bgExecutor:Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl;

    .line 186
    invoke-virtual {v1, v3}, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 188
    iget-object v1, v0, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/controls/ui/MediaViewController;

    .line 191
    iget-object v3, v1, Lcom/android/systemui/media/controls/ui/MediaViewController;->mediaHostStatesManager:Lcom/android/systemui/media/controls/ui/MediaHostStatesManager;

    .line 193
    iget-object v3, v3, Lcom/android/systemui/media/controls/ui/MediaHostStatesManager;->controllers:Ljava/util/Set;

    .line 195
    invoke-interface {v3, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 197
    iget-object v3, v1, Lcom/android/systemui/media/controls/ui/MediaViewController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 200
    check-cast v3, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 202
    iget-object v1, v1, Lcom/android/systemui/media/controls/ui/MediaViewController;->configurationListener:Lcom/android/systemui/media/controls/ui/MediaViewController$configurationListener$1;

    .line 204
    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 206
    iget-object v1, v0, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/controls/models/player/MediaViewHolder;

    .line 209
    if-eqz v1, :cond_12

    .line 211
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaControlPanel;->mMediaTransferManager:Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;

    .line 213
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    .line 215
    if-eqz v3, :cond_11

    .line 217
    iget-object v5, v1, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->seamless:Landroid/view/ViewGroup;

    .line 219
    if-nez v5, :cond_e

    .line 221
    goto :goto_7

    .line 223
    :cond_e
    const v6, 0x7f0a059d    # @id/media_seamless_image

    .line 224
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 227
    move-result-object v5

    .line 230
    check-cast v5, Landroid/widget/ImageView;

    .line 231
    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;->mViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 233
    invoke-virtual {v6, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 235
    move-result v7

    .line 238
    if-eqz v7, :cond_10

    .line 239
    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 241
    move-result v5

    .line 244
    if-nez v5, :cond_11

    .line 245
    const-class v5, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 247
    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 249
    move-result-object v5

    .line 252
    check-cast v5, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 253
    iget-object v5, v5, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    .line 255
    iget-object v5, v5, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    .line 257
    check-cast v5, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 259
    invoke-virtual {v5, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 261
    const-class v5, Lcom/android/systemui/controlcenter/phone/controls/MiPlayPluginManager;

    .line 264
    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 266
    move-result-object v5

    .line 269
    check-cast v5, Lcom/android/systemui/controlcenter/phone/controls/MiPlayPluginManager;

    .line 270
    iget-object v6, v5, Lcom/android/systemui/controlcenter/phone/controls/MiPlayPluginManager;->mMiPlayPlugin:Lcom/android/systemui/plugins/miui/controls/MiPlayPlugin;

    .line 272
    if-eqz v6, :cond_f

    .line 274
    iget-object v6, v5, Lcom/android/systemui/controlcenter/phone/controls/MiPlayPluginManager;->mCastingCallbacks:Ljava/util/ArrayList;

    .line 276
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 278
    iget-object v5, v5, Lcom/android/systemui/controlcenter/phone/controls/MiPlayPluginManager;->mMiPlayPlugin:Lcom/android/systemui/plugins/miui/controls/MiPlayPlugin;

    .line 281
    invoke-interface {v5, v0}, Lcom/android/systemui/plugins/miui/controls/MiPlayPlugin;->unregisterCastingCallback(Lcom/android/systemui/plugins/miui/controls/MiPlayCastingCallback;)V

    .line 283
    :cond_f
    iget-object v3, v3, Lcom/android/settingslib/media/LocalMediaManager;->mCallbacks:Ljava/util/Collection;

    .line 286
    check-cast v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 288
    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;->mMediaDeviceCallback:Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager$3;

    .line 290
    invoke-virtual {v3, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 292
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;->mMediaCallback:Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager$4;

    .line 295
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;->mMediaRouter:Landroid/media/MediaRouter;

    .line 297
    invoke-virtual {v0, v3}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    .line 299
    goto :goto_7

    .line 302
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 303
    const-string v3, "Tried to remove unknown view "

    .line 305
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 307
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 310
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 313
    move-result-object v0

    .line 316
    const-string v3, "MiuiMediaTransferManager"

    .line 317
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_11
    :goto_7
    sget-object v0, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->SEMANTIC_ACTIONS_ALL:Ljava/util/List;

    .line 322
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 324
    move-result-object v0

    .line 327
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 328
    move-result v3

    .line 331
    if-eqz v3, :cond_12

    .line 332
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 334
    move-result-object v3

    .line 337
    check-cast v3, Ljava/lang/Integer;

    .line 338
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 340
    move-result v3

    .line 343
    invoke-virtual {v1, v3}, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->getAction(I)Landroid/widget/ImageButton;

    .line 344
    move-result-object v3

    .line 347
    filled-new-array {v3}, [Landroid/widget/ImageButton;

    .line 348
    move-result-object v3

    .line 351
    invoke-static {v3}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    .line 352
    goto :goto_8

    .line 355
    :cond_12
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->updatePlayerVisibilities()V

    .line 356
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->updateMediaPaddings()V

    .line 359
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->updatePageIndicator()V

    .line 362
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->mediaManager:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

    .line 365
    if-eqz p2, :cond_13

    .line 367
    invoke-virtual {p0, p1}, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->dismissMediaData(Ljava/lang/String;)V

    .line 369
    :cond_13
    if-eqz p3, :cond_15

    .line 372
    const-wide/16 p2, 0x0

    .line 374
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->dismissSmartspaceRecommendation(Ljava/lang/String;J)V

    .line 376
    goto :goto_9

    .line 379
    :cond_14
    move-object v2, v3

    .line 380
    :cond_15
    :goto_9
    return-object v2
    .line 381
.end method

.method public final reorderAllPlayers(Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    .line 2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    sget-object v1, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/controls/ui/MediaPlayerData;

    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-static {}, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->players()Ljava/util/Collection;

    .line 12
    move-result-object v1

    .line 15
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v1

    .line 19
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v2

    .line 23
    if-eqz v2, :cond_2

    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 29
    check-cast v2, Lcom/android/systemui/media/controls/ui/MediaControlPanel;

    .line 30
    iget-object v3, v2, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/controls/models/player/MediaViewHolder;

    .line 32
    if-eqz v3, :cond_1

    .line 34
    iget-object v2, v3, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->player:Lcom/android/systemui/util/animation/TransitionLayout;

    .line 36
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 38
    goto :goto_0

    .line 41
    :cond_1
    iget-object v2, v2, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/controls/models/recommendation/RecommendationViewHolder;

    .line 42
    if-eqz v2, :cond_0

    .line 44
    iget-object v2, v2, Lcom/android/systemui/media/controls/models/recommendation/RecommendationViewHolder;->recommendations:Lcom/android/systemui/util/animation/TransitionLayout;

    .line 46
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 48
    goto :goto_0

    .line 51
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;

    .line 52
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->updatePlayerVisibilities()V

    .line 54
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->updateMediaPaddings()V

    .line 57
    sget-object v2, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/controls/ui/MediaPlayerData;

    .line 60
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    sget-object v2, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->visibleMediaPlayers:Ljava/util/LinkedHashMap;

    .line 65
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->clear()V

    .line 67
    sget-object v3, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->mediaPlayers:Ljava/util/TreeMap;

    .line 70
    invoke-virtual {v3}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    .line 72
    move-result-object v3

    .line 75
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 76
    move-result-object v3

    .line 79
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    move-result v4

    .line 83
    if-eqz v4, :cond_3

    .line 84
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    move-result-object v4

    .line 89
    check-cast v4, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;

    .line 90
    iget-object v5, v4, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;->key:Ljava/lang/String;

    .line 92
    invoke-virtual {v2, v5, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    goto :goto_1

    .line 97
    :cond_3
    iget-boolean v2, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->shouldScrollToKey:Z

    .line 98
    if-eqz v2, :cond_9

    .line 100
    const/4 v2, 0x0

    .line 102
    iput-boolean v2, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->shouldScrollToKey:Z

    .line 103
    const/4 p0, -0x1

    .line 105
    if-eqz p2, :cond_4

    .line 106
    sget-object v3, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/controls/ui/MediaPlayerData;

    .line 108
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    invoke-static {p2}, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->getMediaPlayerIndex(Ljava/lang/String;)I

    .line 113
    move-result p2

    .line 116
    goto :goto_2

    .line 117
    :cond_4
    move p2, p0

    .line 118
    :goto_2
    if-eq p2, p0, :cond_9

    .line 119
    const/4 v3, 0x0

    .line 121
    if-eqz p1, :cond_8

    .line 122
    sget-object v4, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/controls/ui/MediaPlayerData;

    .line 124
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    sget-object v4, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->mediaPlayers:Ljava/util/TreeMap;

    .line 129
    invoke-virtual {v4}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    .line 131
    move-result-object v4

    .line 134
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 135
    move-result-object v4

    .line 138
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 139
    move-result v5

    .line 142
    if-eqz v5, :cond_7

    .line 143
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 145
    move-result-object v5

    .line 148
    if-ltz v2, :cond_6

    .line 149
    check-cast v5, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;

    .line 151
    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 153
    move-result v5

    .line 156
    if-eqz v5, :cond_5

    .line 157
    goto :goto_4

    .line 159
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 160
    goto :goto_3

    .line 162
    :cond_6
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    .line 163
    throw v3

    .line 166
    :cond_7
    move v2, p0

    .line 167
    :goto_4
    invoke-virtual {v1, v2, p2}, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->scrollToPlayer(II)V

    .line 168
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 171
    :cond_8
    if-nez v3, :cond_9

    .line 173
    invoke-virtual {v1, p0, p2}, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->scrollToPlayer(II)V

    .line 175
    :cond_9
    sget-object p0, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/controls/ui/MediaPlayerData;

    .line 178
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 180
    invoke-static {}, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->players()Ljava/util/Collection;

    .line 183
    move-result-object p0

    .line 186
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 187
    move-result p0

    .line 190
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 191
    move-result p1

    .line 194
    if-eq p0, p1, :cond_a

    .line 195
    invoke-static {}, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->players()Ljava/util/Collection;

    .line 197
    move-result-object p0

    .line 200
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 201
    move-result p0

    .line 204
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 205
    move-result p1

    .line 208
    const-string p2, "Size of players list and number of views in carousel are out of sync. Players size is "

    .line 209
    const-string v0, ". View count is "

    .line 211
    const-string v1, "."

    .line 213
    invoke-static {p2, p0, v0, p1, v1}, Landroidx/room/RoomOpenHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 215
    move-result-object p0

    .line 218
    const-string p1, "MediaCarouselController"

    .line 219
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_a
    return-void
    .line 224
.end method

.method public final setCurrentState(FIIZ)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->currentStartLocation:I

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne p2, v0, :cond_1

    .line 6
    iget v0, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->currentEndLocation:I

    .line 8
    if-ne p3, v0, :cond_1

    .line 10
    iget v0, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->currentTransitionProgress:F

    .line 12
    cmpg-float v0, p1, v0

    .line 14
    if-nez v0, :cond_0

    .line 16
    move v0, v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v0, v1

    .line 20
    :goto_0
    if-eqz v0, :cond_1

    .line 21
    if-eqz p4, :cond_9

    .line 23
    :cond_1
    iput p2, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->currentStartLocation:I

    .line 25
    iput p3, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->currentEndLocation:I

    .line 27
    iput p1, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->currentTransitionProgress:F

    .line 29
    sget-object p1, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/controls/ui/MediaPlayerData;

    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    invoke-static {}, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->players()Ljava/util/Collection;

    .line 36
    move-result-object p1

    .line 39
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 40
    move-result-object p1

    .line 43
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    move-result p2

    .line 47
    if-eqz p2, :cond_2

    .line 48
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    move-result-object p2

    .line 53
    check-cast p2, Lcom/android/systemui/media/controls/ui/MediaControlPanel;

    .line 54
    invoke-virtual {p0, p2, p4}, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->updatePlayerToState(Lcom/android/systemui/media/controls/ui/MediaControlPanel;Z)V

    .line 56
    goto :goto_1

    .line 59
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->mediaHostStatesManager:Lcom/android/systemui/media/controls/ui/MediaHostStatesManager;

    .line 60
    iget-object p1, p1, Lcom/android/systemui/media/controls/ui/MediaHostStatesManager;->mediaHostStates:Ljava/util/Map;

    .line 62
    iget p2, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->currentEndLocation:I

    .line 64
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    move-result-object p2

    .line 69
    check-cast p1, Ljava/util/LinkedHashMap;

    .line 70
    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    move-result-object p2

    .line 75
    check-cast p2, Lcom/android/systemui/media/controls/ui/MediaHostState;

    .line 76
    if-eqz p2, :cond_3

    .line 78
    invoke-interface {p2}, Lcom/android/systemui/media/controls/ui/MediaHostState;->getShowsOnlyActiveMedia()Z

    .line 80
    move-result p2

    .line 83
    goto :goto_2

    .line 84
    :cond_3
    move p2, v2

    .line 85
    :goto_2
    iget p3, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->currentStartLocation:I

    .line 86
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    move-result-object p3

    .line 91
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    move-result-object p1

    .line 95
    check-cast p1, Lcom/android/systemui/media/controls/ui/MediaHostState;

    .line 96
    if-eqz p1, :cond_4

    .line 98
    invoke-interface {p1}, Lcom/android/systemui/media/controls/ui/MediaHostState;->getShowsOnlyActiveMedia()Z

    .line 100
    move-result p1

    .line 103
    goto :goto_3

    .line 104
    :cond_4
    move p1, p2

    .line 105
    :goto_3
    iget-boolean p3, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->currentlyShowingOnlyActive:Z

    .line 106
    if-ne p3, p2, :cond_7

    .line 108
    iget p3, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->currentTransitionProgress:F

    .line 110
    const/high16 p4, 0x3f800000    # 1.0f

    .line 112
    cmpg-float p4, p3, p4

    .line 114
    if-nez p4, :cond_5

    .line 116
    move p4, v2

    .line 118
    goto :goto_4

    .line 119
    :cond_5
    move p4, v1

    .line 120
    :goto_4
    if-nez p4, :cond_8

    .line 121
    const/4 p4, 0x0

    .line 123
    cmpg-float p3, p3, p4

    .line 124
    if-nez p3, :cond_6

    .line 126
    move v1, v2

    .line 128
    :cond_6
    if-nez v1, :cond_8

    .line 129
    if-eq p1, p2, :cond_8

    .line 131
    :cond_7
    iput-boolean p2, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->currentlyShowingOnlyActive:Z

    .line 133
    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;

    .line 135
    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->resetTranslation(Z)V

    .line 137
    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->updatePageIndicatorAlpha()V

    .line 140
    :cond_9
    return-void
    .line 143
.end method

.method public final updateCarouselSize()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->desiredHostState:Lcom/android/systemui/media/controls/ui/MediaHostState;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Lcom/android/systemui/media/controls/ui/MediaHostState;->getMeasurementInput()Lcom/android/systemui/util/animation/MeasurementInput;

    .line 7
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    iget v0, v0, Lcom/android/systemui/util/animation/MeasurementInput;->widthMeasureSpec:I

    .line 13
    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 15
    move-result v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v0, v1

    .line 20
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->desiredHostState:Lcom/android/systemui/media/controls/ui/MediaHostState;

    .line 21
    if-eqz v2, :cond_1

    .line 23
    invoke-interface {v2}, Lcom/android/systemui/media/controls/ui/MediaHostState;->getMeasurementInput()Lcom/android/systemui/util/animation/MeasurementInput;

    .line 25
    move-result-object v2

    .line 28
    if-eqz v2, :cond_1

    .line 29
    iget v2, v2, Lcom/android/systemui/util/animation/MeasurementInput;->heightMeasureSpec:I

    .line 31
    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 33
    move-result v2

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move v2, v1

    .line 38
    :goto_1
    iget v3, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->carouselMeasureWidth:I

    .line 39
    if-eq v0, v3, :cond_2

    .line 41
    if-nez v0, :cond_3

    .line 43
    :cond_2
    iget v3, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->carouselMeasureHeight:I

    .line 45
    if-eq v2, v3, :cond_6

    .line 47
    if-eqz v2, :cond_6

    .line 49
    :cond_3
    iput v0, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->carouselMeasureWidth:I

    .line 51
    iput v2, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->carouselMeasureHeight:I

    .line 53
    iget v2, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->mSidePaddings:I

    .line 55
    add-int v3, v0, v2

    .line 57
    mul-int/lit8 v2, v2, 0x2

    .line 59
    add-int/2addr v2, v0

    .line 61
    const/high16 v0, 0x40000000    # 2.0f

    .line 62
    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 64
    move-result v0

    .line 67
    iget-object v4, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->desiredHostState:Lcom/android/systemui/media/controls/ui/MediaHostState;

    .line 68
    if-eqz v4, :cond_4

    .line 70
    invoke-interface {v4}, Lcom/android/systemui/media/controls/ui/MediaHostState;->getMeasurementInput()Lcom/android/systemui/util/animation/MeasurementInput;

    .line 72
    move-result-object v4

    .line 75
    if-eqz v4, :cond_4

    .line 76
    iget v4, v4, Lcom/android/systemui/util/animation/MeasurementInput;->heightMeasureSpec:I

    .line 78
    goto :goto_2

    .line 80
    :cond_4
    move v4, v1

    .line 81
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->mediaCarousel:Lcom/android/systemui/media/controls/ui/MediaScrollView;

    .line 82
    invoke-virtual {v5, v0, v4}, Landroid/widget/HorizontalScrollView;->measure(II)V

    .line 84
    invoke-virtual {v5}, Landroid/widget/HorizontalScrollView;->getMeasuredHeight()I

    .line 87
    move-result v0

    .line 90
    invoke-virtual {v5, v1, v1, v2, v0}, Landroid/widget/HorizontalScrollView;->layout(IIII)V

    .line 91
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;

    .line 94
    iput v3, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->playerWidthPlusPadding:I

    .line 96
    iget v0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->visibleMediaIndex:I

    .line 98
    mul-int/2addr v0, v3

    .line 100
    iget v1, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->scrollIntoCurrentMedia:I

    .line 101
    if-le v1, v3, :cond_5

    .line 103
    sub-int/2addr v1, v3

    .line 105
    sub-int/2addr v3, v1

    .line 106
    add-int/2addr v3, v0

    .line 107
    goto :goto_3

    .line 108
    :cond_5
    add-int v3, v0, v1

    .line 109
    :goto_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->scrollView$com$android$systemui$media$controls$ui$MediaCarouselScrollHandler:Lcom/android/systemui/media/controls/ui/MediaScrollView;

    .line 111
    invoke-virtual {p0, v3}, Lcom/android/systemui/media/controls/ui/MediaScrollView;->setRelativeScrollX(I)V

    .line 113
    :cond_6
    return-void
    .line 116
.end method

.method public final updatePageIndicator()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->pageIndicator:Lcom/android/systemui/qs/PageIndicator;

    .line 2
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/PageIndicator;->setNumPages(I)V

    .line 5
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/PageIndicator;->setLocation(F)V

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->updatePageIndicatorAlpha()V

    .line 12
    return-void
    .line 15
.end method

.method public final updatePageIndicatorAlpha()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->mediaHostStatesManager:Lcom/android/systemui/media/controls/ui/MediaHostStatesManager;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/MediaHostStatesManager;->mediaHostStates:Ljava/util/Map;

    .line 4
    iget v1, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->currentEndLocation:I

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v1

    .line 11
    check-cast v0, Ljava/util/LinkedHashMap;

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/systemui/media/controls/ui/MediaHostState;

    .line 18
    const/4 v2, 0x0

    .line 20
    if-eqz v1, :cond_0

    .line 21
    invoke-interface {v1}, Lcom/android/systemui/media/controls/ui/MediaHostState;->getVisible()Z

    .line 23
    move-result v1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v1, v2

    .line 28
    :goto_0
    iget v3, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->currentStartLocation:I

    .line 29
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    move-result-object v3

    .line 34
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    move-result-object v3

    .line 38
    check-cast v3, Lcom/android/systemui/media/controls/ui/MediaHostState;

    .line 39
    if-eqz v3, :cond_1

    .line 41
    invoke-interface {v3}, Lcom/android/systemui/media/controls/ui/MediaHostState;->getVisible()Z

    .line 43
    move-result v2

    .line 46
    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    .line 47
    const/4 v4, 0x0

    .line 49
    if-eqz v2, :cond_2

    .line 50
    move v5, v3

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    move v5, v4

    .line 54
    :goto_1
    iget v6, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->currentEndLocation:I

    .line 55
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    move-result-object v6

    .line 60
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    move-result-object v0

    .line 64
    check-cast v0, Lcom/android/systemui/media/controls/ui/MediaHostState;

    .line 65
    if-eqz v0, :cond_3

    .line 67
    invoke-interface {v0}, Lcom/android/systemui/media/controls/ui/MediaHostState;->getSquishFraction()F

    .line 69
    move-result v0

    .line 72
    goto :goto_2

    .line 73
    :cond_3
    move v0, v3

    .line 74
    :goto_2
    if-eqz v1, :cond_4

    .line 75
    move v6, v3

    .line 77
    goto :goto_3

    .line 78
    :cond_4
    move v6, v4

    .line 79
    :goto_3
    iget-object v7, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->pageIndicator:Lcom/android/systemui/qs/PageIndicator;

    .line 80
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getTranslationY()F

    .line 82
    move-result v8

    .line 85
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getHeight()I

    .line 86
    move-result v9

    .line 89
    int-to-float v9, v9

    .line 90
    add-float/2addr v8, v9

    .line 91
    iget-object v9, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->mediaCarousel:Lcom/android/systemui/media/controls/ui/MediaScrollView;

    .line 92
    invoke-virtual {v9}, Landroid/widget/HorizontalScrollView;->getMeasuredHeight()I

    .line 94
    move-result v9

    .line 97
    int-to-float v9, v9

    .line 98
    div-float/2addr v8, v9

    .line 99
    sub-float/2addr v0, v8

    .line 100
    sub-float v8, v3, v8

    .line 101
    div-float/2addr v0, v8

    .line 103
    invoke-static {v0, v4, v3}, Landroid/util/MathUtils;->constrain(FFF)F

    .line 104
    move-result v0

    .line 107
    sget-object v8, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->TRANSFORM_BEZIER:Landroid/view/animation/PathInterpolator;

    .line 108
    invoke-virtual {v8, v0}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    .line 110
    move-result v0

    .line 113
    mul-float/2addr v0, v6

    .line 114
    if-eqz v1, :cond_5

    .line 115
    if-nez v2, :cond_7

    .line 117
    :cond_5
    iget p0, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->currentTransitionProgress:F

    .line 119
    if-nez v1, :cond_6

    .line 121
    sub-float p0, v3, p0

    .line 123
    :cond_6
    const v1, 0x3f733333    # 0.95f

    .line 125
    invoke-static {v1, v3, v4, v3, p0}, Landroid/util/MathUtils;->map(FFFFF)F

    .line 128
    move-result p0

    .line 131
    invoke-static {p0, v4, v3}, Landroid/util/MathUtils;->constrain(FFF)F

    .line 132
    move-result p0

    .line 135
    invoke-static {v5, v0, p0}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 136
    move-result v3

    .line 139
    :cond_7
    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 140
    return-void
    .line 143
.end method

.method public final updatePageIndicatorLocation()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->isRtl:Z

    .line 2
    const/high16 v1, 0x40000000    # 2.0f

    .line 4
    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->pageIndicator:Lcom/android/systemui/qs/PageIndicator;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    .line 10
    move-result v0

    .line 13
    iget v3, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->currentCarouselWidth:I

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    iget v0, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->currentCarouselWidth:I

    .line 17
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    .line 19
    move-result v3

    .line 22
    :goto_0
    sub-int/2addr v0, v3

    .line 23
    int-to-float v0, v0

    .line 24
    div-float/2addr v0, v1

    .line 25
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;

    .line 26
    iget v1, v1, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->contentTranslation:F

    .line 28
    add-float/2addr v0, v1

    .line 30
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 31
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 34
    move-result-object v0

    .line 37
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 38
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->mediaCarousel:Lcom/android/systemui/media/controls/ui/MediaScrollView;

    .line 40
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredHeight()I

    .line 42
    move-result p0

    .line 45
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    .line 46
    move-result v1

    .line 49
    sub-int/2addr p0, v1

    .line 50
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 51
    sub-int/2addr p0, v0

    .line 53
    int-to-float p0, p0

    .line 54
    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 55
    return-void
    .line 58
.end method

.method public final updatePlayerToState(Lcom/android/systemui/media/controls/ui/MediaControlPanel;Z)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->currentStartLocation:I

    .line 2
    iget v1, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->currentEndLocation:I

    .line 4
    iget p0, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->currentTransitionProgress:F

    .line 6
    iget-object p1, p1, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/controls/ui/MediaViewController;

    .line 8
    invoke-virtual {p1, p0, v0, v1, p2}, Lcom/android/systemui/media/controls/ui/MediaViewController;->setCurrentState(FIIZ)V

    .line 10
    return-void
    .line 13
.end method

.method public final updateSeekbarListening(Z)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/controls/ui/MediaPlayerData;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-static {}, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->players()Ljava/util/Collection;

    .line 7
    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v0

    .line 14
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 24
    check-cast v1, Lcom/android/systemui/media/controls/ui/MediaControlPanel;

    .line 25
    if-eqz p1, :cond_0

    .line 27
    iget-boolean v2, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->currentlyExpanded:Z

    .line 29
    if-eqz v2, :cond_0

    .line 31
    const/4 v2, 0x1

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    const/4 v2, 0x0

    .line 35
    :goto_1
    iget-object v1, v1, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mSeekBarViewModel:Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;

    .line 36
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    new-instance v3, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$listening$1;

    .line 41
    invoke-direct {v3, v1, v2}, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$listening$1;-><init>(Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;Z)V

    .line 43
    iget-object v1, v1, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;->bgExecutor:Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl;

    .line 46
    invoke-virtual {v1, v3}, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 48
    goto :goto_0

    .line 51
    :cond_1
    return-void
    .line 52
.end method
