.class Lcom/miui/maml/ActionCommand$LoopCommand;
.super Lcom/miui/maml/ActionCommand$MultiCommand;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final COUNT_WARNING:J = 0x2710L

.field public static final TAG_NAME:Ljava/lang/String; = "LoopCommand"


# instance fields
.field private mBeginExp:Lcom/miui/maml/data/Expression;

.field private mConditionExp:Lcom/miui/maml/data/Expression;

.field private mCountExp:Lcom/miui/maml/data/Expression;

.field private mEndExp:Lcom/miui/maml/data/Expression;

.field private mIndexVar:Lcom/miui/maml/data/IndexedVariable;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/ActionCommand$MultiCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    .line 2
    const-string p1, "indexName"

    .line 5
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object p1

    .line 10
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 11
    move-result-object v0

    .line 14
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    move-result v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    .line 21
    const/4 v2, 0x1

    .line 23
    invoke-direct {v1, p1, v0, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 24
    iput-object v1, p0, Lcom/miui/maml/ActionCommand$LoopCommand;->mIndexVar:Lcom/miui/maml/data/IndexedVariable;

    .line 27
    :cond_0
    const-string p1, "begin"

    .line 29
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 34
    invoke-static {v0, p1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 35
    move-result-object p1

    .line 38
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$LoopCommand;->mBeginExp:Lcom/miui/maml/data/Expression;

    .line 39
    const-string p1, "count"

    .line 41
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    move-result-object p1

    .line 46
    invoke-static {v0, p1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 47
    move-result-object p1

    .line 50
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$LoopCommand;->mCountExp:Lcom/miui/maml/data/Expression;

    .line 51
    if-nez p1, :cond_1

    .line 53
    const-string p1, "end"

    .line 55
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    move-result-object p1

    .line 60
    invoke-static {v0, p1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 61
    move-result-object p1

    .line 64
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$LoopCommand;->mEndExp:Lcom/miui/maml/data/Expression;

    .line 65
    :cond_1
    const-string p1, "loopCondition"

    .line 67
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 72
    invoke-static {v0, p1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 73
    move-result-object p1

    .line 76
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$LoopCommand;->mConditionExp:Lcom/miui/maml/data/Expression;

    .line 77
    return-void
    .line 79
.end method


# virtual methods
.method public doPerform()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$LoopCommand;->mBeginExp:Lcom/miui/maml/data/Expression;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    move v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 9
    move-result-wide v2

    .line 12
    double-to-int v0, v2

    .line 13
    :goto_0
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$LoopCommand;->mCountExp:Lcom/miui/maml/data/Expression;

    .line 14
    if-eqz v2, :cond_1

    .line 16
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 18
    move-result-wide v2

    .line 21
    double-to-int v2, v2

    .line 22
    add-int/2addr v2, v0

    .line 23
    add-int/lit8 v2, v2, -0x1

    .line 24
    goto :goto_1

    .line 26
    :cond_1
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$LoopCommand;->mEndExp:Lcom/miui/maml/data/Expression;

    .line 27
    if-nez v2, :cond_2

    .line 29
    move v2, v1

    .line 31
    goto :goto_1

    .line 32
    :cond_2
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 33
    move-result-wide v2

    .line 36
    double-to-int v2, v2

    .line 37
    :goto_1
    sub-int v3, v2, v0

    .line 38
    int-to-long v4, v3

    .line 40
    const-wide/16 v6, 0x2710

    .line 41
    cmp-long v4, v4, v6

    .line 43
    if-lez v4, :cond_3

    .line 45
    new-instance v4, Ljava/lang/StringBuilder;

    .line 47
    const-string v5, "count is too large: "

    .line 49
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    const-string v3, ", exceeds WARNING 10000"

    .line 57
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object v3

    .line 65
    const-string v4, "ActionCommand"

    .line 66
    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_3
    :goto_2
    if-gt v0, v2, :cond_7

    .line 71
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$LoopCommand;->mConditionExp:Lcom/miui/maml/data/Expression;

    .line 73
    if-eqz v3, :cond_4

    .line 75
    invoke-virtual {v3}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 77
    move-result-wide v3

    .line 80
    const-wide/16 v5, 0x0

    .line 81
    cmpg-double v3, v3, v5

    .line 83
    if-gtz v3, :cond_4

    .line 85
    goto :goto_4

    .line 87
    :cond_4
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$LoopCommand;->mIndexVar:Lcom/miui/maml/data/IndexedVariable;

    .line 88
    if-eqz v3, :cond_5

    .line 90
    int-to-double v4, v0

    .line 92
    invoke-virtual {v3, v4, v5}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 93
    :cond_5
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$MultiCommand;->mCommands:Ljava/util/ArrayList;

    .line 96
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 98
    move-result v3

    .line 101
    move v4, v1

    .line 102
    :goto_3
    if-ge v4, v3, :cond_6

    .line 103
    iget-object v5, p0, Lcom/miui/maml/ActionCommand$MultiCommand;->mCommands:Ljava/util/ArrayList;

    .line 105
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 107
    move-result-object v5

    .line 110
    check-cast v5, Lcom/miui/maml/ActionCommand;

    .line 111
    invoke-virtual {v5}, Lcom/miui/maml/ActionCommand;->perform()V

    .line 113
    add-int/lit8 v4, v4, 0x1

    .line 116
    goto :goto_3

    .line 118
    :cond_6
    add-int/lit8 v0, v0, 0x1

    .line 119
    goto :goto_2

    .line 121
    :cond_7
    :goto_4
    return-void
    .line 122
.end method
