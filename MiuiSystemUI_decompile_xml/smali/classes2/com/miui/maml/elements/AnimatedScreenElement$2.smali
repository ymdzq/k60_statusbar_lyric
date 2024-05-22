.class Lcom/miui/maml/elements/AnimatedScreenElement$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/miui/maml/elements/AnimatedScreenElement;

.field final synthetic val$setToState:Lmiuix/animation/controller/AnimState;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/AnimatedScreenElement;Lmiuix/animation/controller/AnimState;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement$2;->this$0:Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 2
    iput-object p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement$2;->val$setToState:Lmiuix/animation/controller/AnimState;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement$2;->this$0:Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 2
    invoke-virtual {v0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAnimTarget()Lcom/miui/maml/folme/AnimatedTarget;

    .line 4
    move-result-object v0

    .line 7
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt(Lmiuix/animation/IAnimTarget;)Lmiuix/animation/IFolme;

    .line 8
    move-result-object v0

    .line 11
    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 12
    move-result-object v0

    .line 15
    iget-object p0, p0, Lcom/miui/maml/elements/AnimatedScreenElement$2;->val$setToState:Lmiuix/animation/controller/AnimState;

    .line 16
    invoke-interface {v0, p0}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    goto :goto_0

    .line 21
    :catch_0
    move-exception p0

    .line 22
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 23
    :goto_0
    return-void
    .line 26
.end method
