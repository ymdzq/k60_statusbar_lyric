.class public final synthetic Lcom/android/systemui/qs/QSFooterViewController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/QSFooterViewController;

.field public final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/QSFooterViewController;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/QSFooterViewController$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/qs/QSFooterViewController;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/qs/QSFooterViewController$$ExternalSyntheticLambda2;->f$1:Landroid/view/View;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterViewController$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/qs/QSFooterViewController;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/qs/QSFooterViewController$$ExternalSyntheticLambda2;->f$1:Landroid/view/View;

    .line 4
    iget-object v0, v0, Lcom/android/systemui/qs/QSFooterViewController;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    new-instance v1, Lcom/android/systemui/qs/QSPanelController$$ExternalSyntheticLambda0;

    .line 11
    invoke-direct {v1, v0, p0}, Lcom/android/systemui/qs/QSPanelController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QSPanelController;Landroid/view/View;)V

    .line 13
    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 16
    return-void
    .line 19
.end method
