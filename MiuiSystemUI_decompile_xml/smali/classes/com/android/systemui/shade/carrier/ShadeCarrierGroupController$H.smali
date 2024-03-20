.class public final Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$H;
.super Landroid/os/Handler;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mUpdateCarrierInfo:Ljava/util/function/Consumer;

.field public final mUpdateState:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$$ExternalSyntheticLambda1;Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$$ExternalSyntheticLambda2;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    iput-object p2, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$H;->mUpdateCarrierInfo:Ljava/util/function/Consumer;

    .line 5
    iput-object p3, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$H;->mUpdateState:Ljava/lang/Runnable;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    if-eqz v0, :cond_1

    .line 4
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 9
    goto :goto_0

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$H;->mUpdateState:Ljava/lang/Runnable;

    .line 13
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 15
    goto :goto_0

    .line 18
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$H;->mUpdateCarrierInfo:Ljava/util/function/Consumer;

    .line 19
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 21
    check-cast p1, Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;

    .line 23
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 25
    :goto_0
    return-void
    .line 28
.end method
