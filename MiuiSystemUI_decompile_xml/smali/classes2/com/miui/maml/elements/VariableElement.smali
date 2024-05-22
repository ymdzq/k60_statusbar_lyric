.class public Lcom/miui/maml/elements/VariableElement;
.super Lcom/miui/maml/elements/ScreenElement;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final LENGTH_SUFFIX:Ljava/lang/String; = ".length"

.field private static final LOG_TAG:Ljava/lang/String; = "VariableElement"

.field private static final OLD_VALUE:Ljava/lang/String; = "old_value"

.field public static final TAG_NAME:Ljava/lang/String; = "Var"


# instance fields
.field private mAnimation:Lcom/miui/maml/animation/VariableAnimation;

.field private mArraySize:I

.field private mArrayValues:[Lcom/miui/maml/data/Expression;

.field private mConst:Z

.field private mExpression:Lcom/miui/maml/data/Expression;

.field private mIndexExpression:Lcom/miui/maml/data/Expression;

.field private mInited:Z

.field private mLengthVar:Lcom/miui/maml/data/IndexedVariable;

.field private mOldValue:D

.field private mOldVar:Lcom/miui/maml/data/IndexedVariable;

.field private mThreshold:D

.field private mTrigger:Lcom/miui/maml/CommandTrigger;

.field private mType:Lcom/miui/maml/data/VariableType;

.field private mVar:Lcom/miui/maml/data/IndexedVariable;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 6

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 2
    if-eqz p1, :cond_3

    .line 5
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 7
    move-result-object v0

    .line 10
    const-string v1, "expression"

    .line 11
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 16
    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 17
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/miui/maml/elements/VariableElement;->mExpression:Lcom/miui/maml/data/Expression;

    .line 21
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 23
    move-result-object v0

    .line 26
    const-string v1, "index"

    .line 27
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 32
    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 33
    move-result-object v0

    .line 36
    iput-object v0, p0, Lcom/miui/maml/elements/VariableElement;->mIndexExpression:Lcom/miui/maml/data/Expression;

    .line 37
    const-string/jumbo v0, "threshold"

    .line 39
    const/high16 v1, 0x3f800000    # 1.0f

    .line 42
    invoke-static {p1, v0, v1}, Lcom/miui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    .line 44
    move-result v0

    .line 47
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 48
    move-result v0

    .line 51
    float-to-double v0, v0

    .line 52
    iput-wide v0, p0, Lcom/miui/maml/elements/VariableElement;->mThreshold:D

    .line 53
    const-string/jumbo v0, "type"

    .line 55
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 61
    invoke-static {v0}, Lcom/miui/maml/data/VariableType;->parseType(Ljava/lang/String;)Lcom/miui/maml/data/VariableType;

    .line 62
    move-result-object v0

    .line 65
    iput-object v0, p0, Lcom/miui/maml/elements/VariableElement;->mType:Lcom/miui/maml/data/VariableType;

    .line 66
    const-string v0, "const"

    .line 68
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    move-result-object v0

    .line 73
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 74
    move-result v0

    .line 77
    iput-boolean v0, p0, Lcom/miui/maml/elements/VariableElement;->mConst:Z

    .line 78
    const-string/jumbo v0, "size"

    .line 80
    const/4 v1, 0x0

    .line 83
    invoke-static {p1, v0, v1}, Lcom/miui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    .line 84
    move-result v0

    .line 87
    iput v0, p0, Lcom/miui/maml/elements/VariableElement;->mArraySize:I

    .line 88
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 90
    move-result-object v0

    .line 93
    new-instance v2, Lcom/miui/maml/data/IndexedVariable;

    .line 94
    iget-object v3, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 96
    iget-object v4, p0, Lcom/miui/maml/elements/VariableElement;->mType:Lcom/miui/maml/data/VariableType;

    .line 98
    invoke-virtual {v4}, Lcom/miui/maml/data/VariableType;->isNumber()Z

    .line 100
    move-result v4

    .line 103
    invoke-direct {v2, v3, v0, v4}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 104
    iput-object v2, p0, Lcom/miui/maml/elements/VariableElement;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 107
    new-instance v2, Lcom/miui/maml/data/IndexedVariable;

    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    .line 111
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    iget-object v4, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 116
    const-string v5, ".old_value"

    .line 118
    invoke-static {v3, v4, v5}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 120
    move-result-object v3

    .line 123
    iget-object v4, p0, Lcom/miui/maml/elements/VariableElement;->mType:Lcom/miui/maml/data/VariableType;

    .line 124
    invoke-virtual {v4}, Lcom/miui/maml/data/VariableType;->isNumber()Z

    .line 126
    move-result v4

    .line 129
    invoke-direct {v2, v3, v0, v4}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 130
    iput-object v2, p0, Lcom/miui/maml/elements/VariableElement;->mOldVar:Lcom/miui/maml/data/IndexedVariable;

    .line 133
    invoke-static {p1, p2}, Lcom/miui/maml/CommandTrigger;->fromParentElement(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)Lcom/miui/maml/CommandTrigger;

    .line 135
    move-result-object p2

    .line 138
    iput-object p2, p0, Lcom/miui/maml/elements/VariableElement;->mTrigger:Lcom/miui/maml/CommandTrigger;

    .line 139
    iget-object p2, p0, Lcom/miui/maml/elements/VariableElement;->mType:Lcom/miui/maml/data/VariableType;

    .line 141
    invoke-virtual {p2}, Lcom/miui/maml/data/VariableType;->isArray()Z

    .line 143
    move-result p2

    .line 146
    if-eqz p2, :cond_3

    .line 147
    const-string/jumbo p2, "values"

    .line 149
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 152
    move-result-object p1

    .line 155
    invoke-static {v0, p1}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    .line 156
    move-result-object p1

    .line 159
    iput-object p1, p0, Lcom/miui/maml/elements/VariableElement;->mArrayValues:[Lcom/miui/maml/data/Expression;

    .line 160
    if-eqz p1, :cond_0

    .line 162
    array-length p1, p1

    .line 164
    iput p1, p0, Lcom/miui/maml/elements/VariableElement;->mArraySize:I

    .line 165
    :cond_0
    iget p1, p0, Lcom/miui/maml/elements/VariableElement;->mArraySize:I

    .line 167
    const-string p2, "VariableElement"

    .line 169
    if-lez p1, :cond_1

    .line 171
    iget-object v2, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 173
    iget-object v3, p0, Lcom/miui/maml/elements/VariableElement;->mType:Lcom/miui/maml/data/VariableType;

    .line 175
    iget-object v3, v3, Lcom/miui/maml/data/VariableType;->mTypeClass:Ljava/lang/Class;

    .line 177
    invoke-virtual {v0, v2, p1, v3}, Lcom/miui/maml/data/Variables;->createArray(Ljava/lang/String;ILjava/lang/Class;)Z

    .line 179
    move-result p1

    .line 182
    if-nez p1, :cond_2

    .line 183
    new-instance p1, Ljava/lang/StringBuilder;

    .line 185
    const-string v2, "fail to create array:"

    .line 187
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    iget-object v2, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 192
    invoke-static {p1, v2, p2}, Landroidx/constraintlayout/helper/widget/CircularFlow$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iput v1, p0, Lcom/miui/maml/elements/VariableElement;->mArraySize:I

    .line 197
    goto :goto_0

    .line 199
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 200
    const-string v1, "array size is 0:"

    .line 202
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 207
    invoke-static {p1, v1, p2}, Landroidx/constraintlayout/helper/widget/CircularFlow$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :cond_2
    :goto_0
    new-instance p1, Lcom/miui/maml/data/IndexedVariable;

    .line 212
    new-instance p2, Ljava/lang/StringBuilder;

    .line 214
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 219
    const-string v2, ".length"

    .line 221
    invoke-static {p2, v1, v2}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 223
    move-result-object p2

    .line 226
    const/4 v1, 0x1

    .line 227
    invoke-direct {p1, p2, v0, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 228
    iput-object p1, p0, Lcom/miui/maml/elements/VariableElement;->mLengthVar:Lcom/miui/maml/data/IndexedVariable;

    .line 231
    iget p0, p0, Lcom/miui/maml/elements/VariableElement;->mArraySize:I

    .line 233
    int-to-double v0, p0

    .line 235
    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 236
    :cond_3
    return-void
    .line 239
.end method

.method private getDouble(ZI)D
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/VariableElement;->mAnimation:Lcom/miui/maml/animation/VariableAnimation;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/miui/maml/animation/VariableAnimation;->getValue()D

    .line 6
    move-result-wide p0

    .line 9
    return-wide p0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/VariableElement;->mExpression:Lcom/miui/maml/data/Expression;

    .line 11
    if-eqz v0, :cond_1

    .line 13
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 15
    move-result-wide p0

    .line 18
    return-wide p0

    .line 19
    :cond_1
    iget-object p0, p0, Lcom/miui/maml/elements/VariableElement;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 20
    if-eqz p1, :cond_2

    .line 22
    invoke-virtual {p0, p2}, Lcom/miui/maml/data/IndexedVariable;->getArrDouble(I)D

    .line 24
    move-result-wide p0

    .line 27
    goto :goto_0

    .line 28
    :cond_2
    invoke-virtual {p0}, Lcom/miui/maml/data/IndexedVariable;->getDouble()D

    .line 29
    move-result-wide p0

    .line 32
    :goto_0
    return-wide p0
    .line 33
.end method

.method private onValueChange(D)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/VariableElement;->mInited:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    iput-wide p1, p0, Lcom/miui/maml/elements/VariableElement;->mOldValue:D

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/VariableElement;->mTrigger:Lcom/miui/maml/CommandTrigger;

    .line 8
    if-eqz v0, :cond_1

    .line 10
    iget-wide v0, p0, Lcom/miui/maml/elements/VariableElement;->mOldValue:D

    .line 12
    sub-double v0, p1, v0

    .line 14
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    .line 16
    move-result-wide v0

    .line 19
    iget-wide v2, p0, Lcom/miui/maml/elements/VariableElement;->mThreshold:D

    .line 20
    cmpl-double v0, v0, v2

    .line 22
    if-ltz v0, :cond_1

    .line 24
    iget-object v0, p0, Lcom/miui/maml/elements/VariableElement;->mOldVar:Lcom/miui/maml/data/IndexedVariable;

    .line 26
    iget-wide v1, p0, Lcom/miui/maml/elements/VariableElement;->mOldValue:D

    .line 28
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 30
    iput-wide p1, p0, Lcom/miui/maml/elements/VariableElement;->mOldValue:D

    .line 33
    iget-object p0, p0, Lcom/miui/maml/elements/VariableElement;->mTrigger:Lcom/miui/maml/CommandTrigger;

    .line 35
    invoke-virtual {p0}, Lcom/miui/maml/CommandTrigger;->perform()V

    .line 37
    :cond_1
    return-void
    .line 40
.end method

.method private update()V
    .locals 6

    .line 1
    sget-object v0, Lcom/miui/maml/elements/VariableElement$1;->$SwitchMap$com$miui$maml$data$VariableType:[I

    .line 2
    iget-object v1, p0, Lcom/miui/maml/elements/VariableElement;->mType:Lcom/miui/maml/data/VariableType;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 10
    const/4 v1, 0x1

    .line 12
    if-eq v0, v1, :cond_8

    .line 13
    const/4 v2, 0x2

    .line 15
    const/4 v3, 0x0

    .line 16
    if-eq v0, v2, :cond_4

    .line 17
    const/4 v2, 0x3

    .line 19
    if-eq v0, v2, :cond_3

    .line 20
    iget-object v0, p0, Lcom/miui/maml/elements/VariableElement;->mType:Lcom/miui/maml/data/VariableType;

    .line 22
    invoke-virtual {v0}, Lcom/miui/maml/data/VariableType;->isNumberArray()Z

    .line 24
    move-result v0

    .line 27
    if-eqz v0, :cond_9

    .line 28
    iget-object v0, p0, Lcom/miui/maml/elements/VariableElement;->mIndexExpression:Lcom/miui/maml/data/Expression;

    .line 30
    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 34
    move-result-wide v2

    .line 37
    double-to-int v0, v2

    .line 38
    invoke-direct {p0, v1, v0}, Lcom/miui/maml/elements/VariableElement;->getDouble(ZI)D

    .line 39
    move-result-wide v1

    .line 42
    iget-object v3, p0, Lcom/miui/maml/elements/VariableElement;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 43
    invoke-virtual {v3, v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->setArr(ID)Z

    .line 45
    invoke-direct {p0, v1, v2}, Lcom/miui/maml/elements/VariableElement;->onValueChange(D)V

    .line 48
    goto/16 :goto_4

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/VariableElement;->mArrayValues:[Lcom/miui/maml/data/Expression;

    .line 53
    if-eqz v0, :cond_9

    .line 55
    array-length v0, v0

    .line 57
    iget-object v1, p0, Lcom/miui/maml/elements/VariableElement;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 58
    invoke-virtual {v1}, Lcom/miui/maml/data/IndexedVariable;->get()Ljava/lang/Object;

    .line 60
    move-result-object v1

    .line 63
    :goto_0
    if-ge v3, v0, :cond_2

    .line 64
    iget-object v2, p0, Lcom/miui/maml/elements/VariableElement;->mArrayValues:[Lcom/miui/maml/data/Expression;

    .line 66
    aget-object v2, v2, v3

    .line 68
    if-nez v2, :cond_1

    .line 70
    const-wide/16 v4, 0x0

    .line 72
    goto :goto_1

    .line 74
    :cond_1
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 75
    move-result-wide v4

    .line 78
    :goto_1
    invoke-static {v1, v3, v4, v5}, Lcom/miui/maml/data/Variables;->putValueToArr(Ljava/lang/Object;ID)Z

    .line 79
    add-int/lit8 v3, v3, 0x1

    .line 82
    goto :goto_0

    .line 84
    :cond_2
    iget-object p0, p0, Lcom/miui/maml/elements/VariableElement;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 85
    invoke-virtual {p0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 87
    goto/16 :goto_4

    .line 90
    :cond_3
    invoke-direct {p0, v3, v3}, Lcom/miui/maml/elements/VariableElement;->getDouble(ZI)D

    .line 92
    move-result-wide v0

    .line 95
    iget-object v2, p0, Lcom/miui/maml/elements/VariableElement;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 96
    invoke-virtual {v2, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 98
    invoke-direct {p0, v0, v1}, Lcom/miui/maml/elements/VariableElement;->onValueChange(D)V

    .line 101
    goto/16 :goto_4

    .line 104
    :cond_4
    iget-object v0, p0, Lcom/miui/maml/elements/VariableElement;->mIndexExpression:Lcom/miui/maml/data/Expression;

    .line 106
    if-eqz v0, :cond_5

    .line 108
    iget-object v0, p0, Lcom/miui/maml/elements/VariableElement;->mExpression:Lcom/miui/maml/data/Expression;

    .line 110
    if-eqz v0, :cond_5

    .line 112
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 114
    move-result-object v0

    .line 117
    iget-object v1, p0, Lcom/miui/maml/elements/VariableElement;->mIndexExpression:Lcom/miui/maml/data/Expression;

    .line 118
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 120
    move-result-wide v1

    .line 123
    double-to-int v1, v1

    .line 124
    iget-object v2, p0, Lcom/miui/maml/elements/VariableElement;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 125
    invoke-virtual {v2, v1}, Lcom/miui/maml/data/IndexedVariable;->getArrString(I)Ljava/lang/String;

    .line 127
    move-result-object v2

    .line 130
    invoke-static {v0, v2}, Lcom/miui/maml/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 131
    move-result v3

    .line 134
    if-nez v3, :cond_9

    .line 135
    iget-object v3, p0, Lcom/miui/maml/elements/VariableElement;->mOldVar:Lcom/miui/maml/data/IndexedVariable;

    .line 137
    invoke-virtual {v3, v2}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 139
    iget-object v2, p0, Lcom/miui/maml/elements/VariableElement;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 142
    invoke-virtual {v2, v1, v0}, Lcom/miui/maml/data/IndexedVariable;->setArr(ILjava/lang/Object;)Z

    .line 144
    iget-object p0, p0, Lcom/miui/maml/elements/VariableElement;->mTrigger:Lcom/miui/maml/CommandTrigger;

    .line 147
    if-eqz p0, :cond_9

    .line 149
    invoke-virtual {p0}, Lcom/miui/maml/CommandTrigger;->perform()V

    .line 151
    goto :goto_4

    .line 154
    :cond_5
    iget-object v0, p0, Lcom/miui/maml/elements/VariableElement;->mArrayValues:[Lcom/miui/maml/data/Expression;

    .line 155
    if-eqz v0, :cond_9

    .line 157
    iget-object v0, p0, Lcom/miui/maml/elements/VariableElement;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 159
    invoke-virtual {v0}, Lcom/miui/maml/data/IndexedVariable;->get()Ljava/lang/Object;

    .line 161
    move-result-object v0

    .line 164
    instance-of v1, v0, [Ljava/lang/String;

    .line 165
    if-eqz v1, :cond_9

    .line 167
    check-cast v0, [Ljava/lang/String;

    .line 169
    iget-object v1, p0, Lcom/miui/maml/elements/VariableElement;->mArrayValues:[Lcom/miui/maml/data/Expression;

    .line 171
    array-length v1, v1

    .line 173
    array-length v2, v0

    .line 174
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 175
    move-result v1

    .line 178
    :goto_2
    if-ge v3, v1, :cond_7

    .line 179
    iget-object v2, p0, Lcom/miui/maml/elements/VariableElement;->mArrayValues:[Lcom/miui/maml/data/Expression;

    .line 181
    aget-object v2, v2, v3

    .line 183
    if-nez v2, :cond_6

    .line 185
    const/4 v2, 0x0

    .line 187
    goto :goto_3

    .line 188
    :cond_6
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 189
    move-result-object v2

    .line 192
    :goto_3
    aput-object v2, v0, v3

    .line 193
    add-int/lit8 v3, v3, 0x1

    .line 195
    goto :goto_2

    .line 197
    :cond_7
    iget-object p0, p0, Lcom/miui/maml/elements/VariableElement;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 198
    invoke-virtual {p0, v0}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 200
    goto :goto_4

    .line 203
    :cond_8
    iget-object v0, p0, Lcom/miui/maml/elements/VariableElement;->mExpression:Lcom/miui/maml/data/Expression;

    .line 204
    if-eqz v0, :cond_9

    .line 206
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 208
    move-result-object v0

    .line 211
    iget-object v1, p0, Lcom/miui/maml/elements/VariableElement;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 212
    invoke-virtual {v1}, Lcom/miui/maml/data/IndexedVariable;->getString()Ljava/lang/String;

    .line 214
    move-result-object v1

    .line 217
    invoke-static {v0, v1}, Lcom/miui/maml/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 218
    move-result v2

    .line 221
    if-nez v2, :cond_9

    .line 222
    iget-object v2, p0, Lcom/miui/maml/elements/VariableElement;->mOldVar:Lcom/miui/maml/data/IndexedVariable;

    .line 224
    invoke-virtual {v2, v1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 226
    iget-object v1, p0, Lcom/miui/maml/elements/VariableElement;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 229
    invoke-virtual {v1, v0}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 231
    iget-object p0, p0, Lcom/miui/maml/elements/VariableElement;->mTrigger:Lcom/miui/maml/CommandTrigger;

    .line 234
    if-eqz p0, :cond_9

    .line 236
    invoke-virtual {p0}, Lcom/miui/maml/CommandTrigger;->perform()V

    .line 238
    :cond_9
    :goto_4
    return-void
    .line 241
.end method


# virtual methods
.method public doRender(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public doTick(J)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/VariableElement;->mConst:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->doTick(J)V

    .line 7
    invoke-direct {p0}, Lcom/miui/maml/elements/VariableElement;->update()V

    .line 10
    return-void
    .line 13
.end method

.method public finish()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ScreenElement;->finish()V

    .line 2
    iget-object v0, p0, Lcom/miui/maml/elements/VariableElement;->mTrigger:Lcom/miui/maml/CommandTrigger;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/miui/maml/CommandTrigger;->finish()V

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/miui/maml/elements/VariableElement;->mInited:Z

    .line 13
    return-void
    .line 15
.end method

.method public init()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ScreenElement;->init()V

    .line 2
    iget-object v0, p0, Lcom/miui/maml/elements/VariableElement;->mTrigger:Lcom/miui/maml/CommandTrigger;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/miui/maml/CommandTrigger;->init()V

    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/miui/maml/elements/VariableElement;->update()V

    .line 12
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/miui/maml/elements/VariableElement;->mInited:Z

    .line 16
    return-void
    .line 18
.end method

.method public onCreateAnimation(Ljava/lang/String;Lorg/w3c/dom/Element;)Lcom/miui/maml/animation/BaseAnimation;
    .locals 1

    .line 1
    const-string v0, "VariableAnimation"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    new-instance p1, Lcom/miui/maml/animation/VariableAnimation;

    .line 10
    invoke-direct {p1, p2, p0}, Lcom/miui/maml/animation/VariableAnimation;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V

    .line 12
    iput-object p1, p0, Lcom/miui/maml/elements/VariableElement;->mAnimation:Lcom/miui/maml/animation/VariableAnimation;

    .line 15
    return-object p1

    .line 17
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->onCreateAnimation(Ljava/lang/String;Lorg/w3c/dom/Element;)Lcom/miui/maml/animation/BaseAnimation;

    .line 18
    move-result-object p0

    .line 21
    return-object p0
    .line 22
.end method

.method public onSetAnimBefore()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/miui/maml/elements/VariableElement;->mAnimation:Lcom/miui/maml/animation/VariableAnimation;

    .line 3
    return-void
    .line 5
.end method

.method public onSetAnimEnable(Lcom/miui/maml/animation/BaseAnimation;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/miui/maml/animation/VariableAnimation;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Lcom/miui/maml/animation/VariableAnimation;

    .line 6
    iput-object p1, p0, Lcom/miui/maml/elements/VariableElement;->mAnimation:Lcom/miui/maml/animation/VariableAnimation;

    .line 8
    :cond_0
    return-void
    .line 10
.end method

.method public pause()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ScreenElement;->pause()V

    .line 2
    iget-object p0, p0, Lcom/miui/maml/elements/VariableElement;->mTrigger:Lcom/miui/maml/CommandTrigger;

    .line 5
    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/miui/maml/CommandTrigger;->pause()V

    .line 9
    :cond_0
    return-void
    .line 12
.end method

.method public pauseAnim(J)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->pauseAnim(J)V

    .line 2
    invoke-direct {p0}, Lcom/miui/maml/elements/VariableElement;->update()V

    .line 5
    return-void
    .line 8
.end method

.method public playAnim(JJJZZ)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p8}, Lcom/miui/maml/elements/ScreenElement;->playAnim(JJJZZ)V

    .line 2
    invoke-direct {p0}, Lcom/miui/maml/elements/VariableElement;->update()V

    .line 5
    return-void
    .line 8
.end method

.method public reset(J)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->reset(J)V

    .line 2
    invoke-direct {p0}, Lcom/miui/maml/elements/VariableElement;->update()V

    .line 5
    return-void
    .line 8
.end method

.method public resume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ScreenElement;->resume()V

    .line 2
    iget-object p0, p0, Lcom/miui/maml/elements/VariableElement;->mTrigger:Lcom/miui/maml/CommandTrigger;

    .line 5
    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/miui/maml/CommandTrigger;->resume()V

    .line 9
    :cond_0
    return-void
    .line 12
.end method

.method public resumeAnim(J)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->resumeAnim(J)V

    .line 2
    invoke-direct {p0}, Lcom/miui/maml/elements/VariableElement;->update()V

    .line 5
    return-void
    .line 8
.end method
