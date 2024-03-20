.class public Lcom/android/systemui/qs/MiuiQSPanel;
.super Landroid/widget/LinearLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/android/systemui/plugins/miui/qs/MiuiQSHost$Callback;
.implements Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;
.implements Lcom/android/systemui/Dumpable;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

.field public mCachedSpecs:Ljava/lang/String;

.field public mCallback:Lcom/android/systemui/qs/MiuiQSDetail$Callback;

.field public final mContext:Landroid/content/Context;

.field public mCustomizePanel:Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;

.field public mDetailRecord:Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;

.field public final mDumpManager:Lcom/android/systemui/dump/DumpManager;

.field public mEditTopOffset:I

.field public mExpanded:Z

.field public mFooter:Landroid/view/View;

.field public mFooterMarginStartHorizontal:I

.field public mFooterPageIndicator:Lcom/android/systemui/qs/MiuiPageIndicator;

.field public mGridContentVisible:Z

.field public final mHandler:Lcom/android/systemui/qs/MiuiQSPanel$H;

.field public mHeaderContainer:Landroid/view/ViewGroup;

.field public mHost:Lcom/android/systemui/qs/QSTileHost;

.field public mLastOrientation:I

.field public mListening:Z

.field public final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public final mMovableContentStartIndex:I

.field public final mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

.field public final mQsTileRevealController:Lcom/android/systemui/qs/MiuiQSTileRevealController;

.field public final mRecords:Ljava/util/ArrayList;

.field public mRegularTileLayout:Lcom/android/systemui/qs/MiuiQSPanel$QSTileLayout;

.field public final mSecurityDialog:Lcom/android/systemui/controlcenter/policy/SecurityDialog;

.field public mSecurityFooter:Lcom/android/systemui/qs/MiuiQSSecurityFooter;

.field public mTileLayout:Lcom/android/systemui/qs/MiuiQSPanel$QSTileLayout;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public mVisualMarginEnd:I

.field public mVisualMarginStart:I

.field public mVisualTilePadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/controlcenter/policy/SecurityDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p2, Ljava/util/ArrayList;

    .line 5
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object p2, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mRecords:Ljava/util/ArrayList;

    .line 10
    const-string p2, ""

    .line 12
    iput-object p2, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mCachedSpecs:Ljava/lang/String;

    .line 14
    new-instance p2, Lcom/android/systemui/qs/MiuiQSPanel$H;

    .line 16
    invoke-direct {p2, p0}, Lcom/android/systemui/qs/MiuiQSPanel$H;-><init>(Lcom/android/systemui/qs/MiuiQSPanel;)V

    .line 18
    iput-object p2, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mHandler:Lcom/android/systemui/qs/MiuiQSPanel$H;

    .line 21
    const-class p2, Lcom/android/internal/logging/MetricsLogger;

    .line 23
    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    move-result-object p2

    .line 28
    check-cast p2, Lcom/android/internal/logging/MetricsLogger;

    .line 29
    iput-object p2, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 31
    const/4 p2, 0x1

    .line 33
    iput-boolean p2, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mGridContentVisible:Z

    .line 34
    const/4 p4, -0x1

    .line 36
    iput p4, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mLastOrientation:I

    .line 37
    iput-object p7, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mSecurityDialog:Lcom/android/systemui/controlcenter/policy/SecurityDialog;

    .line 39
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 41
    move-result-object p4

    .line 44
    const p7, 0x7f07100e    # @dimen/quick_settings_bottom_margin_media '8.0dp'

    .line 45
    invoke-virtual {p4, p7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 48
    iput-object p1, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mContext:Landroid/content/Context;

    .line 51
    iput-object p5, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    .line 53
    iput-object p3, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 55
    iput-object p6, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 57
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 59
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 62
    move-result p2

    .line 65
    iput p2, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mMovableContentStartIndex:I

    .line 66
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSPanel;->createRegularTileLayout()Lcom/android/systemui/qs/MiuiQSPanel$QSTileLayout;

    .line 68
    move-result-object p2

    .line 71
    iput-object p2, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mRegularTileLayout:Lcom/android/systemui/qs/MiuiQSPanel$QSTileLayout;

    .line 72
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSPanel;->addSecurityFooter()V

    .line 74
    iget-object p2, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mRegularTileLayout:Lcom/android/systemui/qs/MiuiQSPanel$QSTileLayout;

    .line 77
    instance-of p3, p2, Lcom/android/systemui/qs/MiuiPagedTileLayout;

    .line 79
    if-eqz p3, :cond_0

    .line 81
    new-instance p3, Lcom/android/systemui/qs/MiuiQSTileRevealController;

    .line 83
    check-cast p2, Lcom/android/systemui/qs/MiuiPagedTileLayout;

    .line 85
    invoke-direct {p3, p1, p0, p2}, Lcom/android/systemui/qs/MiuiQSTileRevealController;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/MiuiQSPanel;Lcom/android/systemui/qs/MiuiPagedTileLayout;)V

    .line 87
    iput-object p3, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mQsTileRevealController:Lcom/android/systemui/qs/MiuiQSTileRevealController;

    .line 90
    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mListening:Z

    .line 92
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSPanel;->getDumpableTag()Ljava/lang/String;

    .line 94
    move-result-object p2

    .line 97
    iget-object p3, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mCachedSpecs:Ljava/lang/String;

    .line 98
    invoke-virtual {p5, p2, p3, p1}, Lcom/android/systemui/qs/logging/QSLogger;->logAllTilesChangeListening(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 100
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSPanel;->updateResources()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    return-void

    .line 106
    :catch_0
    move-exception p0

    .line 107
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 108
    const-string p2, "MiuiQSPanel constructor error."

    .line 110
    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    throw p1
    .line 115
.end method

.method private getTilesSpecs()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mRecords:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    .line 4
    move-result-object p0

    .line 7
    new-instance v0, Lcom/android/systemui/qs/MiuiQSPanel$$ExternalSyntheticLambda0;

    .line 8
    invoke-direct {v0}, Lcom/android/systemui/qs/MiuiQSPanel$$ExternalSyntheticLambda0;-><init>()V

    .line 10
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 13
    move-result-object p0

    .line 16
    const-string v0, ","

    .line 17
    invoke-static {v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    .line 19
    move-result-object v0

    .line 22
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 23
    move-result-object p0

    .line 26
    check-cast p0, Ljava/lang/String;

    .line 27
    return-object p0
    .line 29
.end method


# virtual methods
.method public addSecurityFooter()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/qs/MiuiQSSecurityFooter;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mContext:Landroid/content/Context;

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/MiuiQSSecurityFooter;-><init>(Lcom/android/systemui/qs/MiuiQSPanel;Landroid/content/Context;)V

    .line 6
    iput-object v0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mSecurityFooter:Lcom/android/systemui/qs/MiuiQSSecurityFooter;

    .line 9
    return-void
    .line 11
.end method

.method public closePanelEvent()Lcom/android/systemui/qs/QSEvent;
    .locals 0

    .line 1
    sget-object p0, Lcom/android/systemui/qs/QSEvent;->QS_PANEL_COLLAPSED:Lcom/android/systemui/qs/QSEvent;

    .line 2
    return-object p0
    .line 4
.end method

.method public createRegularTileLayout()Lcom/android/systemui/qs/MiuiQSPanel$QSTileLayout;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mRegularTileLayout:Lcom/android/systemui/qs/MiuiQSPanel$QSTileLayout;

    .line 2
    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mContext:Landroid/content/Context;

    .line 6
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    move-result-object v0

    .line 11
    const v1, 0x7f0d01d1    # @layout/miui_qs_paged_tile_layout 'res/layout/miui_qs_paged_tile_layout.xml'

    .line 12
    const/4 v2, 0x0

    .line 15
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 16
    move-result-object v0

    .line 19
    check-cast v0, Lcom/android/systemui/qs/MiuiQSPanel$QSTileLayout;

    .line 20
    iput-object v0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mRegularTileLayout:Lcom/android/systemui/qs/MiuiQSPanel$QSTileLayout;

    .line 22
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mRegularTileLayout:Lcom/android/systemui/qs/MiuiQSPanel$QSTileLayout;

    .line 24
    return-object p0
    .line 26
.end method

.method public drawTile(Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 0

    .line 1
    iget-object p0, p1, Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    .line 2
    invoke-virtual {p0, p2}, Lcom/android/systemui/plugins/qs/QSTileView;->onStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    .line 4
    return-void
    .line 7
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

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
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mRecords:Ljava/util/ArrayList;

    .line 24
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object p0

    .line 29
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 39
    check-cast v0, Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;

    .line 40
    iget-object v1, v0, Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 42
    instance-of v1, v1, Lcom/android/systemui/Dumpable;

    .line 44
    if-eqz v1, :cond_0

    .line 46
    const-string v1, "    "

    .line 48
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 50
    iget-object v2, v0, Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 53
    check-cast v2, Lcom/android/systemui/Dumpable;

    .line 55
    invoke-interface {v2, p1, p2}, Lcom/android/systemui/Dumpable;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 60
    iget-object v0, v0, Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    .line 63
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->toString()Ljava/lang/String;

    .line 65
    move-result-object v0

    .line 68
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 69
    goto :goto_0

    .line 72
    :cond_1
    return-void
    .line 73
.end method

.method public getDumpableTag()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "QSPanel"

    .line 2
    return-object p0
    .line 4
.end method

.method public getGridHeight()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public getHost()Lcom/android/systemui/qs/QSTileHost;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 2
    return-object p0
    .line 4
.end method

.method public getQsTileRevealController()Lcom/android/systemui/qs/MiuiQSTileRevealController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mQsTileRevealController:Lcom/android/systemui/qs/MiuiQSTileRevealController;

    .line 2
    return-object p0
    .line 4
.end method

.method public getSecurityFooter()Lcom/android/systemui/qs/MiuiQSSecurityFooter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mSecurityFooter:Lcom/android/systemui/qs/MiuiQSSecurityFooter;

    .line 2
    return-object p0
    .line 4
.end method

.method public getTileCallbackType()I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method

.method public getTileLayout()Lcom/android/systemui/qs/MiuiQSPanel$QSTileLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mTileLayout:Lcom/android/systemui/qs/MiuiQSPanel$QSTileLayout;

    .line 2
    return-object p0
    .line 4
.end method

.method public final handleShowDetailImpl(Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;ZII)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    move-object v1, p1

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    move-object v1, v0

    .line 7
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mDetailRecord:Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;

    .line 8
    if-ne v1, v2, :cond_1

    .line 10
    goto :goto_2

    .line 12
    :cond_1
    iput-object v1, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mDetailRecord:Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;

    .line 13
    instance-of v2, v1, Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;

    .line 15
    const/4 v3, 0x1

    .line 17
    if-eqz v2, :cond_2

    .line 18
    iget-boolean v1, v1, Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;->scanState:Z

    .line 20
    if-eqz v1, :cond_2

    .line 22
    move v1, v3

    .line 24
    goto :goto_1

    .line 25
    :cond_2
    const/4 v1, 0x0

    .line 26
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mCallback:Lcom/android/systemui/qs/MiuiQSDetail$Callback;

    .line 27
    if-eqz v2, :cond_3

    .line 29
    check-cast v2, Lcom/android/systemui/qs/MiuiQSDetail$1;

    .line 31
    new-instance v4, Lcom/android/systemui/qs/MiuiQSDetail$1$$ExternalSyntheticLambda0;

    .line 33
    invoke-direct {v4, v2, v1, v3}, Lcom/android/systemui/qs/MiuiQSDetail$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/MiuiQSDetail$1;ZI)V

    .line 35
    iget-object v1, v2, Lcom/android/systemui/qs/MiuiQSDetail$1;->this$0:Lcom/android/systemui/qs/MiuiQSDetail;

    .line 38
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 40
    :cond_3
    :goto_2
    if-eqz p2, :cond_4

    .line 43
    iget-object v0, p1, Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;->detailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 45
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mCallback:Lcom/android/systemui/qs/MiuiQSDetail$Callback;

    .line 47
    if-eqz p0, :cond_5

    .line 49
    check-cast p0, Lcom/android/systemui/qs/MiuiQSDetail$1;

    .line 51
    new-instance p1, Lcom/android/systemui/qs/MiuiQSDetail$1$$ExternalSyntheticLambda1;

    .line 53
    invoke-direct {p1, p0, v0, p3, p4}, Lcom/android/systemui/qs/MiuiQSDetail$1$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/MiuiQSDetail$1;Lcom/android/systemui/plugins/qs/DetailAdapter;II)V

    .line 55
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSDetail$1;->this$0:Lcom/android/systemui/qs/MiuiQSDetail;

    .line 58
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 60
    :cond_5
    return-void
    .line 63
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 2
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    .line 5
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    .line 11
    const-string v1, "qs_show_brightness"

    .line 13
    filled-new-array {v1}, [Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 18
    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 22
    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    .line 26
    move-result-object v0

    .line 29
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/MiuiQSPanel;->setTiles(Ljava/util/Collection;)V

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    .line 33
    if-eqz v0, :cond_1

    .line 35
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirrorListeners:Landroid/util/ArraySet;

    .line 40
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 45
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSPanel;->getDumpableTag()Ljava/lang/String;

    .line 47
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 51
    return-void
    .line 54
.end method

.method public final onBrightnessMirrorReinflated()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mSecurityFooter:Lcom/android/systemui/qs/MiuiQSSecurityFooter;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, v0, Lcom/android/systemui/qs/MiuiQSSecurityFooter;->mFooterText:Landroid/widget/TextView;

    .line 9
    const v1, 0x7f071005    # @dimen/qs_tile_text_size '11.64sp'

    .line 11
    invoke-static {v0, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSPanel;->updateResources()V

    .line 17
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 20
    iget v0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mLastOrientation:I

    .line 22
    if-eq p1, v0, :cond_1

    .line 24
    iput p1, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mLastOrientation:I

    .line 26
    const/4 p1, 0x0

    .line 28
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/MiuiQSPanel;->switchTileLayout(Z)Z

    .line 29
    :cond_1
    return-void
    .line 32
.end method

.method public onDetachedFromWindow()V
    .locals 3

    .line 1
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    .line 2
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    .line 8
    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    .line 10
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 13
    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/QSTileHost;->removeCallback(Lcom/android/systemui/plugins/miui/qs/MiuiQSHost$Callback;)V

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mTileLayout:Lcom/android/systemui/qs/MiuiQSPanel$QSTileLayout;

    .line 20
    if-eqz v0, :cond_1

    .line 22
    const/4 v1, 0x0

    .line 24
    invoke-interface {v0, v1}, Lcom/android/systemui/qs/MiuiQSPanel$QSTileLayout;->setListening(Z)V

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mRecords:Ljava/util/ArrayList;

    .line 28
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 30
    move-result-object v0

    .line 33
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    move-result v1

    .line 37
    if-eqz v1, :cond_2

    .line 38
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    move-result-object v1

    .line 43
    check-cast v1, Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;

    .line 44
    iget-object v1, v1, Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 46
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSPanel;->getTileCallbackType()I

    .line 48
    move-result v2

    .line 51
    invoke-interface {v1, v2}, Lcom/android/systemui/plugins/qs/QSTile;->removeCallbacksByType(I)V

    .line 52
    goto :goto_0

    .line 55
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mRecords:Ljava/util/ArrayList;

    .line 56
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 58
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    .line 61
    if-eqz v0, :cond_3

    .line 63
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->removeCallback(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;)V

    .line 65
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 68
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSPanel;->getDumpableTag()Ljava/lang/String;

    .line 70
    move-result-object v1

    .line 73
    invoke-virtual {v0, v1}, Lcom/android/systemui/dump/DumpManager;->unregisterDumpable(Ljava/lang/String;)V

    .line 74
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 77
    return-void
    .line 80
.end method

.method public final onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 2
    const v0, 0x7f0a075d    # @id/qs_footer

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mFooter:Landroid/view/View;

    .line 12
    const/4 v0, 0x1

    .line 14
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/MiuiQSPanel;->switchTileLayout(Z)Z

    .line 15
    return-void
    .line 18
.end method

.method public final onMeasure(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mTileLayout:Lcom/android/systemui/qs/MiuiQSPanel$QSTileLayout;

    .line 2
    instance-of v1, v0, Lcom/android/systemui/qs/MiuiPagedTileLayout;

    .line 4
    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mFooterPageIndicator:Lcom/android/systemui/qs/MiuiPageIndicator;

    .line 8
    if-eqz v1, :cond_0

    .line 10
    check-cast v0, Lcom/android/systemui/qs/MiuiPagedTileLayout;

    .line 12
    invoke-virtual {v0}, Lcom/android/systemui/qs/MiuiPagedTileLayout;->getNumPages()I

    .line 14
    move-result v0

    .line 17
    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/MiuiPageIndicator;->setNumPages(I)V

    .line 18
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 21
    move-result p2

    .line 24
    const/16 v0, 0x2710

    .line 25
    rsub-int p2, p2, 0x2710

    .line 27
    const/high16 v1, 0x40000000    # 2.0f

    .line 29
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 31
    move-result v0

    .line 34
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mTileLayout:Lcom/android/systemui/qs/MiuiQSPanel$QSTileLayout;

    .line 35
    check-cast v1, Lcom/android/systemui/qs/MiuiPagedTileLayout;

    .line 37
    invoke-virtual {v1, p2}, Lcom/android/systemui/qs/MiuiPagedTileLayout;->setExcessHeight(I)V

    .line 39
    move p2, v0

    .line 42
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 43
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    .line 46
    move-result p1

    .line 49
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    .line 50
    move-result p2

    .line 53
    add-int/2addr p2, p1

    .line 54
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 55
    move-result p1

    .line 58
    const/4 v0, 0x0

    .line 59
    :goto_0
    if-ge v0, p1, :cond_3

    .line 60
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 62
    move-result-object v1

    .line 65
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 66
    move-result v2

    .line 69
    const/16 v3, 0x8

    .line 70
    if-eq v2, v3, :cond_2

    .line 72
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 74
    move-result v2

    .line 77
    add-int/2addr v2, p2

    .line 78
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 79
    move-result-object p2

    .line 82
    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 83
    iget v1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 85
    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 87
    add-int/2addr v1, p2

    .line 89
    add-int/2addr v1, v2

    .line 90
    move p2, v1

    .line 91
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 92
    goto :goto_0

    .line 94
    :cond_3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    .line 95
    move-result p1

    .line 98
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    .line 99
    return-void
    .line 102
.end method

.method public final onTilesChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 2
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/MiuiQSPanel;->setTiles(Ljava/util/Collection;)V

    .line 8
    return-void
    .line 11
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public openPanelEvent()Lcom/android/systemui/qs/QSEvent;
    .locals 0

    .line 1
    sget-object p0, Lcom/android/systemui/qs/QSEvent;->QS_PANEL_EXPANDED:Lcom/android/systemui/qs/QSEvent;

    .line 2
    return-object p0
    .line 4
.end method

.method public final refreshAllTiles()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mRecords:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;

    .line 18
    iget-object v1, v1, Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 20
    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QSTile;->refreshState()V

    .line 22
    goto :goto_0

    .line 25
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mSecurityFooter:Lcom/android/systemui/qs/MiuiQSSecurityFooter;

    .line 26
    if-eqz p0, :cond_1

    .line 28
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSSecurityFooter;->mHandler:Lcom/android/systemui/qs/MiuiQSSecurityFooter$H;

    .line 30
    const/4 v0, 0x1

    .line 32
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 33
    :cond_1
    return-void
    .line 36
.end method

.method public setBrightnessMirror(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->removeCallback(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;)V

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    .line 9
    if-eqz p1, :cond_1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirrorListeners:Landroid/util/ArraySet;

    .line 16
    invoke-virtual {p1, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 18
    :cond_1
    return-void
    .line 21
.end method

.method public setCallback(Lcom/android/systemui/qs/MiuiQSDetail$Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mCallback:Lcom/android/systemui/qs/MiuiQSDetail$Callback;

    .line 2
    return-void
    .line 4
.end method

.method public setContentMargins(II)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mVisualTilePadding:I

    .line 2
    sub-int/2addr p1, v0

    .line 4
    sub-int/2addr p2, v0

    .line 5
    iput p1, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mVisualMarginStart:I

    .line 6
    iput p2, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mVisualMarginEnd:I

    .line 8
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mTileLayout:Lcom/android/systemui/qs/MiuiQSPanel$QSTileLayout;

    .line 10
    check-cast v0, Landroid/view/View;

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 14
    move-result-object v1

    .line 17
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 18
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 20
    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 26
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSPanel;->updateFooterMargin()V

    .line 29
    return-void
    .line 32
.end method

.method public setExpanded(Z)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mExpanded:Z

    .line 2
    if-ne v0, p1, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    .line 7
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSPanel;->getDumpableTag()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/qs/logging/QSLogger;->logPanelExpanded(Ljava/lang/String;Z)V

    .line 13
    iput-boolean p1, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mExpanded:Z

    .line 16
    const/4 v0, 0x0

    .line 18
    if-nez p1, :cond_1

    .line 19
    iget-object p1, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mTileLayout:Lcom/android/systemui/qs/MiuiQSPanel$QSTileLayout;

    .line 21
    instance-of v1, p1, Lcom/android/systemui/qs/MiuiPagedTileLayout;

    .line 23
    if-eqz v1, :cond_1

    .line 25
    check-cast p1, Lcom/android/systemui/qs/MiuiPagedTileLayout;

    .line 27
    invoke-virtual {p1, v0, v0}, Lcom/android/systemui/qs/MiuiPagedTileLayout;->setCurrentItem(IZ)V

    .line 29
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 32
    const/16 v1, 0x6f

    .line 34
    iget-boolean v2, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mExpanded:Z

    .line 36
    invoke-virtual {p1, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->visibility(IZ)V

    .line 38
    iget-boolean p1, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mExpanded:Z

    .line 41
    const/4 v1, 0x1

    .line 43
    if-nez p1, :cond_3

    .line 44
    iget-object p1, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 46
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSPanel;->closePanelEvent()Lcom/android/systemui/qs/QSEvent;

    .line 48
    move-result-object v2

    .line 51
    invoke-interface {p1, v2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 52
    iget-object p1, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mCustomizePanel:Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;

    .line 55
    if-eqz p1, :cond_2

    .line 57
    invoke-virtual {p1, v1}, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;->hide(Z)V

    .line 59
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mDetailRecord:Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;

    .line 62
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mHandler:Lcom/android/systemui/qs/MiuiQSPanel$H;

    .line 64
    invoke-virtual {p0, v1, v0, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 66
    move-result-object p0

    .line 69
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 70
    goto :goto_1

    .line 73
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 74
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSPanel;->openPanelEvent()Lcom/android/systemui/qs/QSEvent;

    .line 76
    move-result-object v2

    .line 79
    invoke-interface {p1, v2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 80
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mRecords:Ljava/util/ArrayList;

    .line 83
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 85
    move-result p1

    .line 88
    if-ge v0, p1, :cond_4

    .line 89
    iget-object p1, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mRecords:Ljava/util/ArrayList;

    .line 91
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 93
    move-result-object p1

    .line 96
    check-cast p1, Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;

    .line 97
    iget-object p1, p1, Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 99
    iget-object v2, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 101
    new-instance v3, Landroid/metrics/LogMaker;

    .line 103
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/QSTile;->getMetricsCategory()I

    .line 105
    move-result v4

    .line 108
    invoke-direct {v3, v4}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 109
    invoke-virtual {v3, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 112
    move-result-object v3

    .line 115
    invoke-interface {p1, v3}, Lcom/android/systemui/plugins/qs/QSTile;->populate(Landroid/metrics/LogMaker;)Landroid/metrics/LogMaker;

    .line 116
    move-result-object p1

    .line 119
    invoke-virtual {v2, p1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 120
    add-int/lit8 v0, v0, 0x1

    .line 123
    goto :goto_0

    .line 125
    :cond_4
    :goto_1
    return-void
    .line 126
.end method

.method public setFooterPageIndicator(Lcom/android/systemui/qs/MiuiPageIndicator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mRegularTileLayout:Lcom/android/systemui/qs/MiuiQSPanel$QSTileLayout;

    .line 2
    instance-of v1, v0, Lcom/android/systemui/qs/MiuiPagedTileLayout;

    .line 4
    if-eqz v1, :cond_0

    .line 6
    iput-object p1, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mFooterPageIndicator:Lcom/android/systemui/qs/MiuiPageIndicator;

    .line 8
    instance-of p0, v0, Lcom/android/systemui/qs/MiuiPagedTileLayout;

    .line 10
    if-eqz p0, :cond_0

    .line 12
    if-eqz p1, :cond_0

    .line 14
    check-cast v0, Lcom/android/systemui/qs/MiuiPagedTileLayout;

    .line 16
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/MiuiPagedTileLayout;->setPageIndicator(Lcom/android/systemui/qs/MiuiPageIndicator;)V

    .line 18
    :cond_0
    return-void
    .line 21
.end method

.method public setHeaderContainer(Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mHeaderContainer:Landroid/view/ViewGroup;

    .line 2
    return-void
    .line 4
.end method

.method public setHost(Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 2
    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSTileHost;->addCallback(Lcom/android/systemui/plugins/miui/qs/MiuiQSHost$Callback;)V

    .line 4
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 7
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    .line 9
    move-result-object v0

    .line 12
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/MiuiQSPanel;->setTiles(Ljava/util/Collection;)V

    .line 13
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mSecurityFooter:Lcom/android/systemui/qs/MiuiQSSecurityFooter;

    .line 16
    if-eqz v0, :cond_0

    .line 18
    iput-object p1, v0, Lcom/android/systemui/qs/MiuiQSSecurityFooter;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 20
    :cond_0
    iput-object p2, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mCustomizePanel:Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;

    .line 22
    return-void
    .line 24
.end method

.method public setListening(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mListening:Z

    .line 3
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mTileLayout:Lcom/android/systemui/qs/MiuiQSPanel$QSTileLayout;

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSPanel;->getDumpableTag()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mCachedSpecs:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/systemui/qs/logging/QSLogger;->logAllTilesChangeListening(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 5
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mTileLayout:Lcom/android/systemui/qs/MiuiQSPanel$QSTileLayout;

    invoke-interface {v0, p1}, Lcom/android/systemui/qs/MiuiQSPanel$QSTileLayout;->setListening(Z)V

    .line 6
    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mListening:Z

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSPanel;->refreshAllTiles()V

    :cond_2
    return-void
.end method

.method public setListening(ZZ)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 8
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/MiuiQSPanel;->setListening(Z)V

    .line 9
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mSecurityFooter:Lcom/android/systemui/qs/MiuiQSSecurityFooter;

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    .line 10
    iget-object p1, p0, Lcom/android/systemui/qs/MiuiQSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 11
    iget-object p2, p0, Lcom/android/systemui/qs/MiuiQSSecurityFooter;->mCallback:Lcom/android/systemui/qs/MiuiQSSecurityFooter$Callback;

    check-cast p1, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 12
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSSecurityFooter;->mHandler:Lcom/android/systemui/qs/MiuiQSSecurityFooter$H;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 13
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/MiuiQSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 14
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSSecurityFooter;->mCallback:Lcom/android/systemui/qs/MiuiQSSecurityFooter$Callback;

    check-cast p1, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->removeCallback(Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setMediaVisibilityChangedListener(Ljava/util/function/Consumer;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setPageListener(Lcom/android/systemui/qs/MiuiPagedTileLayout$PageListener;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mTileLayout:Lcom/android/systemui/qs/MiuiQSPanel$QSTileLayout;

    .line 2
    instance-of v0, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    check-cast p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/MiuiPagedTileLayout;->setPageListener(Lcom/android/systemui/qs/MiuiPagedTileLayout$PageListener;)V

    .line 10
    :cond_0
    return-void
    .line 13
.end method

.method public setTiles(Ljava/util/Collection;)V
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 2
    iget-boolean v0, v0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->useControlCenter:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/MiuiQSPanel;->setTiles(Ljava/util/Collection;Z)V

    :cond_0
    return-void
.end method

.method public setTiles(Ljava/util/Collection;Z)V
    .locals 7

    if-nez p2, :cond_4

    .line 4
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mQsTileRevealController:Lcom/android/systemui/qs/MiuiQSTileRevealController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 6
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/plugins/qs/QSTile;

    .line 7
    invoke-interface {v3}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_0
    sget-object v2, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    iget-object v3, v0, Lcom/android/systemui/qs/MiuiQSTileRevealController;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/android/systemui/Prefs;->getStringSet(Landroid/content/Context;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    .line 9
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_3

    .line 10
    iget-object v5, v0, Lcom/android/systemui/qs/MiuiQSTileRevealController;->mQSPanel:Lcom/android/systemui/qs/MiuiQSPanel;

    iget-object v5, v5, Lcom/android/systemui/qs/MiuiQSPanel;->mCustomizePanel:Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;

    if-eqz v5, :cond_1

    .line 11
    iget-object v5, v5, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 12
    check-cast v5, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;

    invoke-virtual {v5}, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->isCustomizing()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    move v5, v6

    :goto_1
    if-eqz v5, :cond_2

    goto :goto_2

    .line 13
    :cond_2
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->removeAll(Ljava/util/Collection;)Z

    .line 14
    iget-object v0, v0, Lcom/android/systemui/qs/MiuiQSTileRevealController;->mTilesToReveal:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    goto :goto_3

    .line 15
    :cond_3
    :goto_2
    new-instance v0, Landroid/util/ArraySet;

    .line 16
    invoke-static {v3, v2}, Lcom/android/systemui/Prefs;->getStringSet(Landroid/content/Context;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 17
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 18
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 19
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "QsTileSpecsRevealed"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 20
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;

    .line 21
    iget-object v2, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mTileLayout:Lcom/android/systemui/qs/MiuiQSPanel$QSTileLayout;

    invoke-interface {v2, v1}, Lcom/android/systemui/qs/MiuiQSPanel$QSTileLayout;->removeTile(Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;)V

    .line 22
    iget-object v2, v1, Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    iget-object v1, v1, Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;->callback:Lcom/android/systemui/qs/MiuiQSPanel$1;

    invoke-interface {v2, v1}, Lcom/android/systemui/plugins/qs/QSTile;->removeCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V

    goto :goto_4

    .line 23
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const-string v0, ""

    .line 24
    iput-object v0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mCachedSpecs:Ljava/lang/String;

    .line 25
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile;

    .line 26
    new-instance v1, Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;

    invoke-direct {v1}, Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;-><init>()V

    .line 27
    iput-object v0, v1, Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 28
    iget-object v2, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v0, p2}, Lcom/android/systemui/qs/QSTileHost;->createTileView(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSTile;Z)Lcom/android/systemui/plugins/qs/QSTileView;

    move-result-object v0

    .line 29
    iput-object v0, v1, Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    .line 30
    new-instance v0, Lcom/android/systemui/qs/MiuiQSPanel$1;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/MiuiQSPanel$1;-><init>(Lcom/android/systemui/qs/MiuiQSPanel;Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;)V

    .line 31
    iget-object v2, v1, Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v2, v0}, Lcom/android/systemui/plugins/qs/QSTile;->addCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V

    .line 32
    iput-object v0, v1, Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;->callback:Lcom/android/systemui/qs/MiuiQSPanel$1;

    .line 33
    iget-object v0, v1, Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    iget-object v2, v1, Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-virtual {v0, v2}, Lcom/android/systemui/plugins/qs/QSTileView;->init(Lcom/android/systemui/plugins/qs/QSTile;)V

    .line 34
    iget-object v0, v1, Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QSTile;->refreshState()V

    .line 35
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    invoke-direct {p0}, Lcom/android/systemui/qs/MiuiQSPanel;->getTilesSpecs()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mCachedSpecs:Ljava/lang/String;

    .line 37
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mTileLayout:Lcom/android/systemui/qs/MiuiQSPanel$QSTileLayout;

    if-eqz v0, :cond_6

    .line 38
    invoke-interface {v0, v1}, Lcom/android/systemui/qs/MiuiQSPanel$QSTileLayout;->addTile(Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;)V

    goto :goto_5

    :cond_7
    return-void
.end method

.method public shouldShowDetail()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mExpanded:Z

    .line 2
    return p0
    .line 4
.end method

.method public final switchTileLayout(Z)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_5

    .line 3
    iget-object p1, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mRegularTileLayout:Lcom/android/systemui/qs/MiuiQSPanel$QSTileLayout;

    .line 5
    move-object v1, p1

    .line 7
    check-cast v1, Landroid/view/View;

    .line 8
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 10
    iget v2, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mMovableContentStartIndex:I

    .line 13
    invoke-virtual {p0, v2, v1, p0}, Lcom/android/systemui/qs/MiuiQSPanel;->switchToParent(ILandroid/view/View;Landroid/view/ViewGroup;)V

    .line 15
    const/4 v1, 0x1

    .line 18
    add-int/2addr v2, v1

    .line 19
    iget-object v3, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mSecurityFooter:Lcom/android/systemui/qs/MiuiQSSecurityFooter;

    .line 20
    if-eqz v3, :cond_0

    .line 22
    iget-object v3, v3, Lcom/android/systemui/qs/MiuiQSSecurityFooter;->mRootView:Landroid/view/View;

    .line 24
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 26
    move-result-object v4

    .line 29
    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 30
    const/4 v5, -0x2

    .line 32
    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 33
    const/4 v5, 0x0

    .line 35
    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 36
    invoke-virtual {p0, v2, v3, p0}, Lcom/android/systemui/qs/MiuiQSPanel;->switchToParent(ILandroid/view/View;Landroid/view/ViewGroup;)V

    .line 38
    add-int/lit8 v2, v2, 0x1

    .line 41
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mFooter:Landroid/view/View;

    .line 46
    if-eqz v3, :cond_1

    .line 48
    invoke-virtual {p0, v2, v3, p0}, Lcom/android/systemui/qs/MiuiQSPanel;->switchToParent(ILandroid/view/View;Landroid/view/ViewGroup;)V

    .line 50
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mTileLayout:Lcom/android/systemui/qs/MiuiQSPanel$QSTileLayout;

    .line 53
    if-eqz v2, :cond_2

    .line 55
    invoke-interface {v2, v0}, Lcom/android/systemui/qs/MiuiQSPanel$QSTileLayout;->setListening(Z)V

    .line 57
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mRecords:Ljava/util/ArrayList;

    .line 60
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 62
    move-result-object v0

    .line 65
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    move-result v2

    .line 69
    if-eqz v2, :cond_2

    .line 70
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    move-result-object v2

    .line 75
    check-cast v2, Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;

    .line 76
    iget-object v3, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mTileLayout:Lcom/android/systemui/qs/MiuiQSPanel$QSTileLayout;

    .line 78
    invoke-interface {v3, v2}, Lcom/android/systemui/qs/MiuiQSPanel$QSTileLayout;->removeTile(Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;)V

    .line 80
    iget-object v3, v2, Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 83
    iget-object v2, v2, Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;->callback:Lcom/android/systemui/qs/MiuiQSPanel$1;

    .line 85
    invoke-interface {v3, v2}, Lcom/android/systemui/plugins/qs/QSTile;->removeCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V

    .line 87
    goto :goto_0

    .line 90
    :cond_2
    iput-object p1, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mTileLayout:Lcom/android/systemui/qs/MiuiQSPanel$QSTileLayout;

    .line 91
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 93
    if-eqz v0, :cond_3

    .line 95
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    .line 97
    move-result-object v0

    .line 100
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/MiuiQSPanel;->setTiles(Ljava/util/Collection;)V

    .line 101
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mListening:Z

    .line 104
    invoke-interface {p1, v0}, Lcom/android/systemui/qs/MiuiQSPanel$QSTileLayout;->setListening(Z)V

    .line 106
    instance-of v0, p0, Lcom/android/systemui/qs/MiuiQuickQSPanel;

    .line 109
    xor-int/2addr v0, v1

    .line 111
    if-eqz v0, :cond_4

    .line 112
    invoke-interface {p1, v1}, Lcom/android/systemui/qs/MiuiQSPanel$QSTileLayout;->setMinRows(I)Z

    .line 114
    const/16 v0, 0x64

    .line 117
    invoke-interface {p1, v0}, Lcom/android/systemui/qs/MiuiQSPanel$QSTileLayout;->setMaxColumns(I)Z

    .line 119
    :cond_4
    iget p1, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mVisualMarginEnd:I

    .line 122
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mTileLayout:Lcom/android/systemui/qs/MiuiQSPanel$QSTileLayout;

    .line 124
    check-cast v0, Landroid/view/View;

    .line 126
    iget v2, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mVisualMarginStart:I

    .line 128
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 130
    move-result-object v3

    .line 133
    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 134
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 136
    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 139
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSPanel;->updateFooterMargin()V

    .line 145
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSPanel;->updatePadding()V

    .line 148
    return v1

    .line 151
    :cond_5
    return v0
    .line 152
.end method

.method public final switchToParent(ILandroid/view/View;Landroid/view/ViewGroup;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 2
    move-result-object p0

    .line 5
    check-cast p0, Landroid/view/ViewGroup;

    .line 6
    if-ne p0, p3, :cond_0

    .line 8
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 10
    move-result v0

    .line 13
    if-eq v0, p1, :cond_2

    .line 14
    :cond_0
    if-eqz p0, :cond_1

    .line 16
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 18
    :cond_1
    invoke-virtual {p3, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 21
    :cond_2
    return-void
    .line 24
.end method

.method public final updateFooterMargin()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mFooter:Landroid/view/View;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    move-result-object v1

    .line 9
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 10
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 13
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mFooterPageIndicator:Lcom/android/systemui/qs/MiuiPageIndicator;

    .line 22
    if-eqz p0, :cond_0

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 26
    move-result-object v0

    .line 29
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 30
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 32
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 35
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    :cond_0
    return-void
    .line 41
.end method

.method public updatePadding()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public updateResources()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object v0

    .line 5
    const v1, 0x7f070f80    # @dimen/qs_detail_margin_top '@dimen/notch_expanded_header_height'

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 9
    move-result v0

    .line 12
    iput v0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mEditTopOffset:I

    .line 13
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 15
    move-result-object v0

    .line 18
    const v1, 0x7f070fe5    # @dimen/qs_quick_tile_size '60.0dp'

    .line 19
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 22
    move-result v0

    .line 25
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 26
    move-result-object v1

    .line 29
    const v2, 0x7f070fef    # @dimen/qs_tile_background_size '56.0dp'

    .line 30
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 33
    move-result v1

    .line 36
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 37
    move-result-object v2

    .line 40
    const v3, 0x7f070f9a    # @dimen/qs_footer_horizontal_margin '22.0dp'

    .line 41
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 44
    move-result v2

    .line 47
    iput v2, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mFooterMarginStartHorizontal:I

    .line 48
    sub-int/2addr v0, v1

    .line 50
    int-to-float v0, v0

    .line 51
    const/high16 v1, 0x40000000    # 2.0f

    .line 52
    div-float/2addr v0, v1

    .line 54
    float-to-int v0, v0

    .line 55
    iput v0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mVisualTilePadding:I

    .line 56
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSPanel;->updatePadding()V

    .line 58
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mRegularTileLayout:Lcom/android/systemui/qs/MiuiQSPanel$QSTileLayout;

    .line 61
    instance-of v1, v0, Lcom/android/systemui/qs/MiuiPagedTileLayout;

    .line 63
    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mFooterPageIndicator:Lcom/android/systemui/qs/MiuiPageIndicator;

    .line 67
    if-eqz v1, :cond_0

    .line 69
    check-cast v0, Lcom/android/systemui/qs/MiuiPagedTileLayout;

    .line 71
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/MiuiPagedTileLayout;->setPageIndicator(Lcom/android/systemui/qs/MiuiPageIndicator;)V

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mRecords:Ljava/util/ArrayList;

    .line 76
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 78
    move-result-object v0

    .line 81
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    move-result v1

    .line 85
    if-eqz v1, :cond_1

    .line 86
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    move-result-object v1

    .line 91
    check-cast v1, Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;

    .line 92
    iget-object v1, v1, Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 94
    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QSTile;->clearState()V

    .line 96
    goto :goto_0

    .line 99
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mListening:Z

    .line 100
    if-eqz v0, :cond_2

    .line 102
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSPanel;->refreshAllTiles()V

    .line 104
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mTileLayout:Lcom/android/systemui/qs/MiuiQSPanel$QSTileLayout;

    .line 107
    if-eqz p0, :cond_3

    .line 109
    invoke-interface {p0}, Lcom/android/systemui/qs/MiuiQSPanel$QSTileLayout;->updateResources()Z

    .line 111
    :cond_3
    return-void
    .line 114
.end method
