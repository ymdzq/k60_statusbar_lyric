.class Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;
.super Lcom/miui/maml/ActionCommand;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "VariableCommand"


# instance fields
.field private mArrayValues:[Lcom/miui/maml/data/Expression;

.field private mExpression:Lcom/miui/maml/data/Expression;

.field private mIndexExpression:Lcom/miui/maml/data/Expression;

.field private mLengthVar:Lcom/miui/maml/data/IndexedVariable;

.field private mName:Ljava/lang/String;

.field private mNameExp:Lcom/miui/maml/data/Expression;

.field private mPersist:Z

.field private mRequestUpdate:Z

.field private mType:Lcom/miui/maml/data/VariableType;

.field private mVar:Lcom/miui/maml/data/IndexedVariable;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/ActionCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;)V

    .line 2
    invoke-virtual {p1}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 5
    move-result-object p1

    .line 8
    const-string v0, "nameExp"

    .line 9
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 14
    invoke-static {p1, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 15
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mNameExp:Lcom/miui/maml/data/Expression;

    .line 19
    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    .line 27
    goto :goto_0

    .line 29
    :cond_0
    const-string v0, "name"

    .line 30
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    .line 36
    :goto_0
    const-string v0, "persist"

    .line 38
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 43
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 44
    move-result v0

    .line 47
    iput-boolean v0, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mPersist:Z

    .line 48
    const-string v0, "requestUpdate"

    .line 50
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 55
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 56
    move-result v0

    .line 59
    iput-boolean v0, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mRequestUpdate:Z

    .line 60
    const-string/jumbo v0, "type"

    .line 62
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    move-result-object v0

    .line 68
    invoke-static {v0}, Lcom/miui/maml/data/VariableType;->parseType(Ljava/lang/String;)Lcom/miui/maml/data/VariableType;

    .line 69
    move-result-object v0

    .line 72
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mType:Lcom/miui/maml/data/VariableType;

    .line 73
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    .line 75
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 77
    move-result v0

    .line 80
    if-nez v0, :cond_1

    .line 81
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    .line 83
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    .line 85
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mType:Lcom/miui/maml/data/VariableType;

    .line 87
    invoke-virtual {v2}, Lcom/miui/maml/data/VariableType;->isNumber()Z

    .line 89
    move-result v2

    .line 92
    invoke-direct {v0, v1, p1, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 93
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 96
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mType:Lcom/miui/maml/data/VariableType;

    .line 98
    invoke-virtual {v0}, Lcom/miui/maml/data/VariableType;->isArray()Z

    .line 100
    move-result v0

    .line 103
    if-eqz v0, :cond_2

    .line 104
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    .line 108
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    .line 113
    const-string v3, ".length"

    .line 115
    invoke-static {v1, v2, v3}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 117
    move-result-object v1

    .line 120
    const/4 v2, 0x1

    .line 121
    invoke-direct {v0, v1, p1, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 122
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mLengthVar:Lcom/miui/maml/data/IndexedVariable;

    .line 125
    goto :goto_1

    .line 127
    :cond_1
    const-string v0, "ActionCommand"

    .line 128
    const-string v1, "empty name in VariableAssignmentCommand"

    .line 130
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_2
    :goto_1
    const-string v0, "expression"

    .line 135
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 137
    move-result-object v0

    .line 140
    invoke-static {p1, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 141
    move-result-object v0

    .line 144
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lcom/miui/maml/data/Expression;

    .line 145
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mType:Lcom/miui/maml/data/VariableType;

    .line 147
    invoke-virtual {v0}, Lcom/miui/maml/data/VariableType;->isArray()Z

    .line 149
    move-result v0

    .line 152
    if-eqz v0, :cond_3

    .line 153
    const-string v0, "index"

    .line 155
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 157
    move-result-object v0

    .line 160
    invoke-static {p1, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 161
    move-result-object v0

    .line 164
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mIndexExpression:Lcom/miui/maml/data/Expression;

    .line 165
    const-string/jumbo v0, "values"

    .line 167
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 170
    move-result-object p2

    .line 173
    invoke-static {p1, p2}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    .line 174
    move-result-object p1

    .line 177
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mArrayValues:[Lcom/miui/maml/data/Expression;

    .line 178
    :cond_3
    return-void
    .line 180
.end method


# virtual methods
.method public doPerform()V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 6
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mNameExp:Lcom/miui/maml/data/Expression;

    .line 10
    const-string v3, ".length"

    .line 12
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x1

    .line 15
    if-eqz v2, :cond_1

    .line 16
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 21
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    move-result v6

    .line 25
    if-eqz v6, :cond_0

    .line 26
    iput-object v4, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    .line 28
    return-void

    .line 30
    :cond_0
    iget-object v6, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    .line 31
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    move-result v6

    .line 36
    if-nez v6, :cond_1

    .line 37
    iput-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    .line 39
    new-instance v6, Lcom/miui/maml/data/IndexedVariable;

    .line 41
    iget-object v7, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mType:Lcom/miui/maml/data/VariableType;

    .line 43
    invoke-virtual {v7}, Lcom/miui/maml/data/VariableType;->isNumber()Z

    .line 45
    move-result v7

    .line 48
    invoke-direct {v6, v2, v1, v7}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 49
    iput-object v6, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 52
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mType:Lcom/miui/maml/data/VariableType;

    .line 54
    invoke-virtual {v2}, Lcom/miui/maml/data/VariableType;->isArray()Z

    .line 56
    move-result v2

    .line 59
    if-eqz v2, :cond_1

    .line 60
    new-instance v2, Lcom/miui/maml/data/IndexedVariable;

    .line 62
    new-instance v6, Ljava/lang/StringBuilder;

    .line 64
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    iget-object v7, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    .line 69
    invoke-static {v6, v7, v3}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    move-result-object v6

    .line 74
    invoke-direct {v2, v6, v1, v5}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 75
    iput-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mLengthVar:Lcom/miui/maml/data/IndexedVariable;

    .line 78
    :cond_1
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 80
    if-nez v2, :cond_2

    .line 82
    return-void

    .line 84
    :cond_2
    sget-object v2, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$data$VariableType:[I

    .line 85
    iget-object v6, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mType:Lcom/miui/maml/data/VariableType;

    .line 87
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 89
    move-result v6

    .line 92
    aget v2, v2, v6

    .line 93
    const/4 v6, 0x2

    .line 95
    if-eq v2, v5, :cond_17

    .line 96
    if-eq v2, v6, :cond_16

    .line 98
    const/4 v6, 0x3

    .line 100
    if-eq v2, v6, :cond_15

    .line 101
    const/4 v6, 0x4

    .line 103
    if-eq v2, v6, :cond_14

    .line 104
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mType:Lcom/miui/maml/data/VariableType;

    .line 106
    invoke-virtual {v2}, Lcom/miui/maml/data/VariableType;->isNumberOrStringArray()Z

    .line 108
    move-result v2

    .line 111
    const-wide/16 v6, 0x0

    .line 112
    const/4 v8, 0x0

    .line 114
    if-eqz v2, :cond_b

    .line 115
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mIndexExpression:Lcom/miui/maml/data/Expression;

    .line 117
    if-eqz v2, :cond_4

    .line 119
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lcom/miui/maml/data/Expression;

    .line 121
    if-eqz v2, :cond_4

    .line 123
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mType:Lcom/miui/maml/data/VariableType;

    .line 125
    invoke-virtual {v1}, Lcom/miui/maml/data/VariableType;->isNumberArray()Z

    .line 127
    move-result v1

    .line 130
    if-eqz v1, :cond_3

    .line 131
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 133
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mIndexExpression:Lcom/miui/maml/data/Expression;

    .line 135
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 137
    move-result-wide v2

    .line 140
    double-to-int v2, v2

    .line 141
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lcom/miui/maml/data/Expression;

    .line 142
    invoke-virtual {v3}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 144
    move-result-wide v3

    .line 147
    invoke-virtual {v1, v2, v3, v4}, Lcom/miui/maml/data/IndexedVariable;->setArr(ID)Z

    .line 148
    goto/16 :goto_5

    .line 151
    :cond_3
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 153
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mIndexExpression:Lcom/miui/maml/data/Expression;

    .line 155
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 157
    move-result-wide v2

    .line 160
    double-to-int v2, v2

    .line 161
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lcom/miui/maml/data/Expression;

    .line 162
    invoke-virtual {v3}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 164
    move-result-object v3

    .line 167
    invoke-virtual {v1, v2, v3}, Lcom/miui/maml/data/IndexedVariable;->setArr(ILjava/lang/Object;)Z

    .line 168
    goto/16 :goto_5

    .line 171
    :cond_4
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mArrayValues:[Lcom/miui/maml/data/Expression;

    .line 173
    if-eqz v2, :cond_b

    .line 175
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 177
    invoke-virtual {v2}, Lcom/miui/maml/data/IndexedVariable;->get()Ljava/lang/Object;

    .line 179
    move-result-object v2

    .line 182
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mArrayValues:[Lcom/miui/maml/data/Expression;

    .line 183
    array-length v3, v3

    .line 185
    if-eqz v2, :cond_5

    .line 186
    invoke-static {v2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 188
    move-result v5

    .line 191
    if-ne v5, v3, :cond_5

    .line 192
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 194
    move-result-object v5

    .line 197
    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 198
    move-result-object v5

    .line 201
    iget-object v9, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mType:Lcom/miui/maml/data/VariableType;

    .line 202
    iget-object v9, v9, Lcom/miui/maml/data/VariableType;->mTypeClass:Ljava/lang/Class;

    .line 204
    if-eq v5, v9, :cond_6

    .line 206
    :cond_5
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    .line 208
    iget-object v5, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mType:Lcom/miui/maml/data/VariableType;

    .line 210
    iget-object v5, v5, Lcom/miui/maml/data/VariableType;->mTypeClass:Ljava/lang/Class;

    .line 212
    invoke-virtual {v1, v2, v3, v5}, Lcom/miui/maml/data/Variables;->createArray(Ljava/lang/String;ILjava/lang/Class;)Z

    .line 214
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mLengthVar:Lcom/miui/maml/data/IndexedVariable;

    .line 217
    int-to-double v9, v3

    .line 219
    invoke-virtual {v1, v9, v10}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 220
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 223
    invoke-virtual {v1}, Lcom/miui/maml/data/IndexedVariable;->get()Ljava/lang/Object;

    .line 225
    move-result-object v2

    .line 228
    :cond_6
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mType:Lcom/miui/maml/data/VariableType;

    .line 229
    invoke-virtual {v1}, Lcom/miui/maml/data/VariableType;->isNumberArray()Z

    .line 231
    move-result v1

    .line 234
    if-eqz v1, :cond_8

    .line 235
    :goto_0
    if-ge v8, v3, :cond_a

    .line 237
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mArrayValues:[Lcom/miui/maml/data/Expression;

    .line 239
    aget-object v1, v1, v8

    .line 241
    if-nez v1, :cond_7

    .line 243
    move-wide v4, v6

    .line 245
    goto :goto_1

    .line 246
    :cond_7
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 247
    move-result-wide v4

    .line 250
    :goto_1
    invoke-static {v2, v8, v4, v5}, Lcom/miui/maml/data/Variables;->putValueToArr(Ljava/lang/Object;ID)Z

    .line 251
    add-int/lit8 v8, v8, 0x1

    .line 254
    goto :goto_0

    .line 256
    :cond_8
    :goto_2
    if-ge v8, v3, :cond_a

    .line 257
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mArrayValues:[Lcom/miui/maml/data/Expression;

    .line 259
    aget-object v1, v1, v8

    .line 261
    move-object v5, v2

    .line 263
    check-cast v5, [Ljava/lang/String;

    .line 264
    if-nez v1, :cond_9

    .line 266
    move-object v1, v4

    .line 268
    goto :goto_3

    .line 269
    :cond_9
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 270
    move-result-object v1

    .line 273
    :goto_3
    aput-object v1, v5, v8

    .line 274
    add-int/lit8 v8, v8, 0x1

    .line 276
    goto :goto_2

    .line 278
    :cond_a
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 279
    invoke-virtual {v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 281
    goto/16 :goto_5

    .line 284
    :cond_b
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lcom/miui/maml/data/Expression;

    .line 286
    if-eqz v2, :cond_c

    .line 288
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 290
    move-result-object v2

    .line 293
    goto :goto_4

    .line 294
    :cond_c
    move-object v2, v4

    .line 295
    :goto_4
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 296
    move-result-object v9

    .line 299
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 300
    move-result v10

    .line 303
    if-nez v10, :cond_d

    .line 304
    invoke-virtual {v9, v2}, Lcom/miui/maml/data/Variables;->existsObj(Ljava/lang/String;)Z

    .line 306
    move-result v10

    .line 309
    if-eqz v10, :cond_d

    .line 310
    invoke-virtual {v9, v2}, Lcom/miui/maml/data/Variables;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 312
    move-result-object v4

    .line 315
    :cond_d
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mIndexExpression:Lcom/miui/maml/data/Expression;

    .line 316
    if-nez v2, :cond_13

    .line 318
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 320
    invoke-virtual {v2}, Lcom/miui/maml/data/IndexedVariable;->get()Ljava/lang/Object;

    .line 322
    move-result-object v2

    .line 325
    iget-object v9, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 326
    invoke-virtual {v9, v4}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 328
    if-eqz v2, :cond_e

    .line 331
    instance-of v2, v2, Ljava/lang/reflect/Array;

    .line 333
    if-nez v2, :cond_f

    .line 335
    :cond_e
    if-eqz v4, :cond_10

    .line 337
    instance-of v2, v4, Ljava/lang/reflect/Array;

    .line 339
    if-eqz v2, :cond_10

    .line 341
    :cond_f
    move v8, v5

    .line 343
    :cond_10
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mLengthVar:Lcom/miui/maml/data/IndexedVariable;

    .line 344
    if-nez v2, :cond_11

    .line 346
    if-eqz v8, :cond_11

    .line 348
    new-instance v2, Lcom/miui/maml/data/IndexedVariable;

    .line 350
    new-instance v8, Ljava/lang/StringBuilder;

    .line 352
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 354
    iget-object v9, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    .line 357
    invoke-static {v8, v9, v3}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 359
    move-result-object v3

    .line 362
    invoke-direct {v2, v3, v1, v5}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 363
    iput-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mLengthVar:Lcom/miui/maml/data/IndexedVariable;

    .line 366
    :cond_11
    if-eqz v4, :cond_12

    .line 368
    instance-of v1, v4, Ljava/lang/reflect/Array;

    .line 370
    if-eqz v1, :cond_12

    .line 372
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mLengthVar:Lcom/miui/maml/data/IndexedVariable;

    .line 374
    invoke-static {v4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 376
    move-result v2

    .line 379
    int-to-double v2, v2

    .line 380
    invoke-virtual {v1, v2, v3}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 381
    goto :goto_5

    .line 384
    :cond_12
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mLengthVar:Lcom/miui/maml/data/IndexedVariable;

    .line 385
    if-eqz v1, :cond_18

    .line 387
    invoke-virtual {v1, v6, v7}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 389
    goto :goto_5

    .line 392
    :cond_13
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 393
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 395
    move-result-wide v2

    .line 398
    double-to-int v2, v2

    .line 399
    invoke-virtual {v1, v2, v4}, Lcom/miui/maml/data/IndexedVariable;->setArr(ILjava/lang/Object;)Z

    .line 400
    goto :goto_5

    .line 403
    :cond_14
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lcom/miui/maml/data/Expression;

    .line 404
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluateJsonArray()Lorg/json/JSONArray;

    .line 406
    move-result-object v1

    .line 409
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 410
    invoke-virtual {v2, v1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 412
    goto :goto_5

    .line 415
    :cond_15
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lcom/miui/maml/data/Expression;

    .line 416
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluateJsonObject()Lorg/json/JSONObject;

    .line 418
    move-result-object v1

    .line 421
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 422
    invoke-virtual {v2, v1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 424
    goto :goto_5

    .line 427
    :cond_16
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lcom/miui/maml/data/Expression;

    .line 428
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 430
    move-result-object v1

    .line 433
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 434
    invoke-virtual {v2, v1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 436
    iget-boolean v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mPersist:Z

    .line 439
    if-eqz v2, :cond_18

    .line 441
    invoke-virtual {v0, v6}, Lcom/miui/maml/ScreenElementRoot;->getCapability(I)Z

    .line 443
    move-result v2

    .line 446
    if-eqz v2, :cond_18

    .line 447
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    .line 449
    invoke-virtual {v0, v2, v1}, Lcom/miui/maml/ScreenElementRoot;->saveVar(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    goto :goto_5

    .line 454
    :cond_17
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lcom/miui/maml/data/Expression;

    .line 455
    if-eqz v1, :cond_18

    .line 457
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 459
    move-result-wide v1

    .line 462
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 463
    invoke-virtual {v3, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 465
    iget-boolean v3, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mPersist:Z

    .line 468
    if-eqz v3, :cond_18

    .line 470
    invoke-virtual {v0, v6}, Lcom/miui/maml/ScreenElementRoot;->getCapability(I)Z

    .line 472
    move-result v3

    .line 475
    if-eqz v3, :cond_18

    .line 476
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    .line 478
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 480
    move-result-object v1

    .line 483
    invoke-virtual {v0, v3, v1}, Lcom/miui/maml/ScreenElementRoot;->saveVar(Ljava/lang/String;Ljava/lang/Double;)V

    .line 484
    :cond_18
    :goto_5
    iget-boolean p0, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mRequestUpdate:Z

    .line 487
    if-eqz p0, :cond_19

    .line 489
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->requestUpdate()V

    .line 491
    :cond_19
    return-void
    .line 494
.end method
