.class Lcom/miui/maml/folme/AnimatedTarget$1;
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
.method public createTarget(Lcom/miui/maml/elements/AnimatedScreenElement;)Lmiuix/animation/IAnimTarget;
    .locals 0

    .line 2
    new-instance p0, Lcom/miui/maml/folme/AnimatedTarget;

    invoke-direct {p0, p1}, Lcom/miui/maml/folme/AnimatedTarget;-><init>(Lcom/miui/maml/elements/AnimatedScreenElement;)V

    return-object p0
.end method

.method public bridge synthetic createTarget(Ljava/lang/Object;)Lmiuix/animation/IAnimTarget;
    .locals 0

    .line 1
    check-cast p1, Lcom/miui/maml/elements/AnimatedScreenElement;

    invoke-virtual {p0, p1}, Lcom/miui/maml/folme/AnimatedTarget$1;->createTarget(Lcom/miui/maml/elements/AnimatedScreenElement;)Lmiuix/animation/IAnimTarget;

    move-result-object p0

    return-object p0
.end method
