.class public final synthetic Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/sosc/SoScStageCoordinator;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda4;->f$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

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
    iget v0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda4;->f$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 8
    invoke-static {p0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->$r8$lambda$KMbM4emLxOaYKNG2hPgJSL3EltM(Lcom/android/wm/shell/sosc/SoScStageCoordinator;)V

    .line 10
    return-void

    .line 13
    :pswitch_1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda4;->f$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 14
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->onTransitionAnimationComplete()V

    .line 16
    return-void

    .line 19
    :pswitch_2
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda4;->f$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 20
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->onTransitionAnimationComplete()V

    .line 22
    return-void

    .line 25
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda4;->f$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 26
    invoke-static {p0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->$r8$lambda$jCDGOW4FMxmD3K6IB76uDceq59o(Lcom/android/wm/shell/sosc/SoScStageCoordinator;)V

    .line 28
    return-void

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
