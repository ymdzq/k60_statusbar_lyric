.class public Lmiuix/animation/property/ColorProperty;
.super Lmiuix/animation/property/FloatProperty;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lmiuix/animation/property/IIntValueProperty;


# instance fields
.field private mColorValue:I


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
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    move-result-object v0

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    move-result-object v1

    .line 15
    if-eq v0, v1, :cond_1

    .line 16
    goto :goto_0

    .line 18
    :cond_1
    check-cast p1, Lmiuix/animation/property/ColorProperty;

    .line 19
    iget-object p0, p0, Lmiuix/animation/property/FloatProperty;->mPropertyName:Ljava/lang/String;

    .line 21
    iget-object p1, p1, Lmiuix/animation/property/FloatProperty;->mPropertyName:Ljava/lang/String;

    .line 23
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    move-result p0

    .line 28
    return p0

    .line 29
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 30
    return p0
    .line 31
.end method

.method public getIntValue(Ljava/lang/Object;)I
    .locals 2

    .line 1
    instance-of v0, p1, Lmiuix/animation/property/ValueTargetObject;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Lmiuix/animation/property/ValueTargetObject;

    .line 6
    invoke-virtual {p0}, Landroid/util/Property;->getName()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 11
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 12
    invoke-virtual {p1, v0, v1}, Lmiuix/animation/property/ValueTargetObject;->getPropertyValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 17
    check-cast p1, Ljava/lang/Integer;

    .line 18
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 20
    move-result p1

    .line 23
    iput p1, p0, Lmiuix/animation/property/ColorProperty;->mColorValue:I

    .line 24
    :cond_0
    iget p0, p0, Lmiuix/animation/property/ColorProperty;->mColorValue:I

    .line 26
    return p0
    .line 28
.end method

.method public getValue(Ljava/lang/Object;)F
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/animation/property/FloatProperty;->mPropertyName:Ljava/lang/String;

    .line 2
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 8
    move-result p0

    .line 11
    return p0
    .line 12
.end method

.method public setIntValue(Ljava/lang/Object;I)V
    .locals 1

    .line 1
    iput p2, p0, Lmiuix/animation/property/ColorProperty;->mColorValue:I

    .line 2
    instance-of v0, p1, Lmiuix/animation/property/ValueTargetObject;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    check-cast p1, Lmiuix/animation/property/ValueTargetObject;

    .line 8
    invoke-virtual {p0}, Landroid/util/Property;->getName()Ljava/lang/String;

    .line 10
    move-result-object p0

    .line 13
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 14
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object p2

    .line 19
    invoke-virtual {p1, p0, v0, p2}, Lmiuix/animation/property/ValueTargetObject;->setPropertyValue(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 20
    :cond_0
    return-void
    .line 23
.end method

.method public setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
