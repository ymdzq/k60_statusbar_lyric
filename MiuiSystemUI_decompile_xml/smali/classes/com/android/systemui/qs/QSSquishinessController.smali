.class public final Lcom/android/systemui/qs/QSSquishinessController;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final qsAnimator:Lcom/android/systemui/qs/QSAnimator;

.field public final qsPanelController:Lcom/android/systemui/qs/QSPanelController;

.field public final quickQSPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

.field public squishiness:F


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSAnimator;Lcom/android/systemui/qs/QSPanelController;Lcom/android/systemui/qs/QuickQSPanelController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/QSSquishinessController;->qsAnimator:Lcom/android/systemui/qs/QSAnimator;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/qs/QSSquishinessController;->qsPanelController:Lcom/android/systemui/qs/QSPanelController;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/qs/QSSquishinessController;->quickQSPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    .line 9
    const/high16 p1, 0x3f800000    # 1.0f

    .line 11
    iput p1, p0, Lcom/android/systemui/qs/QSSquishinessController;->squishiness:F

    .line 13
    return-void
    .line 15
.end method
