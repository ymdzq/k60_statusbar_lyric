.class Lcom/miui/maml/util/IntentInfo$Extra;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Extra"


# instance fields
.field private mCondition:Lcom/miui/maml/data/Expression;

.field private mExpression:Lcom/miui/maml/data/Expression;

.field private mName:Ljava/lang/String;

.field protected mType:Lcom/miui/maml/util/IntentInfo$Type;

.field final synthetic this$0:Lcom/miui/maml/util/IntentInfo;


# direct methods
.method public constructor <init>(Lcom/miui/maml/util/IntentInfo;Lorg/w3c/dom/Element;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/util/IntentInfo$Extra;->this$0:Lcom/miui/maml/util/IntentInfo;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget-object p1, Lcom/miui/maml/util/IntentInfo$Type;->DOUBLE:Lcom/miui/maml/util/IntentInfo$Type;

    .line 7
    iput-object p1, p0, Lcom/miui/maml/util/IntentInfo$Extra;->mType:Lcom/miui/maml/util/IntentInfo$Type;

    .line 9
    invoke-direct {p0, p2}, Lcom/miui/maml/util/IntentInfo$Extra;->load(Lorg/w3c/dom/Element;)V

    .line 11
    return-void
    .line 14
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 3

    .line 1
    const-string v0, "TaskVariable"

    .line 2
    if-nez p1, :cond_0

    .line 4
    const-string p0, "node is null"

    .line 6
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    return-void

    .line 11
    :cond_0
    const-string v1, "name"

    .line 12
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 17
    iput-object v1, p0, Lcom/miui/maml/util/IntentInfo$Extra;->mName:Ljava/lang/String;

    .line 18
    const-string/jumbo v1, "type"

    .line 20
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 26
    const-string/jumbo v2, "string"

    .line 27
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 30
    move-result v2

    .line 33
    if-eqz v2, :cond_1

    .line 34
    sget-object v1, Lcom/miui/maml/util/IntentInfo$Type;->STRING:Lcom/miui/maml/util/IntentInfo$Type;

    .line 36
    iput-object v1, p0, Lcom/miui/maml/util/IntentInfo$Extra;->mType:Lcom/miui/maml/util/IntentInfo$Type;

    .line 38
    goto :goto_1

    .line 40
    :cond_1
    const-string v2, "int"

    .line 41
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 43
    move-result v2

    .line 46
    if-nez v2, :cond_6

    .line 47
    const-string v2, "integer"

    .line 49
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 51
    move-result v2

    .line 54
    if-eqz v2, :cond_2

    .line 55
    goto :goto_0

    .line 57
    :cond_2
    const-string v2, "long"

    .line 58
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 60
    move-result v2

    .line 63
    if-eqz v2, :cond_3

    .line 64
    sget-object v1, Lcom/miui/maml/util/IntentInfo$Type;->LONG:Lcom/miui/maml/util/IntentInfo$Type;

    .line 66
    iput-object v1, p0, Lcom/miui/maml/util/IntentInfo$Extra;->mType:Lcom/miui/maml/util/IntentInfo$Type;

    .line 68
    goto :goto_1

    .line 70
    :cond_3
    const-string v2, "float"

    .line 71
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 73
    move-result v2

    .line 76
    if-eqz v2, :cond_4

    .line 77
    sget-object v1, Lcom/miui/maml/util/IntentInfo$Type;->FLOAT:Lcom/miui/maml/util/IntentInfo$Type;

    .line 79
    iput-object v1, p0, Lcom/miui/maml/util/IntentInfo$Extra;->mType:Lcom/miui/maml/util/IntentInfo$Type;

    .line 81
    goto :goto_1

    .line 83
    :cond_4
    const-string v2, "double"

    .line 84
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 86
    move-result v2

    .line 89
    if-eqz v2, :cond_5

    .line 90
    sget-object v1, Lcom/miui/maml/util/IntentInfo$Type;->DOUBLE:Lcom/miui/maml/util/IntentInfo$Type;

    .line 92
    iput-object v1, p0, Lcom/miui/maml/util/IntentInfo$Extra;->mType:Lcom/miui/maml/util/IntentInfo$Type;

    .line 94
    goto :goto_1

    .line 96
    :cond_5
    const-string v2, "boolean"

    .line 97
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 99
    move-result v1

    .line 102
    if-eqz v1, :cond_7

    .line 103
    sget-object v1, Lcom/miui/maml/util/IntentInfo$Type;->BOOLEAN:Lcom/miui/maml/util/IntentInfo$Type;

    .line 105
    iput-object v1, p0, Lcom/miui/maml/util/IntentInfo$Extra;->mType:Lcom/miui/maml/util/IntentInfo$Type;

    .line 107
    goto :goto_1

    .line 109
    :cond_6
    :goto_0
    sget-object v1, Lcom/miui/maml/util/IntentInfo$Type;->INT:Lcom/miui/maml/util/IntentInfo$Type;

    .line 110
    iput-object v1, p0, Lcom/miui/maml/util/IntentInfo$Extra;->mType:Lcom/miui/maml/util/IntentInfo$Type;

    .line 112
    :cond_7
    :goto_1
    iget-object v1, p0, Lcom/miui/maml/util/IntentInfo$Extra;->this$0:Lcom/miui/maml/util/IntentInfo;

    .line 114
    invoke-static {v1}, Lcom/miui/maml/util/IntentInfo;->access$000(Lcom/miui/maml/util/IntentInfo;)Lcom/miui/maml/data/Variables;

    .line 116
    move-result-object v1

    .line 119
    const-string v2, "expression"

    .line 120
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 122
    move-result-object v2

    .line 125
    invoke-static {v1, v2}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 126
    move-result-object v1

    .line 129
    iput-object v1, p0, Lcom/miui/maml/util/IntentInfo$Extra;->mExpression:Lcom/miui/maml/data/Expression;

    .line 130
    if-nez v1, :cond_8

    .line 132
    const-string v1, "invalid expression in IntentCommand"

    .line 134
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_8
    iget-object v0, p0, Lcom/miui/maml/util/IntentInfo$Extra;->this$0:Lcom/miui/maml/util/IntentInfo;

    .line 139
    invoke-static {v0}, Lcom/miui/maml/util/IntentInfo;->access$000(Lcom/miui/maml/util/IntentInfo;)Lcom/miui/maml/data/Variables;

    .line 141
    move-result-object v0

    .line 144
    const-string v1, "condition"

    .line 145
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 147
    move-result-object p1

    .line 150
    invoke-static {v0, p1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 151
    move-result-object p1

    .line 154
    iput-object p1, p0, Lcom/miui/maml/util/IntentInfo$Extra;->mCondition:Lcom/miui/maml/data/Expression;

    .line 155
    return-void
    .line 157
.end method


# virtual methods
.method public getDouble()D
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/miui/maml/util/IntentInfo$Extra;->mExpression:Lcom/miui/maml/data/Expression;

    .line 2
    if-nez p0, :cond_0

    .line 4
    const-wide/16 v0, 0x0

    .line 6
    return-wide v0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 9
    move-result-wide v0

    .line 12
    return-wide v0
    .line 13
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/util/IntentInfo$Extra;->mName:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public getString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/util/IntentInfo$Extra;->mExpression:Lcom/miui/maml/data/Expression;

    .line 2
    if-nez p0, :cond_0

    .line 4
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 11
    return-object p0
    .line 12
.end method

.method public isConditionTrue()Z
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/miui/maml/util/IntentInfo$Extra;->mCondition:Lcom/miui/maml/data/Expression;

    .line 2
    const/4 v0, 0x1

    .line 4
    if-nez p0, :cond_0

    .line 5
    return v0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 8
    move-result-wide v1

    .line 11
    const-wide/16 v3, 0x0

    .line 12
    cmpl-double p0, v1, v3

    .line 14
    if-lez p0, :cond_1

    .line 16
    goto :goto_0

    .line 18
    :cond_1
    const/4 v0, 0x0

    .line 19
    :goto_0
    return v0
    .line 20
.end method
