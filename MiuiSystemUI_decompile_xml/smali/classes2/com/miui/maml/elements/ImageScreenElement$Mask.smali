.class Lcom/miui/maml/elements/ImageScreenElement$Mask;
.super Lcom/miui/maml/elements/ImageScreenElement;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field private mAlignAbsolute:Z

.field final synthetic this$0:Lcom/miui/maml/elements/ImageScreenElement;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ImageScreenElement;Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/ImageScreenElement$Mask;->this$0:Lcom/miui/maml/elements/ImageScreenElement;

    .line 2
    invoke-direct {p0, p2, p3}, Lcom/miui/maml/elements/ImageScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 4
    const-string p1, "align"

    .line 7
    invoke-virtual {p0, p2, p1}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 12
    const-string p2, "absolute"

    .line 13
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 15
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    const/4 p1, 0x1

    .line 21
    iput-boolean p1, p0, Lcom/miui/maml/elements/ImageScreenElement$Mask;->mAlignAbsolute:Z

    .line 22
    :cond_0
    return-void
    .line 24
.end method


# virtual methods
.method public doRender(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final isAlignAbsolute()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/miui/maml/elements/ImageScreenElement$Mask;->mAlignAbsolute:Z

    .line 2
    return p0
    .line 4
.end method
