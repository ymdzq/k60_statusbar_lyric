.class public Lcom/miui/maml/util/Task;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static TAG_ACTION:Ljava/lang/String; = "action"

.field public static TAG_CATEGORY:Ljava/lang/String; = "category"

.field public static TAG_CLASS:Ljava/lang/String; = "class"

.field public static TAG_ID:Ljava/lang/String; = "id"

.field public static TAG_NAME:Ljava/lang/String; = "name"

.field public static TAG_PACKAGE:Ljava/lang/String; = "package"

.field public static TAG_TYPE:Ljava/lang/String; = "type"


# instance fields
.field public action:Ljava/lang/String;

.field public category:Ljava/lang/String;

.field public className:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static load(Lorg/w3c/dom/Element;)Lcom/miui/maml/util/Task;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lcom/miui/maml/util/Task;

    .line 6
    invoke-direct {v0}, Lcom/miui/maml/util/Task;-><init>()V

    .line 8
    const-string v1, "id"

    .line 11
    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 16
    iput-object v1, v0, Lcom/miui/maml/util/Task;->id:Ljava/lang/String;

    .line 17
    const-string v1, "action"

    .line 19
    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 24
    iput-object v1, v0, Lcom/miui/maml/util/Task;->action:Ljava/lang/String;

    .line 25
    const-string/jumbo v1, "type"

    .line 27
    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 33
    iput-object v1, v0, Lcom/miui/maml/util/Task;->type:Ljava/lang/String;

    .line 34
    const-string v1, "category"

    .line 36
    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    move-result-object v1

    .line 41
    iput-object v1, v0, Lcom/miui/maml/util/Task;->category:Ljava/lang/String;

    .line 42
    const-string v1, "package"

    .line 44
    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    move-result-object v1

    .line 49
    iput-object v1, v0, Lcom/miui/maml/util/Task;->packageName:Ljava/lang/String;

    .line 50
    const-string v1, "class"

    .line 52
    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    move-result-object v1

    .line 57
    iput-object v1, v0, Lcom/miui/maml/util/Task;->className:Ljava/lang/String;

    .line 58
    const-string v1, "name"

    .line 60
    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    move-result-object p0

    .line 65
    iput-object p0, v0, Lcom/miui/maml/util/Task;->name:Ljava/lang/String;

    .line 66
    return-object v0
    .line 68
.end method
