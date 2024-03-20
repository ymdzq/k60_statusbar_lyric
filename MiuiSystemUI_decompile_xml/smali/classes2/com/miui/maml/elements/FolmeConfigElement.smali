.class public Lcom/miui/maml/elements/FolmeConfigElement;
.super Lcom/miui/maml/elements/ConfigElement;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "FolmeConfig"


# instance fields
.field private mConfigs:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ConfigElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 2
    new-instance p2, Ljava/util/ArrayList;

    .line 5
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object p2, p0, Lcom/miui/maml/elements/FolmeConfigElement;->mConfigs:Ljava/util/ArrayList;

    .line 10
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/FolmeConfigElement;->getConfigData(Lorg/w3c/dom/Element;)Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;

    .line 12
    move-result-object v0

    .line 15
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    .line 19
    move-result-object p1

    .line 22
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 23
    move-result p2

    .line 26
    const/4 v0, 0x0

    .line 27
    :goto_0
    if-ge v0, p2, :cond_1

    .line 28
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 30
    move-result-object v1

    .line 33
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    .line 34
    move-result v1

    .line 37
    const/4 v2, 0x1

    .line 38
    if-ne v1, v2, :cond_0

    .line 39
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 41
    move-result-object v1

    .line 44
    check-cast v1, Lorg/w3c/dom/Element;

    .line 45
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    .line 47
    move-result-object v2

    .line 50
    const-string v3, "Special"

    .line 51
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    move-result v2

    .line 56
    if-eqz v2, :cond_0

    .line 57
    iget-object v2, p0, Lcom/miui/maml/elements/FolmeConfigElement;->mConfigs:Ljava/util/ArrayList;

    .line 59
    invoke-direct {p0, v1}, Lcom/miui/maml/elements/FolmeConfigElement;->getConfigData(Lorg/w3c/dom/Element;)Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;

    .line 61
    move-result-object v1

    .line 64
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 68
    goto :goto_0

    .line 70
    :cond_1
    return-void
    .line 71
.end method

.method private getConfigData(Lorg/w3c/dom/Element;)Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;
    .locals 3

    .line 1
    new-instance v0, Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;-><init>(Lcom/miui/maml/elements/FolmeConfigElement;Lcom/miui/maml/elements/FolmeConfigElement$1;)V

    .line 5
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 8
    move-result-object v1

    .line 11
    const-string v2, "ease"

    .line 12
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v2

    .line 17
    invoke-static {v1, v2}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    .line 18
    move-result-object v1

    .line 21
    iput-object v1, v0, Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;->mEaseExp:[Lcom/miui/maml/data/Expression;

    .line 22
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 24
    move-result-object v1

    .line 27
    const-string v2, "fromSpeed"

    .line 28
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object v2

    .line 33
    invoke-static {v1, v2}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 34
    move-result-object v1

    .line 37
    iput-object v1, v0, Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;->mFromSpeedExp:Lcom/miui/maml/data/Expression;

    .line 38
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 40
    move-result-object v1

    .line 43
    const-string v2, "delay"

    .line 44
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    move-result-object v2

    .line 49
    invoke-static {v1, v2}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 50
    move-result-object v1

    .line 53
    iput-object v1, v0, Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;->mDelayExp:Lcom/miui/maml/data/Expression;

    .line 54
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 56
    move-result-object v1

    .line 59
    const-string v2, "onBegin"

    .line 60
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    move-result-object v2

    .line 65
    invoke-static {v1, v2}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    .line 66
    move-result-object v1

    .line 69
    iput-object v1, v0, Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;->mOnBeginCallbackExp:[Lcom/miui/maml/data/Expression;

    .line 70
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 72
    move-result-object v1

    .line 75
    const-string v2, "onComplete"

    .line 76
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    move-result-object v2

    .line 81
    invoke-static {v1, v2}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    .line 82
    move-result-object v1

    .line 85
    iput-object v1, v0, Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;->mOnCompleteCallbackExp:[Lcom/miui/maml/data/Expression;

    .line 86
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 88
    move-result-object v1

    .line 91
    const-string v2, "onUpdate"

    .line 92
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    move-result-object v2

    .line 97
    invoke-static {v1, v2}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    .line 98
    move-result-object v1

    .line 101
    iput-object v1, v0, Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;->mOnUpdateCallbackExp:[Lcom/miui/maml/data/Expression;

    .line 102
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 104
    move-result-object p0

    .line 107
    const-string v1, "property"

    .line 108
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 110
    move-result-object p1

    .line 113
    invoke-static {p0, p1}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    .line 114
    move-result-object p0

    .line 117
    iput-object p0, v0, Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;->mPropertyExp:[Lcom/miui/maml/data/Expression;

    .line 118
    return-object v0
    .line 120
.end method

.method private getEaseFromExpressions([Lcom/miui/maml/data/Expression;)Lmiuix/animation/utils/EaseManager$EaseStyle;
    .locals 7

    .line 1
    if-eqz p1, :cond_2

    .line 2
    array-length p0, p1

    .line 4
    if-lez p0, :cond_2

    .line 5
    const/4 p0, 0x0

    .line 7
    aget-object p0, p1, p0

    .line 8
    if-eqz p0, :cond_2

    .line 10
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 12
    move-result-wide v0

    .line 15
    double-to-int p0, v0

    .line 16
    array-length v0, p1

    .line 17
    const/4 v1, 0x1

    .line 18
    sub-int/2addr v0, v1

    .line 19
    new-array v0, v0, [F

    .line 20
    array-length v2, p1

    .line 22
    :goto_0
    if-ge v1, v2, :cond_1

    .line 23
    aget-object v3, p1, v1

    .line 25
    if-eqz v3, :cond_0

    .line 27
    add-int/lit8 v4, v1, -0x1

    .line 29
    invoke-virtual {v3}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 31
    move-result-wide v5

    .line 34
    double-to-float v3, v5

    .line 35
    aput v3, v0, v4

    .line 36
    goto :goto_1

    .line 38
    :cond_0
    add-int/lit8 v3, v1, -0x1

    .line 39
    const/4 v4, 0x0

    .line 41
    aput v4, v0, v3

    .line 42
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 44
    goto :goto_0

    .line 46
    :cond_1
    :try_start_0
    invoke-static {p0, v0}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 47
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    return-object p0

    .line 51
    :catch_0
    move-exception p0

    .line 52
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 53
    :cond_2
    const/4 p0, 0x0

    .line 56
    return-object p0
    .line 57
.end method

.method private getStrFromExpToSet([Lcom/miui/maml/data/Expression;Landroidx/collection/ArraySet;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroidx/collection/ArraySet;->clear()V

    .line 2
    if-eqz p1, :cond_1

    .line 5
    array-length p0, p1

    .line 7
    if-lez p0, :cond_1

    .line 8
    array-length p0, p1

    .line 10
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-ge v0, p0, :cond_1

    .line 12
    aget-object v1, p1, v0

    .line 14
    if-eqz v1, :cond_0

    .line 16
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 21
    invoke-virtual {p2, v1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 22
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 25
    goto :goto_0

    .line 27
    :cond_1
    return-void
    .line 28
.end method


# virtual methods
.method public evaluateConfigValue()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ConfigElement;->mTempValueList:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/FolmeConfigElement;->mConfigs:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    if-ge v1, v0, :cond_2

    .line 14
    new-instance v2, Lcom/miui/maml/folme/ConfigValue;

    .line 16
    invoke-direct {v2}, Lcom/miui/maml/folme/ConfigValue;-><init>()V

    .line 18
    iget-object v3, p0, Lcom/miui/maml/elements/FolmeConfigElement;->mConfigs:Ljava/util/ArrayList;

    .line 21
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object v3

    .line 26
    check-cast v3, Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;

    .line 27
    iget-object v4, v3, Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;->mDelayExp:Lcom/miui/maml/data/Expression;

    .line 29
    if-eqz v4, :cond_0

    .line 31
    invoke-virtual {v4}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 33
    move-result-wide v4

    .line 36
    double-to-long v4, v4

    .line 37
    iput-wide v4, v2, Lcom/miui/maml/folme/ConfigValue;->mDelay:J

    .line 38
    :cond_0
    iget-object v4, v3, Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;->mFromSpeedExp:Lcom/miui/maml/data/Expression;

    .line 40
    if-eqz v4, :cond_1

    .line 42
    invoke-virtual {v4}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 44
    move-result-wide v4

    .line 47
    double-to-long v4, v4

    .line 48
    long-to-float v4, v4

    .line 49
    iput v4, v2, Lcom/miui/maml/folme/ConfigValue;->mFromSpeed:F

    .line 50
    const/4 v4, 0x1

    .line 52
    iput-boolean v4, v2, Lcom/miui/maml/folme/ConfigValue;->mHasFromSpeed:Z

    .line 53
    :cond_1
    iget-object v4, v3, Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;->mEaseExp:[Lcom/miui/maml/data/Expression;

    .line 55
    invoke-direct {p0, v4}, Lcom/miui/maml/elements/FolmeConfigElement;->getEaseFromExpressions([Lcom/miui/maml/data/Expression;)Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 57
    move-result-object v4

    .line 60
    iput-object v4, v2, Lcom/miui/maml/folme/ConfigValue;->mEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 61
    iget-object v4, v3, Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;->mPropertyExp:[Lcom/miui/maml/data/Expression;

    .line 63
    iget-object v5, v2, Lcom/miui/maml/folme/ConfigValue;->mRelatedProperty:Landroidx/collection/ArraySet;

    .line 65
    invoke-direct {p0, v4, v5}, Lcom/miui/maml/elements/FolmeConfigElement;->getStrFromExpToSet([Lcom/miui/maml/data/Expression;Landroidx/collection/ArraySet;)V

    .line 67
    iget-object v4, v3, Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;->mOnBeginCallbackExp:[Lcom/miui/maml/data/Expression;

    .line 70
    iget-object v5, v2, Lcom/miui/maml/folme/ConfigValue;->mOnBeginCallback:Landroidx/collection/ArraySet;

    .line 72
    invoke-direct {p0, v4, v5}, Lcom/miui/maml/elements/FolmeConfigElement;->getStrFromExpToSet([Lcom/miui/maml/data/Expression;Landroidx/collection/ArraySet;)V

    .line 74
    iget-object v4, v3, Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;->mOnCompleteCallbackExp:[Lcom/miui/maml/data/Expression;

    .line 77
    iget-object v5, v2, Lcom/miui/maml/folme/ConfigValue;->mOnCompleteCallback:Landroidx/collection/ArraySet;

    .line 79
    invoke-direct {p0, v4, v5}, Lcom/miui/maml/elements/FolmeConfigElement;->getStrFromExpToSet([Lcom/miui/maml/data/Expression;Landroidx/collection/ArraySet;)V

    .line 81
    iget-object v3, v3, Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;->mOnUpdateCallbackExp:[Lcom/miui/maml/data/Expression;

    .line 84
    iget-object v4, v2, Lcom/miui/maml/folme/ConfigValue;->mOnUpdateCallback:Landroidx/collection/ArraySet;

    .line 86
    invoke-direct {p0, v3, v4}, Lcom/miui/maml/elements/FolmeConfigElement;->getStrFromExpToSet([Lcom/miui/maml/data/Expression;Landroidx/collection/ArraySet;)V

    .line 88
    iget-object v3, p0, Lcom/miui/maml/elements/ConfigElement;->mTempValueList:Ljava/util/ArrayList;

    .line 91
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    add-int/lit8 v1, v1, 0x1

    .line 96
    goto :goto_0

    .line 98
    :cond_2
    return-void
    .line 99
.end method
