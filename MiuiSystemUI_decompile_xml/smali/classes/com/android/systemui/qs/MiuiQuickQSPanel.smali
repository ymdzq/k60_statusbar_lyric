.class public Lcom/android/systemui/qs/MiuiQuickQSPanel;
.super Lcom/android/systemui/qs/MiuiQSPanel;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static sDefaultMaxTiles:I = 0x6


# instance fields
.field public mDisabledByPolicy:Z

.field public mMaxTiles:I

.field public final mNumTiles:Lcom/android/systemui/qs/MiuiQuickQSPanel$1;

.field public mQsAnimator:Lcom/android/systemui/qs/MiuiQSAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/controlcenter/policy/SecurityDialog;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/android/systemui/qs/MiuiQSPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/controlcenter/policy/SecurityDialog;)V

    .line 2
    new-instance p1, Lcom/android/systemui/qs/MiuiQuickQSPanel$1;

    .line 5
    invoke-direct {p1}, Lcom/android/systemui/qs/MiuiQuickQSPanel$1;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/android/systemui/qs/MiuiQuickQSPanel;->mNumTiles:Lcom/android/systemui/qs/MiuiQuickQSPanel$1;

    .line 10
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 12
    move-result-object p0

    .line 15
    const p1, 0x7f0b00fb    # @integer/quick_settings_qqs_count '5'

    .line 16
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 19
    move-result p0

    .line 22
    sput p0, Lcom/android/systemui/qs/MiuiQuickQSPanel;->sDefaultMaxTiles:I

    .line 23
    return-void
    .line 25
.end method

.method public static getDefaultMaxTiles()I
    .locals 1

    .line 1
    sget v0, Lcom/android/systemui/qs/MiuiQuickQSPanel;->sDefaultMaxTiles:I

    .line 2
    return v0
    .line 4
.end method


# virtual methods
.method public final addSecurityFooter()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final closePanelEvent()Lcom/android/systemui/qs/QSEvent;
    .locals 0

    .line 1
    sget-object p0, Lcom/android/systemui/qs/QSEvent;->QQS_PANEL_COLLAPSED:Lcom/android/systemui/qs/QSEvent;

    .line 2
    return-object p0
    .line 4
.end method

.method public final createRegularTileLayout()Lcom/android/systemui/qs/MiuiQSPanel$QSTileLayout;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/qs/MiuiQuickQSPanel$HeaderTileLayout;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mContext:Landroid/content/Context;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 6
    invoke-direct {v0, v1, p0}, Lcom/android/systemui/qs/MiuiQuickQSPanel$HeaderTileLayout;-><init>(Landroid/content/Context;Lcom/android/internal/logging/UiEventLogger;)V

    .line 8
    return-object v0
    .line 11
.end method

.method public final drawTile(Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 0

    .line 1
    instance-of p0, p2, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p2}, Lcom/android/systemui/plugins/qs/QSTile$State;->copy()Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 6
    move-result-object p0

    .line 9
    move-object p2, p0

    .line 10
    check-cast p2, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    .line 11
    const/4 p0, 0x0

    .line 13
    iput-boolean p0, p2, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityIn:Z

    .line 14
    iput-boolean p0, p2, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityOut:Z

    .line 16
    :cond_0
    iget-object p0, p1, Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    .line 18
    invoke-virtual {p0, p2}, Lcom/android/systemui/plugins/qs/QSTileView;->onStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    .line 20
    return-void
    .line 23
.end method

.method public getDumpableTag()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "QuickQSPanel"

    .line 2
    return-object p0
    .line 4
.end method

.method public getNumQuickTiles()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/qs/MiuiQuickQSPanel;->mMaxTiles:I

    .line 2
    return p0
    .line 4
.end method

.method public getTileCallbackType()I
    .locals 0

    .line 1
    const/4 p0, 0x4

    .line 2
    return p0
    .line 3
.end method

.method public final onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/systemui/qs/MiuiQSPanel;->onAttachedToWindow()V

    .line 2
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    .line 5
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    .line 11
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQuickQSPanel;->mNumTiles:Lcom/android/systemui/qs/MiuiQuickQSPanel$1;

    .line 13
    const-string/jumbo v1, "sysui_qqs_count"

    .line 15
    filled-new-array {v1}, [Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 21
    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 22
    return-void
    .line 25
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/systemui/qs/MiuiQSPanel;->onDetachedFromWindow()V

    .line 2
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    .line 5
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    .line 11
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQuickQSPanel;->mNumTiles:Lcom/android/systemui/qs/MiuiQuickQSPanel$1;

    .line 13
    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    .line 15
    return-void
    .line 18
.end method

.method public final onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    const-string p0, "qs_show_brightness"

    .line 2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    return-void
    .line 7
.end method

.method public final openPanelEvent()Lcom/android/systemui/qs/QSEvent;
    .locals 0

    .line 1
    sget-object p0, Lcom/android/systemui/qs/QSEvent;->QQS_PANEL_EXPANDED:Lcom/android/systemui/qs/QSEvent;

    .line 2
    return-object p0
    .line 4
.end method

.method public setHost(Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/systemui/qs/MiuiQSPanel;->setHost(Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;)V

    .line 2
    iget-object p1, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 5
    invoke-virtual {p1}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    .line 7
    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/MiuiQuickQSPanel;->setTiles(Ljava/util/Collection;)V

    .line 11
    return-void
    .line 14
.end method

.method public setMaxTiles(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/qs/MiuiQuickQSPanel;->mMaxTiles:I

    .line 2
    if-ne v0, p1, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/android/systemui/qs/MiuiQuickQSPanel;->mMaxTiles:I

    .line 7
    iget-object p1, p0, Lcom/android/systemui/qs/MiuiQuickQSPanel;->mQsAnimator:Lcom/android/systemui/qs/MiuiQSAnimator;

    .line 9
    if-eqz p1, :cond_1

    .line 11
    invoke-virtual {p1}, Lcom/android/systemui/qs/MiuiQSAnimator;->clearAnimationState()V

    .line 13
    invoke-virtual {p1}, Lcom/android/systemui/qs/MiuiQSAnimator;->miuiUpdateAnimators()V

    .line 16
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 19
    if-eqz p1, :cond_2

    .line 21
    invoke-virtual {p1}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    .line 23
    move-result-object p1

    .line 26
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/MiuiQuickQSPanel;->setTiles(Ljava/util/Collection;)V

    .line 27
    :cond_2
    return-void
    .line 30
.end method

.method public setQSPanel(Lcom/android/systemui/qs/MiuiQSPanel;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setQsAnimator(Lcom/android/systemui/qs/MiuiQSAnimator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/MiuiQuickQSPanel;->mQsAnimator:Lcom/android/systemui/qs/MiuiQSAnimator;

    .line 2
    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/android/systemui/qs/MiuiQSAnimator;->clearAnimationState()V

    .line 6
    invoke-virtual {p1}, Lcom/android/systemui/qs/MiuiQSAnimator;->miuiUpdateAnimators()V

    .line 9
    :cond_0
    return-void
    .line 12
.end method

.method public setTiles(Ljava/util/Collection;)V
    .locals 3

    .line 1
    const-class v0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 2
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 8
    iget-boolean v0, v0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->useControlCenter:Z

    .line 10
    if-eqz v0, :cond_0

    .line 12
    return-void

    .line 14
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object p1

    .line 23
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v1

    .line 27
    if-eqz v1, :cond_2

    .line 28
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 33
    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile;

    .line 34
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 39
    move-result v1

    .line 42
    iget v2, p0, Lcom/android/systemui/qs/MiuiQuickQSPanel;->mMaxTiles:I

    .line 43
    if-ne v1, v2, :cond_1

    .line 45
    :cond_2
    const/4 p1, 0x1

    .line 47
    invoke-super {p0, v0, p1}, Lcom/android/systemui/qs/MiuiQSPanel;->setTiles(Ljava/util/Collection;Z)V

    .line 48
    return-void
    .line 51
.end method

.method public setVisibility(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/qs/MiuiQuickQSPanel;->mDisabledByPolicy:Z

    .line 2
    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    .line 6
    move-result p1

    .line 9
    const/16 v0, 0x8

    .line 10
    if-ne p1, v0, :cond_0

    .line 12
    return-void

    .line 14
    :cond_0
    move p1, v0

    .line 15
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 16
    return-void
    .line 19
.end method

.method public final shouldShowDetail()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mExpanded:Z

    .line 2
    xor-int/lit8 p0, p0, 0x1

    .line 4
    return p0
    .line 6
.end method

.method public final updatePadding()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final updateResources()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object v0

    .line 5
    const v1, 0x7f0b00fb    # @integer/quick_settings_qqs_count '5'

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 9
    move-result v0

    .line 12
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/MiuiQuickQSPanel;->setMaxTiles(I)V

    .line 13
    return-void
    .line 16
.end method
