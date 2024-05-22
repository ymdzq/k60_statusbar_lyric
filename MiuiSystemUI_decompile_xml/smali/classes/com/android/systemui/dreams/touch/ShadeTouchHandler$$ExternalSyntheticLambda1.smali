.class public final synthetic Lcom/android/systemui/dreams/touch/ShadeTouchHandler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/dreams/touch/ShadeTouchHandler;

.field public final synthetic f$1:Lcom/android/systemui/dreams/touch/DreamTouchHandler$TouchSession;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/dreams/touch/ShadeTouchHandler;Lcom/android/systemui/dreams/touch/DreamTouchHandler$TouchSession;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/dreams/touch/ShadeTouchHandler$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/dreams/touch/ShadeTouchHandler;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/dreams/touch/ShadeTouchHandler$$ExternalSyntheticLambda1;->f$1:Lcom/android/systemui/dreams/touch/DreamTouchHandler$TouchSession;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final onInputEvent(Landroid/view/InputEvent;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/dreams/touch/ShadeTouchHandler$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/dreams/touch/ShadeTouchHandler;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance v1, Lcom/android/systemui/dreams/touch/ShadeTouchHandler$$ExternalSyntheticLambda0;

    .line 7
    const/4 v2, 0x1

    .line 9
    invoke-direct {v1, v2}, Lcom/android/systemui/dreams/touch/ShadeTouchHandler$$ExternalSyntheticLambda0;-><init>(I)V

    .line 10
    iget-object v0, v0, Lcom/android/systemui/dreams/touch/ShadeTouchHandler;->mSurfaces:Ljava/util/Optional;

    .line 13
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    .line 15
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 23
    check-cast v0, Lcom/android/systemui/shade/ShadeViewController;

    .line 24
    if-eqz v0, :cond_0

    .line 26
    move-object v1, p1

    .line 28
    check-cast v1, Landroid/view/MotionEvent;

    .line 29
    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 31
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchHandler:Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;

    .line 33
    invoke-virtual {v0, v1}, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 35
    :cond_0
    instance-of v0, p1, Landroid/view/MotionEvent;

    .line 38
    if-eqz v0, :cond_1

    .line 40
    check-cast p1, Landroid/view/MotionEvent;

    .line 42
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 44
    move-result p1

    .line 47
    if-ne p1, v2, :cond_1

    .line 48
    iget-object p0, p0, Lcom/android/systemui/dreams/touch/ShadeTouchHandler$$ExternalSyntheticLambda1;->f$1:Lcom/android/systemui/dreams/touch/DreamTouchHandler$TouchSession;

    .line 50
    check-cast p0, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$TouchSessionImpl;

    .line 52
    invoke-virtual {p0}, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$TouchSessionImpl;->pop()Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    .line 54
    :cond_1
    return-void
    .line 57
.end method
