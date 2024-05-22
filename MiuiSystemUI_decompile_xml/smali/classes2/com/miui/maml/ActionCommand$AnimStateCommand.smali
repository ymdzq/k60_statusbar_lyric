.class Lcom/miui/maml/ActionCommand$AnimStateCommand;
.super Lcom/miui/maml/ActionCommand$TargetCommand;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "AnimStateCommand"


# instance fields
.field private mAttrArrayName:Lcom/miui/maml/data/Expression;

.field private mAttrs:[Ljava/lang/String;

.field private mAttrsExp:[Lcom/miui/maml/data/Expression;

.field private mCommand:Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;

.field private mIsAttrsValid:Z

.field private mIsValuesValid:Z

.field private mValueArrayName:Lcom/miui/maml/data/Expression;

.field private mValues:[D

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
    const-string/jumbo v0, "valueArrayNameExp"

    .line 9
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 15
    invoke-static {p1, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 16
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mValueArrayName:Lcom/miui/maml/data/Expression;

    .line 20
    const-string v0, "attrArrayNameExp"

    .line 22
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 27
    invoke-static {p1, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 28
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mAttrArrayName:Lcom/miui/maml/data/Expression;

    .line 32
    const-string/jumbo v0, "valuesExp"

    .line 34
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 40
    invoke-static {p1, v0}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    .line 41
    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mValuesExp:[Lcom/miui/maml/data/Expression;

    .line 45
    const-string v0, "attrsExp"

    .line 47
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 52
    invoke-static {p1, v0}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    .line 53
    move-result-object p1

    .line 56
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mAttrsExp:[Lcom/miui/maml/data/Expression;

    .line 57
    iget-object p1, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mValuesExp:[Lcom/miui/maml/data/Expression;

    .line 59
    invoke-virtual {p0, p1}, Lcom/miui/maml/ActionCommand;->isExpressionsValid([Lcom/miui/maml/data/Expression;)Z

    .line 61
    move-result p1

    .line 64
    iput-boolean p1, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mIsValuesValid:Z

    .line 65
    iget-object p1, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mAttrsExp:[Lcom/miui/maml/data/Expression;

    .line 67
    invoke-virtual {p0, p1}, Lcom/miui/maml/ActionCommand;->isExpressionsValid([Lcom/miui/maml/data/Expression;)Z

    .line 69
    move-result p1

    .line 72
    iput-boolean p1, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mIsAttrsValid:Z

    .line 73
    if-eqz p1, :cond_0

    .line 75
    iget-object p1, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mAttrsExp:[Lcom/miui/maml/data/Expression;

    .line 77
    array-length p1, p1

    .line 79
    new-array p1, p1, [Ljava/lang/String;

    .line 80
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mAttrs:[Ljava/lang/String;

    .line 82
    :cond_0
    iget-boolean p1, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mIsValuesValid:Z

    .line 84
    if-eqz p1, :cond_1

    .line 86
    iget-object p1, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mValuesExp:[Lcom/miui/maml/data/Expression;

    .line 88
    array-length p1, p1

    .line 90
    new-array p1, p1, [D

    .line 91
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mValues:[D

    .line 93
    :cond_1
    const-string p1, "command"

    .line 95
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    move-result-object p1

    .line 100
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 104
    move-result p2

    .line 107
    const/4 v0, -0x1

    .line 108
    sparse-switch p2, :sswitch_data_0

    .line 109
    goto :goto_0

    .line 112
    :sswitch_0
    const-string p2, "clear"

    .line 113
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    move-result p1

    .line 118
    if-nez p1, :cond_2

    .line 119
    goto :goto_0

    .line 121
    :cond_2
    const/4 v0, 0x2

    .line 122
    goto :goto_0

    .line 123
    :sswitch_1
    const-string/jumbo p2, "update"

    .line 124
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    move-result p1

    .line 130
    if-nez p1, :cond_3

    .line 131
    goto :goto_0

    .line 133
    :cond_3
    const/4 v0, 0x1

    .line 134
    goto :goto_0

    .line 135
    :sswitch_2
    const-string p2, "remove"

    .line 136
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    move-result p1

    .line 141
    if-nez p1, :cond_4

    .line 142
    goto :goto_0

    .line 144
    :cond_4
    const/4 v0, 0x0

    .line 145
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 146
    sget-object p1, Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;->INVALID:Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;

    .line 149
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mCommand:Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;

    .line 151
    goto :goto_1

    .line 153
    :pswitch_0
    sget-object p1, Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;->CLEAR:Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;

    .line 154
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mCommand:Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;

    .line 156
    goto :goto_1

    .line 158
    :pswitch_1
    sget-object p1, Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;->UPDATE:Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;

    .line 159
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mCommand:Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;

    .line 161
    goto :goto_1

    .line 163
    :pswitch_2
    sget-object p1, Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;->REMOVE:Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;

    .line 164
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mCommand:Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;

    .line 166
    :goto_1
    return-void

    .line 168
    nop

    .line 169
    :sswitch_data_0
    .sparse-switch
        -0x37b5077c -> :sswitch_2
        -0x31ffc737 -> :sswitch_1
        0x5a5b64d -> :sswitch_0
    .end sparse-switch

    .line 170
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 184
.end method

.method private remove(Lcom/miui/maml/elements/AnimStateElement;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mAttrs:[Ljava/lang/String;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    array-length v0, v0

    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    if-ge v1, v0, :cond_0

    .line 8
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mAttrs:[Ljava/lang/String;

    .line 10
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mAttrsExp:[Lcom/miui/maml/data/Expression;

    .line 12
    aget-object v3, v3, v1

    .line 14
    invoke-virtual {v3}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 16
    move-result-object v3

    .line 19
    aput-object v3, v2, v1

    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 22
    goto :goto_0

    .line 24
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mAttrs:[Ljava/lang/String;

    .line 25
    invoke-virtual {p1, p0}, Lcom/miui/maml/elements/AnimStateElement;->removeAttr([Ljava/lang/String;)V

    .line 27
    goto :goto_1

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mAttrArrayName:Lcom/miui/maml/data/Expression;

    .line 31
    if-eqz v0, :cond_2

    .line 33
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 35
    move-result-object v0

    .line 38
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mAttrArrayName:Lcom/miui/maml/data/Expression;

    .line 39
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 41
    move-result-object p0

    .line 44
    invoke-virtual {v0, p0}, Lcom/miui/maml/data/Variables;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    move-result-object p0

    .line 48
    if-eqz p0, :cond_2

    .line 49
    instance-of v0, p0, [Ljava/lang/String;

    .line 51
    if-eqz v0, :cond_2

    .line 53
    check-cast p0, [Ljava/lang/String;

    .line 55
    invoke-virtual {p1, p0}, Lcom/miui/maml/elements/AnimStateElement;->removeAttr([Ljava/lang/String;)V

    .line 57
    :cond_2
    :goto_1
    return-void
    .line 60
.end method

.method private update(Lcom/miui/maml/elements/AnimStateElement;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mAttrs:[Ljava/lang/String;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mValues:[D

    .line 6
    if-eqz v1, :cond_1

    .line 8
    array-length v2, v0

    .line 10
    array-length v1, v1

    .line 11
    if-ne v2, v1, :cond_1

    .line 12
    array-length v0, v0

    .line 14
    const/4 v1, 0x0

    .line 15
    :goto_0
    if-ge v1, v0, :cond_0

    .line 16
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mAttrs:[Ljava/lang/String;

    .line 18
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mAttrsExp:[Lcom/miui/maml/data/Expression;

    .line 20
    aget-object v3, v3, v1

    .line 22
    invoke-virtual {v3}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 24
    move-result-object v3

    .line 27
    aput-object v3, v2, v1

    .line 28
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mValues:[D

    .line 30
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mValuesExp:[Lcom/miui/maml/data/Expression;

    .line 32
    aget-object v3, v3, v1

    .line 34
    invoke-virtual {v3}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 36
    move-result-wide v3

    .line 39
    aput-wide v3, v2, v1

    .line 40
    add-int/lit8 v1, v1, 0x1

    .line 42
    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mAttrs:[Ljava/lang/String;

    .line 45
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mValues:[D

    .line 47
    invoke-virtual {p1, v0, p0}, Lcom/miui/maml/elements/AnimStateElement;->updateAttr([Ljava/lang/String;[D)V

    .line 49
    goto :goto_1

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mAttrArrayName:Lcom/miui/maml/data/Expression;

    .line 53
    if-eqz v0, :cond_2

    .line 55
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mValueArrayName:Lcom/miui/maml/data/Expression;

    .line 57
    if-eqz v0, :cond_2

    .line 59
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 61
    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mAttrArrayName:Lcom/miui/maml/data/Expression;

    .line 65
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 67
    move-result-object v1

    .line 70
    invoke-virtual {v0, v1}, Lcom/miui/maml/data/Variables;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    move-result-object v0

    .line 74
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 75
    move-result-object v1

    .line 78
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mValueArrayName:Lcom/miui/maml/data/Expression;

    .line 79
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 81
    move-result-object p0

    .line 84
    invoke-virtual {v1, p0}, Lcom/miui/maml/data/Variables;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 85
    move-result-object p0

    .line 88
    if-eqz v0, :cond_2

    .line 89
    instance-of v1, v0, [Ljava/lang/String;

    .line 91
    if-eqz v1, :cond_2

    .line 93
    if-eqz p0, :cond_2

    .line 95
    instance-of v1, p0, [D

    .line 97
    if-eqz v1, :cond_2

    .line 99
    check-cast v0, [Ljava/lang/String;

    .line 101
    check-cast p0, [D

    .line 103
    invoke-virtual {p1, v0, p0}, Lcom/miui/maml/elements/AnimStateElement;->updateAttr([Ljava/lang/String;[D)V

    .line 105
    :cond_2
    :goto_1
    return-void
    .line 108
.end method


# virtual methods
.method public doPerform()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$TargetCommand;->getTarget()Ljava/lang/Object;

    .line 2
    move-result-object v0

    .line 5
    if-eqz v0, :cond_4

    .line 6
    instance-of v1, v0, Lcom/miui/maml/elements/AnimStateElement;

    .line 8
    if-nez v1, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    check-cast v0, Lcom/miui/maml/elements/AnimStateElement;

    .line 13
    sget-object v1, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$AnimStateCommand$Type:[I

    .line 15
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mCommand:Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;

    .line 17
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 19
    move-result v2

    .line 22
    aget v1, v1, v2

    .line 23
    const/4 v2, 0x1

    .line 25
    if-eq v1, v2, :cond_3

    .line 26
    const/4 v2, 0x2

    .line 28
    if-eq v1, v2, :cond_2

    .line 29
    const/4 p0, 0x3

    .line 31
    if-eq v1, p0, :cond_1

    .line 32
    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {v0}, Lcom/miui/maml/elements/AnimStateElement;->clear()V

    .line 35
    goto :goto_0

    .line 38
    :cond_2
    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$AnimStateCommand;->remove(Lcom/miui/maml/elements/AnimStateElement;)V

    .line 39
    goto :goto_0

    .line 42
    :cond_3
    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$AnimStateCommand;->update(Lcom/miui/maml/elements/AnimStateElement;)V

    .line 43
    :cond_4
    :goto_0
    return-void
    .line 46
.end method
