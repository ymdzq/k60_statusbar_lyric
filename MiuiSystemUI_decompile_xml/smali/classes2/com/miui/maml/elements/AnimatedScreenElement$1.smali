.class Lcom/miui/maml/elements/AnimatedScreenElement$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/miui/maml/elements/AnimatedScreenElement;

.field final synthetic val$config:Lmiuix/animation/base/AnimConfig;

.field final synthetic val$toState:Lmiuix/animation/controller/AnimState;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/AnimatedScreenElement;Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement$1;->this$0:Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 2
    iput-object p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement$1;->val$toState:Lmiuix/animation/controller/AnimState;

    .line 4
    iput-object p3, p0, Lcom/miui/maml/elements/AnimatedScreenElement$1;->val$config:Lmiuix/animation/base/AnimConfig;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement$1;->this$0:Lcom/miui/maml/elements/AnimatedScreenElement;

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
    iget-object v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement$1;->val$toState:Lmiuix/animation/controller/AnimState;

    .line 16
    const/4 v2, 0x1

    .line 18
    new-array v2, v2, [Lmiuix/animation/base/AnimConfig;

    .line 19
    iget-object p0, p0, Lcom/miui/maml/elements/AnimatedScreenElement$1;->val$config:Lmiuix/animation/base/AnimConfig;

    .line 21
    const/4 v3, 0x0

    .line 23
    aput-object p0, v2, v3

    .line 24
    invoke-interface {v0, v1, v2}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    goto :goto_0

    .line 29
    :catch_0
    move-exception p0

    .line 30
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 31
    :goto_0
    return-void
    .line 34
.end method
