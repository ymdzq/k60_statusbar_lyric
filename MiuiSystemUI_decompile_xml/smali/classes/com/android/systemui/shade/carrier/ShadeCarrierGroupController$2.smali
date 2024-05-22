.class public final Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$2;->this$0:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$2;->this$0:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;

    .line 2
    iget-boolean p1, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mListening:Z

    .line 4
    if-nez p1, :cond_0

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mListening:Z

    .line 10
    new-instance p1, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$$ExternalSyntheticLambda2;

    .line 12
    const/4 v0, 0x1

    .line 14
    invoke-direct {p1, p0, v0}, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;I)V

    .line 15
    iget-object p0, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mBgHandler:Landroid/os/Handler;

    .line 18
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    :goto_0
    return-void
    .line 23
.end method
