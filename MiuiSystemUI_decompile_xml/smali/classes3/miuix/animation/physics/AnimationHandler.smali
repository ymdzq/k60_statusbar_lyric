.class public Lmiuix/animation/physics/AnimationHandler;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field private static final FRAME_DELAY_MS:J = 0xaL

.field public static final sAnimatorHandler:Ljava/lang/ThreadLocal;


# instance fields
.field private final mAnimationCallbacks:Ljava/util/ArrayList;

.field private final mCallbackDispatcher:Lmiuix/animation/physics/AnimationHandler$AnimationCallbackDispatcher;

.field private mCurrentFrameTime:J

.field private final mDelayedCallbackStartTime:Landroid/util/ArrayMap;

.field private mListDirty:Z

.field private mProvider:Lmiuix/animation/physics/AnimationHandler$AnimationFrameCallbackProvider;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 2
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 4
    sput-object v0, Lmiuix/animation/physics/AnimationHandler;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    iput-object v0, p0, Lmiuix/animation/physics/AnimationHandler;->mDelayedCallbackStartTime:Landroid/util/ArrayMap;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iput-object v0, p0, Lmiuix/animation/physics/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 17
    new-instance v0, Lmiuix/animation/physics/AnimationHandler$AnimationCallbackDispatcher;

    .line 19
    invoke-direct {v0, p0}, Lmiuix/animation/physics/AnimationHandler$AnimationCallbackDispatcher;-><init>(Lmiuix/animation/physics/AnimationHandler;)V

    .line 21
    iput-object v0, p0, Lmiuix/animation/physics/AnimationHandler;->mCallbackDispatcher:Lmiuix/animation/physics/AnimationHandler$AnimationCallbackDispatcher;

    .line 24
    const-wide/16 v0, 0x0

    .line 26
    iput-wide v0, p0, Lmiuix/animation/physics/AnimationHandler;->mCurrentFrameTime:J

    .line 28
    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lmiuix/animation/physics/AnimationHandler;->mListDirty:Z

    .line 31
    return-void
    .line 33
.end method

.method public static synthetic access$000(Lmiuix/animation/physics/AnimationHandler;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lmiuix/animation/physics/AnimationHandler;->mCurrentFrameTime:J

    .line 2
    return-wide v0
    .line 4
.end method

.method public static synthetic access$002(Lmiuix/animation/physics/AnimationHandler;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lmiuix/animation/physics/AnimationHandler;->mCurrentFrameTime:J

    .line 2
    return-wide p1
    .line 4
.end method

.method public static synthetic access$100(Lmiuix/animation/physics/AnimationHandler;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lmiuix/animation/physics/AnimationHandler;->doAnimationFrame(J)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic access$200(Lmiuix/animation/physics/AnimationHandler;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/animation/physics/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 2
    return-object p0
    .line 4
.end method

.method public static synthetic access$300(Lmiuix/animation/physics/AnimationHandler;)Lmiuix/animation/physics/AnimationHandler$AnimationFrameCallbackProvider;
    .locals 0

    .line 1
    invoke-direct {p0}, Lmiuix/animation/physics/AnimationHandler;->getProvider()Lmiuix/animation/physics/AnimationHandler$AnimationFrameCallbackProvider;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method private cleanUpList()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lmiuix/animation/physics/AnimationHandler;->mListDirty:Z

    .line 2
    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lmiuix/animation/physics/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v0

    .line 11
    add-int/lit8 v0, v0, -0x1

    .line 12
    :goto_0
    if-ltz v0, :cond_1

    .line 14
    iget-object v1, p0, Lmiuix/animation/physics/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    iget-object v1, p0, Lmiuix/animation/physics/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 24
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 26
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 29
    goto :goto_0

    .line 31
    :cond_1
    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lmiuix/animation/physics/AnimationHandler;->mListDirty:Z

    .line 33
    :cond_2
    return-void
    .line 35
.end method

.method private doAnimationFrame(J)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2
    move-result-wide v0

    .line 5
    const/4 v2, 0x0

    .line 6
    :goto_0
    iget-object v3, p0, Lmiuix/animation/physics/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v3

    .line 12
    if-ge v2, v3, :cond_2

    .line 13
    iget-object v3, p0, Lmiuix/animation/physics/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object v3

    .line 20
    check-cast v3, Lmiuix/animation/physics/AnimationHandler$AnimationFrameCallback;

    .line 21
    if-nez v3, :cond_0

    .line 23
    goto :goto_1

    .line 25
    :cond_0
    invoke-direct {p0, v3, v0, v1}, Lmiuix/animation/physics/AnimationHandler;->isCallbackDue(Lmiuix/animation/physics/AnimationHandler$AnimationFrameCallback;J)Z

    .line 26
    move-result v4

    .line 29
    if-eqz v4, :cond_1

    .line 30
    invoke-interface {v3, p1, p2}, Lmiuix/animation/physics/AnimationHandler$AnimationFrameCallback;->doAnimationFrame(J)Z

    .line 32
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 35
    goto :goto_0

    .line 37
    :cond_2
    invoke-direct {p0}, Lmiuix/animation/physics/AnimationHandler;->cleanUpList()V

    .line 38
    return-void
    .line 41
.end method

.method public static getFrameTime()J
    .locals 2

    .line 1
    sget-object v0, Lmiuix/animation/physics/AnimationHandler;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    .line 2
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 4
    move-result-object v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    const-wide/16 v0, 0x0

    .line 10
    return-wide v0

    .line 12
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 16
    check-cast v0, Lmiuix/animation/physics/AnimationHandler;

    .line 17
    iget-wide v0, v0, Lmiuix/animation/physics/AnimationHandler;->mCurrentFrameTime:J

    .line 19
    return-wide v0
    .line 21
.end method

.method public static getInstance()Lmiuix/animation/physics/AnimationHandler;
    .locals 2

    .line 1
    sget-object v0, Lmiuix/animation/physics/AnimationHandler;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    .line 2
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 4
    move-result-object v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    new-instance v1, Lmiuix/animation/physics/AnimationHandler;

    .line 10
    invoke-direct {v1}, Lmiuix/animation/physics/AnimationHandler;-><init>()V

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 15
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 21
    check-cast v0, Lmiuix/animation/physics/AnimationHandler;

    .line 22
    return-object v0
    .line 24
.end method

.method private getProvider()Lmiuix/animation/physics/AnimationHandler$AnimationFrameCallbackProvider;
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/animation/physics/AnimationHandler;->mProvider:Lmiuix/animation/physics/AnimationHandler$AnimationFrameCallbackProvider;

    .line 2
    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider16;

    .line 6
    iget-object v1, p0, Lmiuix/animation/physics/AnimationHandler;->mCallbackDispatcher:Lmiuix/animation/physics/AnimationHandler$AnimationCallbackDispatcher;

    .line 8
    invoke-direct {v0, v1}, Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider16;-><init>(Lmiuix/animation/physics/AnimationHandler$AnimationCallbackDispatcher;)V

    .line 10
    iput-object v0, p0, Lmiuix/animation/physics/AnimationHandler;->mProvider:Lmiuix/animation/physics/AnimationHandler$AnimationFrameCallbackProvider;

    .line 13
    :cond_0
    iget-object p0, p0, Lmiuix/animation/physics/AnimationHandler;->mProvider:Lmiuix/animation/physics/AnimationHandler$AnimationFrameCallbackProvider;

    .line 15
    return-object p0
    .line 17
.end method

.method private isCallbackDue(Lmiuix/animation/physics/AnimationHandler$AnimationFrameCallback;J)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lmiuix/animation/physics/AnimationHandler;->mDelayedCallbackStartTime:Landroid/util/ArrayMap;

    .line 2
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Long;

    .line 8
    const/4 v1, 0x1

    .line 10
    if-nez v0, :cond_0

    .line 11
    return v1

    .line 13
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 14
    move-result-wide v2

    .line 17
    cmp-long p2, v2, p2

    .line 18
    if-gez p2, :cond_1

    .line 20
    iget-object p0, p0, Lmiuix/animation/physics/AnimationHandler;->mDelayedCallbackStartTime:Landroid/util/ArrayMap;

    .line 22
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    return v1

    .line 27
    :cond_1
    const/4 p0, 0x0

    .line 28
    return p0
    .line 29
.end method


# virtual methods
.method public addAnimationFrameCallback(Lmiuix/animation/physics/AnimationHandler$AnimationFrameCallback;J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/animation/physics/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    invoke-direct {p0}, Lmiuix/animation/physics/AnimationHandler;->getProvider()Lmiuix/animation/physics/AnimationHandler$AnimationFrameCallbackProvider;

    .line 10
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lmiuix/animation/physics/AnimationHandler$AnimationFrameCallbackProvider;->postFrameCallback()V

    .line 14
    :cond_0
    iget-object v0, p0, Lmiuix/animation/physics/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 19
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    iget-object v0, p0, Lmiuix/animation/physics/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 25
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    :cond_1
    const-wide/16 v0, 0x0

    .line 30
    cmp-long v0, p2, v0

    .line 32
    if-lez v0, :cond_2

    .line 34
    iget-object p0, p0, Lmiuix/animation/physics/AnimationHandler;->mDelayedCallbackStartTime:Landroid/util/ArrayMap;

    .line 36
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 38
    move-result-wide v0

    .line 41
    add-long/2addr v0, p2

    .line 42
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 43
    move-result-object p2

    .line 46
    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :cond_2
    return-void
    .line 50
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 0

    .line 1
    invoke-direct {p0}, Lmiuix/animation/physics/AnimationHandler;->getProvider()Lmiuix/animation/physics/AnimationHandler$AnimationFrameCallbackProvider;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lmiuix/animation/physics/AnimationHandler$AnimationFrameCallbackProvider;->getLooper()Landroid/os/Looper;

    .line 6
    move-result-object p0

    .line 9
    return-object p0
    .line 10
.end method

.method public isCurrentThread()Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lmiuix/animation/physics/AnimationHandler;->getProvider()Lmiuix/animation/physics/AnimationHandler$AnimationFrameCallbackProvider;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lmiuix/animation/physics/AnimationHandler$AnimationFrameCallbackProvider;->isCurrentThread()Z

    .line 6
    move-result p0

    .line 9
    return p0
    .line 10
.end method

.method public recreateProvider()V
    .locals 2

    .line 1
    new-instance v0, Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider16;

    .line 2
    iget-object v1, p0, Lmiuix/animation/physics/AnimationHandler;->mCallbackDispatcher:Lmiuix/animation/physics/AnimationHandler$AnimationCallbackDispatcher;

    .line 4
    invoke-direct {v0, v1}, Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider16;-><init>(Lmiuix/animation/physics/AnimationHandler$AnimationCallbackDispatcher;)V

    .line 6
    iput-object v0, p0, Lmiuix/animation/physics/AnimationHandler;->mProvider:Lmiuix/animation/physics/AnimationHandler$AnimationFrameCallbackProvider;

    .line 9
    return-void
    .line 11
.end method

.method public removeCallback(Lmiuix/animation/physics/AnimationHandler$AnimationFrameCallback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/animation/physics/AnimationHandler;->mDelayedCallbackStartTime:Landroid/util/ArrayMap;

    .line 2
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lmiuix/animation/physics/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 9
    move-result p1

    .line 12
    if-ltz p1, :cond_0

    .line 13
    iget-object v0, p0, Lmiuix/animation/physics/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 15
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 18
    const/4 p1, 0x1

    .line 21
    iput-boolean p1, p0, Lmiuix/animation/physics/AnimationHandler;->mListDirty:Z

    .line 22
    :cond_0
    return-void
    .line 24
.end method

.method public setProvider(Lmiuix/animation/physics/AnimationHandler$AnimationFrameCallbackProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/animation/physics/AnimationHandler;->mProvider:Lmiuix/animation/physics/AnimationHandler$AnimationFrameCallbackProvider;

    .line 2
    return-void
    .line 4
.end method
