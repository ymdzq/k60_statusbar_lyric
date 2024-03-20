.class public final synthetic Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda18;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda18;->f$0:Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda18;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda18;->f$0:Ljava/lang/Object;

    .line 8
    check-cast p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$3;

    .line 10
    invoke-static {p0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator$3;->$r8$lambda$giGfTdSO_rJ6ulWMRnh8h3As1IY(Lcom/android/wm/shell/sosc/SoScStageCoordinator$3;)V

    .line 12
    return-void

    .line 15
    :pswitch_1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda18;->f$0:Ljava/lang/Object;

    .line 16
    check-cast p0, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 18
    invoke-static {p0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->$r8$lambda$OgApGibBZD5gjmKY195zZdBm5MQ(Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    .line 20
    return-void

    .line 23
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda18;->f$0:Ljava/lang/Object;

    .line 24
    check-cast p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$8;

    .line 26
    invoke-static {p0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator$8;->$r8$lambda$vpTw1jIouzeEpBw_6V4HfJXtJAY(Lcom/android/wm/shell/sosc/SoScStageCoordinator$8;)V

    .line 28
    return-void

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
