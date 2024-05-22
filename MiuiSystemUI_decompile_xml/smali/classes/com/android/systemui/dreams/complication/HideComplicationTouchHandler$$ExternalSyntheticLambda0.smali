.class public final synthetic Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler;

.field public final synthetic f$1:Lcom/android/systemui/dreams/touch/DreamTouchHandler$TouchSession;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler;Lcom/android/systemui/dreams/touch/DreamTouchHandler$TouchSession;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/dreams/touch/DreamTouchHandler$TouchSession;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final onInputEvent(Landroid/view/InputEvent;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    instance-of v1, p1, Landroid/view/MotionEvent;

    .line 7
    if-nez v1, :cond_0

    .line 9
    goto :goto_0

    .line 11
    :cond_0
    check-cast p1, Landroid/view/MotionEvent;

    .line 12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 14
    move-result v1

    .line 17
    iget-object p0, p0, Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/dreams/touch/DreamTouchHandler$TouchSession;

    .line 18
    iget-object v2, v0, Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 20
    if-nez v1, :cond_2

    .line 22
    sget-boolean v1, Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler;->DEBUG:Z

    .line 24
    if-eqz v1, :cond_1

    .line 26
    const-string v1, "HideComplicationHandler"

    .line 28
    const-string v3, "ACTION_DOWN received"

    .line 30
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 35
    move-result v1

    .line 38
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 39
    move-result v1

    .line 42
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 43
    move-result p1

    .line 46
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 47
    move-result p1

    .line 50
    iget-object v3, v0, Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler;->mTouchInsetManager:Lcom/android/systemui/touch/TouchInsetManager;

    .line 51
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    new-instance v4, Lcom/android/systemui/touch/TouchInsetManager$$ExternalSyntheticLambda0;

    .line 56
    invoke-direct {v4, v3, v1, p1}, Lcom/android/systemui/touch/TouchInsetManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/touch/TouchInsetManager;II)V

    .line 58
    invoke-static {v4}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    .line 61
    move-result-object p1

    .line 64
    new-instance v1, Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler$$ExternalSyntheticLambda1;

    .line 65
    invoke-direct {v1, v0, p1, p0}, Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler;Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;Lcom/android/systemui/dreams/touch/DreamTouchHandler$TouchSession;)V

    .line 67
    iget-object p0, p1, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;->delegate:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture$1;

    .line 70
    invoke-virtual {p0, v1, v2}, Landroidx/concurrent/futures/AbstractResolvableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 72
    goto :goto_0

    .line 75
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 76
    move-result v1

    .line 79
    const/4 v3, 0x3

    .line 80
    if-eq v1, v3, :cond_3

    .line 81
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 83
    move-result p1

    .line 86
    const/4 v1, 0x1

    .line 87
    if-ne p1, v1, :cond_4

    .line 88
    :cond_3
    check-cast p0, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$TouchSessionImpl;

    .line 90
    invoke-virtual {p0}, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$TouchSessionImpl;->pop()Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    .line 92
    new-instance p0, Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler$$ExternalSyntheticLambda2;

    .line 95
    invoke-direct {p0, v0}, Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler;)V

    .line 97
    new-instance p1, Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler$$ExternalSyntheticLambda3;

    .line 100
    invoke-direct {p1, v0, p0}, Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler;Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler$$ExternalSyntheticLambda2;)V

    .line 102
    check-cast v2, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 105
    invoke-virtual {v2, p1}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 107
    :cond_4
    :goto_0
    return-void
    .line 110
.end method
