.class Lcom/miui/maml/ActionCommand$FolmeCommand;
.super Lcom/miui/maml/ActionCommand$TargetCommand;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "FolmeCommand"


# instance fields
.field private mCommand:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

.field private mConfig:Lcom/miui/maml/data/Expression;

.field private mIsParamsValid:Z

.field private mIsStatesValid:Z

.field private mParams:[Lcom/miui/maml/data/Expression;

.field private mStates:[Lcom/miui/maml/data/Expression;


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
    const-string v0, "params"

    .line 9
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 14
    invoke-static {p1, v0}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    .line 15
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mParams:[Lcom/miui/maml/data/Expression;

    .line 19
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 21
    move-result-object p1

    .line 24
    const-string/jumbo v0, "states"

    .line 25
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 31
    invoke-static {p1, v0}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    .line 32
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mStates:[Lcom/miui/maml/data/Expression;

    .line 36
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 38
    move-result-object p1

    .line 41
    const-string v0, "config"

    .line 42
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 47
    invoke-static {p1, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 48
    move-result-object p1

    .line 51
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mConfig:Lcom/miui/maml/data/Expression;

    .line 52
    iget-object p1, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mParams:[Lcom/miui/maml/data/Expression;

    .line 54
    invoke-virtual {p0, p1}, Lcom/miui/maml/ActionCommand;->isExpressionsValid([Lcom/miui/maml/data/Expression;)Z

    .line 56
    move-result p1

    .line 59
    iput-boolean p1, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mIsParamsValid:Z

    .line 60
    iget-object p1, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mStates:[Lcom/miui/maml/data/Expression;

    .line 62
    invoke-virtual {p0, p1}, Lcom/miui/maml/ActionCommand;->isExpressionsValid([Lcom/miui/maml/data/Expression;)Z

    .line 64
    move-result p1

    .line 67
    iput-boolean p1, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mIsStatesValid:Z

    .line 68
    const-string p1, "command"

    .line 70
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    move-result-object p1

    .line 75
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 79
    move-result p2

    .line 82
    const/4 v0, -0x1

    .line 83
    sparse-switch p2, :sswitch_data_0

    .line 84
    goto :goto_0

    .line 87
    :sswitch_0
    const-string/jumbo p2, "setTo"

    .line 88
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    move-result p1

    .line 94
    if-nez p1, :cond_0

    .line 95
    goto :goto_0

    .line 97
    :cond_0
    const/4 v0, 0x3

    .line 98
    goto :goto_0

    .line 99
    :sswitch_1
    const-string/jumbo p2, "to"

    .line 100
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    move-result p1

    .line 106
    if-nez p1, :cond_1

    .line 107
    goto :goto_0

    .line 109
    :cond_1
    const/4 v0, 0x2

    .line 110
    goto :goto_0

    .line 111
    :sswitch_2
    const-string p2, "fromTo"

    .line 112
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    move-result p1

    .line 117
    if-nez p1, :cond_2

    .line 118
    goto :goto_0

    .line 120
    :cond_2
    const/4 v0, 0x1

    .line 121
    goto :goto_0

    .line 122
    :sswitch_3
    const-string p2, "cancel"

    .line 123
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    move-result p1

    .line 128
    if-nez p1, :cond_3

    .line 129
    goto :goto_0

    .line 131
    :cond_3
    const/4 v0, 0x0

    .line 132
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 133
    sget-object p1, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;->INVALID:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    .line 136
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mCommand:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    .line 138
    goto :goto_1

    .line 140
    :pswitch_0
    sget-object p1, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;->SET_TO:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    .line 141
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mCommand:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    .line 143
    goto :goto_1

    .line 145
    :pswitch_1
    sget-object p1, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;->TO:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    .line 146
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mCommand:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    .line 148
    goto :goto_1

    .line 150
    :pswitch_2
    sget-object p1, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;->FROM_TO:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    .line 151
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mCommand:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    .line 153
    goto :goto_1

    .line 155
    :pswitch_3
    sget-object p1, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;->CANCEL:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    .line 156
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mCommand:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    .line 158
    :goto_1
    return-void

    .line 160
    nop

    .line 161
    :sswitch_data_0
    .sparse-switch
        -0x5185d186 -> :sswitch_3
        -0x4b77203b -> :sswitch_2
        0xe7b -> :sswitch_1
        0x684367d -> :sswitch_0
    .end sparse-switch

    .line 162
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 180
.end method

.method private folmeCancel(Lcom/miui/maml/elements/AnimatedScreenElement;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mIsParamsValid:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mParams:[Lcom/miui/maml/data/Expression;

    .line 6
    invoke-virtual {p1, p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->folmeCancel([Lcom/miui/maml/data/Expression;)V

    .line 8
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    invoke-virtual {p1, p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->folmeCancel([Lcom/miui/maml/data/Expression;)V

    .line 13
    :goto_0
    return-void
    .line 16
.end method

.method private folmeFromTo(Lcom/miui/maml/elements/AnimatedScreenElement;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mIsStatesValid:Z

    .line 2
    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mStates:[Lcom/miui/maml/data/Expression;

    .line 6
    array-length v1, v0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-le v1, v2, :cond_1

    .line 10
    const/4 v1, 0x0

    .line 12
    aget-object v0, v0, v1

    .line 13
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mStates:[Lcom/miui/maml/data/Expression;

    .line 19
    aget-object v1, v1, v2

    .line 21
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 26
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mConfig:Lcom/miui/maml/data/Expression;

    .line 27
    if-eqz p0, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 p0, 0x0

    .line 36
    :goto_0
    invoke-virtual {p1, v0, v1, p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->folmeFromTo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_1
    return-void
    .line 40
.end method

.method private folmeSetTo(Lcom/miui/maml/elements/AnimatedScreenElement;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mIsStatesValid:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mStates:[Lcom/miui/maml/data/Expression;

    .line 6
    array-length v0, p0

    .line 8
    if-lez v0, :cond_0

    .line 9
    const/4 v0, 0x0

    .line 11
    aget-object p0, p0, v0

    .line 12
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 17
    invoke-virtual {p1, p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->folmeSetTo(Ljava/lang/String;)V

    .line 18
    :cond_0
    return-void
    .line 21
.end method

.method private folmeTo(Lcom/miui/maml/elements/AnimatedScreenElement;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mIsStatesValid:Z

    .line 2
    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mStates:[Lcom/miui/maml/data/Expression;

    .line 6
    array-length v1, v0

    .line 8
    if-lez v1, :cond_1

    .line 9
    const/4 v1, 0x0

    .line 11
    aget-object v0, v0, v1

    .line 12
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 17
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mConfig:Lcom/miui/maml/data/Expression;

    .line 18
    if-eqz p0, :cond_0

    .line 20
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 22
    move-result-object p0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    :goto_0
    invoke-virtual {p1, v0, p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->folmeTo(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :cond_1
    return-void
    .line 31
.end method


# virtual methods
.method public doPerform()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$TargetCommand;->getTarget()Ljava/lang/Object;

    .line 2
    move-result-object v0

    .line 5
    if-eqz v0, :cond_5

    .line 6
    instance-of v1, v0, Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 8
    if-nez v1, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    check-cast v0, Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 13
    sget-object v1, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$FolmeCommand$Type:[I

    .line 15
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mCommand:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    .line 17
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 19
    move-result v2

    .line 22
    aget v1, v1, v2

    .line 23
    const/4 v2, 0x1

    .line 25
    if-eq v1, v2, :cond_4

    .line 26
    const/4 v2, 0x2

    .line 28
    if-eq v1, v2, :cond_3

    .line 29
    const/4 v2, 0x3

    .line 31
    if-eq v1, v2, :cond_2

    .line 32
    const/4 v2, 0x4

    .line 34
    if-eq v1, v2, :cond_1

    .line 35
    goto :goto_0

    .line 37
    :cond_1
    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$FolmeCommand;->folmeCancel(Lcom/miui/maml/elements/AnimatedScreenElement;)V

    .line 38
    goto :goto_0

    .line 41
    :cond_2
    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$FolmeCommand;->folmeFromTo(Lcom/miui/maml/elements/AnimatedScreenElement;)V

    .line 42
    goto :goto_0

    .line 45
    :cond_3
    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$FolmeCommand;->folmeSetTo(Lcom/miui/maml/elements/AnimatedScreenElement;)V

    .line 46
    goto :goto_0

    .line 49
    :cond_4
    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$FolmeCommand;->folmeTo(Lcom/miui/maml/elements/AnimatedScreenElement;)V

    .line 50
    :cond_5
    :goto_0
    return-void
    .line 53
.end method
