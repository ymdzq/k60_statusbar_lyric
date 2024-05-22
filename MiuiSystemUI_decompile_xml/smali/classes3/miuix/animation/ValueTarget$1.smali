.class Lmiuix/animation/ValueTarget$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lmiuix/animation/ITargetCreator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createTarget(Ljava/lang/Object;)Lmiuix/animation/IAnimTarget;
    .locals 1

    .line 1
    new-instance p0, Lmiuix/animation/ValueTarget;

    .line 2
    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0}, Lmiuix/animation/ValueTarget;-><init>(Ljava/lang/Object;Lmiuix/animation/ValueTarget$1;)V

    .line 5
    return-object p0
    .line 8
.end method
