.class public Lmiuix/animation/property/ValueProperty;
.super Lmiuix/animation/property/FloatProperty;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field private volatile mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lmiuix/animation/property/FloatProperty;-><init>(Ljava/lang/String;)V

    .line 2
    return-void
    .line 5
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    const/4 p0, 0x1

    .line 4
    return p0

    .line 5
    :cond_0
    if-eqz p1, :cond_2

    .line 6
    const-class v0, Lmiuix/animation/property/ValueProperty;

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 14
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    goto :goto_0

    .line 20
    :cond_1
    check-cast p1, Lmiuix/animation/property/ValueProperty;

    .line 21
    invoke-virtual {p0}, Lmiuix/animation/property/ValueProperty;->getName()Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 26
    invoke-virtual {p1}, Lmiuix/animation/property/ValueProperty;->getName()Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 30
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    move-result p0

    .line 34
    return p0

    .line 35
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 36
    return p0
    .line 37
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/animation/property/ValueProperty;->mName:Ljava/lang/String;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lmiuix/animation/property/ValueProperty;->mName:Ljava/lang/String;

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    invoke-super {p0}, Landroid/util/Property;->getName()Ljava/lang/String;

    .line 9
    move-result-object p0

    .line 12
    :goto_0
    return-object p0
    .line 13
.end method

.method public getValue(Ljava/lang/Object;)F
    .locals 1

    .line 1
    instance-of v0, p1, Lmiuix/animation/property/ValueTargetObject;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Lmiuix/animation/property/ValueTargetObject;

    .line 6
    invoke-virtual {p0}, Lmiuix/animation/property/ValueProperty;->getName()Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 11
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 12
    invoke-virtual {p1, p0, v0}, Lmiuix/animation/property/ValueTargetObject;->getPropertyValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 17
    check-cast p0, Ljava/lang/Float;

    .line 18
    if-eqz p0, :cond_0

    .line 20
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    .line 22
    move-result p0

    .line 25
    return p0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    return p0
    .line 28
.end method

.method public hashCode()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmiuix/animation/property/ValueProperty;->getName()Ljava/lang/String;

    .line 2
    move-result-object p0

    .line 5
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 9
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 10
    move-result p0

    .line 13
    return p0
    .line 14
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/animation/property/ValueProperty;->mName:Ljava/lang/String;

    .line 2
    return-void
    .line 4
.end method

.method public setValue(Ljava/lang/Object;F)V
    .locals 1

    .line 1
    instance-of v0, p1, Lmiuix/animation/property/ValueTargetObject;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Lmiuix/animation/property/ValueTargetObject;

    .line 6
    invoke-virtual {p0}, Lmiuix/animation/property/ValueProperty;->getName()Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 11
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 12
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 14
    move-result-object p2

    .line 17
    invoke-virtual {p1, p0, v0, p2}, Lmiuix/animation/property/ValueTargetObject;->setPropertyValue(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 18
    :cond_0
    return-void
    .line 21
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "ValueProperty{name="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lmiuix/animation/property/ValueProperty;->getName()Ljava/lang/String;

    .line 9
    move-result-object p0

    .line 12
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    const/16 p0, 0x7d

    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 24
    return-object p0
    .line 25
.end method
