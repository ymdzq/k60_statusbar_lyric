.class public final Lcom/android/systemui/dreams/DreamOverlayService$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/dreams/DreamOverlayService;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dreams/DreamOverlayService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/dreams/DreamOverlayService$1;->this$0:Lcom/android/systemui/dreams/DreamOverlayService;

    .line 2
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onShadeExpandedChanged(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService$1;->this$0:Lcom/android/systemui/dreams/DreamOverlayService;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/dreams/DreamOverlayService;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 4
    new-instance v1, Lcom/android/systemui/dreams/DreamOverlayService$1$$ExternalSyntheticLambda0;

    .line 6
    invoke-direct {v1, p0, p1}, Lcom/android/systemui/dreams/DreamOverlayService$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/dreams/DreamOverlayService$1;Z)V

    .line 8
    check-cast v0, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 11
    invoke-virtual {v0, v1}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 13
    return-void
    .line 16
.end method
