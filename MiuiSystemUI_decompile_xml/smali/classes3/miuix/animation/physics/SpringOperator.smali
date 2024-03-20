.class public Lmiuix/animation/physics/SpringOperator;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lmiuix/animation/physics/PhysicsOperator;


# instance fields
.field params:[D


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [D

    .line 2
    iput-object v1, p0, Lmiuix/animation/physics/SpringOperator;->params:[D

    new-array v0, v0, [F

    const/4 v2, 0x0

    aput p1, v0, v2

    const/4 p1, 0x1

    aput p2, v0, p1

    .line 3
    invoke-virtual {p0, v0, v1}, Lmiuix/animation/physics/SpringOperator;->getParameters([F[D)V

    return-void
.end method


# virtual methods
.method public getParameters([F[D)V
    .locals 9

    .line 1
    const/4 p0, 0x0

    .line 2
    aget v0, p1, p0

    .line 3
    float-to-double v0, v0

    .line 5
    const/4 v2, 0x1

    .line 6
    aget p1, p1, v2

    .line 7
    float-to-double v3, p1

    .line 9
    const-wide v5, 0x401921fb54442d18L    # 6.283185307179586

    .line 10
    div-double/2addr v5, v3

    .line 15
    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    .line 16
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    .line 18
    move-result-wide v5

    .line 21
    aput-wide v5, p2, p0

    .line 22
    const-wide p0, 0x402921fb54442d18L    # 12.566370614359172

    .line 24
    mul-double/2addr v0, p0

    .line 29
    div-double/2addr v0, v3

    .line 30
    const-wide/high16 p0, 0x404e000000000000L    # 60.0

    .line 31
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(DD)D

    .line 33
    move-result-wide p0

    .line 36
    aput-wide p0, p2, v2

    .line 37
    return-void
    .line 39
.end method

.method public varargs updateVelocity(DDDD[D)D
    .locals 6

    const/4 p0, 0x0

    .line 6
    aget-wide v0, p9, p0

    const/4 p0, 0x1

    .line 7
    aget-wide v2, p9, p0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double/2addr p5, p7

    sub-double/2addr v4, p5

    mul-double/2addr v4, p1

    sub-double/2addr v0, v2

    mul-double/2addr v0, p3

    mul-double/2addr v0, p7

    double-to-float p0, v0

    float-to-double p0, p0

    add-double/2addr v4, p0

    return-wide v4
.end method

.method public varargs updateVelocity(DF[F)D
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/animation/physics/SpringOperator;->params:[D

    if-nez v0, :cond_0

    return-wide p1

    .line 2
    :cond_0
    array-length v0, p4

    new-array v10, v0, [D

    const/4 v0, 0x0

    move v1, v0

    .line 3
    :goto_0
    array-length v2, p4

    if-ge v1, v2, :cond_1

    .line 4
    aget v2, p4, v1

    float-to-double v2, v2

    aput-wide v2, v10, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object p4, p0, Lmiuix/animation/physics/SpringOperator;->params:[D

    aget-wide v4, p4, v0

    const/4 v0, 0x1

    aget-wide v6, p4, v0

    float-to-double v8, p3

    move-object v1, p0

    move-wide v2, p1

    invoke-virtual/range {v1 .. v10}, Lmiuix/animation/physics/SpringOperator;->updateVelocity(DDDD[D)D

    move-result-wide p0

    return-wide p0
.end method
