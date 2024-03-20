.class Lmiuix/animation/controller/FolmeTouch$InnerViewTouchListener;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private mTouchMap:Ljava/util/WeakHashMap;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lmiuix/animation/controller/FolmeTouch$InnerViewTouchListener;->mTouchMap:Ljava/util/WeakHashMap;

    return-void
.end method

.method public synthetic constructor <init>(Lmiuix/animation/controller/FolmeTouch$1;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeTouch$InnerViewTouchListener;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs addTouch(Lmiuix/animation/controller/FolmeTouch;[Lmiuix/animation/base/AnimConfig;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/animation/controller/FolmeTouch$InnerViewTouchListener;->mTouchMap:Ljava/util/WeakHashMap;

    .line 2
    invoke-virtual {p0, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    return-void
    .line 7
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lmiuix/animation/controller/FolmeTouch$InnerViewTouchListener;->mTouchMap:Ljava/util/WeakHashMap;

    .line 2
    invoke-virtual {p0}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    .line 4
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object p0

    .line 11
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 21
    check-cast v0, Ljava/util/Map$Entry;

    .line 22
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 27
    check-cast v1, Lmiuix/animation/controller/FolmeTouch;

    .line 28
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 33
    check-cast v0, [Lmiuix/animation/base/AnimConfig;

    .line 34
    invoke-static {v1, p1, p2, v0}, Lmiuix/animation/controller/FolmeTouch;->access$700(Lmiuix/animation/controller/FolmeTouch;Landroid/view/View;Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V

    .line 36
    goto :goto_0

    .line 39
    :cond_0
    const/4 p0, 0x0

    .line 40
    return p0
    .line 41
.end method

.method public removeTouch(Lmiuix/animation/controller/FolmeTouch;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch$InnerViewTouchListener;->mTouchMap:Ljava/util/WeakHashMap;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p0, p0, Lmiuix/animation/controller/FolmeTouch$InnerViewTouchListener;->mTouchMap:Ljava/util/WeakHashMap;

    .line 7
    invoke-virtual {p0}, Ljava/util/WeakHashMap;->isEmpty()Z

    .line 9
    move-result p0

    .line 12
    return p0
    .line 13
.end method
