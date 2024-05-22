.class public final Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mCancelDelayedRunnable:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

.field public final mShowIndicationRunnable:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication$$ExternalSyntheticLambda0;

.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;J)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;->this$0:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication$$ExternalSyntheticLambda0;

    .line 7
    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;)V

    .line 9
    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;->mShowIndicationRunnable:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication$$ExternalSyntheticLambda0;

    .line 12
    iget-object p1, p1, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 14
    invoke-interface {p1, v0, p2, p3}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 16
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;->mCancelDelayedRunnable:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 20
    return-void
    .line 22
.end method
