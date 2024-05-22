.class public final Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final delegate:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public listeningCanceller:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

.field public final synthetic this$0:Lcom/android/systemui/privacy/PrivacyItemController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/privacy/PrivacyItemController;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;->this$0:Lcom/android/systemui/privacy/PrivacyItemController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;->delegate:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;->delegate:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 2
    check-cast p0, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 6
    return-void
    .line 9
.end method
