.class public Lmiuix/animation/physics/FrictionOperator;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

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
    const-wide v2, -0x3fef333340000000L    # -4.199999809265137

    .line 6
    mul-double/2addr v0, v2

    .line 11
    const-wide v2, 0x4005bf0a8b145769L    # Math.E

    .line 12
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    .line 17
    move-result-wide v0

    .line 20
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 21
    sub-double/2addr v2, v0

    .line 23
    aput-wide v2, p2, p0

    .line 24
    return-void
    .line 26
.end method

.method public varargs updateVelocity(DDDD[D)D
    .locals 0

    .line 1
    const-wide/high16 p5, 0x3ff0000000000000L    # 1.0

    .line 2
    sub-double/2addr p5, p3

    .line 4
    invoke-static {p5, p6, p7, p8}, Ljava/lang/Math;->pow(DD)D

    .line 5
    move-result-wide p3

    .line 8
    mul-double/2addr p3, p1

    .line 9
    return-wide p3
    .line 10
.end method
