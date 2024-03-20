.class abstract Lcom/miui/maml/ActionCommand$TargetCommand;
.super Lcom/miui/maml/ActionCommand;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field protected mLogStr:Ljava/lang/String;

.field private mTarget:Ljava/lang/Object;

.field protected mTargetIndex:Lcom/miui/maml/data/Expression;

.field protected mTargetName:Ljava/lang/String;

.field protected mTargetNameExp:Lcom/miui/maml/data/Expression;

.field protected mTargetType:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/ActionCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;)V

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 5
    move-result-object p1

    .line 8
    const-string/jumbo v0, "targetExp"

    .line 9
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 15
    invoke-static {p1, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 16
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetNameExp:Lcom/miui/maml/data/Expression;

    .line 20
    if-eqz p1, :cond_0

    .line 22
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 27
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    .line 28
    goto :goto_0

    .line 30
    :cond_0
    const-string/jumbo p1, "target"

    .line 31
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 37
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    .line 38
    :goto_0
    iget-object p1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    .line 40
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    move-result p1

    .line 45
    if-eqz p1, :cond_1

    .line 46
    const/4 p1, 0x0

    .line 48
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    .line 49
    :cond_1
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 51
    move-result-object p1

    .line 54
    const-string/jumbo v0, "targetIndex"

    .line 55
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 61
    invoke-static {p1, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 62
    move-result-object p1

    .line 65
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetIndex:Lcom/miui/maml/data/Expression;

    .line 66
    const-string/jumbo p1, "targetType"

    .line 68
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    move-result-object p1

    .line 74
    sget-object p2, Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;->SCREEN_ELEMENT:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    .line 75
    iput-object p2, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetType:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    .line 77
    const-string v0, "element"

    .line 79
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    move-result v0

    .line 84
    if-eqz v0, :cond_2

    .line 85
    iput-object p2, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetType:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    .line 87
    goto :goto_1

    .line 89
    :cond_2
    const-string/jumbo p2, "var"

    .line 90
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    move-result p2

    .line 96
    if-eqz p2, :cond_3

    .line 97
    sget-object p1, Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;->VARIABLE:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    .line 99
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetType:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    .line 101
    goto :goto_1

    .line 103
    :cond_3
    const-string p2, "ctor"

    .line 104
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    move-result p1

    .line 109
    if-eqz p1, :cond_4

    .line 110
    sget-object p1, Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;->CONSTRUCTOR:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    .line 112
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetType:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    .line 114
    :cond_4
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 116
    const-string/jumbo p2, "target="

    .line 118
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    iget-object p2, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    .line 124
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    const-string p2, " type="

    .line 129
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    iget-object p2, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetType:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    .line 134
    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 136
    move-result-object p2

    .line 139
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    move-result-object p1

    .line 146
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mLogStr:Ljava/lang/String;

    .line 147
    return-void
    .line 149
.end method

.method private findTarget()V
    .locals 3

    .line 1
    sget-object v0, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$TargetCommand$TargetType:[I

    .line 2
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetType:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 10
    const/4 v1, 0x1

    .line 12
    const-string v2, "ActionCommand"

    .line 13
    if-eq v0, v1, :cond_4

    .line 15
    const/4 v1, 0x2

    .line 17
    if-eq v0, v1, :cond_2

    .line 18
    const/4 v1, 0x3

    .line 20
    if-eq v0, v1, :cond_1

    .line 21
    const/4 v1, 0x4

    .line 23
    if-eq v0, v1, :cond_0

    .line 24
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 27
    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    .line 31
    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->findBinder(Ljava/lang/String;)Lcom/miui/maml/data/VariableBinder;

    .line 33
    move-result-object v0

    .line 36
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTarget:Ljava/lang/Object;

    .line 37
    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 40
    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    .line 44
    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->getAnimationItems(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 46
    move-result-object v0

    .line 49
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTarget:Ljava/lang/Object;

    .line 50
    goto :goto_0

    .line 52
    :cond_2
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    .line 53
    if-eqz v0, :cond_3

    .line 55
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 57
    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    .line 61
    invoke-virtual {v0, v1}, Lcom/miui/maml/data/Variables;->registerVariable(Ljava/lang/String;)I

    .line 63
    move-result v0

    .line 66
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    move-result-object v0

    .line 70
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTarget:Ljava/lang/Object;

    .line 71
    goto :goto_0

    .line 73
    :cond_3
    const-string p0, "MethodCommand, type=var, empty target name"

    .line 74
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    goto :goto_0

    .line 79
    :cond_4
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 80
    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    .line 84
    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    .line 86
    move-result-object v0

    .line 89
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTarget:Ljava/lang/Object;

    .line 90
    if-nez v0, :cond_5

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    .line 94
    const-string v1, "could not find ScreenElement target, name: "

    .line 96
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    .line 101
    invoke-static {v0, p0, v2}, Landroidx/constraintlayout/helper/widget/CircularFlow$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    goto :goto_0

    .line 106
    :cond_5
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetIndex:Lcom/miui/maml/data/Expression;

    .line 107
    if-eqz v1, :cond_6

    .line 109
    invoke-static {v0}, Lcom/miui/maml/elements/ElementGroup;->isArrayGroup(Lcom/miui/maml/elements/ScreenElement;)Z

    .line 111
    move-result v0

    .line 114
    if-nez v0, :cond_6

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    .line 117
    const-string/jumbo v1, "target with index is not an ArrayGroup, name: "

    .line 119
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    .line 125
    invoke-static {v0, v1, v2}, Landroidx/constraintlayout/helper/widget/CircularFlow$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const/4 v0, 0x0

    .line 130
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetIndex:Lcom/miui/maml/data/Expression;

    .line 131
    :cond_6
    :goto_0
    return-void
    .line 133
.end method


# virtual methods
.method public getTarget()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetNameExp:Lcom/miui/maml/data/Expression;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    iput-object v1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    .line 13
    iput-object v1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTarget:Ljava/lang/Object;

    .line 15
    return-object v1

    .line 17
    :cond_0
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result v2

    .line 23
    if-nez v2, :cond_1

    .line 24
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    .line 26
    invoke-direct {p0}, Lcom/miui/maml/ActionCommand$TargetCommand;->findTarget()V

    .line 28
    :cond_1
    sget-object v0, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$TargetCommand$TargetType:[I

    .line 31
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetType:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    .line 33
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 35
    move-result v2

    .line 38
    aget v0, v0, v2

    .line 39
    const/4 v2, 0x1

    .line 41
    if-eq v0, v2, :cond_8

    .line 42
    const/4 v2, 0x2

    .line 44
    if-eq v0, v2, :cond_4

    .line 45
    const/4 v2, 0x3

    .line 47
    if-eq v0, v2, :cond_3

    .line 48
    const/4 v2, 0x4

    .line 50
    if-eq v0, v2, :cond_2

    .line 51
    return-object v1

    .line 53
    :cond_2
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTarget:Ljava/lang/Object;

    .line 54
    return-object p0

    .line 56
    :cond_3
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTarget:Ljava/lang/Object;

    .line 57
    return-object p0

    .line 59
    :cond_4
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTarget:Ljava/lang/Object;

    .line 60
    if-eqz v0, :cond_7

    .line 62
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 64
    move-result-object v0

    .line 67
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTarget:Ljava/lang/Object;

    .line 68
    check-cast v2, Ljava/lang/Integer;

    .line 70
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 72
    move-result v2

    .line 75
    invoke-virtual {v0, v2}, Lcom/miui/maml/data/Variables;->get(I)Ljava/lang/Object;

    .line 76
    move-result-object v0

    .line 79
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetIndex:Lcom/miui/maml/data/Expression;

    .line 80
    if-eqz v2, :cond_6

    .line 82
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    move-result-object v2

    .line 87
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    .line 88
    move-result v2

    .line 91
    if-eqz v2, :cond_5

    .line 92
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetIndex:Lcom/miui/maml/data/Expression;

    .line 94
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 96
    move-result-wide v1

    .line 99
    double-to-int p0, v1

    .line 100
    invoke-static {v0, p0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 101
    move-result-object p0

    .line 104
    return-object p0

    .line 105
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 106
    const-string/jumbo v2, "target with index is not an Array variable, name: "

    .line 108
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    .line 114
    const-string v3, "ActionCommand"

    .line 116
    invoke-static {v0, v2, v3}, Landroidx/constraintlayout/helper/widget/CircularFlow$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iput-object v1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetIndex:Lcom/miui/maml/data/Expression;

    .line 121
    goto :goto_0

    .line 123
    :cond_6
    return-object v0

    .line 124
    :cond_7
    :goto_0
    return-object v1

    .line 125
    :cond_8
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTarget:Ljava/lang/Object;

    .line 126
    if-eqz v0, :cond_9

    .line 128
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetIndex:Lcom/miui/maml/data/Expression;

    .line 130
    if-eqz p0, :cond_9

    .line 132
    check-cast v0, Lcom/miui/maml/elements/ElementGroup;

    .line 134
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 136
    move-result-wide v1

    .line 139
    double-to-int p0, v1

    .line 140
    invoke-virtual {v0, p0}, Lcom/miui/maml/elements/ElementGroup;->getChild(I)Lcom/miui/maml/elements/ScreenElement;

    .line 141
    move-result-object p0

    .line 144
    return-object p0

    .line 145
    :cond_9
    return-object v0
    .line 146
.end method

.method public init()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/miui/maml/ActionCommand;->init()V

    .line 2
    invoke-direct {p0}, Lcom/miui/maml/ActionCommand$TargetCommand;->findTarget()V

    .line 5
    return-void
    .line 8
.end method
