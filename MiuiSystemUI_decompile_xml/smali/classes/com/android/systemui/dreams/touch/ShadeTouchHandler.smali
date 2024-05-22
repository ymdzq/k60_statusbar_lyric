.class public final Lcom/android/systemui/dreams/touch/ShadeTouchHandler;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/dreams/touch/DreamTouchHandler;


# instance fields
.field public final mInitiationHeight:I

.field public final mSurfaces:Ljava/util/Optional;


# direct methods
.method public constructor <init>(ILjava/util/Optional;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/android/systemui/dreams/touch/ShadeTouchHandler;->mSurfaces:Ljava/util/Optional;

    .line 5
    iput p1, p0, Lcom/android/systemui/dreams/touch/ShadeTouchHandler;->mInitiationHeight:I

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final getTouchInitiationRegion(Landroid/graphics/Rect;Landroid/graphics/Region;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 4
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 7
    move-result p1

    .line 10
    iget p0, p0, Lcom/android/systemui/dreams/touch/ShadeTouchHandler;->mInitiationHeight:I

    .line 11
    sub-int/2addr p1, p0

    .line 13
    const/4 p0, 0x0

    .line 14
    invoke-virtual {v0, p0, p0, p0, p1}, Landroid/graphics/Rect;->inset(IIII)V

    .line 15
    sget-object p0, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    .line 18
    invoke-virtual {p2, v0, p0}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 20
    return-void
    .line 23
.end method

.method public final onSessionStart(Lcom/android/systemui/dreams/touch/DreamTouchHandler$TouchSession;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/dreams/touch/ShadeTouchHandler$$ExternalSyntheticLambda0;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/dreams/touch/ShadeTouchHandler$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    iget-object v1, p0, Lcom/android/systemui/dreams/touch/ShadeTouchHandler;->mSurfaces:Ljava/util/Optional;

    .line 8
    invoke-virtual {v1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    .line 10
    move-result-object v0

    .line 13
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 14
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 19
    check-cast v0, Ljava/lang/Boolean;

    .line 20
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    check-cast p1, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$TouchSessionImpl;

    .line 28
    invoke-virtual {p1}, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$TouchSessionImpl;->pop()Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    .line 30
    return-void

    .line 33
    :cond_0
    new-instance v0, Lcom/android/systemui/dreams/touch/ShadeTouchHandler$$ExternalSyntheticLambda1;

    .line 34
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/dreams/touch/ShadeTouchHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/dreams/touch/ShadeTouchHandler;Lcom/android/systemui/dreams/touch/DreamTouchHandler$TouchSession;)V

    .line 36
    check-cast p1, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$TouchSessionImpl;

    .line 39
    iget-object p0, p1, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$TouchSessionImpl;->mEventListeners:Ljava/util/HashSet;

    .line 41
    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance p0, Lcom/android/systemui/dreams/touch/ShadeTouchHandler$1;

    .line 46
    invoke-direct {p0}, Lcom/android/systemui/dreams/touch/ShadeTouchHandler$1;-><init>()V

    .line 48
    iget-object p1, p1, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$TouchSessionImpl;->mGestureListeners:Ljava/util/HashSet;

    .line 51
    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
    .line 56
.end method
