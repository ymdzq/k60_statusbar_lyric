.class public Lmiuix/animation/base/AnimConfigLink;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field private static final sIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final configList:Ljava/util/List;

.field private final id:I

.field private final mHeadConfig:Lmiuix/animation/base/AnimConfig;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 4
    sput-object v0, Lmiuix/animation/base/AnimConfigLink;->sIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lmiuix/animation/base/AnimConfigLink;->sIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 7
    move-result v0

    .line 10
    iput v0, p0, Lmiuix/animation/base/AnimConfigLink;->id:I

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    iput-object v0, p0, Lmiuix/animation/base/AnimConfigLink;->configList:Ljava/util/List;

    .line 18
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 20
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 22
    iput-object v0, p0, Lmiuix/animation/base/AnimConfigLink;->mHeadConfig:Lmiuix/animation/base/AnimConfig;

    .line 25
    return-void
    .line 27
.end method

.method private doClear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/animation/base/AnimConfigLink;->configList:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    iget-object p0, p0, Lmiuix/animation/base/AnimConfigLink;->mHeadConfig:Lmiuix/animation/base/AnimConfig;

    .line 7
    invoke-virtual {p0}, Lmiuix/animation/base/AnimConfig;->clear()V

    .line 9
    return-void
    .line 12
.end method

.method public static varargs linkConfig([Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/base/AnimConfigLink;
    .locals 6

    .line 1
    new-instance v0, Lmiuix/animation/base/AnimConfigLink;

    .line 2
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfigLink;-><init>()V

    .line 4
    array-length v1, p0

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :goto_0
    if-ge v3, v1, :cond_0

    .line 10
    aget-object v4, p0, v3

    .line 12
    new-array v5, v2, [Z

    .line 14
    invoke-virtual {v0, v4, v5}, Lmiuix/animation/base/AnimConfigLink;->add(Lmiuix/animation/base/AnimConfig;[Z)V

    .line 16
    add-int/lit8 v3, v3, 0x1

    .line 19
    goto :goto_0

    .line 21
    :cond_0
    return-object v0
    .line 22
.end method


# virtual methods
.method public varargs add(Lmiuix/animation/base/AnimConfig;[Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lmiuix/animation/base/AnimConfigLink;->configList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    array-length v0, p2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-boolean p2, p2, v0

    if-eqz p2, :cond_0

    .line 3
    new-instance p2, Lmiuix/animation/base/AnimConfig;

    invoke-direct {p2, p1}, Lmiuix/animation/base/AnimConfig;-><init>(Lmiuix/animation/base/AnimConfig;)V

    .line 4
    iget-object p0, p0, Lmiuix/animation/base/AnimConfigLink;->configList:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object p0, p0, Lmiuix/animation/base/AnimConfigLink;->configList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public varargs add(Lmiuix/animation/base/AnimConfigLink;[Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object p1, p1, Lmiuix/animation/base/AnimConfigLink;->configList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/base/AnimConfig;

    .line 7
    invoke-virtual {p0, v0, p2}, Lmiuix/animation/base/AnimConfigLink;->add(Lmiuix/animation/base/AnimConfig;[Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addTo(Lmiuix/animation/base/AnimConfig;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lmiuix/animation/base/AnimConfigLink;->configList:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    :goto_0
    if-ltz v0, :cond_1

    .line 10
    iget-object v1, p0, Lmiuix/animation/base/AnimConfigLink;->configList:Ljava/util/List;

    .line 12
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 17
    check-cast v1, Lmiuix/animation/base/AnimConfig;

    .line 18
    iget-wide v2, p1, Lmiuix/animation/base/AnimConfig;->delay:J

    .line 20
    iget-wide v4, v1, Lmiuix/animation/base/AnimConfig;->delay:J

    .line 22
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 24
    move-result-wide v2

    .line 27
    iput-wide v2, p1, Lmiuix/animation/base/AnimConfig;->delay:J

    .line 28
    iget-object v2, p1, Lmiuix/animation/base/AnimConfig;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 30
    iget-object v3, v1, Lmiuix/animation/base/AnimConfig;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 32
    if-eqz v3, :cond_0

    .line 34
    sget-object v4, Lmiuix/animation/base/AnimConfig;->sDefEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 36
    if-eq v3, v4, :cond_0

    .line 38
    move-object v2, v3

    .line 40
    :cond_0
    invoke-virtual {p1, v2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 41
    iget-object v2, p1, Lmiuix/animation/base/AnimConfig;->listeners:Ljava/util/HashSet;

    .line 44
    iget-object v3, v1, Lmiuix/animation/base/AnimConfig;->listeners:Ljava/util/HashSet;

    .line 46
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 48
    iget-wide v2, p1, Lmiuix/animation/base/AnimConfig;->flags:J

    .line 51
    iget-wide v4, v1, Lmiuix/animation/base/AnimConfig;->flags:J

    .line 53
    or-long/2addr v2, v4

    .line 55
    iput-wide v2, p1, Lmiuix/animation/base/AnimConfig;->flags:J

    .line 56
    iget v2, p1, Lmiuix/animation/base/AnimConfig;->fromSpeed:F

    .line 58
    iget v3, v1, Lmiuix/animation/base/AnimConfig;->fromSpeed:F

    .line 60
    invoke-static {v2, v3}, Lmiuix/animation/internal/AnimConfigUtils;->chooseSpeed(FF)F

    .line 62
    move-result v2

    .line 65
    iput v2, p1, Lmiuix/animation/base/AnimConfig;->fromSpeed:F

    .line 66
    iget-wide v2, p1, Lmiuix/animation/base/AnimConfig;->minDuration:J

    .line 68
    iget-wide v4, v1, Lmiuix/animation/base/AnimConfig;->minDuration:J

    .line 70
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 72
    move-result-wide v2

    .line 75
    iput-wide v2, p1, Lmiuix/animation/base/AnimConfig;->minDuration:J

    .line 76
    iget v2, p1, Lmiuix/animation/base/AnimConfig;->tintMode:I

    .line 78
    iget v3, v1, Lmiuix/animation/base/AnimConfig;->tintMode:I

    .line 80
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 82
    move-result v2

    .line 85
    iput v2, p1, Lmiuix/animation/base/AnimConfig;->tintMode:I

    .line 86
    invoke-virtual {p1, v1}, Lmiuix/animation/base/AnimConfig;->addSpecialConfigs(Lmiuix/animation/base/AnimConfig;)V

    .line 88
    add-int/lit8 v0, v0, -0x1

    .line 91
    goto :goto_0

    .line 93
    :cond_1
    return-void
    .line 94
.end method

.method public clear()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lmiuix/animation/base/AnimConfigLink;->doClear()V

    .line 2
    iget-object v0, p0, Lmiuix/animation/base/AnimConfigLink;->configList:Ljava/util/List;

    .line 5
    iget-object p0, p0, Lmiuix/animation/base/AnimConfigLink;->mHeadConfig:Lmiuix/animation/base/AnimConfig;

    .line 7
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    return-void
    .line 12
.end method

.method public copy(Lmiuix/animation/base/AnimConfigLink;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lmiuix/animation/base/AnimConfigLink;->doClear()V

    .line 2
    if-eqz p1, :cond_0

    .line 5
    iget-object p0, p0, Lmiuix/animation/base/AnimConfigLink;->configList:Ljava/util/List;

    .line 7
    iget-object p1, p1, Lmiuix/animation/base/AnimConfigLink;->configList:Ljava/util/List;

    .line 9
    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 11
    :cond_0
    return-void
    .line 14
.end method

.method public getHead()Lmiuix/animation/base/AnimConfig;
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/animation/base/AnimConfigLink;->configList:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lmiuix/animation/base/AnimConfigLink;->configList:Ljava/util/List;

    .line 10
    iget-object v1, p0, Lmiuix/animation/base/AnimConfigLink;->mHeadConfig:Lmiuix/animation/base/AnimConfig;

    .line 12
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_0
    iget-object p0, p0, Lmiuix/animation/base/AnimConfigLink;->configList:Ljava/util/List;

    .line 17
    const/4 v0, 0x0

    .line 19
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object p0

    .line 23
    check-cast p0, Lmiuix/animation/base/AnimConfig;

    .line 24
    return-object p0
    .line 26
.end method

.method public remove(Lmiuix/animation/base/AnimConfig;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lmiuix/animation/base/AnimConfigLink;->configList:Ljava/util/List;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6
    iget-object p1, p0, Lmiuix/animation/base/AnimConfigLink;->configList:Ljava/util/List;

    .line 9
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 11
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    iget-object p1, p0, Lmiuix/animation/base/AnimConfigLink;->mHeadConfig:Lmiuix/animation/base/AnimConfig;

    .line 17
    invoke-virtual {p1}, Lmiuix/animation/base/AnimConfig;->clear()V

    .line 19
    iget-object p1, p0, Lmiuix/animation/base/AnimConfigLink;->configList:Ljava/util/List;

    .line 22
    iget-object p0, p0, Lmiuix/animation/base/AnimConfigLink;->mHeadConfig:Lmiuix/animation/base/AnimConfig;

    .line 24
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    :cond_0
    return-void
    .line 29
.end method

.method public size()I
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/animation/base/AnimConfigLink;->configList:Ljava/util/List;

    .line 2
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "AnimConfigLink{id = "

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget v1, p0, Lmiuix/animation/base/AnimConfigLink;->id:I

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ", configList="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object p0, p0, Lmiuix/animation/base/AnimConfigLink;->configList:Ljava/util/List;

    .line 19
    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    .line 21
    move-result-object p0

    .line 24
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    const/16 p0, 0x7d

    .line 32
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object p0

    .line 40
    return-object p0
    .line 41
.end method
