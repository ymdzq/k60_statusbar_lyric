.class public abstract Lcom/android/systemui/qs/QSPanelControllerBase;
.super Lcom/android/systemui/util/ViewController;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public mCachedSpecs:Ljava/lang/String;

.field public final mDumpManager:Lcom/android/systemui/dump/DumpManager;

.field public final mHost:Lcom/android/systemui/qs/QSHost;

.field public mLastOrientation:I

.field public final mMediaHost:Lcom/android/systemui/media/controls/ui/MediaHost;

.field public final mMediaHostVisibilityListener:Lcom/android/systemui/qs/QSPanelControllerBase$$ExternalSyntheticLambda2;

.field public mMediaVisibilityChangedListener:Ljava/util/function/Consumer;

.field public final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field protected final mOnConfigurationChangedListener:Lcom/android/systemui/qs/QSPanel$OnConfigurationChangedListener;

.field public final mQSHostCallback:Lcom/android/systemui/qs/QSPanelControllerBase$$ExternalSyntheticLambda1;

.field public final mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

.field public final mQsCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

.field public mQsTileRevealController:Lcom/android/systemui/qs/QSTileRevealController;

.field public final mRecords:Ljava/util/ArrayList;

.field public mRevealExpansion:F

.field public mShouldUseSplitNotificationShade:Z

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public mUsingHorizontalLayout:Z

.field public mUsingHorizontalLayoutChangedListener:Ljava/lang/Runnable;

.field public final mUsingMediaPlayer:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/customize/QSCustomizerController;ZLcom/android/systemui/media/controls/ui/MediaHost;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/dump/DumpManager;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    .line 5
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mRecords:Ljava/util/ArrayList;

    .line 10
    const-string p1, ""

    .line 12
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mCachedSpecs:Ljava/lang/String;

    .line 14
    new-instance p1, Lcom/android/systemui/qs/QSPanelControllerBase$$ExternalSyntheticLambda1;

    .line 16
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/QSPanelControllerBase$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/QSPanelControllerBase;)V

    .line 18
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mQSHostCallback:Lcom/android/systemui/qs/QSPanelControllerBase$$ExternalSyntheticLambda1;

    .line 21
    new-instance p1, Lcom/android/systemui/qs/QSPanelControllerBase$1;

    .line 23
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/QSPanelControllerBase$1;-><init>(Lcom/android/systemui/qs/QSPanelControllerBase;)V

    .line 25
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mOnConfigurationChangedListener:Lcom/android/systemui/qs/QSPanel$OnConfigurationChangedListener;

    .line 28
    new-instance p1, Lcom/android/systemui/qs/QSPanelControllerBase$$ExternalSyntheticLambda2;

    .line 30
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/QSPanelControllerBase$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/qs/QSPanelControllerBase;)V

    .line 32
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mMediaHostVisibilityListener:Lcom/android/systemui/qs/QSPanelControllerBase$$ExternalSyntheticLambda2;

    .line 35
    iput-object p2, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mHost:Lcom/android/systemui/qs/QSHost;

    .line 37
    iput-object p3, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mQsCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

    .line 39
    iput-boolean p4, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mUsingMediaPlayer:Z

    .line 41
    iput-object p5, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mMediaHost:Lcom/android/systemui/media/controls/ui/MediaHost;

    .line 43
    iput-object p6, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 45
    iput-object p7, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 47
    iput-object p8, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    .line 49
    iput-object p9, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 51
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 53
    move-result-object p1

    .line 56
    invoke-static {p1}, Lcom/android/systemui/util/LargeScreenUtils;->shouldUseSplitNotificationShade(Landroid/content/res/Resources;)Z

    .line 57
    move-result p1

    .line 60
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mShouldUseSplitNotificationShade:Z

    .line 61
    return-void
    .line 63
.end method


# virtual methods
.method public createTileRevealController()Lcom/android/systemui/qs/QSTileRevealController;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 9
    const-string v1, ":"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 15
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 16
    const-string v0, "  Tile records:"

    .line 19
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mRecords:Ljava/util/ArrayList;

    .line 24
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object v0

    .line 29
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v1

    .line 39
    check-cast v1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    .line 40
    iget-object v2, v1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 42
    instance-of v2, v2, Lcom/android/systemui/Dumpable;

    .line 44
    if-eqz v2, :cond_0

    .line 46
    const-string v2, "    "

    .line 48
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 50
    iget-object v3, v1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 53
    check-cast v3, Lcom/android/systemui/Dumpable;

    .line 55
    invoke-interface {v3, p1, p2}, Lcom/android/systemui/Dumpable;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 60
    iget-object v1, v1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    .line 63
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->toString()Ljava/lang/String;

    .line 65
    move-result-object v1

    .line 68
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 69
    goto :goto_0

    .line 72
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mMediaHost:Lcom/android/systemui/media/controls/ui/MediaHost;

    .line 73
    if-eqz p2, :cond_2

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    .line 77
    const-string v1, "  media bounds: "

    .line 79
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Lcom/android/systemui/media/controls/ui/MediaHost;->getCurrentBounds()Landroid/graphics/Rect;

    .line 84
    move-result-object p2

    .line 87
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object p2

    .line 94
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 95
    new-instance p2, Ljava/lang/StringBuilder;

    .line 98
    const-string v0, "  horizontal layout: "

    .line 100
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mUsingHorizontalLayout:Z

    .line 105
    const-string v1, "  last orientation: "

    .line 107
    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    move-result-object p2

    .line 112
    iget v0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mLastOrientation:I

    .line 113
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    move-result-object p2

    .line 121
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 122
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 125
    const-string v0, "  mShouldUseSplitNotificationShade: "

    .line 127
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    iget-boolean p0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mShouldUseSplitNotificationShade:Z

    .line 132
    invoke-static {p2, p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 134
    return-void
    .line 137
.end method

.method public abstract getTileCallbackType()I
.end method

.method public final getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 2
    check-cast p0, Lcom/android/systemui/qs/QSPanel;

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    .line 6
    move-result-object p0

    .line 9
    return-object p0
    .line 10
.end method

.method public abstract onConfigurationChanged()V
.end method

.method public onInit()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 2
    move-object v1, v0

    .line 4
    check-cast v1, Lcom/android/systemui/qs/QSPanel;

    .line 5
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    .line 7
    iput-object p0, v1, Lcom/android/systemui/qs/QSPanel;->mQsLogger:Lcom/android/systemui/qs/logging/QSLogger;

    .line 9
    invoke-virtual {v1}, Lcom/android/systemui/qs/QSPanel;->getOrCreateTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    .line 11
    move-result-object v2

    .line 14
    iput-object v2, v1, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    .line 15
    iget-boolean v2, v1, Lcom/android/systemui/qs/QSPanel;->mUsingMediaPlayer:Z

    .line 17
    if-eqz v2, :cond_1

    .line 19
    new-instance v2, Lcom/android/internal/widget/RemeasuringLinearLayout;

    .line 21
    iget-object v3, v1, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    .line 23
    invoke-direct {v2, v3}, Lcom/android/internal/widget/RemeasuringLinearLayout;-><init>(Landroid/content/Context;)V

    .line 25
    iput-object v2, v1, Lcom/android/systemui/qs/QSPanel;->mHorizontalLinearLayout:Landroid/widget/LinearLayout;

    .line 28
    const/4 v3, 0x0

    .line 30
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 31
    iget-object v2, v1, Lcom/android/systemui/qs/QSPanel;->mHorizontalLinearLayout:Landroid/widget/LinearLayout;

    .line 34
    iget-boolean v4, v1, Lcom/android/systemui/qs/QSPanel;->mUsingHorizontalLayout:Z

    .line 36
    if-eqz v4, :cond_0

    .line 38
    move v4, v3

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/16 v4, 0x8

    .line 42
    :goto_0
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 44
    iget-object v2, v1, Lcom/android/systemui/qs/QSPanel;->mHorizontalLinearLayout:Landroid/widget/LinearLayout;

    .line 47
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 49
    iget-object v2, v1, Lcom/android/systemui/qs/QSPanel;->mHorizontalLinearLayout:Landroid/widget/LinearLayout;

    .line 52
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 54
    new-instance v2, Lcom/android/internal/widget/RemeasuringLinearLayout;

    .line 57
    iget-object v4, v1, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    .line 59
    invoke-direct {v2, v4}, Lcom/android/internal/widget/RemeasuringLinearLayout;-><init>(Landroid/content/Context;)V

    .line 61
    iput-object v2, v1, Lcom/android/systemui/qs/QSPanel;->mHorizontalContentContainer:Landroid/widget/LinearLayout;

    .line 64
    const/4 v4, 0x1

    .line 66
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 67
    invoke-virtual {v1}, Lcom/android/systemui/qs/QSPanel;->setHorizontalContentContainerClipping()V

    .line 70
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 73
    const/4 v4, -0x2

    .line 75
    const/high16 v5, 0x3f800000    # 1.0f

    .line 76
    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 78
    iget-object v4, v1, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    .line 81
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 83
    move-result-object v4

    .line 86
    const v6, 0x7f070fbb    # @dimen/qs_media_padding '16.0dp'

    .line 87
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    .line 90
    move-result v4

    .line 93
    float-to-int v4, v4

    .line 94
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 95
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 98
    const/16 v4, 0x10

    .line 101
    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 103
    iget-object v4, v1, Lcom/android/systemui/qs/QSPanel;->mHorizontalLinearLayout:Landroid/widget/LinearLayout;

    .line 105
    iget-object v6, v1, Lcom/android/systemui/qs/QSPanel;->mHorizontalContentContainer:Landroid/widget/LinearLayout;

    .line 107
    invoke-virtual {v4, v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 112
    const/4 v4, -0x1

    .line 114
    invoke-direct {v2, v4, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 115
    iget-object v3, v1, Lcom/android/systemui/qs/QSPanel;->mHorizontalLinearLayout:Landroid/widget/LinearLayout;

    .line 118
    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    :cond_1
    move-object v1, v0

    .line 123
    check-cast v1, Lcom/android/systemui/qs/QSPanel;

    .line 124
    iget-boolean v1, v1, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    .line 126
    check-cast v0, Lcom/android/systemui/qs/QSPanel;

    .line 128
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->getDumpableTag()Ljava/lang/String;

    .line 130
    move-result-object v0

    .line 133
    const-string v2, ""

    .line 134
    invoke-virtual {p0, v0, v2, v1}, Lcom/android/systemui/qs/logging/QSLogger;->logAllTilesChangeListening(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 136
    return-void
    .line 139
.end method

.method public onSplitShadeChanged(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onViewAttached()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanelControllerBase;->createTileRevealController()Lcom/android/systemui/qs/QSTileRevealController;

    .line 2
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mQsTileRevealController:Lcom/android/systemui/qs/QSTileRevealController;

    .line 6
    if-eqz v0, :cond_1

    .line 8
    iget v1, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mRevealExpansion:F

    .line 10
    const/high16 v2, 0x3f800000    # 1.0f

    .line 12
    cmpl-float v1, v1, v2

    .line 14
    iget-object v2, v0, Lcom/android/systemui/qs/QSTileRevealController;->mHandler:Landroid/os/Handler;

    .line 16
    iget-object v0, v0, Lcom/android/systemui/qs/QSTileRevealController;->mRevealQsTiles:Lcom/android/systemui/qs/QSTileRevealController$1;

    .line 18
    if-nez v1, :cond_0

    .line 20
    const-wide/16 v3, 0x1f4

    .line 22
    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 24
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 28
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mMediaHost:Lcom/android/systemui/media/controls/ui/MediaHost;

    .line 31
    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/MediaHost;->visibleChangedListeners:Landroid/util/ArraySet;

    .line 33
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mMediaHostVisibilityListener:Lcom/android/systemui/qs/QSPanelControllerBase$$ExternalSyntheticLambda2;

    .line 35
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 40
    check-cast v0, Lcom/android/systemui/qs/QSPanel;

    .line 42
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mOnConfigurationChangedListener:Lcom/android/systemui/qs/QSPanel$OnConfigurationChangedListener;

    .line 44
    iget-object v2, v0, Lcom/android/systemui/qs/QSPanel;->mOnConfigurationChangedListeners:Ljava/util/List;

    .line 46
    check-cast v2, Ljava/util/ArrayList;

    .line 48
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mQSHostCallback:Lcom/android/systemui/qs/QSPanelControllerBase$$ExternalSyntheticLambda1;

    .line 53
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mHost:Lcom/android/systemui/qs/QSHost;

    .line 55
    invoke-interface {v2, v1}, Lcom/android/systemui/plugins/miui/qs/MiuiQSHost;->addCallback(Lcom/android/systemui/plugins/miui/qs/MiuiQSHost$Callback;)V

    .line 57
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanelControllerBase;->setTiles()V

    .line 60
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 63
    move-result-object v1

    .line 66
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 67
    move-result-object v1

    .line 70
    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 71
    iput v1, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mLastOrientation:I

    .line 73
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->getDumpableTag()Ljava/lang/String;

    .line 75
    move-result-object v2

    .line 78
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    .line 79
    invoke-virtual {v3, v1, v2}, Lcom/android/systemui/qs/logging/QSLogger;->logOnViewAttached(ILjava/lang/String;)V

    .line 81
    const/4 v1, 0x1

    .line 84
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSPanelControllerBase;->switchTileLayout(Z)Z

    .line 85
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->getDumpableTag()Ljava/lang/String;

    .line 88
    move-result-object v0

    .line 91
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 92
    invoke-virtual {v1, v0, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 94
    return-void
    .line 97
.end method

.method public onViewDetached()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mLastOrientation:I

    .line 2
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 4
    check-cast v1, Lcom/android/systemui/qs/QSPanel;

    .line 6
    invoke-virtual {v1}, Lcom/android/systemui/qs/QSPanel;->getDumpableTag()Ljava/lang/String;

    .line 8
    move-result-object v2

    .line 11
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    .line 12
    invoke-virtual {v3, v0, v2}, Lcom/android/systemui/qs/logging/QSLogger;->logOnViewDetached(ILjava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mOnConfigurationChangedListener:Lcom/android/systemui/qs/QSPanel$OnConfigurationChangedListener;

    .line 17
    iget-object v2, v1, Lcom/android/systemui/qs/QSPanel;->mOnConfigurationChangedListeners:Ljava/util/List;

    .line 19
    check-cast v2, Ljava/util/ArrayList;

    .line 21
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 23
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mQSHostCallback:Lcom/android/systemui/qs/QSPanelControllerBase$$ExternalSyntheticLambda1;

    .line 26
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mHost:Lcom/android/systemui/qs/QSHost;

    .line 28
    invoke-interface {v2, v0}, Lcom/android/systemui/plugins/miui/qs/MiuiQSHost;->removeCallback(Lcom/android/systemui/plugins/miui/qs/MiuiQSHost$Callback;)V

    .line 30
    invoke-virtual {v1}, Lcom/android/systemui/qs/QSPanel;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    .line 33
    move-result-object v0

    .line 36
    const/4 v2, 0x0

    .line 37
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 38
    invoke-interface {v0, v2, v3}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->setListening(ZLcom/android/internal/logging/UiEventLogger;)V

    .line 40
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mMediaHost:Lcom/android/systemui/media/controls/ui/MediaHost;

    .line 43
    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/MediaHost;->visibleChangedListeners:Landroid/util/ArraySet;

    .line 45
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mMediaHostVisibilityListener:Lcom/android/systemui/qs/QSPanelControllerBase$$ExternalSyntheticLambda2;

    .line 47
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 49
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mRecords:Ljava/util/ArrayList;

    .line 52
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 54
    move-result-object v2

    .line 57
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    move-result v3

    .line 61
    if-eqz v3, :cond_0

    .line 62
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    move-result-object v3

    .line 67
    check-cast v3, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    .line 68
    iget-object v3, v3, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 70
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanelControllerBase;->getTileCallbackType()I

    .line 72
    move-result v4

    .line 75
    invoke-interface {v3, v4}, Lcom/android/systemui/plugins/qs/QSTile;->removeCallbacksByType(I)V

    .line 76
    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 80
    invoke-virtual {v1}, Lcom/android/systemui/qs/QSPanel;->getDumpableTag()Ljava/lang/String;

    .line 83
    move-result-object v0

    .line 86
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 87
    invoke-virtual {p0, v0}, Lcom/android/systemui/dump/DumpManager;->unregisterDumpable(Ljava/lang/String;)V

    .line 89
    return-void
    .line 92
.end method

.method public refreshAllTiles()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mRecords:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 17
    check-cast v0, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    .line 18
    iget-object v1, v0, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 20
    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QSTile;->isListening()Z

    .line 22
    move-result v1

    .line 25
    if-nez v1, :cond_0

    .line 26
    iget-object v0, v0, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 28
    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QSTile;->refreshState()V

    .line 30
    goto :goto_0

    .line 33
    :cond_1
    return-void
    .line 34
.end method

.method public final setExpanded(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 2
    check-cast v0, Lcom/android/systemui/qs/QSPanel;

    .line 4
    iget-boolean v1, v0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    .line 6
    if-ne v1, p1, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->getDumpableTag()Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 14
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    .line 15
    invoke-virtual {v2, v1, p1}, Lcom/android/systemui/qs/logging/QSLogger;->logPanelExpanded(Ljava/lang/String;Z)V

    .line 17
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSPanel;->setExpanded(Z)V

    .line 20
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 23
    const/16 v2, 0x6f

    .line 25
    invoke-virtual {v1, v2, p1}, Lcom/android/internal/logging/MetricsLogger;->visibility(IZ)V

    .line 27
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 30
    if-nez p1, :cond_1

    .line 32
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->closePanelEvent()Lcom/android/systemui/qs/QSEvent;

    .line 34
    move-result-object p1

    .line 37
    invoke-interface {v2, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 38
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mQsCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

    .line 41
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 43
    check-cast p1, Lcom/android/systemui/qs/customize/QSCustomizer;

    .line 45
    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown()Z

    .line 47
    move-result p1

    .line 50
    if-eqz p1, :cond_2

    .line 51
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizerController;->hide()V

    .line 53
    goto :goto_1

    .line 56
    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->openPanelEvent()Lcom/android/systemui/qs/QSEvent;

    .line 57
    move-result-object p1

    .line 60
    invoke-interface {v2, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 61
    const/4 p1, 0x0

    .line 64
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mRecords:Ljava/util/ArrayList;

    .line 65
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 67
    move-result v2

    .line 70
    if-ge p1, v2, :cond_2

    .line 71
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 73
    move-result-object v0

    .line 76
    check-cast v0, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    .line 77
    iget-object v0, v0, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 79
    new-instance v2, Landroid/metrics/LogMaker;

    .line 81
    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QSTile;->getMetricsCategory()I

    .line 83
    move-result v3

    .line 86
    invoke-direct {v2, v3}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 87
    const/4 v3, 0x1

    .line 90
    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 91
    move-result-object v2

    .line 94
    invoke-interface {v0, v2}, Lcom/android/systemui/plugins/qs/QSTile;->populate(Landroid/metrics/LogMaker;)Landroid/metrics/LogMaker;

    .line 95
    move-result-object v0

    .line 98
    invoke-virtual {v1, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 99
    add-int/lit8 p1, p1, 0x1

    .line 102
    goto :goto_0

    .line 104
    :cond_2
    :goto_1
    return-void
    .line 105
.end method

.method public final setListening(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 2
    check-cast v0, Lcom/android/systemui/qs/QSPanel;

    .line 4
    iget-boolean v1, v0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    .line 6
    if-ne v1, p1, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSPanel;->setListening(Z)V

    .line 11
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    .line 14
    move-result-object v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->getDumpableTag()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 23
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mCachedSpecs:Ljava/lang/String;

    .line 24
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    .line 26
    invoke-virtual {v3, v1, v2, p1}, Lcom/android/systemui/qs/logging/QSLogger;->logAllTilesChangeListening(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 28
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    .line 31
    move-result-object v1

    .line 34
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 35
    invoke-interface {v1, p1, v2}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->setListening(ZLcom/android/internal/logging/UiEventLogger;)V

    .line 37
    :cond_1
    iget-boolean p1, v0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    .line 40
    if-eqz p1, :cond_2

    .line 42
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanelControllerBase;->refreshAllTiles()V

    .line 44
    :cond_2
    return-void
    .line 47
.end method

.method public setTiles()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v0}, Lcom/android/systemui/plugins/miui/qs/MiuiQSHost;->getTiles()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/QSPanelControllerBase;->setTiles(Ljava/util/Collection;Z)V

    return-void
.end method

.method public final setTiles(Ljava/util/Collection;Z)V
    .locals 6

    if-nez p2, :cond_3

    .line 2
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mQsTileRevealController:Lcom/android/systemui/qs/QSTileRevealController;

    if-eqz v0, :cond_3

    .line 3
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/plugins/qs/QSTile;

    .line 5
    invoke-interface {v3}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    sget-object v2, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    iget-object v3, v0, Lcom/android/systemui/qs/QSTileRevealController;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/android/systemui/Prefs;->getStringSet(Landroid/content/Context;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    .line 7
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, v0, Lcom/android/systemui/qs/QSTileRevealController;->mQsCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

    invoke-virtual {v5}, Lcom/android/systemui/qs/customize/QSCustomizerController;->isCustomizing()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->removeAll(Ljava/util/Collection;)Z

    .line 9
    iget-object v0, v0, Lcom/android/systemui/qs/QSTileRevealController;->mTilesToReveal:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    goto :goto_2

    .line 10
    :cond_2
    :goto_1
    new-instance v0, Landroid/util/ArraySet;

    .line 11
    invoke-static {v3, v2}, Lcom/android/systemui/Prefs;->getStringSet(Landroid/content/Context;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 12
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 13
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v3, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 14
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "QsTileSpecsRevealed"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 15
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    .line 16
    check-cast v3, Lcom/android/systemui/qs/QSPanel;

    .line 17
    iget-object v3, v3, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    .line 18
    invoke-interface {v3, v2}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->removeTile(Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;)V

    .line 19
    iget-object v3, v2, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    iget-object v2, v2, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->callback:Lcom/android/systemui/qs/QSPanel$1;

    invoke-interface {v3, v2}, Lcom/android/systemui/plugins/qs/QSTile;->removeCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V

    goto :goto_3

    .line 20
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const-string v1, ""

    .line 21
    iput-object v1, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mCachedSpecs:Ljava/lang/String;

    .line 22
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile;

    .line 23
    new-instance v2, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    iget-object v4, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mHost:Lcom/android/systemui/qs/QSHost;

    .line 24
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-interface {v4, v5, v1, p2}, Lcom/android/systemui/qs/QSHost;->createTileView(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSTile;Z)Lcom/android/systemui/plugins/qs/QSTileView;

    move-result-object v4

    invoke-direct {v2, v1, v4}, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;-><init>(Lcom/android/systemui/plugins/qs/QSTile;Lcom/android/systemui/plugins/qs/QSTileView;)V

    .line 25
    :try_start_0
    check-cast v4, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    if-eqz v4, :cond_5

    .line 26
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    invoke-virtual {v4, v1}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setQsLogger(Lcom/android/systemui/qs/logging/QSLogger;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v1

    const-string v4, "QSPanelControllerBase"

    const-string v5, "Failed to cast QSTileView to QSTileViewImpl"

    .line 27
    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28
    :cond_5
    :goto_5
    move-object v1, v3

    check-cast v1, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    new-instance v4, Lcom/android/systemui/qs/QSPanel$1;

    invoke-direct {v4, v1, v2}, Lcom/android/systemui/qs/QSPanel$1;-><init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;)V

    .line 30
    iget-object v5, v2, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v5, v4}, Lcom/android/systemui/plugins/qs/QSTile;->addCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V

    .line 31
    iput-object v4, v2, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->callback:Lcom/android/systemui/qs/QSPanel$1;

    .line 32
    iget-object v4, v2, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v4, v5}, Lcom/android/systemui/plugins/qs/QSTileView;->init(Lcom/android/systemui/plugins/qs/QSTile;)V

    .line 33
    invoke-interface {v5}, Lcom/android/systemui/plugins/qs/QSTile;->refreshState()V

    .line 34
    iget-object v1, v1, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    if-eqz v1, :cond_6

    .line 35
    invoke-interface {v1, v2}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->addTile(Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;)V

    .line 36
    :cond_6
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/qs/QSPanelControllerBase$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/systemui/qs/QSPanelControllerBase$$ExternalSyntheticLambda0;-><init>()V

    .line 38
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    const-string v2, ","

    .line 39
    invoke-static {v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mCachedSpecs:Ljava/lang/String;

    goto :goto_4

    :cond_7
    return-void
.end method

.method public final shouldUseHorizontalLayout()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mShouldUseSplitNotificationShade:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    return v1

    .line 7
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mUsingMediaPlayer:Z

    .line 8
    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mMediaHost:Lcom/android/systemui/media/controls/ui/MediaHost;

    .line 12
    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/MediaHost;->state:Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;

    .line 14
    iget-boolean v0, v0, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->visible:Z

    .line 16
    if-eqz v0, :cond_1

    .line 18
    iget p0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mLastOrientation:I

    .line 20
    const/4 v0, 0x2

    .line 22
    if-ne p0, v0, :cond_1

    .line 23
    const/4 v1, 0x1

    .line 25
    :cond_1
    return v1
    .line 26
.end method

.method public final switchTileLayout(Z)Z
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanelControllerBase;->shouldUseHorizontalLayout()Z

    .line 2
    move-result v0

    .line 5
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mUsingHorizontalLayout:Z

    .line 6
    const/4 v2, 0x0

    .line 8
    if-ne v0, v1, :cond_1

    .line 9
    if-eqz p1, :cond_0

    .line 11
    goto :goto_0

    .line 13
    :cond_0
    return v2

    .line 14
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 15
    check-cast v3, Lcom/android/systemui/qs/QSPanel;

    .line 17
    invoke-virtual {v3}, Lcom/android/systemui/qs/QSPanel;->getDumpableTag()Ljava/lang/String;

    .line 19
    move-result-object v4

    .line 22
    iget-object v5, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    .line 23
    invoke-virtual {v5, v0, v1, p1, v4}, Lcom/android/systemui/qs/logging/QSLogger;->logSwitchTileLayout(ZZZLjava/lang/String;)V

    .line 25
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mUsingHorizontalLayout:Z

    .line 28
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mMediaHost:Lcom/android/systemui/media/controls/ui/MediaHost;

    .line 30
    invoke-virtual {v1}, Lcom/android/systemui/media/controls/ui/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    .line 32
    move-result-object v1

    .line 35
    iget-boolean v4, v3, Lcom/android/systemui/qs/QSPanel;->mUsingHorizontalLayout:Z

    .line 36
    const/4 v5, 0x1

    .line 38
    if-ne v0, v4, :cond_2

    .line 39
    if-eqz p1, :cond_13

    .line 41
    :cond_2
    invoke-virtual {v3}, Lcom/android/systemui/qs/QSPanel;->getDumpableTag()Ljava/lang/String;

    .line 43
    move-result-object v4

    .line 46
    new-instance v6, Ljava/lang/StringBuilder;

    .line 47
    const-string/jumbo v7, "setUsingHorizontalLayout: "

    .line 49
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 55
    const-string v7, ", "

    .line 58
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object p1

    .line 69
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iput-boolean v0, v3, Lcom/android/systemui/qs/QSPanel;->mUsingHorizontalLayout:Z

    .line 73
    if-eqz v0, :cond_3

    .line 75
    iget-object p1, v3, Lcom/android/systemui/qs/QSPanel;->mHorizontalContentContainer:Landroid/widget/LinearLayout;

    .line 77
    goto :goto_1

    .line 79
    :cond_3
    move-object p1, v3

    .line 80
    :goto_1
    iget-object v4, v3, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    .line 81
    if-ne p1, v3, :cond_4

    .line 83
    iget v6, v3, Lcom/android/systemui/qs/QSPanel;->mMovableContentStartIndex:I

    .line 85
    goto :goto_2

    .line 87
    :cond_4
    move v6, v2

    .line 88
    :goto_2
    check-cast v4, Landroid/view/View;

    .line 89
    invoke-virtual {v3}, Lcom/android/systemui/qs/QSPanel;->getDumpableTag()Ljava/lang/String;

    .line 91
    move-result-object v7

    .line 94
    invoke-static {v4, p1, v6, v7}, Lcom/android/systemui/qs/QSPanel;->switchToParent(Landroid/view/View;Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 95
    add-int/2addr v6, v5

    .line 98
    iget-object v4, v3, Lcom/android/systemui/qs/QSPanel;->mFooter:Landroid/view/View;

    .line 99
    if-eqz v4, :cond_5

    .line 101
    invoke-virtual {v3}, Lcom/android/systemui/qs/QSPanel;->getDumpableTag()Ljava/lang/String;

    .line 103
    move-result-object v7

    .line 106
    invoke-static {v4, p1, v6, v7}, Lcom/android/systemui/qs/QSPanel;->switchToParent(Landroid/view/View;Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 107
    :cond_5
    iget-boolean p1, v3, Lcom/android/systemui/qs/QSPanel;->mUsingMediaPlayer:Z

    .line 110
    if-nez p1, :cond_6

    .line 112
    goto/16 :goto_9

    .line 114
    :cond_6
    iput-object v1, v3, Lcom/android/systemui/qs/QSPanel;->mMediaHostView:Landroid/view/ViewGroup;

    .line 116
    if-eqz v0, :cond_7

    .line 118
    iget-object p1, v3, Lcom/android/systemui/qs/QSPanel;->mHorizontalLinearLayout:Landroid/widget/LinearLayout;

    .line 120
    goto :goto_3

    .line 122
    :cond_7
    move-object p1, v3

    .line 123
    :goto_3
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    .line 124
    move-result-object v4

    .line 127
    check-cast v4, Landroid/view/ViewGroup;

    .line 128
    invoke-virtual {v3}, Lcom/android/systemui/qs/QSPanel;->getDumpableTag()Ljava/lang/String;

    .line 130
    move-result-object v6

    .line 133
    new-instance v7, Ljava/lang/StringBuilder;

    .line 134
    const-string v8, "Reattaching media host: "

    .line 136
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 141
    const-string v8, ", current "

    .line 144
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 149
    const-string v8, ", new "

    .line 152
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    move-result-object v7

    .line 163
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    if-eq v4, p1, :cond_e

    .line 167
    if-eqz v4, :cond_8

    .line 169
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 171
    :cond_8
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 174
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 177
    move-result-object p1

    .line 180
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 181
    const/4 v4, -0x2

    .line 183
    iput v4, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 184
    if-eqz v0, :cond_9

    .line 186
    move v4, v2

    .line 188
    goto :goto_4

    .line 189
    :cond_9
    const/4 v4, -0x1

    .line 190
    :goto_4
    iput v4, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 191
    if-eqz v0, :cond_a

    .line 193
    const/high16 v4, 0x3f800000    # 1.0f

    .line 195
    goto :goto_5

    .line 197
    :cond_a
    const/4 v4, 0x0

    .line 198
    :goto_5
    iput v4, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 199
    if-eqz v0, :cond_c

    .line 201
    instance-of v4, v3, Lcom/android/systemui/qs/QuickQSPanel;

    .line 203
    xor-int/2addr v4, v5

    .line 205
    if-eqz v4, :cond_b

    .line 206
    goto :goto_6

    .line 208
    :cond_b
    move v4, v2

    .line 209
    goto :goto_7

    .line 210
    :cond_c
    :goto_6
    iget v4, v3, Lcom/android/systemui/qs/QSPanel;->mMediaTotalBottomMargin:I

    .line 211
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    .line 213
    move-result v6

    .line 216
    sub-int/2addr v4, v6

    .line 217
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    .line 218
    move-result v4

    .line 221
    :goto_7
    iput v4, p1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 222
    instance-of v4, v3, Lcom/android/systemui/qs/QuickQSPanel;

    .line 224
    if-eqz v4, :cond_d

    .line 226
    if-nez v0, :cond_d

    .line 228
    iget v4, v3, Lcom/android/systemui/qs/QSPanel;->mMediaTopMargin:I

    .line 230
    goto :goto_8

    .line 232
    :cond_d
    move v4, v2

    .line 233
    :goto_8
    iput v4, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 234
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    :cond_e
    :goto_9
    iget-object p1, v3, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    .line 239
    const/4 v4, 0x2

    .line 241
    if-eqz v0, :cond_f

    .line 242
    move v6, v4

    .line 244
    goto :goto_a

    .line 245
    :cond_f
    move v6, v5

    .line 246
    :goto_a
    invoke-interface {p1, v6}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->setMinRows(I)Z

    .line 247
    iget-object p1, v3, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    .line 250
    if-eqz v0, :cond_10

    .line 252
    goto :goto_b

    .line 254
    :cond_10
    const/4 v4, 0x4

    .line 255
    :goto_b
    invoke-interface {p1, v4}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->setMaxColumns(I)Z

    .line 256
    invoke-virtual {v3, v1}, Lcom/android/systemui/qs/QSPanel;->updateMediaHostContentMargins(Landroid/view/ViewGroup;)V

    .line 259
    iget-object p1, v3, Lcom/android/systemui/qs/QSPanel;->mHorizontalLinearLayout:Landroid/widget/LinearLayout;

    .line 262
    if-eqz p1, :cond_11

    .line 264
    instance-of v1, v3, Lcom/android/systemui/qs/QuickQSPanel;

    .line 266
    xor-int/2addr v1, v5

    .line 268
    if-nez v1, :cond_11

    .line 269
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 271
    move-result-object p1

    .line 274
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 275
    iget v1, v3, Lcom/android/systemui/qs/QSPanel;->mMediaTotalBottomMargin:I

    .line 277
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    .line 279
    move-result v4

    .line 282
    sub-int/2addr v1, v4

    .line 283
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 284
    move-result v1

    .line 287
    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 288
    iget-object v1, v3, Lcom/android/systemui/qs/QSPanel;->mHorizontalLinearLayout:Landroid/widget/LinearLayout;

    .line 290
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 292
    :cond_11
    invoke-virtual {v3}, Lcom/android/systemui/qs/QSPanel;->updatePadding()V

    .line 295
    iget-object p1, v3, Lcom/android/systemui/qs/QSPanel;->mHorizontalLinearLayout:Landroid/widget/LinearLayout;

    .line 298
    if-eqz v0, :cond_12

    .line 300
    goto :goto_c

    .line 302
    :cond_12
    const/16 v2, 0x8

    .line 303
    :goto_c
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 305
    :cond_13
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanelControllerBase;->updateMediaDisappearParameters()V

    .line 308
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mUsingHorizontalLayoutChangedListener:Ljava/lang/Runnable;

    .line 311
    if-eqz p0, :cond_14

    .line 313
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 315
    :cond_14
    return v5
    .line 318
.end method

.method public final updateMediaDisappearParameters()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mUsingMediaPlayer:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mMediaHost:Lcom/android/systemui/media/controls/ui/MediaHost;

    .line 7
    iget-object v1, v0, Lcom/android/systemui/media/controls/ui/MediaHost;->state:Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;

    .line 9
    iget-object v1, v1, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->disappearParameters:Lcom/android/systemui/util/animation/DisappearParameters;

    .line 11
    iget-boolean p0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mUsingHorizontalLayout:Z

    .line 13
    const v2, 0x3f733333    # 0.95f

    .line 15
    const/high16 v3, 0x3f800000    # 1.0f

    .line 18
    const/4 v4, 0x0

    .line 20
    if-eqz p0, :cond_1

    .line 21
    iget-object p0, v1, Lcom/android/systemui/util/animation/DisappearParameters;->disappearSize:Landroid/graphics/PointF;

    .line 23
    const v5, 0x3ecccccd    # 0.4f

    .line 25
    invoke-virtual {p0, v4, v5}, Landroid/graphics/PointF;->set(FF)V

    .line 28
    iget-object p0, v1, Lcom/android/systemui/util/animation/DisappearParameters;->gonePivot:Landroid/graphics/PointF;

    .line 31
    invoke-virtual {p0, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 33
    iget-object p0, v1, Lcom/android/systemui/util/animation/DisappearParameters;->contentTranslationFraction:Landroid/graphics/PointF;

    .line 36
    const/high16 v5, 0x3e800000    # 0.25f

    .line 38
    invoke-virtual {p0, v5, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 40
    const p0, 0x3f19999a    # 0.6f

    .line 43
    iput p0, v1, Lcom/android/systemui/util/animation/DisappearParameters;->disappearEnd:F

    .line 46
    goto :goto_0

    .line 48
    :cond_1
    iget-object p0, v1, Lcom/android/systemui/util/animation/DisappearParameters;->disappearSize:Landroid/graphics/PointF;

    .line 49
    invoke-virtual {p0, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 51
    iget-object p0, v1, Lcom/android/systemui/util/animation/DisappearParameters;->gonePivot:Landroid/graphics/PointF;

    .line 54
    invoke-virtual {p0, v4, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 56
    iget-object p0, v1, Lcom/android/systemui/util/animation/DisappearParameters;->contentTranslationFraction:Landroid/graphics/PointF;

    .line 59
    invoke-virtual {p0, v4, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 61
    iput v2, v1, Lcom/android/systemui/util/animation/DisappearParameters;->disappearEnd:F

    .line 64
    :goto_0
    iput v2, v1, Lcom/android/systemui/util/animation/DisappearParameters;->fadeStartPosition:F

    .line 66
    iput v4, v1, Lcom/android/systemui/util/animation/DisappearParameters;->disappearStart:F

    .line 68
    iget-object p0, v0, Lcom/android/systemui/media/controls/ui/MediaHost;->state:Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;

    .line 70
    invoke-virtual {p0, v1}, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->setDisappearParameters(Lcom/android/systemui/util/animation/DisappearParameters;)V

    .line 72
    return-void
    .line 75
.end method
