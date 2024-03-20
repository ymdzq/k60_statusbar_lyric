.class Lcom/miui/maml/ActionCommand$FieldCommand;
.super Lcom/miui/maml/ActionCommand$BaseMethodCommand;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "FieldCommand"


# instance fields
.field private mField:Ljava/lang/reflect/Field;

.field private mFieldName:Ljava/lang/String;

.field private mIsSet:Z


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/ActionCommand$BaseMethodCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    .line 2
    const-string p1, "field"

    .line 5
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$FieldCommand;->mFieldName:Ljava/lang/String;

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    .line 13
    const-string v0, "FieldCommand, "

    .line 15
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mLogStr:Ljava/lang/String;

    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    const-string v0, ", field="

    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$FieldCommand;->mFieldName:Ljava/lang/String;

    .line 30
    const-string v1, "\n"

    .line 32
    invoke-static {p1, v0, v1}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 37
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mLogStr:Ljava/lang/String;

    .line 38
    const-string p1, "method"

    .line 40
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 45
    const-string p2, "get"

    .line 46
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    move-result p2

    .line 51
    if-eqz p2, :cond_0

    .line 52
    const/4 p1, 0x0

    .line 54
    iput-boolean p1, p0, Lcom/miui/maml/ActionCommand$FieldCommand;->mIsSet:Z

    .line 55
    goto :goto_0

    .line 57
    :cond_0
    const-string/jumbo p2, "set"

    .line 58
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    move-result p1

    .line 64
    if-eqz p1, :cond_1

    .line 65
    const/4 p1, 0x1

    .line 67
    iput-boolean p1, p0, Lcom/miui/maml/ActionCommand$FieldCommand;->mIsSet:Z

    .line 68
    :cond_1
    :goto_0
    return-void
    .line 70
.end method


# virtual methods
.method public doPerform()V
    .locals 5

    .line 1
    const-string v0, "ActionCommand"

    .line 2
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$FieldCommand;->mField:Ljava/lang/reflect/Field;

    .line 4
    if-nez v1, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$FieldCommand;->loadField()V

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$FieldCommand;->mField:Ljava/lang/reflect/Field;

    .line 11
    if-eqz v1, :cond_3

    .line 13
    :try_start_0
    sget-object v1, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$TargetCommand$TargetType:[I

    .line 15
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetType:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    .line 17
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 19
    move-result v2

    .line 22
    aget v1, v1, v2

    .line 23
    const/4 v2, 0x1

    .line 25
    if-eq v1, v2, :cond_1

    .line 26
    const/4 v3, 0x2

    .line 28
    if-eq v1, v3, :cond_1

    .line 29
    goto :goto_0

    .line 31
    :cond_1
    iget-boolean v1, p0, Lcom/miui/maml/ActionCommand$FieldCommand;->mIsSet:Z

    .line 32
    if-eqz v1, :cond_2

    .line 34
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->prepareParams()V

    .line 36
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParamValues:[Ljava/lang/Object;

    .line 39
    if-eqz v1, :cond_3

    .line 41
    array-length v1, v1

    .line 43
    if-ne v1, v2, :cond_3

    .line 44
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$FieldCommand;->mField:Ljava/lang/reflect/Field;

    .line 46
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$TargetCommand;->getTarget()Ljava/lang/Object;

    .line 48
    move-result-object v2

    .line 51
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParamValues:[Ljava/lang/Object;

    .line 52
    const/4 v4, 0x0

    .line 54
    aget-object v3, v3, v4

    .line 55
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 57
    goto :goto_0

    .line 60
    :cond_2
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mReturnVar:Lcom/miui/maml/data/IndexedVariable;

    .line 61
    if-eqz v1, :cond_3

    .line 63
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$FieldCommand;->mField:Ljava/lang/reflect/Field;

    .line 65
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$TargetCommand;->getTarget()Ljava/lang/Object;

    .line 67
    move-result-object v2

    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    move-result-object v1

    .line 74
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mReturnVar:Lcom/miui/maml/data/IndexedVariable;

    .line 75
    invoke-virtual {v2, v1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    goto :goto_0

    .line 80
    :catch_0
    move-exception v1

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    .line 82
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mLogStr:Ljava/lang/String;

    .line 87
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    const-string p0, "Field target is null. "

    .line 92
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    .line 97
    move-result-object p0

    .line 100
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    move-result-object p0

    .line 107
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    goto :goto_0

    .line 111
    :catch_1
    move-exception p0

    .line 112
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    .line 113
    move-result-object p0

    .line 116
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    goto :goto_0

    .line 120
    :catch_2
    move-exception p0

    .line 121
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    .line 122
    move-result-object p0

    .line 125
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_3
    :goto_0
    return-void
    .line 129
.end method

.method public init()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->init()V

    .line 2
    sget-object v0, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$TargetCommand$TargetType:[I

    .line 5
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetType:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    .line 7
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 9
    move-result v1

    .line 12
    aget v0, v0, v1

    .line 13
    const/4 v1, 0x1

    .line 15
    if-eq v0, v1, :cond_0

    .line 16
    const/4 v1, 0x2

    .line 18
    if-eq v0, v1, :cond_0

    .line 19
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$FieldCommand;->mField:Ljava/lang/reflect/Field;

    .line 22
    if-eqz v0, :cond_1

    .line 24
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$FieldCommand;->loadField()V

    .line 26
    :cond_1
    :goto_0
    return-void
    .line 29
.end method

.method public loadField()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mTargetClass:Ljava/lang/Class;

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$TargetCommand;->getTarget()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mTargetClass:Ljava/lang/Class;

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mTargetClass:Ljava/lang/Class;

    .line 18
    const-string v1, "ActionCommand"

    .line 20
    if-eqz v0, :cond_1

    .line 22
    :try_start_0
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$FieldCommand;->mFieldName:Ljava/lang/String;

    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 26
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$FieldCommand;->mField:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    goto :goto_0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    .line 34
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mLogStr:Ljava/lang/String;

    .line 39
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->toString()Ljava/lang/String;

    .line 44
    move-result-object p0

    .line 47
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object p0

    .line 54
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    goto :goto_0

    .line 58
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 59
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mLogStr:Ljava/lang/String;

    .line 64
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const-string p0, "class is null."

    .line 69
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object p0

    .line 77
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :goto_0
    return-void
    .line 81
.end method
