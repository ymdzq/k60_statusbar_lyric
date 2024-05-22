.class Lcom/miui/maml/util/ConfigFile$4;
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
    iput-object p1, p0, Lcom/miui/maml/util/ConfigFile$4;->this$0:Lcom/miui/maml/util/ConfigFile;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public OnLoadElement(Lorg/w3c/dom/Element;)V
    .locals 5

    .line 1
    if-eqz p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/miui/maml/util/ConfigFile$4;->this$0:Lcom/miui/maml/util/ConfigFile;

    .line 4
    new-instance v0, Lcom/miui/maml/util/ConfigFile$Gadget;

    .line 6
    const-string v1, "path"

    .line 8
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 13
    const-string/jumbo v2, "x"

    .line 14
    const/4 v3, 0x0

    .line 17
    invoke-static {p1, v2, v3}, Lcom/miui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    .line 18
    move-result v2

    .line 21
    const-string/jumbo v4, "y"

    .line 22
    invoke-static {p1, v4, v3}, Lcom/miui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    .line 25
    move-result p1

    .line 28
    invoke-direct {v0, v1, v2, p1}, Lcom/miui/maml/util/ConfigFile$Gadget;-><init>(Ljava/lang/String;II)V

    .line 29
    invoke-virtual {p0, v0}, Lcom/miui/maml/util/ConfigFile;->putGadget(Lcom/miui/maml/util/ConfigFile$Gadget;)V

    .line 32
    :cond_0
    return-void
    .line 35
.end method
