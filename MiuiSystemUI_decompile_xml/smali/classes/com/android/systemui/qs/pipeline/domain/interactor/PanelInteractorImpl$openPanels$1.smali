.class public final Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractorImpl$openPanels$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractorImpl$openPanels$1;

.field public static final INSTANCE$1:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractorImpl$openPanels$1;

.field public static final INSTANCE$2:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractorImpl$openPanels$1;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractorImpl$openPanels$1;

    .line 2
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractorImpl$openPanels$1;-><init>(I)V

    .line 5
    sput-object v0, Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractorImpl$openPanels$1;->INSTANCE$1:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractorImpl$openPanels$1;

    .line 8
    new-instance v0, Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractorImpl$openPanels$1;

    .line 10
    const/4 v1, 0x2

    .line 12
    invoke-direct {v0, v1}, Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractorImpl$openPanels$1;-><init>(I)V

    .line 13
    sput-object v0, Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractorImpl$openPanels$1;->INSTANCE$2:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractorImpl$openPanels$1;

    .line 16
    new-instance v0, Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractorImpl$openPanels$1;

    .line 18
    const/4 v1, 0x0

    .line 20
    invoke-direct {v0, v1}, Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractorImpl$openPanels$1;-><init>(I)V

    .line 21
    sput-object v0, Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractorImpl$openPanels$1;->INSTANCE:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractorImpl$openPanels$1;

    .line 24
    return-void
    .line 26
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractorImpl$openPanels$1;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final accept(Lcom/android/systemui/statusbar/phone/CentralSurfaces;)V
    .locals 2

    iget p0, p0, Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractorImpl$openPanels$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    check-cast p1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->postAnimateCollapsePanels()V

    return-void

    .line 2
    :pswitch_1
    check-cast p1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 3
    iget-object p0, p1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mMessageRouter:Lcom/android/systemui/util/concurrency/MessageRouter;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    check-cast p0, Lcom/android/systemui/util/concurrency/MessageRouterImpl;

    const/16 p1, 0x3ea

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/util/concurrency/MessageRouterImpl;->sendMessageDelayed(IJ)V

    return-void

    .line 6
    :goto_0
    check-cast p1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 7
    iget-object p0, p1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    .line 8
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda2;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/shade/ShadeController;I)V

    iget-object p0, p1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    check-cast p0, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractorImpl$openPanels$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 9
    :pswitch_0
    check-cast p1, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractorImpl$openPanels$1;->accept(Lcom/android/systemui/statusbar/phone/CentralSurfaces;)V

    return-void

    .line 10
    :pswitch_1
    check-cast p1, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractorImpl$openPanels$1;->accept(Lcom/android/systemui/statusbar/phone/CentralSurfaces;)V

    return-void

    .line 11
    :goto_0
    check-cast p1, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractorImpl$openPanels$1;->accept(Lcom/android/systemui/statusbar/phone/CentralSurfaces;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
