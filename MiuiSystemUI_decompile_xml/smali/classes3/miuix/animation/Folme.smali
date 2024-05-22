.class public Lmiuix/animation/Folme;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final DEFALUT_FRICTION:F = 0.4761905f

.field private static DEFAULT_THRESHOLD_VELOCITY:F = 0.0f

.field private static final DELAY_TIME:J = 0x4e20L

.field private static final DELAY_TIME_MSG_TARGET_CLEAN_DIE_MUCH:J = 0x3e8L

.field private static final DELAY_TIME_MSG_TARGET_CLEAN_UI_FREE:J = 0x4e20L

.field private static final MSG_TARGET:I = 0x1

.field private static final MSG_TARGET_CLEAN_DIE_MUCH:I = 0x2

.field private static final MSG_TARGET_CLEAN_UI_FREE:I = 0x1

.field private static final THRESHOLD_LIMIT:J = 0x400L

.field private static final USE_PHY_MIN_VELOCITY:D = 1000.0

.field private static final sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

.field private static volatile sMainHandler:Landroid/os/Handler;

.field private static sRunLooper:Landroid/os/Looper;

.field private static sTimeRatio:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lmiuix/animation/Folme$1;

    .line 2
    invoke-direct {v0}, Lmiuix/animation/Folme$1;-><init>()V

    .line 4
    invoke-static {v0}, Lmiuix/animation/internal/ThreadPoolUtil;->post(Ljava/lang/Runnable;)V

    .line 7
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 10
    move-result-object v0

    .line 13
    sput-object v0, Lmiuix/animation/Folme;->sRunLooper:Landroid/os/Looper;

    .line 14
    invoke-static {v0}, Lmiuix/animation/Folme;->createMainHandler(Landroid/os/Looper;)V

    .line 16
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 19
    const/high16 v1, 0x3f800000    # 1.0f

    .line 21
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 23
    move-result-object v1

    .line 26
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 27
    sput-object v0, Lmiuix/animation/Folme;->sTimeRatio:Ljava/util/concurrent/atomic/AtomicReference;

    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 32
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 34
    sput-object v0, Lmiuix/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 37
    const/high16 v0, 0x41480000    # 12.5f

    .line 39
    sput v0, Lmiuix/animation/Folme;->DEFAULT_THRESHOLD_VELOCITY:F

    .line 41
    return-void
    .line 43
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lmiuix/animation/Folme;->sendToTargetMessage(Z)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic access$100()V
    .locals 0

    .line 1
    invoke-static {}, Lmiuix/animation/Folme;->performTargetCleanForTooMuchInvalid()V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic access$300()V
    .locals 0

    .line 1
    invoke-static {}, Lmiuix/animation/Folme;->clearTargets()V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic access$400(Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lmiuix/animation/Folme;->clearInvalidTargets(Ljava/util/List;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic access$500()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 1
    sget-object v0, Lmiuix/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    return-object v0
    .line 4
.end method

.method public static afterFrictionValue(FF)F
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float v1, p1, v0

    .line 3
    if-nez v1, :cond_0

    .line 5
    return v0

    .line 7
    :cond_0
    cmpl-float v0, p0, v0

    .line 8
    const/high16 v1, 0x3f800000    # 1.0f

    .line 10
    if-ltz v0, :cond_1

    .line 12
    move v0, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/high16 v0, -0x40800000    # -1.0f

    .line 16
    :goto_0
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    .line 18
    move-result p0

    .line 21
    div-float/2addr p0, p1

    .line 22
    invoke-static {p0, v1}, Ljava/lang/Math;->min(FF)F

    .line 23
    move-result p0

    .line 26
    mul-float v1, p0, p0

    .line 27
    mul-float v2, v1, p0

    .line 29
    const/high16 v3, 0x40400000    # 3.0f

    .line 31
    div-float/2addr v2, v3

    .line 33
    sub-float/2addr v2, v1

    .line 34
    add-float/2addr v2, p0

    .line 35
    mul-float/2addr v2, v0

    .line 36
    mul-float/2addr v2, p1

    .line 37
    return v2
    .line 38
.end method

.method public static varargs clean([Ljava/lang/Object;)V
    .locals 3
    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 1
    invoke-static {p0}, Lmiuix/animation/utils/CommonUtils;->isArrayEmpty([Ljava/lang/Object;)Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    sget-object p0, Lmiuix/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 10
    move-result-object p0

    .line 13
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object p0

    .line 17
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 27
    check-cast v0, Lmiuix/animation/IAnimTarget;

    .line 28
    invoke-static {v0}, Lmiuix/animation/Folme;->cleanAnimTarget(Lmiuix/animation/IAnimTarget;)V

    .line 30
    goto :goto_0

    .line 33
    :cond_0
    array-length v0, p0

    .line 34
    const/4 v1, 0x0

    .line 35
    :goto_1
    if-ge v1, v0, :cond_1

    .line 36
    aget-object v2, p0, v1

    .line 38
    invoke-static {v2}, Lmiuix/animation/Folme;->doClean(Ljava/lang/Object;)V

    .line 40
    add-int/lit8 v1, v1, 0x1

    .line 43
    goto :goto_1

    .line 45
    :cond_1
    return-void
    .line 46
.end method

.method private static cleanAnimTarget(Lmiuix/animation/IAnimTarget;)V
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->clean()V

    .line 4
    sget-object v0, Lmiuix/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 12
    check-cast v0, Lmiuix/animation/Folme$FolmeImpl;

    .line 13
    iget-object v1, p0, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    .line 15
    invoke-virtual {v1}, Lmiuix/animation/internal/AnimManager;->clear()V

    .line 17
    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getNotifier()Lmiuix/animation/listener/ListenerNotifier;

    .line 20
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Lmiuix/animation/listener/ListenerNotifier;->removeListeners()V

    .line 24
    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {v0}, Lmiuix/animation/Folme$FolmeImpl;->clean()V

    .line 29
    :cond_0
    return-void
    .line 32
.end method

.method private static clearInvalidTargets(Ljava/util/List;)V
    .locals 3

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    move-result-object p0

    .line 5
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 15
    check-cast v0, Lmiuix/animation/IAnimTarget;

    .line 16
    invoke-virtual {v0}, Lmiuix/animation/IAnimTarget;->isValid()Z

    .line 18
    move-result v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    iget-object v1, v0, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    .line 24
    const/4 v2, 0x0

    .line 26
    new-array v2, v2, [Lmiuix/animation/property/FloatProperty;

    .line 27
    invoke-virtual {v1, v2}, Lmiuix/animation/internal/AnimManager;->isAnimRunning([Lmiuix/animation/property/FloatProperty;)Z

    .line 29
    move-result v1

    .line 32
    if-nez v1, :cond_0

    .line 33
    iget-object v1, v0, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    .line 35
    invoke-virtual {v1}, Lmiuix/animation/internal/AnimManager;->isAnimSetup()Z

    .line 37
    move-result v1

    .line 40
    if-nez v1, :cond_0

    .line 41
    invoke-virtual {v0}, Lmiuix/animation/IAnimTarget;->isValidFlag()Z

    .line 43
    move-result v1

    .line 46
    if-eqz v1, :cond_0

    .line 47
    filled-new-array {v0}, [Lmiuix/animation/IAnimTarget;

    .line 49
    move-result-object v0

    .line 52
    invoke-static {v0}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    .line 53
    goto :goto_0

    .line 56
    :cond_1
    return-void
    .line 57
.end method

.method private static clearTargetMessage(I)V
    .locals 1

    .line 1
    invoke-static {}, Lmiuix/animation/Folme;->getMainHandler()Landroid/os/Handler;

    .line 2
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeMessages(I)V

    .line 8
    :cond_0
    return-void
    .line 11
.end method

.method private static clearTargets()V
    .locals 4

    .line 1
    sget-object v0, Lmiuix/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 4
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 21
    check-cast v1, Lmiuix/animation/IAnimTarget;

    .line 22
    invoke-virtual {v1}, Lmiuix/animation/IAnimTarget;->isValid()Z

    .line 24
    move-result v2

    .line 27
    if-eqz v2, :cond_1

    .line 28
    const-wide/16 v2, 0x1

    .line 30
    invoke-virtual {v1, v2, v3}, Lmiuix/animation/IAnimTarget;->hasFlags(J)Z

    .line 32
    move-result v2

    .line 35
    if-eqz v2, :cond_0

    .line 36
    iget-object v2, v1, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    .line 38
    const/4 v3, 0x0

    .line 40
    new-array v3, v3, [Lmiuix/animation/property/FloatProperty;

    .line 41
    invoke-virtual {v2, v3}, Lmiuix/animation/internal/AnimManager;->isAnimRunning([Lmiuix/animation/property/FloatProperty;)Z

    .line 43
    move-result v2

    .line 46
    if-nez v2, :cond_0

    .line 47
    iget-object v2, v1, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    .line 49
    invoke-virtual {v2}, Lmiuix/animation/internal/AnimManager;->isAnimSetup()Z

    .line 51
    move-result v2

    .line 54
    if-nez v2, :cond_0

    .line 55
    invoke-virtual {v1}, Lmiuix/animation/IAnimTarget;->isValidFlag()Z

    .line 57
    move-result v2

    .line 60
    if-eqz v2, :cond_0

    .line 61
    :cond_1
    filled-new-array {v1}, [Lmiuix/animation/IAnimTarget;

    .line 63
    move-result-object v1

    .line 66
    invoke-static {v1}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    .line 67
    goto :goto_0

    .line 70
    :cond_2
    return-void
    .line 71
.end method

.method private static createMainHandler(Landroid/os/Looper;)V
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    new-instance v0, Lmiuix/animation/Folme$2;

    .line 5
    invoke-direct {v0, p0}, Lmiuix/animation/Folme$2;-><init>(Landroid/os/Looper;)V

    .line 7
    sput-object v0, Lmiuix/animation/Folme;->sMainHandler:Landroid/os/Handler;

    .line 10
    return-void
    .line 12
.end method

.method private static doClean(Ljava/lang/Object;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Lmiuix/animation/Folme;->getTarget(Ljava/lang/Object;Lmiuix/animation/ITargetCreator;)Lmiuix/animation/IAnimTarget;

    .line 3
    move-result-object p0

    .line 6
    invoke-static {p0}, Lmiuix/animation/Folme;->cleanAnimTarget(Lmiuix/animation/IAnimTarget;)V

    .line 7
    return-void
    .line 10
.end method

.method public static varargs end([Ljava/lang/Object;)V
    .locals 4

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    if-ge v1, v0, :cond_2

    .line 4
    aget-object v2, p0, v1

    .line 6
    const/4 v3, 0x0

    .line 8
    invoke-static {v2, v3}, Lmiuix/animation/Folme;->getTarget(Ljava/lang/Object;Lmiuix/animation/ITargetCreator;)Lmiuix/animation/IAnimTarget;

    .line 9
    move-result-object v2

    .line 12
    if-nez v2, :cond_0

    .line 13
    goto :goto_1

    .line 15
    :cond_0
    sget-object v3, Lmiuix/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 16
    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 21
    check-cast v2, Lmiuix/animation/Folme$FolmeImpl;

    .line 22
    if-eqz v2, :cond_1

    .line 24
    invoke-virtual {v2}, Lmiuix/animation/Folme$FolmeImpl;->end()V

    .line 26
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 29
    goto :goto_0

    .line 31
    :cond_2
    return-void
    .line 32
.end method

.method private static fillTargetArrayAndGetImpl([Landroid/view/View;[Lmiuix/animation/IAnimTarget;)Lmiuix/animation/Folme$FolmeImpl;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v0

    .line 4
    move-object v3, v1

    .line 5
    :goto_0
    array-length v4, p0

    .line 6
    if-ge v0, v4, :cond_2

    .line 7
    aget-object v4, p0, v0

    .line 9
    sget-object v5, Lmiuix/animation/ViewTarget;->sCreator:Lmiuix/animation/ITargetCreator;

    .line 11
    invoke-static {v4, v5}, Lmiuix/animation/Folme;->getTarget(Ljava/lang/Object;Lmiuix/animation/ITargetCreator;)Lmiuix/animation/IAnimTarget;

    .line 13
    move-result-object v4

    .line 16
    aput-object v4, p1, v0

    .line 17
    sget-object v5, Lmiuix/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 19
    invoke-virtual {v5, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    move-result-object v4

    .line 24
    check-cast v4, Lmiuix/animation/Folme$FolmeImpl;

    .line 25
    if-nez v3, :cond_0

    .line 27
    move-object v3, v4

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    if-eq v3, v4, :cond_1

    .line 31
    const/4 v2, 0x1

    .line 33
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 34
    goto :goto_0

    .line 36
    :cond_2
    if-eqz v2, :cond_3

    .line 37
    goto :goto_2

    .line 39
    :cond_3
    move-object v1, v3

    .line 40
    :goto_2
    return-object v1
    .line 41
.end method

.method public static getDefaultThresholdVelocity()F
    .locals 1

    .line 1
    sget v0, Lmiuix/animation/Folme;->DEFAULT_THRESHOLD_VELOCITY:F

    .line 2
    return v0
    .line 4
.end method

.method public static getLooper()Landroid/os/Looper;
    .locals 1

    .line 1
    sget-object v0, Lmiuix/animation/Folme;->sRunLooper:Landroid/os/Looper;

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    move-result-object v0

    .line 9
    sput-object v0, Lmiuix/animation/Folme;->sRunLooper:Landroid/os/Looper;

    .line 10
    :cond_0
    sget-object v0, Lmiuix/animation/Folme;->sRunLooper:Landroid/os/Looper;

    .line 12
    return-object v0
    .line 14
.end method

.method public static getMainHandler()Landroid/os/Handler;
    .locals 1

    .line 1
    sget-object v0, Lmiuix/animation/Folme;->sMainHandler:Landroid/os/Handler;

    .line 2
    return-object v0
    .line 4
.end method

.method private static getPredict(FF)F
    .locals 1

    .line 1
    const v0, -0x3f79999a    # -4.2f

    mul-float/2addr p1, v0

    neg-float p0, p0

    div-float/2addr p0, p1

    return p0
.end method

.method private static getPredict(FFF)F
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lmiuix/animation/Folme;->getPredict(FF)F

    move-result p0

    invoke-static {p2, p1}, Lmiuix/animation/Folme;->getPredict(FF)F

    move-result p1

    sub-float/2addr p0, p1

    return p0
.end method

.method public static getPredictDistance(F)F
    .locals 1

    const v0, 0x3ef3cf3e

    .line 1
    invoke-static {p0, v0}, Lmiuix/animation/Folme;->getPredict(FF)F

    move-result p0

    return p0
.end method

.method public static varargs getPredictDistance(F[F)F
    .locals 2

    const v0, 0x3ef3cf3e

    if-eqz p1, :cond_0

    .line 2
    array-length v1, p1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 3
    aget p1, p1, v1

    invoke-static {p0, v0, p1}, Lmiuix/animation/Folme;->getPredict(FFF)F

    move-result p0

    return p0

    .line 4
    :cond_0
    invoke-static {p0, v0}, Lmiuix/animation/Folme;->getPredict(FF)F

    move-result p0

    return p0
.end method

.method public static varargs getPredictDistanceWithFriction(FF[F)F
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    array-length v0, p2

    .line 4
    if-lez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 7
    aget p2, p2, v0

    .line 8
    invoke-static {p0, p1, p2}, Lmiuix/animation/Folme;->getPredict(FFF)F

    .line 10
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_0
    invoke-static {p0, p1}, Lmiuix/animation/Folme;->getPredict(FF)F

    .line 15
    move-result p0

    .line 18
    return p0
    .line 19
.end method

.method public static varargs getPredictFriction(FFF[F)F
    .locals 1

    .line 1
    sub-float/2addr p1, p0

    .line 2
    mul-float p0, p2, p1

    .line 3
    const/4 v0, 0x0

    .line 5
    cmpg-float p0, p0, v0

    .line 6
    if-gtz p0, :cond_0

    .line 8
    const/high16 p0, -0x40800000    # -1.0f

    .line 10
    return p0

    .line 12
    :cond_0
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    .line 13
    move-result p0

    .line 16
    invoke-static {}, Lmiuix/animation/Folme;->getDefaultThresholdVelocity()F

    .line 17
    move-result v0

    .line 20
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 21
    move-result v0

    .line 24
    mul-float/2addr v0, p0

    .line 25
    if-eqz p3, :cond_1

    .line 26
    array-length p0, p3

    .line 28
    if-lez p0, :cond_1

    .line 29
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    .line 31
    move-result p0

    .line 34
    const/4 v0, 0x0

    .line 35
    aget p3, p3, v0

    .line 36
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    .line 38
    move-result p3

    .line 41
    mul-float v0, p3, p0

    .line 42
    :cond_1
    sub-float/2addr p2, v0

    .line 44
    const p0, 0x40866666    # 4.2f

    .line 45
    mul-float/2addr p1, p0

    .line 48
    div-float/2addr p2, p1

    .line 49
    return p2
    .line 50
.end method

.method public static getTarget(Ljava/lang/Object;)Lmiuix/animation/IAnimTarget;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lmiuix/animation/Folme;->getTarget(Ljava/lang/Object;Lmiuix/animation/ITargetCreator;)Lmiuix/animation/IAnimTarget;

    move-result-object p0

    return-object p0
.end method

.method public static getTarget(Ljava/lang/Object;Lmiuix/animation/ITargetCreator;)Lmiuix/animation/IAnimTarget;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 2
    :cond_0
    instance-of v1, p0, Lmiuix/animation/IAnimTarget;

    if-eqz v1, :cond_1

    .line 3
    check-cast p0, Lmiuix/animation/IAnimTarget;

    return-object p0

    .line 4
    :cond_1
    sget-object v1, Lmiuix/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/animation/IAnimTarget;

    .line 5
    invoke-virtual {v2}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 6
    invoke-virtual {v3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v2

    :cond_3
    if-eqz p1, :cond_4

    .line 7
    invoke-interface {p1, p0}, Lmiuix/animation/ITargetCreator;->createTarget(Ljava/lang/Object;)Lmiuix/animation/IAnimTarget;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 8
    invoke-static {p0}, Lmiuix/animation/Folme;->useAt(Lmiuix/animation/IAnimTarget;)Lmiuix/animation/IFolme;

    return-object p0

    :cond_4
    return-object v0
.end method

.method public static getTargetById(I)Lmiuix/animation/IAnimTarget;
    .locals 3

    .line 1
    sget-object v0, Lmiuix/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 4
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 11
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 21
    check-cast v1, Lmiuix/animation/IAnimTarget;

    .line 22
    iget v2, v1, Lmiuix/animation/IAnimTarget;->id:I

    .line 24
    if-ne v2, p0, :cond_0

    .line 26
    return-object v1

    .line 28
    :cond_1
    const/4 p0, 0x0

    .line 29
    return-object p0
    .line 30
.end method

.method public static getTargets()Ljava/util/Collection;
    .locals 4

    .line 1
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    sget-object v0, Lmiuix/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiuix/animation/IAnimTarget;

    .line 3
    invoke-virtual {v3}, Lmiuix/animation/IAnimTarget;->isValid()Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "current sImplMap total : "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lmiuix/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  , target invalid count :  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    :cond_2
    sget-object v0, Lmiuix/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static getTargets(Ljava/util/Collection;)V
    .locals 4

    .line 6
    sget-object v0, Lmiuix/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/animation/IAnimTarget;

    .line 7
    invoke-virtual {v1}, Lmiuix/animation/IAnimTarget;->isValid()Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Lmiuix/animation/IAnimTarget;->hasFlags(J)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    const/4 v3, 0x0

    new-array v3, v3, [Lmiuix/animation/property/FloatProperty;

    invoke-virtual {v2, v3}, Lmiuix/animation/internal/AnimManager;->isAnimRunning([Lmiuix/animation/property/FloatProperty;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_1
    :goto_1
    filled-new-array {v1}, [Lmiuix/animation/IAnimTarget;

    move-result-object v1

    invoke-static {v1}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static getTimeRatio()F
    .locals 1

    .line 1
    sget-object v0, Lmiuix/animation/Folme;->sTimeRatio:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Float;

    .line 8
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 10
    move-result v0

    .line 13
    return v0
    .line 14
.end method

.method public static getValueTarget(Ljava/lang/Object;)Lmiuix/animation/ValueTarget;
    .locals 1

    .line 1
    sget-object v0, Lmiuix/animation/ValueTarget;->sCreator:Lmiuix/animation/ITargetCreator;

    .line 2
    invoke-static {p0, v0}, Lmiuix/animation/Folme;->getTarget(Ljava/lang/Object;Lmiuix/animation/ITargetCreator;)Lmiuix/animation/IAnimTarget;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lmiuix/animation/ValueTarget;

    .line 8
    return-object p0
    .line 10
.end method

.method public static isInDraggingState(Landroid/view/View;)Z
    .locals 1

    .line 1
    const v0, 0x7f0a05df    # @id/miuix_animation_tag_is_dragging

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 5
    move-result-object p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    const/4 p0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    return p0
    .line 14
.end method

.method public static onListViewTouchEvent(Landroid/widget/AbsListView;Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lmiuix/animation/controller/FolmeTouch;->getListViewTouchListener(Landroid/widget/AbsListView;)Lmiuix/animation/controller/ListViewTouchListener;

    .line 2
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p0, p1}, Lmiuix/animation/controller/ListViewTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 8
    :cond_0
    return-void
    .line 11
.end method

.method public static perFromValue(FFF)F
    .locals 1

    .line 1
    cmpl-float v0, p2, p1

    .line 2
    if-nez v0, :cond_0

    .line 4
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    sub-float/2addr p0, p1

    .line 8
    sub-float/2addr p2, p1

    .line 9
    div-float/2addr p0, p2

    .line 10
    return p0
    .line 11
.end method

.method private static performTargetCleanForTooMuchInvalid()V
    .locals 4

    .line 1
    sget-object v0, Lmiuix/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 4
    move-result v1

    .line 7
    if-lez v1, :cond_0

    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 10
    move-result v0

    .line 13
    int-to-long v0, v0

    .line 14
    const-wide/16 v2, 0x400

    .line 15
    rem-long/2addr v0, v2

    .line 17
    const-wide/16 v2, 0x0

    .line 18
    cmp-long v0, v0, v2

    .line 20
    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lmiuix/animation/Folme$3;

    .line 24
    invoke-direct {v0}, Lmiuix/animation/Folme$3;-><init>()V

    .line 26
    invoke-static {v0}, Lmiuix/animation/internal/ThreadPoolUtil;->post(Ljava/lang/Runnable;)V

    .line 29
    :cond_0
    return-void
    .line 32
.end method

.method public static post(Ljava/lang/Object;Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Lmiuix/animation/Folme;->getTarget(Ljava/lang/Object;Lmiuix/animation/ITargetCreator;)Lmiuix/animation/IAnimTarget;

    .line 3
    move-result-object p0

    .line 6
    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {p0, p1}, Lmiuix/animation/IAnimTarget;->post(Ljava/lang/Runnable;)V

    .line 9
    :cond_0
    return-void
    .line 12
.end method

.method private static sendToTargetMessage(Z)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lmiuix/animation/Folme;->clearTargetMessage(I)V

    .line 3
    if-eqz p0, :cond_0

    .line 6
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    .line 8
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    sget-object p0, Lmiuix/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 16
    move-result-object p0

    .line 19
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object p0

    .line 23
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 33
    check-cast v1, Lmiuix/animation/IAnimTarget;

    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    .line 36
    const-string v3, "exist target:"

    .line 38
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v1}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    .line 43
    move-result-object v3

    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    const-string v3, " , target isValid : "

    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v1}, Lmiuix/animation/IAnimTarget;->isValid()Z

    .line 55
    move-result v1

    .line 58
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object v1

    .line 65
    const/4 v2, 0x0

    .line 66
    new-array v2, v2, [Ljava/lang/Object;

    .line 67
    invoke-static {v1, v2}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    goto :goto_0

    .line 72
    :cond_0
    sget-object p0, Lmiuix/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 73
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 75
    move-result p0

    .line 78
    if-lez p0, :cond_1

    .line 79
    invoke-static {}, Lmiuix/animation/Folme;->getMainHandler()Landroid/os/Handler;

    .line 81
    move-result-object p0

    .line 84
    if-eqz p0, :cond_2

    .line 85
    const-wide/16 v1, 0x4e20

    .line 87
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 89
    goto :goto_1

    .line 92
    :cond_1
    invoke-static {v0}, Lmiuix/animation/Folme;->clearTargetMessage(I)V

    .line 93
    :cond_2
    :goto_1
    return-void
    .line 96
.end method

.method public static setAnimPlayRatio(F)V
    .locals 1

    .line 1
    sget-object v0, Lmiuix/animation/Folme;->sTimeRatio:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 4
    move-result-object p0

    .line 7
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 8
    return-void
    .line 11
.end method

.method public static setDraggingState(Landroid/view/View;Z)V
    .locals 1

    .line 1
    const v0, 0x7f0a05df    # @id/miuix_animation_tag_is_dragging

    .line 2
    if-eqz p1, :cond_0

    .line 5
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 7
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 9
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 14
    :goto_0
    return-void
    .line 17
.end method

.method public static setLooper(Landroid/os/Looper;)V
    .locals 0

    .line 1
    sput-object p0, Lmiuix/animation/Folme;->sRunLooper:Landroid/os/Looper;

    .line 2
    invoke-static {p0}, Lmiuix/animation/Folme;->createMainHandler(Landroid/os/Looper;)V

    .line 4
    sget-object p0, Lmiuix/animation/Folme;->sRunLooper:Landroid/os/Looper;

    .line 7
    invoke-static {p0}, Lmiuix/animation/utils/ObjectPool;->createMainHandler(Landroid/os/Looper;)V

    .line 9
    sget-object p0, Lmiuix/animation/Folme;->sRunLooper:Landroid/os/Looper;

    .line 12
    invoke-static {p0}, Lmiuix/animation/internal/AnimRunner;->createMainHandler(Landroid/os/Looper;)V

    .line 14
    invoke-static {}, Lmiuix/animation/physics/AnimationHandler;->getInstance()Lmiuix/animation/physics/AnimationHandler;

    .line 17
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Lmiuix/animation/physics/AnimationHandler;->recreateProvider()V

    .line 21
    return-void
    .line 24
.end method

.method public static setThreadPriority(I)V
    .locals 0

    .line 1
    invoke-static {p0}, Lmiuix/animation/internal/AnimRunner;->setThreadPriority(I)V

    .line 2
    invoke-static {p0}, Lmiuix/animation/internal/ThreadPoolUtil;->setThreadPriority(I)V

    .line 5
    return-void
    .line 8
.end method

.method public static useAt(Lmiuix/animation/IAnimTarget;)Lmiuix/animation/IFolme;
    .locals 4

    .line 1
    sget-object v0, Lmiuix/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/animation/Folme$FolmeImpl;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lmiuix/animation/Folme$FolmeImpl;

    filled-new-array {p0}, [Lmiuix/animation/IAnimTarget;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lmiuix/animation/Folme$FolmeImpl;-><init>([Lmiuix/animation/IAnimTarget;Lmiuix/animation/Folme$1;)V

    .line 3
    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiuix/animation/Folme$FolmeImpl;

    if-eqz p0, :cond_0

    move-object v1, p0

    :cond_0
    return-object v1
.end method

.method public static varargs useAt([Landroid/view/View;)Lmiuix/animation/IFolme;
    .locals 5

    .line 4
    array-length v0, p0

    if-eqz v0, :cond_3

    .line 5
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 6
    aget-object p0, p0, v1

    sget-object v0, Lmiuix/animation/ViewTarget;->sCreator:Lmiuix/animation/ITargetCreator;

    invoke-static {p0, v0}, Lmiuix/animation/Folme;->getTarget(Ljava/lang/Object;Lmiuix/animation/ITargetCreator;)Lmiuix/animation/IAnimTarget;

    move-result-object p0

    invoke-static {p0}, Lmiuix/animation/Folme;->useAt(Lmiuix/animation/IAnimTarget;)Lmiuix/animation/IFolme;

    move-result-object p0

    return-object p0

    .line 7
    :cond_0
    array-length v0, p0

    new-array v2, v0, [Lmiuix/animation/IAnimTarget;

    .line 8
    invoke-static {p0, v2}, Lmiuix/animation/Folme;->fillTargetArrayAndGetImpl([Landroid/view/View;[Lmiuix/animation/IAnimTarget;)Lmiuix/animation/Folme$FolmeImpl;

    move-result-object p0

    if-nez p0, :cond_2

    .line 9
    new-instance p0, Lmiuix/animation/Folme$FolmeImpl;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lmiuix/animation/Folme$FolmeImpl;-><init>([Lmiuix/animation/IAnimTarget;Lmiuix/animation/Folme$1;)V

    :goto_0
    if-ge v1, v0, :cond_2

    .line 10
    aget-object v3, v2, v1

    .line 11
    sget-object v4, Lmiuix/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiuix/animation/Folme$FolmeImpl;

    if-eqz v3, :cond_1

    .line 12
    invoke-virtual {v3}, Lmiuix/animation/Folme$FolmeImpl;->clean()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p0

    .line 13
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "useAt can not be applied to empty views array"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static useSystemAnimatorDurationScale(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2
    move-result-object p0

    .line 5
    const-string v0, "animator_duration_scale"

    .line 6
    const/high16 v1, 0x3f800000    # 1.0f

    .line 8
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    .line 10
    move-result p0

    .line 13
    sget-object v0, Lmiuix/animation/Folme;->sTimeRatio:Ljava/util/concurrent/atomic/AtomicReference;

    .line 14
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 16
    move-result-object p0

    .line 19
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 20
    return-void
    .line 23
.end method

.method public static varargs useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;
    .locals 2

    .line 1
    array-length v0, p0

    .line 2
    if-lez v0, :cond_0

    .line 3
    const/4 v0, 0x0

    .line 5
    aget-object p0, p0, v0

    .line 6
    sget-object v0, Lmiuix/animation/ValueTarget;->sCreator:Lmiuix/animation/ITargetCreator;

    .line 8
    invoke-static {p0, v0}, Lmiuix/animation/Folme;->getTarget(Ljava/lang/Object;Lmiuix/animation/ITargetCreator;)Lmiuix/animation/IAnimTarget;

    .line 10
    move-result-object p0

    .line 13
    invoke-static {p0}, Lmiuix/animation/Folme;->useAt(Lmiuix/animation/IAnimTarget;)Lmiuix/animation/IFolme;

    .line 14
    move-result-object p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p0, Lmiuix/animation/ValueTarget;

    .line 19
    invoke-direct {p0}, Lmiuix/animation/ValueTarget;-><init>()V

    .line 21
    const-wide/16 v0, 0x1

    .line 24
    invoke-virtual {p0, v0, v1}, Lmiuix/animation/IAnimTarget;->setFlags(J)V

    .line 26
    invoke-static {p0}, Lmiuix/animation/Folme;->useAt(Lmiuix/animation/IAnimTarget;)Lmiuix/animation/IFolme;

    .line 29
    move-result-object p0

    .line 32
    :goto_0
    invoke-interface {p0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 33
    move-result-object p0

    .line 36
    return-object p0
    .line 37
.end method

.method public static useVarFontAt(Landroid/widget/TextView;II)Lmiuix/animation/IVarFontStyle;
    .locals 1

    .line 1
    new-instance v0, Lmiuix/animation/controller/FolmeFont;

    .line 2
    invoke-direct {v0}, Lmiuix/animation/controller/FolmeFont;-><init>()V

    .line 4
    invoke-virtual {v0, p0, p1, p2}, Lmiuix/animation/controller/FolmeFont;->useAt(Landroid/widget/TextView;II)Lmiuix/animation/IVarFontStyle;

    .line 7
    move-result-object p0

    .line 10
    return-object p0
    .line 11
.end method

.method public static valueFromPer(FFF)F
    .locals 0

    .line 1
    invoke-static {p2, p1, p0, p1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method
