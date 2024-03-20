.class Lmiuix/animation/internal/AnimOperationInfo;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final op:B

.field public final propList:Ljava/util/List;

.field public volatile sendTime:J

.field public final target:Lmiuix/animation/IAnimTarget;

.field public usedCount:I


# direct methods
.method public constructor <init>(Lmiuix/animation/IAnimTarget;B[Ljava/lang/String;[Lmiuix/animation/property/FloatProperty;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lmiuix/animation/internal/AnimOperationInfo;->usedCount:I

    .line 6
    iput-byte p2, p0, Lmiuix/animation/internal/AnimOperationInfo;->op:B

    .line 8
    iput-object p1, p0, Lmiuix/animation/internal/AnimOperationInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 10
    if-eqz p3, :cond_0

    .line 12
    instance-of p2, p1, Lmiuix/animation/ValueTarget;

    .line 14
    if-eqz p2, :cond_0

    .line 16
    check-cast p1, Lmiuix/animation/ValueTarget;

    .line 18
    new-instance p2, Ljava/util/ArrayList;

    .line 20
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 22
    iput-object p2, p0, Lmiuix/animation/internal/AnimOperationInfo;->propList:Ljava/util/List;

    .line 25
    array-length p2, p3

    .line 27
    :goto_0
    if-ge v0, p2, :cond_2

    .line 28
    aget-object p4, p3, v0

    .line 30
    iget-object v1, p0, Lmiuix/animation/internal/AnimOperationInfo;->propList:Ljava/util/List;

    .line 32
    invoke-virtual {p1, p4}, Lmiuix/animation/ValueTarget;->getFloatProperty(Ljava/lang/String;)Lmiuix/animation/property/FloatProperty;

    .line 34
    move-result-object p4

    .line 37
    invoke-interface {v1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    add-int/lit8 v0, v0, 0x1

    .line 41
    goto :goto_0

    .line 43
    :cond_0
    if-eqz p4, :cond_1

    .line 44
    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 46
    move-result-object p1

    .line 49
    iput-object p1, p0, Lmiuix/animation/internal/AnimOperationInfo;->propList:Ljava/util/List;

    .line 50
    goto :goto_1

    .line 52
    :cond_1
    const/4 p1, 0x0

    .line 53
    iput-object p1, p0, Lmiuix/animation/internal/AnimOperationInfo;->propList:Ljava/util/List;

    .line 54
    :cond_2
    :goto_1
    return-void
    .line 56
.end method


# virtual methods
.method public isUsed()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/internal/AnimOperationInfo;->propList:Ljava/util/List;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    move v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 9
    move-result v0

    .line 12
    :goto_0
    const/4 v2, 0x1

    .line 13
    iget p0, p0, Lmiuix/animation/internal/AnimOperationInfo;->usedCount:I

    .line 14
    if-nez v0, :cond_1

    .line 16
    if-lez p0, :cond_2

    .line 18
    goto :goto_1

    .line 20
    :cond_1
    if-ne p0, v0, :cond_2

    .line 21
    :goto_1
    move v1, v2

    .line 23
    :cond_2
    return v1
    .line 24
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "AnimOperationInfo{target="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lmiuix/animation/internal/AnimOperationInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ", op="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-byte v1, p0, Lmiuix/animation/internal/AnimOperationInfo;->op:B

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ", propList="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-object p0, p0, Lmiuix/animation/internal/AnimOperationInfo;->propList:Ljava/util/List;

    .line 29
    if-eqz p0, :cond_0

    .line 31
    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    .line 33
    move-result-object p0

    .line 36
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    move-result-object p0

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 p0, 0x0

    .line 42
    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    const/16 p0, 0x7d

    .line 46
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object p0

    .line 54
    return-object p0
    .line 55
.end method
