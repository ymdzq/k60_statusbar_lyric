.class Lcom/miui/maml/util/ConfigFile$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/miui/maml/util/ConfigFile$OnLoadElementListener;


# instance fields
.field final synthetic this$0:Lcom/miui/maml/util/ConfigFile;


# direct methods
.method public constructor <init>(Lcom/miui/maml/util/ConfigFile;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/util/ConfigFile$2;->this$0:Lcom/miui/maml/util/ConfigFile;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public OnLoadElement(Lorg/w3c/dom/Element;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/miui/maml/util/ConfigFile$2;->this$0:Lcom/miui/maml/util/ConfigFile;

    .line 2
    const-string v0, "name"

    .line 4
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 9
    const-string/jumbo v1, "value"

    .line 10
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 16
    const-string/jumbo v2, "type"

    .line 17
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 23
    invoke-static {p0, v0, v1, p1}, Lcom/miui/maml/util/ConfigFile;->access$000(Lcom/miui/maml/util/ConfigFile;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    return-void
    .line 27
.end method
