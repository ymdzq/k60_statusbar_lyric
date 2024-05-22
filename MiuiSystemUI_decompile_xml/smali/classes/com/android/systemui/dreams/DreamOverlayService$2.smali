.class public final Lcom/android/systemui/dreams/DreamOverlayService$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/dreams/DreamOverlayStateController$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/dreams/DreamOverlayService;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dreams/DreamOverlayService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/dreams/DreamOverlayService$2;->this$0:Lcom/android/systemui/dreams/DreamOverlayService;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onStateChanged()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayService$2;->this$0:Lcom/android/systemui/dreams/DreamOverlayService;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    .line 4
    const/16 v1, 0x8

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/systemui/dreams/DreamOverlayStateController;->containsState(I)Z

    .line 8
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    .line 14
    iget-object v1, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mExitAnimationFinishedCallback:Lcom/android/systemui/dreams/DreamOverlayService$2;

    .line 16
    invoke-virtual {v0, v1}, Lcom/android/systemui/dreams/DreamOverlayStateController;->removeCallback(Lcom/android/systemui/dreams/DreamOverlayStateController$Callback;)V

    .line 18
    invoke-virtual {p0}, Lcom/android/systemui/dreams/DreamOverlayService;->resetCurrentDreamOverlayLocked()V

    .line 21
    :cond_0
    return-void
.end method
