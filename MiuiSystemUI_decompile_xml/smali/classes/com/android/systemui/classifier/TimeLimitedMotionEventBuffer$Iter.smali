.class public final Lcom/android/systemui/classifier/TimeLimitedMotionEventBuffer$Iter;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field public final mIterator:Ljava/util/ListIterator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/classifier/TimeLimitedMotionEventBuffer;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p1, Lcom/android/systemui/classifier/TimeLimitedMotionEventBuffer;->mMotionEvents:Ljava/util/List;

    .line 5
    check-cast p1, Ljava/util/ArrayList;

    .line 7
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    .line 9
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/android/systemui/classifier/TimeLimitedMotionEventBuffer$Iter;->mIterator:Ljava/util/ListIterator;

    .line 13
    return-void
    .line 15
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/view/MotionEvent;

    .line 2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 4
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    throw p0
    .line 9
.end method

.method public final hasNext()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/classifier/TimeLimitedMotionEventBuffer$Iter;->mIterator:Ljava/util/ListIterator;

    .line 2
    invoke-interface {p0}, Ljava/util/ListIterator;->hasNext()Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final hasPrevious()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/classifier/TimeLimitedMotionEventBuffer$Iter;->mIterator:Ljava/util/ListIterator;

    .line 2
    invoke-interface {p0}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final next()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/classifier/TimeLimitedMotionEventBuffer$Iter;->mIterator:Ljava/util/ListIterator;

    .line 2
    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Landroid/view/MotionEvent;

    .line 8
    return-object p0
    .line 10
.end method

.method public final nextIndex()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/classifier/TimeLimitedMotionEventBuffer$Iter;->mIterator:Ljava/util/ListIterator;

    .line 2
    invoke-interface {p0}, Ljava/util/ListIterator;->nextIndex()I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final previous()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/classifier/TimeLimitedMotionEventBuffer$Iter;->mIterator:Ljava/util/ListIterator;

    .line 2
    invoke-interface {p0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Landroid/view/MotionEvent;

    .line 8
    return-object p0
    .line 10
.end method

.method public final previousIndex()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/classifier/TimeLimitedMotionEventBuffer$Iter;->mIterator:Ljava/util/ListIterator;

    .line 2
    invoke-interface {p0}, Ljava/util/ListIterator;->previousIndex()I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final remove()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/classifier/TimeLimitedMotionEventBuffer$Iter;->mIterator:Ljava/util/ListIterator;

    .line 2
    invoke-interface {p0}, Ljava/util/ListIterator;->remove()V

    .line 4
    return-void
    .line 7
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/view/MotionEvent;

    .line 2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 4
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    throw p0
    .line 9
.end method
