.class public final Lcom/android/systemui/shade/transition/ShadeTransitionController;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final context:Landroid/content/Context;

.field public currentPanelState:Ljava/lang/Integer;

.field public inSplitShade:Z

.field public lastShadeExpansionChangeEvent:Lcom/android/systemui/shade/ShadeExpansionChangeEvent;

.field public qs:Lcom/android/systemui/plugins/qs/QS;

.field public final scrimShadeTransitionController:Lcom/android/systemui/shade/transition/ScrimShadeTransitionController;

.field public shadeViewController:Lcom/android/systemui/shade/ShadeViewController;

.field public final statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/dump/DumpManager;Landroid/content/Context;Lcom/android/systemui/shade/transition/ScrimShadeTransitionController;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p4, p0, Lcom/android/systemui/shade/transition/ShadeTransitionController;->context:Landroid/content/Context;

    .line 5
    iput-object p5, p0, Lcom/android/systemui/shade/transition/ShadeTransitionController;->scrimShadeTransitionController:Lcom/android/systemui/shade/transition/ScrimShadeTransitionController;

    .line 7
    iput-object p6, p0, Lcom/android/systemui/shade/transition/ShadeTransitionController;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 9
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 11
    move-result-object p4

    .line 14
    const p6, 0x7f05006d    # @bool/config_use_split_notification_shade 'false'

    .line 15
    invoke-virtual {p4, p6}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 18
    move-result p4

    .line 21
    iput-boolean p4, p0, Lcom/android/systemui/shade/transition/ShadeTransitionController;->inSplitShade:Z

    .line 22
    new-instance p4, Lcom/android/systemui/shade/transition/ShadeTransitionController$1;

    .line 24
    invoke-direct {p4, p0}, Lcom/android/systemui/shade/transition/ShadeTransitionController$1;-><init>(Lcom/android/systemui/shade/transition/ShadeTransitionController;)V

    .line 26
    check-cast p1, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 29
    invoke-virtual {p1, p4}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 31
    new-instance p1, Lcom/android/systemui/shade/transition/ShadeTransitionController$currentState$1;

    .line 34
    invoke-direct {p1, p0}, Lcom/android/systemui/shade/transition/ShadeTransitionController$currentState$1;-><init>(Lcom/android/systemui/shade/transition/ShadeTransitionController;)V

    .line 36
    invoke-virtual {p2, p1}, Lcom/android/systemui/shade/ShadeExpansionStateManager;->addExpansionListener(Lcom/android/systemui/shade/ShadeExpansionListener;)Lcom/android/systemui/shade/ShadeExpansionChangeEvent;

    .line 39
    move-result-object p1

    .line 42
    iput-object p1, p0, Lcom/android/systemui/shade/transition/ShadeTransitionController;->lastShadeExpansionChangeEvent:Lcom/android/systemui/shade/ShadeExpansionChangeEvent;

    .line 43
    iput-object p1, p5, Lcom/android/systemui/shade/transition/ScrimShadeTransitionController;->lastExpansionEvent:Lcom/android/systemui/shade/ShadeExpansionChangeEvent;

    .line 45
    invoke-virtual {p5}, Lcom/android/systemui/shade/transition/ScrimShadeTransitionController;->onStateChanged()V

    .line 47
    new-instance p1, Lcom/android/systemui/shade/transition/ShadeTransitionController$2;

    .line 50
    invoke-direct {p1, p0}, Lcom/android/systemui/shade/transition/ShadeTransitionController$2;-><init>(Lcom/android/systemui/shade/transition/ShadeTransitionController;)V

    .line 52
    iget-object p2, p2, Lcom/android/systemui/shade/ShadeExpansionStateManager;->stateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 55
    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    new-instance p1, Lcom/android/systemui/shade/transition/ShadeTransitionController$3;

    .line 60
    invoke-direct {p1, p0}, Lcom/android/systemui/shade/transition/ShadeTransitionController$3;-><init>(Lcom/android/systemui/shade/transition/ShadeTransitionController;)V

    .line 62
    const-string p0, "ShadeTransitionController"

    .line 65
    invoke-virtual {p3, p0, p1}, Lcom/android/systemui/dump/DumpManager;->registerCriticalDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 67
    return-void
    .line 70
.end method
