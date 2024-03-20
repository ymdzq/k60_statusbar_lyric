.class Lcom/miui/maml/folme/AnimatedTarget$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

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
