.class public Lmiuix/animation/base/AnimConfig;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final FLAG_DELTA:J = 0x1L

.field public static final FLAG_INIT:J = 0x2L

.field public static final FLAG_INT:J = 0x4L

.field public static final TINT_ALPHA:I = 0x0

.field public static final TINT_AUTO:I = -0x1

.field public static final TINT_OPAQUE:I = 0x1

.field public static final TINT_REGION_USER_DEFINED:I = 0x3

.field public static final sDefEase:Lmiuix/animation/utils/EaseManager$EaseStyle;


# instance fields
.field public delay:J

.field public ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

.field public flags:J

.field public fromSpeed:F

.field public final listeners:Ljava/util/HashSet;

.field private final mSpecialNameMap:Ljava/util/Map;

.field public minDuration:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public tag:Ljava/lang/Object;

.field public tintMode:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [F

    .line 3
    fill-array-data v0, :array_0

    .line 5
    const/4 v1, -0x2

    .line 8
    invoke-static {v1, v0}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 9
    move-result-object v0

    .line 12
    sput-object v0, Lmiuix/animation/base/AnimConfig;->sDefEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 13
    return-void

    .line 15
    :array_0
    .array-data 4
        0x3f59999a    # 0.85f
        0x3e99999a    # 0.3f
    .end array-data
    .line 16
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lmiuix/animation/base/AnimConfig;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Lmiuix/animation/base/AnimConfig;)V
    .locals 1

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, v0}, Lmiuix/animation/base/AnimConfig;-><init>(Z)V

    .line 10
    invoke-virtual {p0, p1}, Lmiuix/animation/base/AnimConfig;->copy(Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 3
    iput v0, p0, Lmiuix/animation/base/AnimConfig;->fromSpeed:F

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lmiuix/animation/base/AnimConfig;->tintMode:I

    if-nez p1, :cond_0

    .line 5
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lmiuix/animation/base/AnimConfig;->mSpecialNameMap:Ljava/util/Map;

    .line 6
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lmiuix/animation/base/AnimConfig;->listeners:Ljava/util/HashSet;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lmiuix/animation/base/AnimConfig;->mSpecialNameMap:Ljava/util/Map;

    .line 8
    iput-object p1, p0, Lmiuix/animation/base/AnimConfig;->listeners:Ljava/util/HashSet;

    :goto_0
    return-void
.end method

.method private queryAndCreateSpecial(Ljava/lang/String;Z)Lmiuix/animation/base/AnimSpecialConfig;
    .locals 1

    .line 4
    iget-object v0, p0, Lmiuix/animation/base/AnimConfig;->mSpecialNameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/base/AnimSpecialConfig;

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 5
    new-instance v0, Lmiuix/animation/base/AnimSpecialConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    .line 6
    iget-object p0, p0, Lmiuix/animation/base/AnimConfig;->mSpecialNameMap:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private queryAndCreateSpecial(Lmiuix/animation/property/FloatProperty;Z)Lmiuix/animation/base/AnimSpecialConfig;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lmiuix/animation/base/AnimConfig;->queryAndCreateSpecial(Ljava/lang/String;Z)Lmiuix/animation/base/AnimSpecialConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public varargs addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/animation/base/AnimConfig;->listeners:Ljava/util/HashSet;

    .line 2
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 4
    return-object p0
    .line 7
.end method

.method public addSpecialConfigs(Lmiuix/animation/base/AnimConfig;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/animation/base/AnimConfig;->mSpecialNameMap:Ljava/util/Map;

    .line 2
    iget-object p1, p1, Lmiuix/animation/base/AnimConfig;->mSpecialNameMap:Ljava/util/Map;

    .line 4
    invoke-interface {p0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 6
    return-void
    .line 9
.end method

.method public clear()V
    .locals 4

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lmiuix/animation/base/AnimConfig;->delay:J

    .line 4
    const/4 v2, 0x0

    .line 6
    iput-object v2, p0, Lmiuix/animation/base/AnimConfig;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 7
    iget-object v3, p0, Lmiuix/animation/base/AnimConfig;->listeners:Ljava/util/HashSet;

    .line 9
    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 11
    iput-object v2, p0, Lmiuix/animation/base/AnimConfig;->tag:Ljava/lang/Object;

    .line 14
    iput-wide v0, p0, Lmiuix/animation/base/AnimConfig;->flags:J

    .line 16
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 18
    iput v2, p0, Lmiuix/animation/base/AnimConfig;->fromSpeed:F

    .line 21
    iput-wide v0, p0, Lmiuix/animation/base/AnimConfig;->minDuration:J

    .line 23
    const/4 v0, -0x1

    .line 25
    iput v0, p0, Lmiuix/animation/base/AnimConfig;->tintMode:I

    .line 26
    iget-object p0, p0, Lmiuix/animation/base/AnimConfig;->mSpecialNameMap:Ljava/util/Map;

    .line 28
    if-eqz p0, :cond_0

    .line 30
    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 32
    :cond_0
    return-void
    .line 35
.end method

.method public copy(Lmiuix/animation/base/AnimConfig;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    if-eq p1, p0, :cond_0

    .line 4
    iget-wide v0, p1, Lmiuix/animation/base/AnimConfig;->delay:J

    .line 6
    iput-wide v0, p0, Lmiuix/animation/base/AnimConfig;->delay:J

    .line 8
    iget-object v0, p1, Lmiuix/animation/base/AnimConfig;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 10
    iput-object v0, p0, Lmiuix/animation/base/AnimConfig;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 12
    iget-object v0, p0, Lmiuix/animation/base/AnimConfig;->listeners:Ljava/util/HashSet;

    .line 14
    iget-object v1, p1, Lmiuix/animation/base/AnimConfig;->listeners:Ljava/util/HashSet;

    .line 16
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 18
    iget-object v0, p1, Lmiuix/animation/base/AnimConfig;->tag:Ljava/lang/Object;

    .line 21
    iput-object v0, p0, Lmiuix/animation/base/AnimConfig;->tag:Ljava/lang/Object;

    .line 23
    iget-wide v0, p1, Lmiuix/animation/base/AnimConfig;->flags:J

    .line 25
    iput-wide v0, p0, Lmiuix/animation/base/AnimConfig;->flags:J

    .line 27
    iget v0, p1, Lmiuix/animation/base/AnimConfig;->fromSpeed:F

    .line 29
    iput v0, p0, Lmiuix/animation/base/AnimConfig;->fromSpeed:F

    .line 31
    iget-wide v0, p1, Lmiuix/animation/base/AnimConfig;->minDuration:J

    .line 33
    iput-wide v0, p0, Lmiuix/animation/base/AnimConfig;->minDuration:J

    .line 35
    iget v0, p1, Lmiuix/animation/base/AnimConfig;->tintMode:I

    .line 37
    iput v0, p0, Lmiuix/animation/base/AnimConfig;->tintMode:I

    .line 39
    iget-object v0, p0, Lmiuix/animation/base/AnimConfig;->mSpecialNameMap:Ljava/util/Map;

    .line 41
    if-eqz v0, :cond_0

    .line 43
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 45
    iget-object p0, p0, Lmiuix/animation/base/AnimConfig;->mSpecialNameMap:Ljava/util/Map;

    .line 48
    iget-object p1, p1, Lmiuix/animation/base/AnimConfig;->mSpecialNameMap:Ljava/util/Map;

    .line 50
    invoke-interface {p0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 52
    :cond_0
    return-void
    .line 55
.end method

.method public getSpecialConfig(Ljava/lang/String;)Lmiuix/animation/base/AnimSpecialConfig;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lmiuix/animation/base/AnimConfig;->queryAndCreateSpecial(Ljava/lang/String;Z)Lmiuix/animation/base/AnimSpecialConfig;

    move-result-object p0

    return-object p0
.end method

.method public getSpecialConfig(Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/base/AnimSpecialConfig;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/animation/base/AnimConfig;->queryAndCreateSpecial(Lmiuix/animation/property/FloatProperty;Z)Lmiuix/animation/base/AnimSpecialConfig;

    move-result-object p0

    return-object p0
.end method

.method public queryAndCreateSpecial(Ljava/lang/String;)Lmiuix/animation/base/AnimSpecialConfig;
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Lmiuix/animation/base/AnimConfig;->queryAndCreateSpecial(Ljava/lang/String;Z)Lmiuix/animation/base/AnimSpecialConfig;

    move-result-object p0

    return-object p0
.end method

.method public queryAndCreateSpecial(Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/base/AnimSpecialConfig;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/animation/base/AnimConfig;->queryAndCreateSpecial(Lmiuix/animation/property/FloatProperty;Z)Lmiuix/animation/base/AnimSpecialConfig;

    move-result-object p0

    return-object p0
.end method

.method public varargs removeListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;
    .locals 1

    .line 1
    array-length v0, p1

    .line 2
    if-nez v0, :cond_0

    .line 3
    iget-object p1, p0, Lmiuix/animation/base/AnimConfig;->listeners:Ljava/util/HashSet;

    .line 5
    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 7
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lmiuix/animation/base/AnimConfig;->listeners:Ljava/util/HashSet;

    .line 11
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 13
    move-result-object p1

    .line 16
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 17
    :goto_0
    return-object p0
    .line 20
.end method

.method public setDelay(J)Lmiuix/animation/base/AnimConfig;
    .locals 0

    .line 1
    iput-wide p1, p0, Lmiuix/animation/base/AnimConfig;->delay:J

    .line 2
    return-object p0
    .line 4
.end method

.method public varargs setEase(I[F)Lmiuix/animation/base/AnimConfig;
    .locals 0

    .line 2
    invoke-static {p1, p2}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object p1

    iput-object p1, p0, Lmiuix/animation/base/AnimConfig;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    return-object p0
.end method

.method public setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/animation/base/AnimConfig;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    return-object p0
.end method

.method public setFromSpeed(F)Lmiuix/animation/base/AnimConfig;
    .locals 0

    .line 1
    iput p1, p0, Lmiuix/animation/base/AnimConfig;->fromSpeed:F

    .line 2
    return-object p0
    .line 4
.end method

.method public setMinDuration(J)Lmiuix/animation/base/AnimConfig;
    .locals 0

    .line 1
    iput-wide p1, p0, Lmiuix/animation/base/AnimConfig;->minDuration:J

    .line 2
    return-object p0
    .line 4
.end method

.method public varargs setSpecial(Ljava/lang/String;J[F)Lmiuix/animation/base/AnimConfig;
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-object v5, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/utils/EaseManager$EaseStyle;J[F)Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    return-object p0
.end method

.method public setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;
    .locals 1

    if-eqz p2, :cond_0

    .line 14
    iget-object v0, p0, Lmiuix/animation/base/AnimConfig;->mSpecialNameMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 15
    :cond_0
    iget-object p2, p0, Lmiuix/animation/base/AnimConfig;->mSpecialNameMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object p0
.end method

.method public varargs setSpecial(Ljava/lang/String;Lmiuix/animation/utils/EaseManager$EaseStyle;J[F)Lmiuix/animation/base/AnimConfig;
    .locals 7

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, p1, v0}, Lmiuix/animation/base/AnimConfig;->queryAndCreateSpecial(Ljava/lang/String;Z)Lmiuix/animation/base/AnimSpecialConfig;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    .line 4
    invoke-virtual/range {v1 .. v6}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/base/AnimSpecialConfig;Lmiuix/animation/utils/EaseManager$EaseStyle;J[F)V

    return-object p0
.end method

.method public varargs setSpecial(Ljava/lang/String;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;
    .locals 6

    const-wide/16 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 2
    invoke-virtual/range {v0 .. v5}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/utils/EaseManager$EaseStyle;J[F)Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    return-object p0
.end method

.method public varargs setSpecial(Lmiuix/animation/property/FloatProperty;J[F)Lmiuix/animation/base/AnimConfig;
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-object v5, p4

    .line 5
    invoke-virtual/range {v0 .. v5}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;J[F)Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    return-object p0
.end method

.method public setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;
    .locals 1

    if-eqz p2, :cond_0

    .line 12
    iget-object v0, p0, Lmiuix/animation/base/AnimConfig;->mSpecialNameMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 13
    :cond_0
    iget-object p2, p0, Lmiuix/animation/base/AnimConfig;->mSpecialNameMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object p0
.end method

.method public varargs setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;J[F)Lmiuix/animation/base/AnimConfig;
    .locals 7

    const/4 v0, 0x1

    .line 7
    invoke-direct {p0, p1, v0}, Lmiuix/animation/base/AnimConfig;->queryAndCreateSpecial(Lmiuix/animation/property/FloatProperty;Z)Lmiuix/animation/base/AnimSpecialConfig;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    .line 8
    invoke-virtual/range {v1 .. v6}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/base/AnimSpecialConfig;Lmiuix/animation/utils/EaseManager$EaseStyle;J[F)V

    return-object p0
.end method

.method public varargs setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;
    .locals 6

    const-wide/16 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 6
    invoke-virtual/range {v0 .. v5}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;J[F)Lmiuix/animation/base/AnimConfig;

    return-object p0
.end method

.method public varargs setSpecial(Lmiuix/animation/base/AnimSpecialConfig;Lmiuix/animation/utils/EaseManager$EaseStyle;J[F)V
    .locals 2

    if-eqz p2, :cond_0

    .line 9
    invoke-virtual {p1, p2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long p0, p3, v0

    if-lez p0, :cond_1

    .line 10
    invoke-virtual {p1, p3, p4}, Lmiuix/animation/base/AnimConfig;->setDelay(J)Lmiuix/animation/base/AnimConfig;

    .line 11
    :cond_1
    array-length p0, p5

    if-lez p0, :cond_2

    const/4 p0, 0x0

    aget p0, p5, p0

    invoke-virtual {p1, p0}, Lmiuix/animation/base/AnimConfig;->setFromSpeed(F)Lmiuix/animation/base/AnimConfig;

    :cond_2
    return-void
.end method

.method public setTag(Ljava/lang/Object;)Lmiuix/animation/base/AnimConfig;
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/animation/base/AnimConfig;->tag:Ljava/lang/Object;

    .line 2
    return-object p0
    .line 4
.end method

.method public setTintMode(I)Lmiuix/animation/base/AnimConfig;
    .locals 0

    .line 1
    iput p1, p0, Lmiuix/animation/base/AnimConfig;->tintMode:I

    .line 2
    return-object p0
    .line 4
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "AnimConfig{delay="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-wide v1, p0, Lmiuix/animation/base/AnimConfig;->delay:J

    .line 9
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ", minDuration="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-wide v1, p0, Lmiuix/animation/base/AnimConfig;->minDuration:J

    .line 19
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ", ease="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-object v1, p0, Lmiuix/animation/base/AnimConfig;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, ", fromSpeed="

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget v1, p0, Lmiuix/animation/base/AnimConfig;->fromSpeed:F

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 41
    const-string v1, ", tintMode="

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget v1, p0, Lmiuix/animation/base/AnimConfig;->tintMode:I

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    const-string v1, ", tag="

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget-object v1, p0, Lmiuix/animation/base/AnimConfig;->tag:Ljava/lang/Object;

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    const-string v1, ", flags="

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-wide v1, p0, Lmiuix/animation/base/AnimConfig;->flags:J

    .line 69
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 71
    const-string v1, ", listeners="

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget-object v1, p0, Lmiuix/animation/base/AnimConfig;->listeners:Ljava/util/HashSet;

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    const-string v1, ", specialNameMap = "

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget-object p0, p0, Lmiuix/animation/base/AnimConfig;->mSpecialNameMap:Ljava/util/Map;

    .line 89
    const-string v1, "    "

    .line 91
    invoke-static {p0, v1}, Lmiuix/animation/utils/CommonUtils;->mapToString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    move-result-object p0

    .line 96
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    const/16 p0, 0x7d

    .line 100
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    move-result-object p0

    .line 108
    return-object p0
    .line 109
.end method
