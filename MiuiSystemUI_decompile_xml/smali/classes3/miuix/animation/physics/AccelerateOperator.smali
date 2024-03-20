.class public Lmiuix/animation/physics/AccelerateOperator;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lmiuix/animation/physics/PhysicsOperator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getParameters([F[D)V
    .locals 4

    .line 1
    const/4 p0, 0x0

    .line 2
    aget p1, p1, p0

    .line 3
    float-to-double v0, p1

    .line 5
    const-wide v2, 0x408f400000000000L    # 1000.0

    .line 6
    mul-double/2addr v0, v2

    .line 11
    aput-wide v0, p2, p0

    .line 12
    return-void
    .line 14
.end method

.method public varargs updateVelocity(DDDD[D)D
    .locals 0

    .line 1
    mul-double/2addr p3, p7

    .line 2
    add-double/2addr p3, p1

    .line 3
    return-wide p3
    .line 4
.end method
