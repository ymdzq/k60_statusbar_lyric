.class Lcom/miui/maml/ActionCommand$SoundCommand;
.super Lcom/miui/maml/ActionCommand;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "SoundCommand"


# instance fields
.field private mCommand:Lcom/miui/maml/SoundManager$Command;

.field private mKeepCur:Z

.field private mLoop:Z

.field private mSound:Ljava/lang/String;

.field private mStreamIdExp:Lcom/miui/maml/data/Expression;

.field private mStreamIdVar:Lcom/miui/maml/data/IndexedVariable;

.field private mVolumeExp:Lcom/miui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/ActionCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;)V

    .line 2
    const-string/jumbo p1, "sound"

    .line 5
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$SoundCommand;->mSound:Ljava/lang/String;

    .line 12
    const-string p1, "keepCur"

    .line 14
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 19
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 20
    move-result p1

    .line 23
    iput-boolean p1, p0, Lcom/miui/maml/ActionCommand$SoundCommand;->mKeepCur:Z

    .line 24
    const-string p1, "loop"

    .line 26
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 31
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 32
    move-result p1

    .line 35
    iput-boolean p1, p0, Lcom/miui/maml/ActionCommand$SoundCommand;->mLoop:Z

    .line 36
    const-string p1, "command"

    .line 38
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 43
    invoke-static {p1}, Lcom/miui/maml/SoundManager$Command;->parse(Ljava/lang/String;)Lcom/miui/maml/SoundManager$Command;

    .line 44
    move-result-object p1

    .line 47
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$SoundCommand;->mCommand:Lcom/miui/maml/SoundManager$Command;

    .line 48
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 50
    move-result-object p1

    .line 53
    const-string/jumbo v0, "volume"

    .line 54
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    move-result-object v0

    .line 60
    invoke-static {p1, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 61
    move-result-object p1

    .line 64
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$SoundCommand;->mVolumeExp:Lcom/miui/maml/data/Expression;

    .line 65
    if-nez p1, :cond_0

    .line 67
    const-string p1, "ActionCommand"

    .line 69
    const-string v0, "invalid expression in SoundCommand"

    .line 71
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 76
    move-result-object p1

    .line 79
    const-string/jumbo v0, "streamId"

    .line 80
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    move-result-object v0

    .line 86
    invoke-static {p1, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 87
    move-result-object p1

    .line 90
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$SoundCommand;->mStreamIdExp:Lcom/miui/maml/data/Expression;

    .line 91
    const-string/jumbo p1, "streamIdVar"

    .line 93
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    move-result-object p1

    .line 99
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 100
    move-result p2

    .line 103
    if-nez p2, :cond_1

    .line 104
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    .line 106
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 108
    move-result-object v0

    .line 111
    const/4 v1, 0x1

    .line 112
    invoke-direct {p2, p1, v0, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 113
    iput-object p2, p0, Lcom/miui/maml/ActionCommand$SoundCommand;->mStreamIdVar:Lcom/miui/maml/data/IndexedVariable;

    .line 116
    :cond_1
    return-void
    .line 118
.end method


# virtual methods
.method public doPerform()V
    .locals 6

    .line 1
    sget-object v0, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$SoundManager$Command:[I

    .line 2
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$SoundCommand;->mCommand:Lcom/miui/maml/SoundManager$Command;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 10
    const/4 v1, 0x1

    .line 12
    if-eq v0, v1, :cond_1

    .line 13
    const/4 v1, 0x2

    .line 15
    if-eq v0, v1, :cond_0

    .line 16
    const/4 v1, 0x3

    .line 18
    if-eq v0, v1, :cond_0

    .line 19
    const/4 v1, 0x4

    .line 21
    if-eq v0, v1, :cond_0

    .line 22
    goto :goto_1

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$SoundCommand;->mStreamIdExp:Lcom/miui/maml/data/Expression;

    .line 25
    if-eqz v0, :cond_3

    .line 27
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 29
    move-result-wide v0

    .line 32
    double-to-int v0, v0

    .line 33
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 34
    move-result-object v1

    .line 37
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$SoundCommand;->mCommand:Lcom/miui/maml/SoundManager$Command;

    .line 38
    invoke-virtual {v1, v0, p0}, Lcom/miui/maml/ScreenElementRoot;->playSound(ILcom/miui/maml/SoundManager$Command;)V

    .line 40
    goto :goto_1

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$SoundCommand;->mVolumeExp:Lcom/miui/maml/data/Expression;

    .line 44
    if-eqz v0, :cond_2

    .line 46
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 48
    move-result-wide v0

    .line 51
    double-to-float v0, v0

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    const/4 v0, 0x0

    .line 54
    :goto_0
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 55
    move-result-object v1

    .line 58
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$SoundCommand;->mSound:Ljava/lang/String;

    .line 59
    new-instance v3, Lcom/miui/maml/SoundManager$SoundOptions;

    .line 61
    iget-boolean v4, p0, Lcom/miui/maml/ActionCommand$SoundCommand;->mKeepCur:Z

    .line 63
    iget-boolean v5, p0, Lcom/miui/maml/ActionCommand$SoundCommand;->mLoop:Z

    .line 65
    invoke-direct {v3, v4, v5, v0}, Lcom/miui/maml/SoundManager$SoundOptions;-><init>(ZZF)V

    .line 67
    invoke-virtual {v1, v2, v3}, Lcom/miui/maml/ScreenElementRoot;->playSound(Ljava/lang/String;Lcom/miui/maml/SoundManager$SoundOptions;)I

    .line 70
    move-result v0

    .line 73
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$SoundCommand;->mStreamIdVar:Lcom/miui/maml/data/IndexedVariable;

    .line 74
    if-eqz p0, :cond_3

    .line 76
    int-to-double v0, v0

    .line 78
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 79
    :cond_3
    :goto_1
    return-void
    .line 82
.end method
