.class public final synthetic Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler;

.field public final synthetic f$1:Lcom/google/common/util/concurrent/ListenableFuture;

.field public final synthetic f$2:Lcom/android/systemui/dreams/touch/DreamTouchHandler$TouchSession;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler;Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;Lcom/android/systemui/dreams/touch/DreamTouchHandler$TouchSession;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler$$ExternalSyntheticLambda1;->f$1:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler$$ExternalSyntheticLambda1;->f$2:Lcom/android/systemui/dreams/touch/DreamTouchHandler$TouchSession;

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler$$ExternalSyntheticLambda1;->f$1:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler$$ExternalSyntheticLambda1;->f$2:Lcom/android/systemui/dreams/touch/DreamTouchHandler$TouchSession;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    :try_start_0
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 11
    move-result-object v1

    .line 14
    check-cast v1, Ljava/lang/Boolean;

    .line 15
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    move-result v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    if-nez v1, :cond_1

    .line 21
    :goto_0
    iget-object p0, v0, Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler;->mCancelCallbacks:Ljava/util/ArrayDeque;

    .line 23
    :try_start_1
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 25
    move-result v1

    .line 28
    if-nez v1, :cond_0

    .line 29
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 31
    move-result-object p0

    .line 34
    check-cast p0, Ljava/lang/Runnable;

    .line 35
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 37
    goto :goto_0

    .line 40
    :cond_0
    iget-object v1, v0, Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 41
    iget-object v2, v0, Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler;->mHideComplications:Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler$1;

    .line 43
    iget v0, v0, Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler;->mFadeOutDelay:I

    .line 45
    int-to-long v3, v0

    .line 47
    invoke-interface {v1, v2, v3, v4}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 48
    move-result-object v0

    .line 51
    invoke-virtual {p0, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 52
    goto :goto_1

    .line 55
    :cond_1
    check-cast p0, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$TouchSessionImpl;

    .line 56
    invoke-virtual {p0}, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$TouchSessionImpl;->pop()Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    .line 58
    goto :goto_1

    .line 61
    :catch_0
    move-exception p0

    .line 62
    const-string v0, "could not check TouchInsetManager:"

    .line 63
    const-string v1, "HideComplicationHandler"

    .line 65
    invoke-static {v0, p0, v1}, Lcom/android/bluetooth/ble/app/ShareNetwork$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 67
    :goto_1
    return-void
.end method
