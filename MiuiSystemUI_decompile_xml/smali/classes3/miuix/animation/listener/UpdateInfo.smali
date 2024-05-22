.class public Lmiuix/animation/listener/UpdateInfo;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final animInfo:Lmiuix/animation/internal/AnimInfo;

.field public volatile frameCount:I

.field public volatile isCompleted:Z

.field public final property:Lmiuix/animation/property/FloatProperty;

.field public final useInt:Z

.field public volatile velocity:D


# direct methods
.method public constructor <init>(Lmiuix/animation/property/FloatProperty;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lmiuix/animation/internal/AnimInfo;

    .line 5
    invoke-direct {v0}, Lmiuix/animation/internal/AnimInfo;-><init>()V

    .line 7
    iput-object v0, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 10
    iput-object p1, p0, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    .line 12
    instance-of p1, p1, Lmiuix/animation/property/IIntValueProperty;

    .line 14
    iput-boolean p1, p0, Lmiuix/animation/listener/UpdateInfo;->useInt:Z

    .line 16
    return-void
    .line 18
.end method

.method public static findBy(Ljava/util/Collection;Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/listener/UpdateInfo;
    .locals 2

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 2
    move-result-object p0

    .line 5
    :cond_0
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
    check-cast v0, Lmiuix/animation/listener/UpdateInfo;

    .line 16
    iget-object v1, v0, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    return-object v0

    .line 26
    :cond_1
    const/4 p0, 0x0

    .line 27
    return-object p0
    .line 28
.end method

.method public static findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;
    .locals 2

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 2
    move-result-object p0

    .line 5
    :cond_0
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
    check-cast v0, Lmiuix/animation/listener/UpdateInfo;

    .line 16
    iget-object v1, v0, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    .line 18
    invoke-virtual {v1}, Landroid/util/Property;->getName()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    return-object v0

    .line 30
    :cond_1
    const/4 p0, 0x0

    .line 31
    return-object p0
    .line 32
.end method


# virtual methods
.method public getFloatValue()F
    .locals 4

    .line 1
    iget-object v0, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 2
    iget-wide v0, v0, Lmiuix/animation/internal/AnimInfo;->setToValue:D

    .line 4
    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 6
    cmpl-double v2, v0, v2

    .line 11
    if-eqz v2, :cond_0

    .line 13
    double-to-float p0, v0

    .line 15
    return p0

    .line 16
    :cond_0
    iget-object v0, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 17
    iget-wide v0, v0, Lmiuix/animation/internal/AnimInfo;->value:D

    .line 19
    const-wide v2, 0x47efffffe0000000L    # 3.4028234663852886E38

    .line 21
    cmpl-double v0, v0, v2

    .line 26
    if-ltz v0, :cond_1

    .line 28
    goto :goto_0

    .line 30
    :cond_1
    iget-object v0, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 31
    iget-wide v2, v0, Lmiuix/animation/internal/AnimInfo;->value:D

    .line 33
    :goto_0
    double-to-float v0, v2

    .line 35
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 36
    cmpl-float v1, v0, v1

    .line 39
    if-nez v1, :cond_2

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    const-string v1, "warning value is Float.MAX_VALUE !! correct to startValue "

    .line 45
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    iget-object v1, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 50
    iget-wide v1, v1, Lmiuix/animation/internal/AnimInfo;->startValue:D

    .line 52
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 54
    const-string v1, " "

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object v0

    .line 68
    const/4 v1, 0x0

    .line 69
    new-array v1, v1, [Ljava/lang/Object;

    .line 70
    invoke-static {v0, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    iget-object v0, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 75
    iget-wide v1, v0, Lmiuix/animation/internal/AnimInfo;->startValue:D

    .line 77
    iput-wide v1, v0, Lmiuix/animation/internal/AnimInfo;->value:D

    .line 79
    iget-object p0, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 81
    iget-wide v0, p0, Lmiuix/animation/internal/AnimInfo;->startValue:D

    .line 83
    double-to-float p0, v0

    .line 85
    return p0

    .line 86
    :cond_2
    const p0, -0x800001

    .line 87
    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    .line 90
    move-result p0

    .line 93
    return p0
    .line 94
.end method

.method public getIntValue()I
    .locals 5

    .line 1
    iget-object v0, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 2
    iget-wide v0, v0, Lmiuix/animation/internal/AnimInfo;->setToValue:D

    .line 4
    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 6
    cmpl-double v4, v0, v2

    .line 11
    if-eqz v4, :cond_0

    .line 13
    double-to-int p0, v0

    .line 15
    return p0

    .line 16
    :cond_0
    iget-object v0, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 17
    iget-wide v0, v0, Lmiuix/animation/internal/AnimInfo;->value:D

    .line 19
    cmpl-double v0, v0, v2

    .line 21
    const v1, 0x7fffffff

    .line 23
    if-ltz v0, :cond_1

    .line 26
    move v0, v1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-object v0, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 30
    iget-wide v2, v0, Lmiuix/animation/internal/AnimInfo;->value:D

    .line 32
    double-to-int v0, v2

    .line 34
    :goto_0
    if-ne v0, v1, :cond_2

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    const-string v1, "warning value is Integer.MAX_VALUE !! correct to startValue "

    .line 39
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    iget-object v1, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 44
    iget-wide v1, v1, Lmiuix/animation/internal/AnimInfo;->startValue:D

    .line 46
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 48
    const-string v1, " "

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object v0

    .line 62
    const/4 v1, 0x0

    .line 63
    new-array v1, v1, [Ljava/lang/Object;

    .line 64
    invoke-static {v0, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 69
    iget-wide v1, v0, Lmiuix/animation/internal/AnimInfo;->startValue:D

    .line 71
    iput-wide v1, v0, Lmiuix/animation/internal/AnimInfo;->value:D

    .line 73
    iget-object p0, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 75
    iget-wide v0, p0, Lmiuix/animation/internal/AnimInfo;->startValue:D

    .line 77
    double-to-int p0, v0

    .line 79
    return p0

    .line 80
    :cond_2
    const p0, -0x7fffffff

    .line 81
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    .line 84
    move-result p0

    .line 87
    return p0
    .line 88
.end method

.method public getType()Ljava/lang/Class;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    .line 2
    instance-of p0, p0, Lmiuix/animation/property/IIntValueProperty;

    .line 4
    if-eqz p0, :cond_0

    .line 6
    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    sget-object p0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 11
    :goto_0
    return-object p0
    .line 13
.end method

.method public getValue(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-class v0, Ljava/lang/Float;

    .line 2
    if-eq p1, v0, :cond_3

    .line 4
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 6
    if-ne p1, v0, :cond_0

    .line 8
    goto :goto_1

    .line 10
    :cond_0
    const-class v0, Ljava/lang/Double;

    .line 11
    if-eq p1, v0, :cond_2

    .line 13
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 15
    if-ne p1, v0, :cond_1

    .line 17
    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {p0}, Lmiuix/animation/listener/UpdateInfo;->getIntValue()I

    .line 20
    move-result p0

    .line 23
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :cond_2
    :goto_0
    iget-object p0, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 29
    iget-wide p0, p0, Lmiuix/animation/internal/AnimInfo;->value:D

    .line 31
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 33
    move-result-object p0

    .line 36
    return-object p0

    .line 37
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 38
    move-result p0

    .line 41
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 42
    move-result-object p0

    .line 45
    return-object p0
    .line 46
.end method

.method public isValid()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
    .line 9
.end method

.method public reset()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lmiuix/animation/listener/UpdateInfo;->isCompleted:Z

    .line 3
    iput v0, p0, Lmiuix/animation/listener/UpdateInfo;->frameCount:I

    .line 5
    return-void
    .line 7
.end method

.method public setOp(B)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p1, :cond_1

    .line 4
    const/4 v2, 0x2

    .line 6
    if-le p1, v2, :cond_0

    .line 7
    goto :goto_0

    .line 9
    :cond_0
    move v2, v0

    .line 10
    goto :goto_1

    .line 11
    :cond_1
    :goto_0
    move v2, v1

    .line 12
    :goto_1
    iput-boolean v2, p0, Lmiuix/animation/listener/UpdateInfo;->isCompleted:Z

    .line 13
    iget-boolean v2, p0, Lmiuix/animation/listener/UpdateInfo;->isCompleted:Z

    .line 15
    if-eqz v2, :cond_2

    .line 17
    iget-object v2, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 19
    iget-byte v2, v2, Lmiuix/animation/internal/AnimInfo;->op:B

    .line 21
    invoke-static {v2}, Lmiuix/animation/internal/AnimTask;->isRunning(B)Z

    .line 23
    move-result v2

    .line 26
    if-eqz v2, :cond_2

    .line 27
    iget-object v2, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 29
    iput-boolean v1, v2, Lmiuix/animation/internal/AnimInfo;->justEnd:Z

    .line 31
    :cond_2
    iget-object v1, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 33
    iput-byte p1, v1, Lmiuix/animation/internal/AnimInfo;->op:B

    .line 35
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    .line 37
    move-result v1

    .line 40
    if-eqz v1, :cond_3

    .line 41
    const-string v1, "---- UpdateInfo setOp "

    .line 43
    const-string v2, " justEnd "

    .line 45
    invoke-static {v1, p1, v2}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    move-result-object p1

    .line 50
    iget-object v1, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 51
    iget-boolean v1, v1, Lmiuix/animation/internal/AnimInfo;->justEnd:Z

    .line 53
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 55
    const-string v1, " isCompleted "

    .line 58
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget-boolean p0, p0, Lmiuix/animation/listener/UpdateInfo;->isCompleted:Z

    .line 63
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object p0

    .line 71
    new-array p1, v0, [Ljava/lang/Object;

    .line 72
    invoke-static {p0, p1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    :cond_3
    return-void
    .line 77
.end method

.method public setTargetValue(Lmiuix/animation/IAnimTarget;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmiuix/animation/listener/UpdateInfo;->useInt:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    .line 6
    check-cast v0, Lmiuix/animation/property/IIntValueProperty;

    .line 8
    invoke-virtual {p0}, Lmiuix/animation/listener/UpdateInfo;->getIntValue()I

    .line 10
    move-result p0

    .line 13
    invoke-virtual {p1, v0, p0}, Lmiuix/animation/IAnimTarget;->setIntValue(Lmiuix/animation/property/IIntValueProperty;I)V

    .line 14
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    .line 18
    invoke-virtual {p0}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 20
    move-result p0

    .line 23
    invoke-virtual {p1, v0, p0}, Lmiuix/animation/IAnimTarget;->setValue(Lmiuix/animation/property/FloatProperty;F)V

    .line 24
    :goto_0
    return-void
    .line 27
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "UpdateInfo{, id="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 9
    move-result v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, ", property="

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget-object v1, p0, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    const-string v1, ", velocity="

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget-wide v1, p0, Lmiuix/animation/listener/UpdateInfo;->velocity:D

    .line 31
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 33
    const-string v1, ", op = "

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    iget-object v1, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 41
    iget-byte v1, v1, Lmiuix/animation/internal/AnimInfo;->op:B

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    const-string v1, ", startValue = "

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget-object v1, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 53
    iget-wide v1, v1, Lmiuix/animation/internal/AnimInfo;->startValue:D

    .line 55
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 57
    const-string v1, ", targetValue = "

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    iget-object v1, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 65
    iget-wide v1, v1, Lmiuix/animation/internal/AnimInfo;->targetValue:D

    .line 67
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 69
    const-string v1, ", setToValue = "

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget-object v1, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 77
    iget-wide v1, v1, Lmiuix/animation/internal/AnimInfo;->setToValue:D

    .line 79
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 81
    const-string v1, ", value = "

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget-object v1, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 89
    iget-wide v1, v1, Lmiuix/animation/internal/AnimInfo;->value:D

    .line 91
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 93
    const-string v1, ", startTime = "

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget-object v1, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 101
    iget-wide v1, v1, Lmiuix/animation/internal/AnimInfo;->startTime:J

    .line 103
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 105
    const-string v1, ", useInt="

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    iget-boolean v1, p0, Lmiuix/animation/listener/UpdateInfo;->useInt:Z

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 115
    const-string v1, ", frameCount="

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    iget v1, p0, Lmiuix/animation/listener/UpdateInfo;->frameCount:I

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    const-string v1, ", isCompleted="

    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget-boolean p0, p0, Lmiuix/animation/listener/UpdateInfo;->isCompleted:Z

    .line 133
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 135
    const/16 p0, 0x7d

    .line 138
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    move-result-object p0

    .line 146
    return-object p0
    .line 147
.end method
