.class Lcom/miui/maml/folme/AnimatedProperty$12;
.super Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;-><init>(Ljava/lang/String;)V

    .line 2
    return-void
    .line 5
.end method


# virtual methods
.method public getIntValue(Lcom/miui/maml/elements/AnimatedScreenElement;)I
    .locals 0

    .line 2
    iget-object p0, p1, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintColorProperty:Lcom/miui/maml/folme/PropertyWrapper;

    invoke-virtual {p0}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    move-result-wide p0

    double-to-long p0, p0

    long-to-int p0, p0

    return p0
.end method

.method public bridge synthetic getIntValue(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/miui/maml/elements/AnimatedScreenElement;

    invoke-virtual {p0, p1}, Lcom/miui/maml/folme/AnimatedProperty$12;->getIntValue(Lcom/miui/maml/elements/AnimatedScreenElement;)I

    move-result p0

    return p0
.end method

.method public setIntValue(Lcom/miui/maml/elements/AnimatedScreenElement;I)V
    .locals 0

    .line 2
    iget-object p0, p1, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintColorProperty:Lcom/miui/maml/folme/PropertyWrapper;

    int-to-double p1, p2

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/folme/PropertyWrapper;->setValue(D)V

    return-void
.end method

.method public bridge synthetic setIntValue(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/miui/maml/elements/AnimatedScreenElement;

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/folme/AnimatedProperty$12;->setIntValue(Lcom/miui/maml/elements/AnimatedScreenElement;I)V

    return-void
.end method

.method public setVelocityValue(Lcom/miui/maml/elements/AnimatedScreenElement;F)V
    .locals 0

    .line 2
    iget-object p0, p1, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintColorProperty:Lcom/miui/maml/folme/PropertyWrapper;

    float-to-double p1, p2

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/folme/PropertyWrapper;->setVelocity(D)V

    return-void
.end method

.method public bridge synthetic setVelocityValue(Ljava/lang/Object;F)V
    .locals 0

    .line 1
    check-cast p1, Lcom/miui/maml/elements/AnimatedScreenElement;

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/folme/AnimatedProperty$12;->setVelocityValue(Lcom/miui/maml/elements/AnimatedScreenElement;F)V

    return-void
.end method
