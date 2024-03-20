.class public Lmiuix/animation/controller/AnimState;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final FLAG_IN_TOUCH:J = 0x4L

.field public static final FLAG_PARALLEL:J = 0x2L

.field public static final FLAG_QUEUE:J = 0x1L

.field private static final STEP:I = 0x64

.field private static final TAG:Ljava/lang/String; = "TAG_"

.field public static final VIEW_POS:I = 0xf42a4

.field public static final VIEW_SIZE:I = 0xf4240

.field private static final sId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public flags:J

.field public final isTemporary:Z

.field private final mConfig:Lmiuix/animation/base/AnimConfig;

.field private final mMap:Ljava/util/Map;

.field private volatile mTag:Ljava/lang/Object;

.field tempIntValueProperty:Lmiuix/animation/property/IntValueProperty;

.field tempValueProperty:Lmiuix/animation/property/ValueProperty;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 4
    sput-object v0, Lmiuix/animation/controller/AnimState;->sId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Z)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lmiuix/animation/property/ValueProperty;

    const-string v1, ""

    invoke-direct {v0, v1}, Lmiuix/animation/property/ValueProperty;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiuix/animation/controller/AnimState;->tempValueProperty:Lmiuix/animation/property/ValueProperty;

    .line 5
    new-instance v0, Lmiuix/animation/property/IntValueProperty;

    invoke-direct {v0, v1}, Lmiuix/animation/property/IntValueProperty;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiuix/animation/controller/AnimState;->tempIntValueProperty:Lmiuix/animation/property/IntValueProperty;

    .line 6
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    iput-object v0, p0, Lmiuix/animation/controller/AnimState;->mConfig:Lmiuix/animation/base/AnimConfig;

    .line 7
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lmiuix/animation/controller/AnimState;->mMap:Ljava/util/Map;

    .line 8
    invoke-virtual {p0, p1}, Lmiuix/animation/controller/AnimState;->setTag(Ljava/lang/Object;)V

    .line 9
    iput-boolean p2, p0, Lmiuix/animation/controller/AnimState;->isTemporary:Z

    return-void
.end method

.method public static alignState(Lmiuix/animation/controller/AnimState;Ljava/util/Collection;)V
    .locals 5

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 2
    move-result-object v0

    .line 5
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    move-result v1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    move-result-object v1

    .line 15
    check-cast v1, Lmiuix/animation/listener/UpdateInfo;

    .line 16
    iget-object v2, v1, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    .line 18
    invoke-virtual {p0, v2}, Lmiuix/animation/controller/AnimState;->contains(Ljava/lang/Object;)Z

    .line 20
    move-result v2

    .line 23
    if-nez v2, :cond_0

    .line 24
    iget-boolean v2, v1, Lmiuix/animation/listener/UpdateInfo;->useInt:Z

    .line 26
    if-eqz v2, :cond_1

    .line 28
    iget-object v2, v1, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    .line 30
    iget-object v1, v1, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 32
    iget-wide v3, v1, Lmiuix/animation/internal/AnimInfo;->startValue:D

    .line 34
    double-to-int v1, v3

    .line 36
    int-to-double v3, v1

    .line 37
    invoke-virtual {p0, v2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 38
    goto :goto_0

    .line 41
    :cond_1
    iget-object v2, v1, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    .line 42
    iget-object v1, v1, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 44
    iget-wide v3, v1, Lmiuix/animation/internal/AnimInfo;->startValue:D

    .line 46
    double-to-float v1, v3

    .line 48
    float-to-double v3, v1

    .line 49
    invoke-virtual {p0, v2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 50
    goto :goto_0

    .line 53
    :cond_2
    const-class v0, Ljava/util/ArrayList;

    .line 54
    const/4 v1, 0x0

    .line 56
    new-array v1, v1, [Ljava/lang/Object;

    .line 57
    invoke-static {v0, v1}, Lmiuix/animation/utils/ObjectPool;->acquire(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    move-result-object v0

    .line 62
    check-cast v0, Ljava/util/List;

    .line 63
    invoke-virtual {p0}, Lmiuix/animation/controller/AnimState;->keySet()Ljava/util/Set;

    .line 65
    move-result-object v1

    .line 68
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 69
    move-result-object v1

    .line 72
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    move-result v2

    .line 76
    if-eqz v2, :cond_5

    .line 77
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    move-result-object v2

    .line 82
    instance-of v3, v2, Lmiuix/animation/property/FloatProperty;

    .line 83
    if-eqz v3, :cond_4

    .line 85
    move-object v3, v2

    .line 87
    check-cast v3, Lmiuix/animation/property/FloatProperty;

    .line 88
    invoke-static {p1, v3}, Lmiuix/animation/listener/UpdateInfo;->findBy(Ljava/util/Collection;Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/listener/UpdateInfo;

    .line 90
    move-result-object v3

    .line 93
    goto :goto_2

    .line 94
    :cond_4
    move-object v3, v2

    .line 95
    check-cast v3, Ljava/lang/String;

    .line 96
    invoke-static {p1, v3}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 98
    move-result-object v3

    .line 101
    :goto_2
    if-nez v3, :cond_3

    .line 102
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    goto :goto_1

    .line 107
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 108
    move-result-object p1

    .line 111
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 112
    move-result v1

    .line 115
    if-eqz v1, :cond_6

    .line 116
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 118
    move-result-object v1

    .line 121
    invoke-virtual {p0, v1}, Lmiuix/animation/controller/AnimState;->remove(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 122
    goto :goto_3

    .line 125
    :cond_6
    invoke-static {v0}, Lmiuix/animation/utils/ObjectPool;->release(Ljava/lang/Object;)V

    .line 126
    return-void
    .line 129
.end method

.method private append(Lmiuix/animation/controller/AnimState;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/AnimState;->mConfig:Lmiuix/animation/base/AnimConfig;

    .line 2
    iget-object v1, p1, Lmiuix/animation/controller/AnimState;->mConfig:Lmiuix/animation/base/AnimConfig;

    .line 4
    invoke-virtual {v0, v1}, Lmiuix/animation/base/AnimConfig;->copy(Lmiuix/animation/base/AnimConfig;)V

    .line 6
    iget-object v0, p0, Lmiuix/animation/controller/AnimState;->mMap:Ljava/util/Map;

    .line 9
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 11
    iget-object p0, p0, Lmiuix/animation/controller/AnimState;->mMap:Ljava/util/Map;

    .line 14
    iget-object p1, p1, Lmiuix/animation/controller/AnimState;->mMap:Ljava/util/Map;

    .line 16
    invoke-interface {p0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 18
    return-void
    .line 21
.end method

.method private getMapValue(Ljava/lang/Object;)Ljava/lang/Double;
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/AnimState;->mMap:Ljava/util/Map;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Double;

    .line 8
    if-nez v0, :cond_0

    .line 10
    instance-of v1, p1, Lmiuix/animation/property/FloatProperty;

    .line 12
    if-eqz v1, :cond_0

    .line 14
    iget-object p0, p0, Lmiuix/animation/controller/AnimState;->mMap:Ljava/util/Map;

    .line 16
    check-cast p1, Lmiuix/animation/property/FloatProperty;

    .line 18
    invoke-virtual {p1}, Landroid/util/Property;->getName()Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 23
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-result-object p0

    .line 27
    move-object v0, p0

    .line 28
    check-cast v0, Ljava/lang/Double;

    .line 29
    :cond_0
    return-object v0
    .line 31
.end method

.method private getProperValue(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;D)D
    .locals 7

    .line 1
    invoke-virtual {p0, p2}, Lmiuix/animation/controller/AnimState;->getConfigFlags(Ljava/lang/Object;)J

    .line 2
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x1

    .line 6
    invoke-static {v0, v1, v2, v3}, Lmiuix/animation/utils/CommonUtils;->hasFlags(JJ)Z

    .line 8
    move-result v2

    .line 11
    if-nez v2, :cond_1

    .line 12
    const-wide v3, 0x412e848000000000L    # 1000000.0

    .line 14
    cmpl-double v3, p3, v3

    .line 19
    if-eqz v3, :cond_1

    .line 21
    const-wide v3, 0x412e854800000000L    # 1000100.0

    .line 23
    cmpl-double v3, p3, v3

    .line 28
    if-eqz v3, :cond_1

    .line 30
    instance-of v3, p2, Lmiuix/animation/property/ISpecificProperty;

    .line 32
    if-eqz v3, :cond_0

    .line 34
    goto :goto_0

    .line 36
    :cond_0
    return-wide p3

    .line 37
    :cond_1
    :goto_0
    invoke-static {p1, p2, p3, p4}, Lmiuix/animation/internal/AnimValueUtils;->getValue(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;D)D

    .line 38
    move-result-wide v3

    .line 41
    if-eqz v2, :cond_2

    .line 42
    invoke-static {p3, p4}, Lmiuix/animation/internal/AnimValueUtils;->isInvalid(D)Z

    .line 44
    move-result p1

    .line 47
    if-nez p1, :cond_2

    .line 48
    const-wide/16 v5, -0x2

    .line 50
    and-long/2addr v0, v5

    .line 52
    invoke-virtual {p0, p2, v0, v1}, Lmiuix/animation/controller/AnimState;->setConfigFlag(Ljava/lang/Object;J)V

    .line 53
    add-double/2addr v3, p3

    .line 56
    invoke-direct {p0, p2, v3, v4}, Lmiuix/animation/controller/AnimState;->setMapValue(Ljava/lang/Object;D)V

    .line 57
    :cond_2
    return-wide v3
    .line 60
.end method

.method private setMapValue(Ljava/lang/Object;D)V
    .locals 3

    .line 1
    instance-of v0, p1, Lmiuix/animation/property/FloatProperty;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lmiuix/animation/controller/AnimState;->mMap:Ljava/util/Map;

    .line 6
    move-object v1, p1

    .line 8
    check-cast v1, Lmiuix/animation/property/FloatProperty;

    .line 9
    invoke-virtual {v1}, Landroid/util/Property;->getName()Ljava/lang/String;

    .line 11
    move-result-object v2

    .line 14
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 15
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    iget-object p0, p0, Lmiuix/animation/controller/AnimState;->mMap:Ljava/util/Map;

    .line 21
    invoke-virtual {v1}, Landroid/util/Property;->getName()Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 26
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 27
    move-result-object p2

    .line 30
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    goto :goto_0

    .line 34
    :cond_0
    iget-object p0, p0, Lmiuix/animation/controller/AnimState;->mMap:Ljava/util/Map;

    .line 35
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 37
    move-result-object p2

    .line 40
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :goto_0
    return-void
    .line 44
.end method


# virtual methods
.method public add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;
    .locals 3

    .line 17
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    const-string v1, " trace: "

    const-string v2, "miuix_anim"

    if-eqz v0, :cond_0

    const-string p2, "warning! the add value is NaN, will not add to AnimState. key: "

    .line 18
    invoke-static {p2, p1, v1}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 19
    new-instance p2, Ljava/lang/Throwable;

    invoke-direct {p2}, Ljava/lang/Throwable;-><init>()V

    .line 20
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 22
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p2, "warning! the add value is Infinite, will not add to AnimState. key: "

    .line 23
    invoke-static {p2, p1, v1}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 24
    new-instance p2, Ljava/lang/Throwable;

    invoke-direct {p2}, Ljava/lang/Throwable;-><init>()V

    .line 25
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 26
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 27
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lmiuix/animation/controller/AnimState;->setMapValue(Ljava/lang/Object;D)V

    return-object p0
.end method

.method public varargs add(Ljava/lang/String;F[J)Lmiuix/animation/controller/AnimState;
    .locals 2

    .line 1
    array-length v0, p3

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    aget-wide v0, p3, v0

    invoke-virtual {p0, p1, v0, v1}, Lmiuix/animation/controller/AnimState;->setConfigFlag(Ljava/lang/Object;J)V

    :cond_0
    float-to-double p2, p2

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p0

    return-object p0
.end method

.method public varargs add(Ljava/lang/String;I[J)Lmiuix/animation/controller/AnimState;
    .locals 5

    .line 4
    array-length v0, p3

    const-wide/16 v1, 0x4

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 5
    aget-wide v3, p3, v0

    or-long v0, v3, v1

    invoke-virtual {p0, p1, v0, v1}, Lmiuix/animation/controller/AnimState;->setConfigFlag(Ljava/lang/Object;J)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lmiuix/animation/controller/AnimState;->getConfigFlags(Ljava/lang/Object;)J

    move-result-wide v3

    or-long v0, v3, v1

    invoke-virtual {p0, p1, v0, v1}, Lmiuix/animation/controller/AnimState;->setConfigFlag(Ljava/lang/Object;J)V

    :goto_0
    int-to-double p2, p2

    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p0

    return-object p0
.end method

.method public varargs add(Lmiuix/animation/property/FloatProperty;F[J)Lmiuix/animation/controller/AnimState;
    .locals 2

    .line 10
    array-length v0, p3

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 11
    aget-wide v0, p3, v0

    invoke-virtual {p0, p1, v0, v1}, Lmiuix/animation/controller/AnimState;->setConfigFlag(Ljava/lang/Object;J)V

    :cond_0
    float-to-double p2, p2

    .line 12
    invoke-virtual {p0, p1, p2, p3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p0

    return-object p0
.end method

.method public varargs add(Lmiuix/animation/property/FloatProperty;I[J)Lmiuix/animation/controller/AnimState;
    .locals 5

    .line 13
    array-length v0, p3

    const-wide/16 v1, 0x4

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 14
    aget-wide v3, p3, v0

    or-long v0, v3, v1

    invoke-virtual {p0, p1, v0, v1}, Lmiuix/animation/controller/AnimState;->setConfigFlag(Ljava/lang/Object;J)V

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0, p1}, Lmiuix/animation/controller/AnimState;->getConfigFlags(Ljava/lang/Object;)J

    move-result-wide v3

    or-long v0, v3, v1

    invoke-virtual {p0, p1, v0, v1}, Lmiuix/animation/controller/AnimState;->setConfigFlag(Ljava/lang/Object;J)V

    :goto_0
    int-to-double p2, p2

    .line 16
    invoke-virtual {p0, p1, p2, p3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p0

    return-object p0
.end method

.method public varargs add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;
    .locals 0

    .line 8
    invoke-virtual {p0, p1, p2, p3}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/FloatProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object p0

    return-object p0
.end method

.method public varargs add(Lmiuix/animation/property/ViewProperty;I[J)Lmiuix/animation/controller/AnimState;
    .locals 0

    .line 9
    invoke-virtual {p0, p1, p2, p3}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/FloatProperty;I[J)Lmiuix/animation/controller/AnimState;

    move-result-object p0

    return-object p0
.end method

.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/AnimState;->mConfig:Lmiuix/animation/base/AnimConfig;

    .line 2
    invoke-virtual {v0}, Lmiuix/animation/base/AnimConfig;->clear()V

    .line 4
    iget-object p0, p0, Lmiuix/animation/controller/AnimState;->mMap:Ljava/util/Map;

    .line 7
    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 9
    return-void
    .line 12
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Lmiuix/animation/controller/AnimState;->mMap:Ljava/util/Map;

    .line 6
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 8
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_1
    instance-of v1, p1, Lmiuix/animation/property/FloatProperty;

    .line 16
    if-eqz v1, :cond_2

    .line 18
    iget-object p0, p0, Lmiuix/animation/controller/AnimState;->mMap:Ljava/util/Map;

    .line 20
    check-cast p1, Lmiuix/animation/property/FloatProperty;

    .line 22
    invoke-virtual {p1}, Landroid/util/Property;->getName()Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 27
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 28
    move-result p0

    .line 31
    return p0

    .line 32
    :cond_2
    return v0
    .line 33
.end method

.method public get(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;)D
    .locals 2

    .line 1
    invoke-direct {p0, p2}, Lmiuix/animation/controller/AnimState;->getMapValue(Ljava/lang/Object;)Ljava/lang/Double;

    .line 2
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 8
    move-result-wide v0

    .line 11
    invoke-direct {p0, p1, p2, v0, v1}, Lmiuix/animation/controller/AnimState;->getProperValue(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;D)D

    .line 12
    move-result-wide p0

    .line 15
    return-wide p0

    .line 16
    :cond_0
    const-wide p0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 17
    return-wide p0
    .line 22
.end method

.method public getConfig()Lmiuix/animation/base/AnimConfig;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/animation/controller/AnimState;->mConfig:Lmiuix/animation/base/AnimConfig;

    .line 2
    return-object p0
    .line 4
.end method

.method public getConfigFlags(Ljava/lang/Object;)J
    .locals 1

    .line 1
    instance-of v0, p1, Lmiuix/animation/property/FloatProperty;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Lmiuix/animation/property/FloatProperty;

    .line 6
    invoke-virtual {p1}, Landroid/util/Property;->getName()Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    check-cast p1, Ljava/lang/String;

    .line 13
    :goto_0
    iget-object p0, p0, Lmiuix/animation/controller/AnimState;->mConfig:Lmiuix/animation/base/AnimConfig;

    .line 15
    invoke-virtual {p0, p1}, Lmiuix/animation/base/AnimConfig;->getSpecialConfig(Ljava/lang/String;)Lmiuix/animation/base/AnimSpecialConfig;

    .line 17
    move-result-object p0

    .line 20
    if-eqz p0, :cond_1

    .line 21
    iget-wide p0, p0, Lmiuix/animation/base/AnimConfig;->flags:J

    .line 23
    goto :goto_1

    .line 25
    :cond_1
    const-wide/16 p0, 0x0

    .line 26
    :goto_1
    return-wide p0
    .line 28
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lmiuix/animation/controller/AnimState;->getMapValue(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Double;->floatValue()F

    move-result p0

    goto :goto_0

    :cond_0
    const p0, 0x7f7fffff    # Float.MAX_VALUE

    :goto_0
    return p0
.end method

.method public getFloat(Lmiuix/animation/property/FloatProperty;)F
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lmiuix/animation/controller/AnimState;->getMapValue(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Double;->floatValue()F

    move-result p0

    goto :goto_0

    :cond_0
    const p0, 0x7f7fffff    # Float.MAX_VALUE

    :goto_0
    return p0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1

    .line 3
    new-instance v0, Lmiuix/animation/property/IntValueProperty;

    invoke-direct {v0, p1}, Lmiuix/animation/property/IntValueProperty;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lmiuix/animation/controller/AnimState;->getInt(Lmiuix/animation/property/IIntValueProperty;)I

    move-result p0

    return p0
.end method

.method public getInt(Lmiuix/animation/property/IIntValueProperty;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lmiuix/animation/controller/AnimState;->getMapValue(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Double;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const p0, 0x7fffffff

    :goto_0
    return p0
.end method

.method public getProperty(Ljava/lang/Object;)Lmiuix/animation/property/FloatProperty;
    .locals 4

    .line 1
    instance-of v0, p1, Lmiuix/animation/property/FloatProperty;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Lmiuix/animation/property/FloatProperty;

    .line 6
    return-object p1

    .line 8
    :cond_0
    check-cast p1, Ljava/lang/String;

    .line 9
    invoke-virtual {p0, p1}, Lmiuix/animation/controller/AnimState;->getConfigFlags(Ljava/lang/Object;)J

    .line 11
    move-result-wide v0

    .line 14
    const-wide/16 v2, 0x4

    .line 15
    invoke-static {v0, v1, v2, v3}, Lmiuix/animation/utils/CommonUtils;->hasFlags(JJ)Z

    .line 17
    move-result p0

    .line 20
    if-eqz p0, :cond_1

    .line 21
    new-instance p0, Lmiuix/animation/property/IntValueProperty;

    .line 23
    invoke-direct {p0, p1}, Lmiuix/animation/property/IntValueProperty;-><init>(Ljava/lang/String;)V

    .line 25
    goto :goto_0

    .line 28
    :cond_1
    new-instance p0, Lmiuix/animation/property/ValueProperty;

    .line 29
    invoke-direct {p0, p1}, Lmiuix/animation/property/ValueProperty;-><init>(Ljava/lang/String;)V

    .line 31
    :goto_0
    return-object p0
    .line 34
.end method

.method public getTag()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/animation/controller/AnimState;->mTag:Ljava/lang/Object;

    .line 2
    return-object p0
    .line 4
.end method

.method public getTempProperty(Ljava/lang/Object;)Lmiuix/animation/property/FloatProperty;
    .locals 4

    .line 1
    instance-of v0, p1, Lmiuix/animation/property/FloatProperty;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Lmiuix/animation/property/FloatProperty;

    .line 6
    return-object p1

    .line 8
    :cond_0
    check-cast p1, Ljava/lang/String;

    .line 9
    invoke-virtual {p0, p1}, Lmiuix/animation/controller/AnimState;->getConfigFlags(Ljava/lang/Object;)J

    .line 11
    move-result-wide v0

    .line 14
    const-wide/16 v2, 0x4

    .line 15
    invoke-static {v0, v1, v2, v3}, Lmiuix/animation/utils/CommonUtils;->hasFlags(JJ)Z

    .line 17
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    iget-object p0, p0, Lmiuix/animation/controller/AnimState;->tempIntValueProperty:Lmiuix/animation/property/IntValueProperty;

    .line 23
    goto :goto_0

    .line 25
    :cond_1
    iget-object p0, p0, Lmiuix/animation/controller/AnimState;->tempValueProperty:Lmiuix/animation/property/ValueProperty;

    .line 26
    :goto_0
    invoke-virtual {p0, p1}, Lmiuix/animation/property/ValueProperty;->setName(Ljava/lang/String;)V

    .line 28
    return-object p0
    .line 31
.end method

.method public isEmpty()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/animation/controller/AnimState;->mMap:Ljava/util/Map;

    .line 2
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public keySet()Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/animation/controller/AnimState;->mMap:Ljava/util/Map;

    .line 2
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public remove(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/AnimState;->mMap:Ljava/util/Map;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    instance-of v0, p1, Lmiuix/animation/property/FloatProperty;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lmiuix/animation/controller/AnimState;->mMap:Ljava/util/Map;

    .line 11
    check-cast p1, Lmiuix/animation/property/FloatProperty;

    .line 13
    invoke-virtual {p1}, Landroid/util/Property;->getName()Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 18
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    :cond_0
    return-object p0
    .line 22
.end method

.method public set(Lmiuix/animation/controller/AnimState;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    iget-object v0, p1, Lmiuix/animation/controller/AnimState;->mTag:Ljava/lang/Object;

    .line 5
    invoke-virtual {p0, v0}, Lmiuix/animation/controller/AnimState;->setTag(Ljava/lang/Object;)V

    .line 7
    invoke-direct {p0, p1}, Lmiuix/animation/controller/AnimState;->append(Lmiuix/animation/controller/AnimState;)V

    .line 10
    return-void
    .line 13
.end method

.method public setConfigFlag(Ljava/lang/Object;J)V
    .locals 1

    .line 1
    instance-of v0, p1, Lmiuix/animation/property/FloatProperty;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Lmiuix/animation/property/FloatProperty;

    .line 6
    invoke-virtual {p1}, Landroid/util/Property;->getName()Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    check-cast p1, Ljava/lang/String;

    .line 13
    :goto_0
    iget-object p0, p0, Lmiuix/animation/controller/AnimState;->mConfig:Lmiuix/animation/base/AnimConfig;

    .line 15
    invoke-virtual {p0, p1}, Lmiuix/animation/base/AnimConfig;->queryAndCreateSpecial(Ljava/lang/String;)Lmiuix/animation/base/AnimSpecialConfig;

    .line 17
    move-result-object p0

    .line 20
    iput-wide p2, p0, Lmiuix/animation/base/AnimConfig;->flags:J

    .line 21
    return-void
    .line 23
.end method

.method public final setTag(Ljava/lang/Object;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 5
    const-string v0, "TAG_"

    .line 7
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    sget-object v0, Lmiuix/animation/controller/AnimState;->sId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 12
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 14
    move-result v0

    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 24
    :goto_0
    iput-object p1, p0, Lmiuix/animation/controller/AnimState;->mTag:Ljava/lang/Object;

    .line 25
    return-void
    .line 27
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "\nAnimState{mTag=\'"

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lmiuix/animation/controller/AnimState;->mTag:Ljava/lang/Object;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, "\', flags:"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-wide v1, p0, Lmiuix/animation/controller/AnimState;->flags:J

    .line 19
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ", mConfig:"

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-object v1, p0, Lmiuix/animation/controller/AnimState;->mConfig:Lmiuix/animation/base/AnimConfig;

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, ", mMaps="

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-object p0, p0, Lmiuix/animation/controller/AnimState;->mMap:Ljava/util/Map;

    .line 39
    const-string v1, "    "

    .line 41
    invoke-static {p0, v1}, Lmiuix/animation/utils/CommonUtils;->mapToString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    move-result-object p0

    .line 46
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    const/16 p0, 0x7d

    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object p0

    .line 58
    return-object p0
    .line 59
.end method
