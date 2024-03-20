.class Lcom/miui/maml/ActionCommand$VideoCommand;
.super Lcom/miui/maml/ActionCommand$TargetCommand;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "VideoCommand"


# instance fields
.field private mCommand:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

.field private mLooping:Lcom/miui/maml/data/Expression;

.field private mPath:Lcom/miui/maml/data/Expression;

.field private mScaleMode:Lcom/miui/maml/data/Expression;

.field private mTime:Lcom/miui/maml/data/Expression;

.field private mVolume:Lcom/miui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/ActionCommand$TargetCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 5
    move-result-object p1

    .line 8
    const-string v0, "command"

    .line 9
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 14
    const-string v1, "path"

    .line 15
    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 20
    invoke-static {p1, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 21
    move-result-object v1

    .line 24
    iput-object v1, p0, Lcom/miui/maml/ActionCommand$VideoCommand;->mPath:Lcom/miui/maml/data/Expression;

    .line 25
    const-string/jumbo v1, "volume"

    .line 27
    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 33
    invoke-static {p1, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 34
    move-result-object v1

    .line 37
    iput-object v1, p0, Lcom/miui/maml/ActionCommand$VideoCommand;->mVolume:Lcom/miui/maml/data/Expression;

    .line 38
    const-string v1, "scaleMode"

    .line 40
    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 45
    invoke-static {p1, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 46
    move-result-object v1

    .line 49
    iput-object v1, p0, Lcom/miui/maml/ActionCommand$VideoCommand;->mScaleMode:Lcom/miui/maml/data/Expression;

    .line 50
    const-string v1, "loop"

    .line 52
    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    move-result-object v1

    .line 57
    invoke-static {p1, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 58
    move-result-object v1

    .line 61
    iput-object v1, p0, Lcom/miui/maml/ActionCommand$VideoCommand;->mLooping:Lcom/miui/maml/data/Expression;

    .line 62
    const-string/jumbo v1, "time"

    .line 64
    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    move-result-object p2

    .line 70
    invoke-static {p1, p2}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 71
    move-result-object p1

    .line 74
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$VideoCommand;->mTime:Lcom/miui/maml/data/Expression;

    .line 75
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 80
    move-result p1

    .line 83
    const/4 p2, -0x1

    .line 84
    sparse-switch p1, :sswitch_data_0

    .line 85
    goto :goto_0

    .line 88
    :sswitch_0
    const-string/jumbo p1, "setVolume"

    .line 89
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    move-result p1

    .line 95
    if-nez p1, :cond_0

    .line 96
    goto :goto_0

    .line 98
    :cond_0
    const/4 p2, 0x4

    .line 99
    goto :goto_0

    .line 100
    :sswitch_1
    const-string p1, "pause"

    .line 101
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    move-result p1

    .line 106
    if-nez p1, :cond_1

    .line 107
    goto :goto_0

    .line 109
    :cond_1
    const/4 p2, 0x3

    .line 110
    goto :goto_0

    .line 111
    :sswitch_2
    const-string p1, "play"

    .line 112
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    move-result p1

    .line 117
    if-nez p1, :cond_2

    .line 118
    goto :goto_0

    .line 120
    :cond_2
    const/4 p2, 0x2

    .line 121
    goto :goto_0

    .line 122
    :sswitch_3
    const-string/jumbo p1, "seekTo"

    .line 123
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    move-result p1

    .line 129
    if-nez p1, :cond_3

    .line 130
    goto :goto_0

    .line 132
    :cond_3
    const/4 p2, 0x1

    .line 133
    goto :goto_0

    .line 134
    :sswitch_4
    const-string p1, "config"

    .line 135
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    move-result p1

    .line 140
    if-nez p1, :cond_4

    .line 141
    goto :goto_0

    .line 143
    :cond_4
    const/4 p2, 0x0

    .line 144
    :goto_0
    packed-switch p2, :pswitch_data_0

    .line 145
    sget-object p1, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;->INVALID:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    .line 148
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$VideoCommand;->mCommand:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    .line 150
    goto :goto_1

    .line 152
    :pswitch_0
    sget-object p1, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;->SET_VOLUME:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    .line 153
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$VideoCommand;->mCommand:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    .line 155
    goto :goto_1

    .line 157
    :pswitch_1
    sget-object p1, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;->PAUSE:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    .line 158
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$VideoCommand;->mCommand:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    .line 160
    goto :goto_1

    .line 162
    :pswitch_2
    sget-object p1, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;->PLAY:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    .line 163
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$VideoCommand;->mCommand:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    .line 165
    goto :goto_1

    .line 167
    :pswitch_3
    sget-object p1, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;->SEEK_TO:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    .line 168
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$VideoCommand;->mCommand:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    .line 170
    goto :goto_1

    .line 172
    :pswitch_4
    sget-object p1, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;->CONFIG:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    .line 173
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$VideoCommand;->mCommand:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    .line 175
    :goto_1
    return-void

    .line 177
    :sswitch_data_0
    .sparse-switch
        -0x50c07cbe -> :sswitch_4
        -0x3603e4ed -> :sswitch_3
        0x348b34 -> :sswitch_2
        0x65825f6 -> :sswitch_1
        0x27f73e1c -> :sswitch_0
    .end sparse-switch

    .line 178
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 200
.end method


# virtual methods
.method public doPerform()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$TargetCommand;->getTarget()Ljava/lang/Object;

    .line 2
    move-result-object v0

    .line 5
    if-eqz v0, :cond_9

    .line 6
    instance-of v1, v0, Lcom/miui/maml/elements/video/VideoElement;

    .line 8
    if-nez v1, :cond_0

    .line 10
    goto/16 :goto_1

    .line 12
    :cond_0
    check-cast v0, Lcom/miui/maml/elements/video/VideoElement;

    .line 14
    sget-object v1, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$VideoCommand$CommandType:[I

    .line 16
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VideoCommand;->mCommand:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    .line 18
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 20
    move-result v2

    .line 23
    aget v1, v1, v2

    .line 24
    const/4 v2, 0x1

    .line 26
    if-eq v1, v2, :cond_8

    .line 27
    const/4 v3, 0x2

    .line 29
    if-eq v1, v3, :cond_7

    .line 30
    const/4 v3, 0x3

    .line 32
    if-eq v1, v3, :cond_6

    .line 33
    const/4 v3, 0x4

    .line 35
    if-eq v1, v3, :cond_5

    .line 36
    const/4 v3, 0x5

    .line 38
    if-eq v1, v3, :cond_1

    .line 39
    goto :goto_1

    .line 41
    :cond_1
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$VideoCommand;->mLooping:Lcom/miui/maml/data/Expression;

    .line 42
    const/4 v3, 0x0

    .line 44
    if-eqz v1, :cond_2

    .line 45
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 47
    move-result-wide v4

    .line 50
    const-wide/16 v6, 0x0

    .line 51
    cmpl-double v1, v4, v6

    .line 53
    if-lez v1, :cond_2

    .line 55
    move v3, v2

    .line 57
    :cond_2
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$VideoCommand;->mScaleMode:Lcom/miui/maml/data/Expression;

    .line 58
    if-eqz v1, :cond_3

    .line 60
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 62
    move-result-wide v1

    .line 65
    double-to-int v2, v1

    .line 66
    :cond_3
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$VideoCommand;->mPath:Lcom/miui/maml/data/Expression;

    .line 67
    if-eqz p0, :cond_4

    .line 69
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 71
    move-result-object p0

    .line 74
    goto :goto_0

    .line 75
    :cond_4
    const-string p0, ""

    .line 76
    :goto_0
    invoke-virtual {v0, v3, v2, p0}, Lcom/miui/maml/elements/video/VideoElement;->config(ZILjava/lang/String;)V

    .line 78
    goto :goto_1

    .line 81
    :cond_5
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$VideoCommand;->mVolume:Lcom/miui/maml/data/Expression;

    .line 82
    if-eqz p0, :cond_9

    .line 84
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 86
    move-result-wide v1

    .line 89
    double-to-float p0, v1

    .line 90
    invoke-virtual {v0, p0}, Lcom/miui/maml/elements/video/VideoElement;->setVolume(F)V

    .line 91
    goto :goto_1

    .line 94
    :cond_6
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$VideoCommand;->mTime:Lcom/miui/maml/data/Expression;

    .line 95
    if-eqz p0, :cond_9

    .line 97
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 99
    move-result-wide v1

    .line 102
    double-to-int p0, v1

    .line 103
    invoke-virtual {v0, p0}, Lcom/miui/maml/elements/video/VideoElement;->seekTo(I)V

    .line 104
    goto :goto_1

    .line 107
    :cond_7
    invoke-virtual {v0}, Lcom/miui/maml/elements/video/VideoElement;->pause()V

    .line 108
    goto :goto_1

    .line 111
    :cond_8
    invoke-virtual {v0}, Lcom/miui/maml/elements/video/VideoElement;->play()V

    .line 112
    :cond_9
    :goto_1
    return-void
    .line 115
.end method
