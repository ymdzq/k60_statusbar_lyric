.class Lcom/miui/maml/elements/ListScreenElement$Column$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/miui/maml/elements/VariableArrayElement$VarObserver;


# instance fields
.field final synthetic this$0:Lcom/miui/maml/elements/ListScreenElement$Column;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ListScreenElement$Column;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/ListScreenElement$Column$1;->this$0:Lcom/miui/maml/elements/ListScreenElement$Column;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public onDataChange([Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/ListScreenElement$Column$1;->this$0:Lcom/miui/maml/elements/ListScreenElement$Column;

    .line 2
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement$Column;->mList:Lcom/miui/maml/elements/ListScreenElement;

    .line 4
    iget-object p0, p0, Lcom/miui/maml/elements/ListScreenElement$Column;->mName:Ljava/lang/String;

    .line 6
    invoke-static {v0, p0, p1}, Lcom/miui/maml/elements/ListScreenElement;->access$700(Lcom/miui/maml/elements/ListScreenElement;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    return-void
    .line 11
.end method
