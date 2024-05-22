.class Lcom/miui/maml/ActionCommand$MethodCommand;
.super Lcom/miui/maml/ActionCommand$BaseMethodCommand;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "MethodCommand"


# instance fields
.field private mCtor:Ljava/lang/reflect/Constructor;

.field private mMethod:Ljava/lang/reflect/Method;

.field private mMethodName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/ActionCommand$BaseMethodCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    .line 2
    const-string p1, "method"

    .line 5
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$MethodCommand;->mMethodName:Ljava/lang/String;

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    .line 13
    const-string p2, "MethodCommand, "

    .line 15
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    iget-object p2, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mLogStr:Ljava/lang/String;

    .line 20
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    const-string p2, ", method="

    .line 25
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget-object p2, p0, Lcom/miui/maml/ActionCommand$MethodCommand;->mMethodName:Ljava/lang/String;

    .line 30
    const-string v0, "\n    "

    .line 32
    invoke-static {p1, p2, v0}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 37
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mLogStr:Ljava/lang/String;

    .line 38
    return-void
    .line 40
.end method


# virtual methods
.method public doPerform()V
    .locals 7

    .line 1
    const-string v0, "\n cause: "

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->prepareParams()V

    .line 4
    const/4 v1, 0x0

    .line 7
    :try_start_0
    sget-object v2, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$TargetCommand$TargetType:[I

    .line 8
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetType:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    .line 10
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 12
    move-result v3

    .line 15
    aget v2, v2, v3

    .line 16
    const/4 v3, -0x1

    .line 18
    const/4 v4, 0x1

    .line 19
    const/4 v5, 0x0

    .line 20
    if-eq v2, v4, :cond_2

    .line 21
    const/4 v6, 0x2

    .line 23
    if-eq v2, v6, :cond_2

    .line 24
    const/4 v6, 0x5

    .line 26
    if-eq v2, v6, :cond_0

    .line 27
    goto :goto_1

    .line 29
    :cond_0
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$MethodCommand;->mCtor:Ljava/lang/reflect/Constructor;

    .line 30
    if-eqz v2, :cond_1

    .line 32
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParamValues:[Ljava/lang/Object;

    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    move-result-object v5

    .line 39
    :goto_0
    move v1, v4

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    move v1, v3

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$MethodCommand;->mMethod:Ljava/lang/reflect/Method;

    .line 44
    if-nez v2, :cond_3

    .line 46
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$MethodCommand;->loadMethod()V

    .line 48
    :cond_3
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$MethodCommand;->mMethod:Ljava/lang/reflect/Method;

    .line 51
    if-eqz v2, :cond_1

    .line 53
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$TargetCommand;->getTarget()Ljava/lang/Object;

    .line 55
    move-result-object v2

    .line 58
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$MethodCommand;->mMethod:Ljava/lang/reflect/Method;

    .line 59
    iget-object v5, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParamValues:[Ljava/lang/Object;

    .line 61
    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    move-result-object v5

    .line 66
    goto :goto_0

    .line 67
    :goto_1
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mReturnVar:Lcom/miui/maml/data/IndexedVariable;

    .line 68
    if-eqz v2, :cond_4

    .line 70
    invoke-virtual {v2, v5}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :cond_4
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mErrorCodeVar:Lcom/miui/maml/data/IndexedVariable;

    .line 75
    if-eqz p0, :cond_6

    .line 77
    int-to-double v0, v1

    .line 79
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 80
    goto :goto_4

    .line 83
    :catchall_0
    move-exception v0

    .line 84
    goto :goto_5

    .line 85
    :catch_0
    move-exception v2

    .line 86
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    .line 87
    move-result-object v3

    .line 90
    const-string v4, "ActionCommand"

    .line 91
    new-instance v5, Ljava/lang/StringBuilder;

    .line 93
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    iget-object v6, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mLogStr:Ljava/lang/String;

    .line 98
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 103
    move-result-object v2

    .line 106
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    if-eqz v3, :cond_5

    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    .line 112
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 117
    move-result-object v0

    .line 120
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    move-result-object v0

    .line 127
    goto :goto_3

    .line 128
    :cond_5
    const-string v0, ""

    .line 129
    :goto_3
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    move-result-object v0

    .line 137
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mErrorCodeVar:Lcom/miui/maml/data/IndexedVariable;

    .line 141
    if-eqz p0, :cond_6

    .line 143
    const/4 v0, -0x2

    .line 145
    int-to-double v0, v0

    .line 146
    goto :goto_2

    .line 147
    :cond_6
    :goto_4
    return-void

    .line 148
    :goto_5
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mErrorCodeVar:Lcom/miui/maml/data/IndexedVariable;

    .line 149
    if-eqz p0, :cond_7

    .line 151
    int-to-double v1, v1

    .line 153
    invoke-virtual {p0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 154
    :cond_7
    throw v0
    .line 157
.end method

.method public init()V
    .locals 3

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
    if-eq v0, v1, :cond_3

    .line 16
    const/4 v1, 0x2

    .line 18
    if-eq v0, v1, :cond_3

    .line 19
    const/4 v1, 0x5

    .line 21
    if-eq v0, v1, :cond_0

    .line 22
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 25
    move-result-object v0

    .line 28
    const/4 v1, 0x4

    .line 29
    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->getCapability(I)Z

    .line 30
    move-result v0

    .line 33
    if-nez v0, :cond_1

    .line 34
    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$MethodCommand;->mCtor:Ljava/lang/reflect/Constructor;

    .line 37
    goto :goto_0

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$MethodCommand;->mCtor:Ljava/lang/reflect/Constructor;

    .line 40
    if-nez v0, :cond_4

    .line 42
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mTargetClass:Ljava/lang/Class;

    .line 44
    const-string v1, "ActionCommand"

    .line 46
    if-eqz v0, :cond_2

    .line 48
    :try_start_0
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParamTypes:[Ljava/lang/Class;

    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 52
    move-result-object v0

    .line 55
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$MethodCommand;->mCtor:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    .line 60
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mLogStr:Ljava/lang/String;

    .line 65
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const-string p0, "init, fail to find method. "

    .line 70
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;

    .line 75
    move-result-object p0

    .line 78
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object p0

    .line 85
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    goto :goto_0

    .line 89
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 90
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mLogStr:Ljava/lang/String;

    .line 95
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    const-string p0, "init, class is null."

    .line 100
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    move-result-object p0

    .line 108
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    goto :goto_0

    .line 112
    :cond_3
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$MethodCommand;->mMethod:Ljava/lang/reflect/Method;

    .line 113
    if-nez v0, :cond_4

    .line 115
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$MethodCommand;->loadMethod()V

    .line 117
    :cond_4
    :goto_0
    return-void
    .line 120
.end method

.method public loadMethod()V
    .locals 4

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
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$MethodCommand;->mMethodName:Ljava/lang/String;

    .line 24
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParamTypes:[Ljava/lang/Class;

    .line 26
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 28
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$MethodCommand;->mMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    .line 36
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mLogStr:Ljava/lang/String;

    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    const-string v3, "loadMethod(). "

    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 54
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 61
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 65
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mLogStr:Ljava/lang/String;

    .line 70
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string v2, "loadMethod(), successful.  "

    .line 75
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$MethodCommand;->mMethod:Ljava/lang/reflect/Method;

    .line 80
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    .line 82
    move-result-object p0

    .line 85
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object p0

    .line 92
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    goto :goto_1

    .line 96
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 97
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mLogStr:Ljava/lang/String;

    .line 102
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    const-string p0, "loadMethod(), class is null."

    .line 107
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    move-result-object p0

    .line 115
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :goto_1
    return-void
    .line 119
.end method
