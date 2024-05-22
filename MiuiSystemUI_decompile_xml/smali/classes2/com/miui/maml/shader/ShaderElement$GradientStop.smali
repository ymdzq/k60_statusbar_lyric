.class public final Lcom/miui/maml/shader/ShaderElement$GradientStop;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "GradientStop"


# instance fields
.field private mColorParser:Lcom/miui/maml/util/ColorParser;

.field private mPositionExp:Lcom/miui/maml/data/Expression;

.field final synthetic this$0:Lcom/miui/maml/shader/ShaderElement;


# direct methods
.method public constructor <init>(Lcom/miui/maml/shader/ShaderElement;Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/shader/ShaderElement$GradientStop;->this$0:Lcom/miui/maml/shader/ShaderElement;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iget-object p3, p1, Lcom/miui/maml/shader/ShaderElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 7
    invoke-virtual {p3}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 9
    move-result-object p3

    .line 12
    invoke-static {p3, p2}, Lcom/miui/maml/util/ColorParser;->fromElement(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;)Lcom/miui/maml/util/ColorParser;

    .line 13
    move-result-object p3

    .line 16
    iput-object p3, p0, Lcom/miui/maml/shader/ShaderElement$GradientStop;->mColorParser:Lcom/miui/maml/util/ColorParser;

    .line 17
    iget-object p1, p1, Lcom/miui/maml/shader/ShaderElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 19
    invoke-virtual {p1}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 21
    move-result-object p1

    .line 24
    const-string p3, "position"

    .line 25
    invoke-interface {p2, p3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object p2

    .line 30
    invoke-static {p1, p2}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 31
    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/miui/maml/shader/ShaderElement$GradientStop;->mPositionExp:Lcom/miui/maml/data/Expression;

    .line 35
    if-nez p1, :cond_0

    .line 37
    const-string p0, "GradientStop"

    .line 39
    const-string p1, "lost position attribute."

    .line 41
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_0
    return-void
    .line 46
.end method


# virtual methods
.method public getColor()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/shader/ShaderElement$GradientStop;->mColorParser:Lcom/miui/maml/util/ColorParser;

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/util/ColorParser;->getColor()I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public getPosition()F
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/miui/maml/shader/ShaderElement$GradientStop;->mPositionExp:Lcom/miui/maml/data/Expression;

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 4
    move-result-wide v0

    .line 7
    double-to-float p0, v0

    .line 8
    return p0
    .line 9
.end method
