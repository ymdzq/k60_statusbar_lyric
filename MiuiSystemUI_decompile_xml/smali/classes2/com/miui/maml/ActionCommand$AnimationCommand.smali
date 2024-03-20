.class Lcom/miui/maml/ActionCommand$AnimationCommand;
.super Lcom/miui/maml/ActionCommand$TargetCommand;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "AnimationCommand"


# instance fields
.field private mAllAni:Z

.field private mAniTags:[Ljava/lang/String;

.field private mCommand:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

.field private mPlayParams:[Lcom/miui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/ActionCommand$TargetCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    .line 2
    const-string p1, "command"

    .line 5
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object p1

    .line 10
    const-string v0, "play"

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 13
    move-result v0

    .line 16
    const/4 v1, 0x1

    .line 17
    if-eqz v0, :cond_0

    .line 18
    sget-object p1, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;->PLAY:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    .line 20
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimationCommand;->mCommand:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    .line 22
    goto :goto_0

    .line 24
    :cond_0
    const-string v0, "pause"

    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 27
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    sget-object p1, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;->PAUSE:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    .line 33
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimationCommand;->mCommand:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    .line 35
    goto :goto_0

    .line 37
    :cond_1
    const-string v0, "resume"

    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 40
    move-result v0

    .line 43
    if-eqz v0, :cond_2

    .line 44
    sget-object p1, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;->RESUME:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    .line 46
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimationCommand;->mCommand:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    .line 48
    goto :goto_0

    .line 50
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 54
    const-string v2, "play("

    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 57
    move-result v0

    .line 60
    if-eqz v0, :cond_3

    .line 61
    const-string v0, ")"

    .line 63
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 65
    move-result v0

    .line 68
    if-eqz v0, :cond_3

    .line 69
    sget-object v0, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;->PLAY_WITH_PARAMS:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    .line 71
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$AnimationCommand;->mCommand:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    .line 73
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 75
    move-result-object v0

    .line 78
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 79
    move-result v2

    .line 82
    sub-int/2addr v2, v1

    .line 83
    const/4 v3, 0x5

    .line 84
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 85
    move-result-object p1

    .line 88
    invoke-static {v0, p1}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    .line 89
    move-result-object p1

    .line 92
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimationCommand;->mPlayParams:[Lcom/miui/maml/data/Expression;

    .line 93
    if-eqz p1, :cond_4

    .line 95
    array-length v0, p1

    .line 97
    const/4 v2, 0x2

    .line 98
    if-eq v0, v2, :cond_4

    .line 99
    array-length p1, p1

    .line 101
    const/4 v0, 0x4

    .line 102
    if-eq p1, v0, :cond_4

    .line 103
    const-string p1, "ActionCommand"

    .line 105
    const-string v0, "bad expression format"

    .line 107
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    goto :goto_0

    .line 112
    :cond_3
    sget-object p1, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;->INVALID:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    .line 113
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimationCommand;->mCommand:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    .line 115
    :cond_4
    :goto_0
    const-string/jumbo p1, "tags"

    .line 117
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 120
    move-result-object p1

    .line 123
    const-string p2, "."

    .line 124
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    move-result p2

    .line 129
    if-eqz p2, :cond_5

    .line 130
    iput-boolean v1, p0, Lcom/miui/maml/ActionCommand$AnimationCommand;->mAllAni:Z

    .line 132
    goto :goto_1

    .line 134
    :cond_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 135
    move-result p2

    .line 138
    if-nez p2, :cond_6

    .line 139
    const-string p2, ","

    .line 141
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 143
    move-result-object p1

    .line 146
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimationCommand;->mAniTags:[Ljava/lang/String;

    .line 147
    :cond_6
    :goto_1
    return-void
    .line 149
.end method


# virtual methods
.method public doPerform()V
    .locals 15

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$TargetCommand;->getTarget()Ljava/lang/Object;

    .line 2
    move-result-object v0

    .line 5
    move-object v1, v0

    .line 6
    check-cast v1, Lcom/miui/maml/elements/ScreenElement;

    .line 7
    if-nez v1, :cond_0

    .line 9
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$AnimationCommand;->mCommand:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    .line 12
    sget-object v2, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;->PLAY:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    .line 14
    if-eq v0, v2, :cond_1

    .line 16
    sget-object v2, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;->PLAY_WITH_PARAMS:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    .line 18
    if-ne v0, v2, :cond_3

    .line 20
    :cond_1
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$AnimationCommand;->mAllAni:Z

    .line 22
    if-nez v0, :cond_2

    .line 24
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$AnimationCommand;->mAniTags:[Ljava/lang/String;

    .line 26
    if-eqz v0, :cond_3

    .line 28
    :cond_2
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$AnimationCommand;->mAniTags:[Ljava/lang/String;

    .line 30
    invoke-virtual {v1, v0}, Lcom/miui/maml/elements/ScreenElement;->setAnim([Ljava/lang/String;)V

    .line 32
    :cond_3
    sget-object v0, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$AnimationCommand$CommandType:[I

    .line 35
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$AnimationCommand;->mCommand:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    .line 37
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 39
    move-result v2

    .line 42
    aget v0, v0, v2

    .line 43
    const/4 v2, 0x1

    .line 45
    if-eq v0, v2, :cond_10

    .line 46
    const/4 v3, 0x2

    .line 48
    if-eq v0, v3, :cond_f

    .line 49
    const/4 v4, 0x3

    .line 51
    if-eq v0, v4, :cond_e

    .line 52
    const/4 v5, 0x4

    .line 54
    if-eq v0, v5, :cond_4

    .line 55
    goto/16 :goto_8

    .line 57
    :cond_4
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$AnimationCommand;->mPlayParams:[Lcom/miui/maml/data/Expression;

    .line 59
    array-length v5, v0

    .line 61
    const-wide/16 v6, 0x0

    .line 62
    const/4 v8, 0x0

    .line 64
    if-lez v5, :cond_6

    .line 65
    aget-object v0, v0, v8

    .line 67
    if-nez v0, :cond_5

    .line 69
    move-wide v9, v6

    .line 71
    goto :goto_0

    .line 72
    :cond_5
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 73
    move-result-wide v9

    .line 76
    :goto_0
    double-to-long v9, v9

    .line 77
    goto :goto_1

    .line 78
    :cond_6
    const-wide/16 v9, 0x0

    .line 79
    :goto_1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$AnimationCommand;->mPlayParams:[Lcom/miui/maml/data/Expression;

    .line 81
    array-length v5, v0

    .line 83
    if-le v5, v2, :cond_8

    .line 84
    aget-object v0, v0, v2

    .line 86
    if-nez v0, :cond_7

    .line 88
    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    .line 90
    goto :goto_2

    .line 92
    :cond_7
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 93
    move-result-wide v11

    .line 96
    :goto_2
    double-to-long v11, v11

    .line 97
    goto :goto_3

    .line 98
    :cond_8
    const-wide/16 v11, -0x1

    .line 99
    :goto_3
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$AnimationCommand;->mPlayParams:[Lcom/miui/maml/data/Expression;

    .line 101
    array-length v5, v0

    .line 103
    if-le v5, v3, :cond_a

    .line 104
    aget-object v0, v0, v3

    .line 106
    if-nez v0, :cond_9

    .line 108
    goto :goto_4

    .line 110
    :cond_9
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 111
    move-result-wide v13

    .line 114
    cmpl-double v0, v13, v6

    .line 115
    if-lez v0, :cond_a

    .line 117
    move v0, v2

    .line 119
    goto :goto_5

    .line 120
    :cond_a
    :goto_4
    move v0, v8

    .line 121
    :goto_5
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$AnimationCommand;->mPlayParams:[Lcom/miui/maml/data/Expression;

    .line 122
    array-length v3, p0

    .line 124
    if-le v3, v4, :cond_d

    .line 125
    aget-object p0, p0, v4

    .line 127
    if-nez p0, :cond_c

    .line 129
    :cond_b
    move v2, v8

    .line 131
    goto :goto_6

    .line 132
    :cond_c
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 133
    move-result-wide v3

    .line 136
    cmpl-double p0, v3, v6

    .line 137
    if-lez p0, :cond_b

    .line 139
    :goto_6
    move v7, v2

    .line 141
    goto :goto_7

    .line 142
    :cond_d
    move v7, v8

    .line 143
    :goto_7
    move-wide v2, v9

    .line 144
    move-wide v4, v11

    .line 145
    move v6, v0

    .line 146
    invoke-virtual/range {v1 .. v7}, Lcom/miui/maml/elements/ScreenElement;->playAnim(JJZZ)V

    .line 147
    goto :goto_8

    .line 150
    :cond_e
    invoke-virtual {v1}, Lcom/miui/maml/elements/ScreenElement;->resumeAnim()V

    .line 151
    goto :goto_8

    .line 154
    :cond_f
    invoke-virtual {v1}, Lcom/miui/maml/elements/ScreenElement;->pauseAnim()V

    .line 155
    goto :goto_8

    .line 158
    :cond_10
    invoke-virtual {v1}, Lcom/miui/maml/elements/ScreenElement;->playAnim()V

    .line 159
    :goto_8
    return-void
    .line 162
.end method
