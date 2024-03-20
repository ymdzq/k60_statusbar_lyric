.class Lcom/miui/maml/ActionCommand$AnimConfigCommand;
.super Lcom/miui/maml/ActionCommand$TargetCommand;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "AnimConfigCommand"


# instance fields
.field private mAttr:Lcom/miui/maml/data/Expression;

.field private mCommand:Lcom/miui/maml/ActionCommand$AnimConfigCommand$Type;

.field private mSubName:Lcom/miui/maml/data/Expression;

.field private mValuesExp:[Lcom/miui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/ActionCommand$TargetCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 5
    move-result-object p1

    .line 8
    const-string/jumbo v0, "subNameExp"

    .line 9
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 15
    invoke-static {p1, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 16
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimConfigCommand;->mSubName:Lcom/miui/maml/data/Expression;

    .line 20
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 22
    move-result-object p1

    .line 25
    const-string v0, "attrExp"

    .line 26
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 31
    invoke-static {p1, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 32
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimConfigCommand;->mAttr:Lcom/miui/maml/data/Expression;

    .line 36
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 38
    move-result-object p1

    .line 41
    const-string/jumbo v0, "valuesExp"

    .line 42
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 48
    invoke-static {p1, v0}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    .line 49
    move-result-object p1

    .line 52
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimConfigCommand;->mValuesExp:[Lcom/miui/maml/data/Expression;

    .line 53
    const-string p1, "command"

    .line 55
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    move-result-object p1

    .line 60
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 64
    move-result p2

    .line 67
    const/4 v0, -0x1

    .line 68
    sparse-switch p2, :sswitch_data_0

    .line 69
    goto :goto_0

    .line 72
    :sswitch_0
    const-string p2, "clear"

    .line 73
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    move-result p1

    .line 78
    if-nez p1, :cond_0

    .line 79
    goto :goto_0

    .line 81
    :cond_0
    const/4 v0, 0x2

    .line 82
    goto :goto_0

    .line 83
    :sswitch_1
    const-string/jumbo p2, "update"

    .line 84
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    move-result p1

    .line 90
    if-nez p1, :cond_1

    .line 91
    goto :goto_0

    .line 93
    :cond_1
    const/4 v0, 0x1

    .line 94
    goto :goto_0

    .line 95
    :sswitch_2
    const-string p2, "remove"

    .line 96
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    move-result p1

    .line 101
    if-nez p1, :cond_2

    .line 102
    goto :goto_0

    .line 104
    :cond_2
    const/4 v0, 0x0

    .line 105
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 106
    sget-object p1, Lcom/miui/maml/ActionCommand$AnimConfigCommand$Type;->INVALID:Lcom/miui/maml/ActionCommand$AnimConfigCommand$Type;

    .line 109
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimConfigCommand;->mCommand:Lcom/miui/maml/ActionCommand$AnimConfigCommand$Type;

    .line 111
    goto :goto_1

    .line 113
    :pswitch_0
    sget-object p1, Lcom/miui/maml/ActionCommand$AnimConfigCommand$Type;->CLEAR:Lcom/miui/maml/ActionCommand$AnimConfigCommand$Type;

    .line 114
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimConfigCommand;->mCommand:Lcom/miui/maml/ActionCommand$AnimConfigCommand$Type;

    .line 116
    goto :goto_1

    .line 118
    :pswitch_1
    sget-object p1, Lcom/miui/maml/ActionCommand$AnimConfigCommand$Type;->UPDATE:Lcom/miui/maml/ActionCommand$AnimConfigCommand$Type;

    .line 119
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimConfigCommand;->mCommand:Lcom/miui/maml/ActionCommand$AnimConfigCommand$Type;

    .line 121
    goto :goto_1

    .line 123
    :pswitch_2
    sget-object p1, Lcom/miui/maml/ActionCommand$AnimConfigCommand$Type;->REMOVE:Lcom/miui/maml/ActionCommand$AnimConfigCommand$Type;

    .line 124
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimConfigCommand;->mCommand:Lcom/miui/maml/ActionCommand$AnimConfigCommand$Type;

    .line 126
    :goto_1
    return-void

    .line 128
    nop

    .line 129
    :sswitch_data_0
    .sparse-switch
        -0x37b5077c -> :sswitch_2
        -0x31ffc737 -> :sswitch_1
        0x5a5b64d -> :sswitch_0
    .end sparse-switch

    .line 130
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 144
.end method


# virtual methods
.method public doPerform()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$TargetCommand;->getTarget()Ljava/lang/Object;

    .line 2
    move-result-object v0

    .line 5
    if-eqz v0, :cond_6

    .line 6
    instance-of v1, v0, Lcom/miui/maml/elements/AnimConfigElement;

    .line 8
    if-nez v1, :cond_0

    .line 10
    goto :goto_1

    .line 12
    :cond_0
    check-cast v0, Lcom/miui/maml/elements/AnimConfigElement;

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$AnimConfigCommand;->mSubName:Lcom/miui/maml/data/Expression;

    .line 25
    const-string v3, ""

    .line 27
    if-eqz v2, :cond_1

    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    .line 31
    const-string v4, "."

    .line 33
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    iget-object v4, p0, Lcom/miui/maml/ActionCommand$AnimConfigCommand;->mSubName:Lcom/miui/maml/data/Expression;

    .line 38
    invoke-virtual {v4}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 40
    move-result-object v4

    .line 43
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object v2

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    move-object v2, v3

    .line 52
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v1

    .line 59
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$AnimConfigCommand;->mAttr:Lcom/miui/maml/data/Expression;

    .line 60
    if-eqz v2, :cond_2

    .line 62
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 64
    move-result-object v3

    .line 67
    :cond_2
    sget-object v2, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$AnimConfigCommand$Type:[I

    .line 68
    iget-object v4, p0, Lcom/miui/maml/ActionCommand$AnimConfigCommand;->mCommand:Lcom/miui/maml/ActionCommand$AnimConfigCommand$Type;

    .line 70
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 72
    move-result v4

    .line 75
    aget v2, v2, v4

    .line 76
    const/4 v4, 0x1

    .line 78
    if-eq v2, v4, :cond_5

    .line 79
    const/4 p0, 0x2

    .line 81
    if-eq v2, p0, :cond_4

    .line 82
    const/4 p0, 0x3

    .line 84
    if-eq v2, p0, :cond_3

    .line 85
    goto :goto_1

    .line 87
    :cond_3
    invoke-virtual {v0}, Lcom/miui/maml/elements/AnimConfigElement;->clearConfigData()V

    .line 88
    goto :goto_1

    .line 91
    :cond_4
    invoke-virtual {v0, v1, v3}, Lcom/miui/maml/elements/AnimConfigElement;->removeConfigData(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    goto :goto_1

    .line 95
    :cond_5
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$AnimConfigCommand;->mValuesExp:[Lcom/miui/maml/data/Expression;

    .line 96
    if-eqz p0, :cond_6

    .line 98
    invoke-virtual {v0, v1, v3, p0}, Lcom/miui/maml/elements/AnimConfigElement;->updateConfigData(Ljava/lang/String;Ljava/lang/String;[Lcom/miui/maml/data/Expression;)V

    .line 100
    :cond_6
    :goto_1
    return-void
    .line 103
.end method
