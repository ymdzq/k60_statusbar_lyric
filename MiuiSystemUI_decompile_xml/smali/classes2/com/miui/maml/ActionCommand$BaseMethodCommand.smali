.class abstract Lcom/miui/maml/ActionCommand$BaseMethodCommand;
.super Lcom/miui/maml/ActionCommand$TargetCommand;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field protected static final ERROR_EXCEPTION:I = -0x2

.field protected static final ERROR_NO_METHOD:I = -0x1

.field protected static final ERROR_SUCCESS:I = 0x1


# instance fields
.field protected mErrorCodeVar:Lcom/miui/maml/data/IndexedVariable;

.field private mParamObjVars:[Lcom/miui/maml/ActionCommand$ObjVar;

.field protected mParamTypes:[Ljava/lang/Class;

.field protected mParamValues:[Ljava/lang/Object;

.field private mParams:[Lcom/miui/maml/data/Expression;

.field protected mReturnVar:Lcom/miui/maml/data/IndexedVariable;

.field protected mTargetClass:Ljava/lang/Class;

.field protected mTargetClassName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 4

    .line 1
    const-string v0, "ActionCommand"

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/ActionCommand$TargetCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    .line 4
    const-string p1, "class"

    .line 7
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mTargetClassName:Ljava/lang/String;

    .line 13
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    move-result p1

    .line 18
    const/4 v1, 0x0

    .line 19
    if-eqz p1, :cond_0

    .line 20
    iput-object v1, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mTargetClassName:Ljava/lang/String;

    .line 22
    :cond_0
    const-string p1, "params"

    .line 24
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 29
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 30
    move-result-object v2

    .line 33
    invoke-static {v2, p1}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    .line 34
    move-result-object p1

    .line 37
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParams:[Lcom/miui/maml/data/Expression;

    .line 38
    const-string p1, "paramTypes"

    .line 40
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 45
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParams:[Lcom/miui/maml/data/Expression;

    .line 46
    if-eqz v2, :cond_1

    .line 48
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 50
    move-result v2

    .line 53
    if-nez v2, :cond_1

    .line 54
    const-string v2, ","

    .line 56
    invoke-static {p1, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 58
    move-result-object p1

    .line 61
    :try_start_0
    invoke-static {p1}, Lcom/miui/maml/util/ReflectionHelper;->strTypesToClass([Ljava/lang/String;)[Ljava/lang/Class;

    .line 62
    move-result-object p1

    .line 65
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParamTypes:[Ljava/lang/Class;

    .line 66
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParams:[Lcom/miui/maml/data/Expression;

    .line 68
    array-length v2, v2

    .line 70
    array-length p1, p1

    .line 71
    if-eq v2, p1, :cond_1

    .line 72
    new-instance p1, Ljava/lang/StringBuilder;

    .line 74
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mLogStr:Ljava/lang/String;

    .line 79
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    const-string v2, "different length of params and paramTypes"

    .line 84
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object p1

    .line 92
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iput-object v1, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParams:[Lcom/miui/maml/data/Expression;

    .line 96
    iput-object v1, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParamTypes:[Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    goto :goto_0

    .line 100
    :catch_0
    move-exception p1

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    .line 102
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mLogStr:Ljava/lang/String;

    .line 107
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    const-string v3, "invalid method paramTypes. "

    .line 112
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    .line 117
    move-result-object p1

    .line 120
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    move-result-object p1

    .line 127
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iput-object v1, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParams:[Lcom/miui/maml/data/Expression;

    .line 131
    iput-object v1, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParamTypes:[Ljava/lang/Class;

    .line 133
    :cond_1
    :goto_0
    const-string p1, "return"

    .line 135
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 137
    move-result-object p1

    .line 140
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 141
    move-result v0

    .line 144
    if-nez v0, :cond_2

    .line 145
    const-string v0, "returnType"

    .line 147
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 149
    move-result-object v0

    .line 152
    invoke-static {v0}, Lcom/miui/maml/data/VariableType;->parseType(Ljava/lang/String;)Lcom/miui/maml/data/VariableType;

    .line 153
    move-result-object v0

    .line 156
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    .line 157
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 159
    move-result-object v2

    .line 162
    invoke-virtual {v0}, Lcom/miui/maml/data/VariableType;->isNumber()Z

    .line 163
    move-result v0

    .line 166
    invoke-direct {v1, p1, v2, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 167
    iput-object v1, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mReturnVar:Lcom/miui/maml/data/IndexedVariable;

    .line 170
    :cond_2
    const-string p1, "errorVar"

    .line 172
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 174
    move-result-object p1

    .line 177
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 178
    move-result p2

    .line 181
    if-nez p2, :cond_3

    .line 182
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    .line 184
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 186
    move-result-object v0

    .line 189
    const/4 v1, 0x1

    .line 190
    invoke-direct {p2, p1, v0, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 191
    iput-object p2, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mErrorCodeVar:Lcom/miui/maml/data/IndexedVariable;

    .line 194
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 196
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    iget-object p2, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mLogStr:Ljava/lang/String;

    .line 201
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    const-string p2, ", class="

    .line 206
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    iget-object p2, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mTargetClassName:Ljava/lang/String;

    .line 211
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    const-string p2, " type="

    .line 216
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    iget-object p2, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetType:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    .line 221
    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 223
    move-result-object p2

    .line 226
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    move-result-object p1

    .line 233
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mLogStr:Ljava/lang/String;

    .line 234
    return-void
    .line 236
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/miui/maml/ActionCommand;->finish()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParamValues:[Ljava/lang/Object;

    .line 6
    return-void
    .line 8
.end method

.method public init()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/miui/maml/ActionCommand$TargetCommand;->init()V

    .line 2
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParamTypes:[Ljava/lang/Class;

    .line 5
    if-eqz v0, :cond_4

    .line 7
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParamObjVars:[Lcom/miui/maml/ActionCommand$ObjVar;

    .line 9
    if-nez v1, :cond_0

    .line 11
    array-length v0, v0

    .line 13
    new-array v0, v0, [Lcom/miui/maml/ActionCommand$ObjVar;

    .line 14
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParamObjVars:[Lcom/miui/maml/ActionCommand$ObjVar;

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParamTypes:[Ljava/lang/Class;

    .line 19
    array-length v2, v1

    .line 21
    if-ge v0, v2, :cond_4

    .line 22
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParamObjVars:[Lcom/miui/maml/ActionCommand$ObjVar;

    .line 24
    const/4 v3, 0x0

    .line 26
    aput-object v3, v2, v0

    .line 27
    aget-object v1, v1, v0

    .line 29
    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    .line 31
    move-result v2

    .line 34
    if-eqz v2, :cond_1

    .line 35
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    .line 37
    move-result v2

    .line 40
    if-eqz v2, :cond_3

    .line 41
    :cond_1
    const-class v2, Ljava/lang/String;

    .line 43
    if-ne v1, v2, :cond_2

    .line 45
    goto :goto_1

    .line 47
    :cond_2
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParams:[Lcom/miui/maml/data/Expression;

    .line 48
    aget-object v1, v1, v0

    .line 50
    if-eqz v1, :cond_3

    .line 52
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 54
    move-result-object v1

    .line 57
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 58
    move-result v2

    .line 61
    if-nez v2, :cond_3

    .line 62
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParamObjVars:[Lcom/miui/maml/ActionCommand$ObjVar;

    .line 64
    new-instance v3, Lcom/miui/maml/ActionCommand$ObjVar;

    .line 66
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 68
    move-result-object v4

    .line 71
    invoke-direct {v3, v1, v4}, Lcom/miui/maml/ActionCommand$ObjVar;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;)V

    .line 72
    aput-object v3, v2, v0

    .line 75
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 77
    goto :goto_0

    .line 79
    :cond_4
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mTargetClassName:Ljava/lang/String;

    .line 80
    if-eqz v0, :cond_5

    .line 82
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 84
    move-result-object v0

    .line 87
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mTargetClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    goto :goto_2

    .line 90
    :catch_0
    move-exception v0

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    .line 92
    const-string/jumbo v2, "target class not found, name: "

    .line 94
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mTargetClassName:Ljava/lang/String;

    .line 100
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const-string p0, "\n"

    .line 105
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 110
    move-result-object p0

    .line 113
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    move-result-object p0

    .line 120
    const-string v0, "ActionCommand"

    .line 121
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_5
    :goto_2
    return-void
.end method

.method public prepareParams()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParams:[Lcom/miui/maml/data/Expression;

    .line 2
    if-eqz v0, :cond_d

    .line 4
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParamValues:[Ljava/lang/Object;

    .line 6
    if-nez v1, :cond_0

    .line 8
    array-length v0, v0

    .line 10
    new-array v0, v0, [Ljava/lang/Object;

    .line 11
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParamValues:[Ljava/lang/Object;

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 15
    move v1, v0

    .line 16
    :goto_0
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParams:[Lcom/miui/maml/data/Expression;

    .line 17
    array-length v3, v2

    .line 19
    if-ge v1, v3, :cond_d

    .line 20
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParamValues:[Ljava/lang/Object;

    .line 22
    const/4 v4, 0x0

    .line 24
    aput-object v4, v3, v1

    .line 25
    iget-object v5, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParamTypes:[Ljava/lang/Class;

    .line 27
    aget-object v5, v5, v1

    .line 29
    aget-object v2, v2, v1

    .line 31
    if-nez v2, :cond_1

    .line 33
    goto/16 :goto_2

    .line 35
    :cond_1
    const-class v6, Ljava/lang/String;

    .line 37
    if-ne v5, v6, :cond_2

    .line 39
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 41
    move-result-object v2

    .line 44
    aput-object v2, v3, v1

    .line 45
    goto/16 :goto_2

    .line 47
    :cond_2
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 49
    if-ne v5, v6, :cond_3

    .line 51
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 53
    move-result-wide v4

    .line 56
    double-to-long v4, v4

    .line 57
    long-to-int v2, v4

    .line 58
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    move-result-object v2

    .line 62
    aput-object v2, v3, v1

    .line 63
    goto/16 :goto_2

    .line 65
    :cond_3
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 67
    if-ne v5, v6, :cond_4

    .line 69
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 71
    move-result-wide v4

    .line 74
    double-to-long v4, v4

    .line 75
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 76
    move-result-object v2

    .line 79
    aput-object v2, v3, v1

    .line 80
    goto/16 :goto_2

    .line 82
    :cond_4
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 84
    if-ne v5, v6, :cond_6

    .line 86
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 88
    move-result-wide v4

    .line 91
    const-wide/16 v6, 0x0

    .line 92
    cmpl-double v2, v4, v6

    .line 94
    if-lez v2, :cond_5

    .line 96
    const/4 v2, 0x1

    .line 98
    goto :goto_1

    .line 99
    :cond_5
    move v2, v0

    .line 100
    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 101
    move-result-object v2

    .line 104
    aput-object v2, v3, v1

    .line 105
    goto :goto_2

    .line 107
    :cond_6
    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 108
    if-ne v5, v6, :cond_7

    .line 110
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 112
    move-result-wide v4

    .line 115
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 116
    move-result-object v2

    .line 119
    aput-object v2, v3, v1

    .line 120
    goto :goto_2

    .line 122
    :cond_7
    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 123
    if-ne v5, v6, :cond_8

    .line 125
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 127
    move-result-wide v4

    .line 130
    double-to-float v2, v4

    .line 131
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 132
    move-result-object v2

    .line 135
    aput-object v2, v3, v1

    .line 136
    goto :goto_2

    .line 138
    :cond_8
    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 139
    if-ne v5, v6, :cond_9

    .line 141
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 143
    move-result-wide v4

    .line 146
    double-to-long v4, v4

    .line 147
    long-to-int v2, v4

    .line 148
    int-to-byte v2, v2

    .line 149
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 150
    move-result-object v2

    .line 153
    aput-object v2, v3, v1

    .line 154
    goto :goto_2

    .line 156
    :cond_9
    sget-object v6, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 157
    if-ne v5, v6, :cond_a

    .line 159
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 161
    move-result-wide v4

    .line 164
    double-to-long v4, v4

    .line 165
    long-to-int v2, v4

    .line 166
    int-to-short v2, v2

    .line 167
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 168
    move-result-object v2

    .line 171
    aput-object v2, v3, v1

    .line 172
    goto :goto_2

    .line 174
    :cond_a
    sget-object v6, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 175
    if-ne v5, v6, :cond_b

    .line 177
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 179
    move-result-wide v4

    .line 182
    double-to-long v4, v4

    .line 183
    long-to-int v2, v4

    .line 184
    int-to-char v2, v2

    .line 185
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 186
    move-result-object v2

    .line 189
    aput-object v2, v3, v1

    .line 190
    goto :goto_2

    .line 192
    :cond_b
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParamObjVars:[Lcom/miui/maml/ActionCommand$ObjVar;

    .line 193
    aget-object v2, v2, v1

    .line 195
    if-eqz v2, :cond_c

    .line 197
    invoke-virtual {v2}, Lcom/miui/maml/ActionCommand$ObjVar;->get()Ljava/lang/Object;

    .line 199
    move-result-object v4

    .line 202
    :cond_c
    aput-object v4, v3, v1

    .line 203
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 205
    goto/16 :goto_0

    .line 207
    :cond_d
    return-void
    .line 209
.end method
