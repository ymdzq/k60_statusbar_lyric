.class Lcom/miui/maml/elements/AnimatedScreenElement$3;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/miui/maml/elements/AnimatedScreenElement;

.field final synthetic val$config:Lmiuix/animation/base/AnimConfig;

.field final synthetic val$fromState:Lmiuix/animation/controller/AnimState;

.field final synthetic val$toState:Lmiuix/animation/controller/AnimState;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/AnimatedScreenElement;Lmiuix/animation/controller/AnimState;Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement$3;->this$0:Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 2
    iput-object p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement$3;->val$fromState:Lmiuix/animation/controller/AnimState;

    .line 4
    iput-object p3, p0, Lcom/miui/maml/elements/AnimatedScreenElement$3;->val$toState:Lmiuix/animation/controller/AnimState;

    .line 6
    iput-object p4, p0, Lcom/miui/maml/elements/AnimatedScreenElement$3;->val$config:Lmiuix/animation/base/AnimConfig;

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement$3;->this$0:Lcom/miui/maml/elements/AnimatedScreenElement;

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
    iget-object v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement$3;->val$fromState:Lmiuix/animation/controller/AnimState;

    .line 16
    iget-object v2, p0, Lcom/miui/maml/elements/AnimatedScreenElement$3;->val$toState:Lmiuix/animation/controller/AnimState;

    .line 18
    const/4 v3, 0x1

    .line 20
    new-array v3, v3, [Lmiuix/animation/base/AnimConfig;

    .line 21
    iget-object p0, p0, Lcom/miui/maml/elements/AnimatedScreenElement$3;->val$config:Lmiuix/animation/base/AnimConfig;

    .line 23
    const/4 v4, 0x0

    .line 25
    aput-object p0, v3, v4

    .line 26
    invoke-interface {v0, v1, v2, v3}, Lmiuix/animation/IStateStyle;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    goto :goto_0

    .line 31
    :catch_0
    move-exception p0

    .line 32
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 33
    :goto_0
    return-void
    .line 36
.end method
