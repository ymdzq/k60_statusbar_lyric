.class public final synthetic Lcom/android/systemui/shade/transition/ScrimShadeTransitionController$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final synthetic $tmp0:Lcom/android/systemui/shade/transition/ScrimShadeTransitionController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/transition/ScrimShadeTransitionController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shade/transition/ScrimShadeTransitionController$2;->$tmp0:Lcom/android/systemui/shade/transition/ScrimShadeTransitionController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/transition/ScrimShadeTransitionController$2;->$tmp0:Lcom/android/systemui/shade/transition/ScrimShadeTransitionController;

    .line 2
    iget-boolean p2, p0, Lcom/android/systemui/shade/transition/ScrimShadeTransitionController;->inSplitShade:Z

    .line 4
    iget-object v0, p0, Lcom/android/systemui/shade/transition/ScrimShadeTransitionController;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 6
    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 8
    iget v0, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mUpcomingState:I

    .line 10
    if-nez v0, :cond_0

    .line 12
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    iget v1, p0, Lcom/android/systemui/shade/transition/ScrimShadeTransitionController;->splitShadeScrimTransitionDistance:I

    .line 17
    iget-object v2, p0, Lcom/android/systemui/shade/transition/ScrimShadeTransitionController;->currentPanelState:Ljava/lang/Integer;

    .line 19
    iget-object v3, p0, Lcom/android/systemui/shade/transition/ScrimShadeTransitionController;->lastExpansionFraction:Ljava/lang/Float;

    .line 21
    iget-object p0, p0, Lcom/android/systemui/shade/transition/ScrimShadeTransitionController;->lastExpansionEvent:Lcom/android/systemui/shade/ShadeExpansionChangeEvent;

    .line 23
    const-string v4, "\n                ScrimShadeTransitionController:\n                  Resources:\n                    inSplitShade: "

    .line 25
    const-string v5, "\n                    isScreenUnlocked: "

    .line 27
    const-string v6, "\n                    splitShadeScrimTransitionDistance: "

    .line 29
    invoke-static {v4, p2, v5, v0, v6}, Lcom/android/keyguard/MiuiLockPatternChecker$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    move-result-object p2

    .line 34
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    const-string v0, "\n                  State:\n                    currentPanelState: "

    .line 38
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    const-string v0, "\n                    lastExpansionFraction: "

    .line 46
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    const-string v0, "\n                    lastExpansionEvent: "

    .line 54
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    const-string p0, "\n            "

    .line 62
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object p0

    .line 70
    invoke-static {p0}, Lkotlin/text/StringsKt__IndentKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    move-result-object p0

    .line 74
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 75
    return-void
    .line 78
.end method
