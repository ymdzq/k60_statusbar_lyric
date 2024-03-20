.class Lcom/miui/maml/elements/WindowScreenElement$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/miui/maml/elements/WindowScreenElement;

.field final synthetic val$_v:Z


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/WindowScreenElement;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/WindowScreenElement$1;->this$0:Lcom/miui/maml/elements/WindowScreenElement;

    .line 2
    iput-boolean p2, p0, Lcom/miui/maml/elements/WindowScreenElement$1;->val$_v:Z

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
    iget-boolean v0, p0, Lcom/miui/maml/elements/WindowScreenElement$1;->val$_v:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/miui/maml/elements/WindowScreenElement$1;->this$0:Lcom/miui/maml/elements/WindowScreenElement;

    .line 6
    invoke-static {p0}, Lcom/miui/maml/elements/WindowScreenElement;->access$000(Lcom/miui/maml/elements/WindowScreenElement;)V

    .line 8
    goto :goto_0

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/elements/WindowScreenElement$1;->this$0:Lcom/miui/maml/elements/WindowScreenElement;

    .line 12
    invoke-static {p0}, Lcom/miui/maml/elements/WindowScreenElement;->access$100(Lcom/miui/maml/elements/WindowScreenElement;)V

    .line 14
    :goto_0
    return-void
    .line 17
.end method
