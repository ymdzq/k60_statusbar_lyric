.class Lcom/miui/maml/elements/GeometryScreenElement$1;
.super Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


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
    instance-of p0, p1, Lcom/miui/maml/elements/GeometryScreenElement;

    if-eqz p0, :cond_0

    .line 3
    check-cast p1, Lcom/miui/maml/elements/GeometryScreenElement;

    invoke-static {p1}, Lcom/miui/maml/elements/GeometryScreenElement;->access$000(Lcom/miui/maml/elements/GeometryScreenElement;)Lcom/miui/maml/folme/PropertyWrapper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    move-result-wide p0

    double-to-long p0, p0

    long-to-int p0, p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getIntValue(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/miui/maml/elements/AnimatedScreenElement;

    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/GeometryScreenElement$1;->getIntValue(Lcom/miui/maml/elements/AnimatedScreenElement;)I

    move-result p0

    return p0
.end method

.method public setIntValue(Lcom/miui/maml/elements/AnimatedScreenElement;I)V
    .locals 0

    .line 2
    instance-of p0, p1, Lcom/miui/maml/elements/GeometryScreenElement;

    if-eqz p0, :cond_0

    .line 3
    check-cast p1, Lcom/miui/maml/elements/GeometryScreenElement;

    invoke-static {p1}, Lcom/miui/maml/elements/GeometryScreenElement;->access$000(Lcom/miui/maml/elements/GeometryScreenElement;)Lcom/miui/maml/folme/PropertyWrapper;

    move-result-object p0

    int-to-double p1, p2

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/folme/PropertyWrapper;->setValue(D)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setIntValue(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/miui/maml/elements/AnimatedScreenElement;

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/GeometryScreenElement$1;->setIntValue(Lcom/miui/maml/elements/AnimatedScreenElement;I)V

    return-void
.end method

.method public setVelocityValue(Lcom/miui/maml/elements/AnimatedScreenElement;F)V
    .locals 0

    .line 2
    instance-of p0, p1, Lcom/miui/maml/elements/GeometryScreenElement;

    if-eqz p0, :cond_0

    .line 3
    check-cast p1, Lcom/miui/maml/elements/GeometryScreenElement;

    invoke-static {p1}, Lcom/miui/maml/elements/GeometryScreenElement;->access$000(Lcom/miui/maml/elements/GeometryScreenElement;)Lcom/miui/maml/folme/PropertyWrapper;

    move-result-object p0

    float-to-double p1, p2

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/folme/PropertyWrapper;->setVelocity(D)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setVelocityValue(Ljava/lang/Object;F)V
    .locals 0

    .line 1
    check-cast p1, Lcom/miui/maml/elements/AnimatedScreenElement;

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/GeometryScreenElement$1;->setVelocityValue(Lcom/miui/maml/elements/AnimatedScreenElement;F)V

    return-void
.end method
