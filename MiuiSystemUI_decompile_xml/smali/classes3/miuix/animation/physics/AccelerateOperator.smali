.class public Lmiuix/animation/physics/AccelerateOperator;
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
