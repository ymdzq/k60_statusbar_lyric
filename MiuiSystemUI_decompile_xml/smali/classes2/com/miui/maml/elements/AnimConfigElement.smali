.class public Lcom/miui/maml/elements/AnimConfigElement;
.super Lcom/miui/maml/elements/ConfigElement;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "AnimConfig"


# instance fields
.field private mConfigs:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 6

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ConfigElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 2
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    iput-object p2, p0, Lcom/miui/maml/elements/AnimConfigElement;->mConfigs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    iget-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mHasName:Z

    .line 12
    if-eqz v0, :cond_1

    .line 14
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 16
    invoke-direct {p0, p1, v0}, Lcom/miui/maml/elements/AnimConfigElement;->getConfigData(Lorg/w3c/dom/Element;Ljava/lang/String;)Lcom/miui/maml/elements/AnimConfigElement$ConfigData;

    .line 18
    move-result-object v1

    .line 21
    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    .line 25
    move-result-object p1

    .line 28
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 29
    move-result p2

    .line 32
    const/4 v0, 0x0

    .line 33
    :goto_0
    if-ge v0, p2, :cond_1

    .line 34
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 36
    move-result-object v1

    .line 39
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    .line 40
    move-result v1

    .line 43
    const/4 v2, 0x1

    .line 44
    if-ne v1, v2, :cond_0

    .line 45
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 47
    move-result-object v1

    .line 50
    check-cast v1, Lorg/w3c/dom/Element;

    .line 51
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    .line 53
    move-result-object v2

    .line 56
    const-string v3, "Special"

    .line 57
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    move-result v2

    .line 62
    if-eqz v2, :cond_0

    .line 63
    const-string v2, "name"

    .line 65
    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    move-result-object v2

    .line 70
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 71
    move-result v3

    .line 74
    if-nez v3, :cond_0

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    .line 77
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    iget-object v4, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 82
    const-string v5, "."

    .line 84
    invoke-static {v3, v4, v5, v2}, Landroidx/fragment/app/BackStackRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    move-result-object v2

    .line 89
    iget-object v3, p0, Lcom/miui/maml/elements/AnimConfigElement;->mConfigs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 90
    invoke-direct {p0, v1, v2}, Lcom/miui/maml/elements/AnimConfigElement;->getConfigData(Lorg/w3c/dom/Element;Ljava/lang/String;)Lcom/miui/maml/elements/AnimConfigElement$ConfigData;

    .line 92
    move-result-object v1

    .line 95
    invoke-virtual {v3, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 99
    goto :goto_0

    .line 101
    :cond_1
    return-void
    .line 102
.end method

.method private getConfigData(Lorg/w3c/dom/Element;Ljava/lang/String;)Lcom/miui/maml/elements/AnimConfigElement$ConfigData;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 2
    move-result-object v0

    .line 5
    new-instance v1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;

    .line 6
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, p0, v2}, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;-><init>(Lcom/miui/maml/elements/AnimConfigElement;Lcom/miui/maml/elements/AnimConfigElement$1;)V

    .line 9
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    .line 12
    move-result-object v2

    .line 15
    invoke-interface {v2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    .line 16
    move-result v3

    .line 19
    const/4 v4, 0x0

    .line 20
    :goto_0
    if-ge v4, v3, :cond_1

    .line 21
    invoke-interface {v2, v4}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    .line 23
    move-result-object v5

    .line 26
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    .line 27
    move-result-object v5

    .line 30
    invoke-interface {p1, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object v6

    .line 34
    invoke-static {v0, v6}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    .line 35
    move-result-object v6

    .line 38
    if-eqz v6, :cond_0

    .line 39
    invoke-direct {p0, v1, p2, v5, v6}, Lcom/miui/maml/elements/AnimConfigElement;->updateConfigIndexVariable(Lcom/miui/maml/elements/AnimConfigElement$ConfigData;Ljava/lang/String;Ljava/lang/String;[Lcom/miui/maml/data/Expression;)V

    .line 41
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 44
    goto :goto_0

    .line 46
    :cond_1
    return-object v1
    .line 47
.end method

.method private getConfigValueFromVarToSet(Lcom/miui/maml/data/IndexedVariable;Landroidx/collection/ArraySet;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/miui/maml/data/IndexedVariable;->get()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    if-eqz p0, :cond_1

    .line 10
    instance-of p1, p0, [Ljava/lang/String;

    .line 12
    if-eqz p1, :cond_1

    .line 14
    check-cast p0, [Ljava/lang/String;

    .line 16
    array-length p1, p0

    .line 18
    const/4 v0, 0x0

    .line 19
    :goto_1
    if-ge v0, p1, :cond_1

    .line 20
    aget-object v1, p0, v0

    .line 22
    invoke-virtual {p2, v1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 24
    add-int/lit8 v0, v0, 0x1

    .line 27
    goto :goto_1

    .line 29
    :cond_1
    return-void
    .line 30
.end method

.method private getEase(Lcom/miui/maml/data/IndexedVariable;)Lmiuix/animation/utils/EaseManager$EaseStyle;
    .locals 7

    .line 1
    const/4 p0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/miui/maml/data/IndexedVariable;->get()Ljava/lang/Object;

    .line 5
    move-result-object p1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object p1, p0

    .line 10
    :goto_0
    if-eqz p1, :cond_2

    .line 11
    instance-of v0, p1, [D

    .line 13
    if-eqz v0, :cond_2

    .line 15
    check-cast p1, [D

    .line 17
    array-length v0, p1

    .line 19
    if-lez v0, :cond_2

    .line 20
    const/4 v0, 0x0

    .line 22
    aget-wide v0, p1, v0

    .line 23
    double-to-int v0, v0

    .line 25
    array-length v1, p1

    .line 26
    const/4 v2, 0x1

    .line 27
    sub-int/2addr v1, v2

    .line 28
    new-array v1, v1, [F

    .line 29
    array-length v3, p1

    .line 31
    :goto_1
    if-ge v2, v3, :cond_1

    .line 32
    add-int/lit8 v4, v2, -0x1

    .line 34
    aget-wide v5, p1, v2

    .line 36
    double-to-float v5, v5

    .line 38
    aput v5, v1, v4

    .line 39
    add-int/lit8 v2, v2, 0x1

    .line 41
    goto :goto_1

    .line 43
    :cond_1
    :try_start_0
    invoke-static {v0, v1}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 44
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    return-object p0

    .line 48
    :catch_0
    move-exception p1

    .line 49
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 50
    :cond_2
    return-object p0
    .line 53
.end method

.method private removeConfigIndexVariable(Lcom/miui/maml/elements/AnimConfigElement$ConfigData;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 5
    move-result p0

    .line 8
    const/4 v0, -0x1

    .line 9
    sparse-switch p0, :sswitch_data_0

    .line 10
    goto :goto_0

    .line 13
    :sswitch_0
    const-string p0, "onUpdate"

    .line 14
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result p0

    .line 19
    if-nez p0, :cond_0

    .line 20
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x6

    .line 23
    goto :goto_0

    .line 24
    :sswitch_1
    const-string p0, "delay"

    .line 25
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result p0

    .line 30
    if-nez p0, :cond_1

    .line 31
    goto :goto_0

    .line 33
    :cond_1
    const/4 v0, 0x5

    .line 34
    goto :goto_0

    .line 35
    :sswitch_2
    const-string p0, "fromSpeed"

    .line 36
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result p0

    .line 41
    if-nez p0, :cond_2

    .line 42
    goto :goto_0

    .line 44
    :cond_2
    const/4 v0, 0x4

    .line 45
    goto :goto_0

    .line 46
    :sswitch_3
    const-string p0, "ease"

    .line 47
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    move-result p0

    .line 52
    if-nez p0, :cond_3

    .line 53
    goto :goto_0

    .line 55
    :cond_3
    const/4 v0, 0x3

    .line 56
    goto :goto_0

    .line 57
    :sswitch_4
    const-string p0, "property"

    .line 58
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    move-result p0

    .line 63
    if-nez p0, :cond_4

    .line 64
    goto :goto_0

    .line 66
    :cond_4
    const/4 v0, 0x2

    .line 67
    goto :goto_0

    .line 68
    :sswitch_5
    const-string p0, "onBegin"

    .line 69
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    move-result p0

    .line 74
    if-nez p0, :cond_5

    .line 75
    goto :goto_0

    .line 77
    :cond_5
    const/4 v0, 0x1

    .line 78
    goto :goto_0

    .line 79
    :sswitch_6
    const-string p0, "onComplete"

    .line 80
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    move-result p0

    .line 85
    if-nez p0, :cond_6

    .line 86
    goto :goto_0

    .line 88
    :cond_6
    const/4 v0, 0x0

    .line 89
    :goto_0
    const-wide/16 v1, 0x0

    .line 90
    const/4 p0, 0x0

    .line 92
    packed-switch v0, :pswitch_data_0

    .line 93
    goto/16 :goto_1

    .line 96
    :pswitch_0
    iget-object p2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnUpdateCallback:Lcom/miui/maml/data/IndexedVariable;

    .line 98
    if-eqz p2, :cond_7

    .line 100
    invoke-virtual {p2, p0}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 102
    iput-object p0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnUpdateCallback:Lcom/miui/maml/data/IndexedVariable;

    .line 105
    :cond_7
    iget-object p2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnUpdateCallbackLen:Lcom/miui/maml/data/IndexedVariable;

    .line 107
    if-eqz p2, :cond_c

    .line 109
    invoke-virtual {p2, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 111
    iput-object p0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnUpdateCallbackLen:Lcom/miui/maml/data/IndexedVariable;

    .line 114
    goto :goto_1

    .line 116
    :pswitch_1
    iget-object p2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mDelay:Lcom/miui/maml/data/IndexedVariable;

    .line 117
    if-eqz p2, :cond_c

    .line 119
    invoke-virtual {p2, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 121
    iput-object p0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mDelay:Lcom/miui/maml/data/IndexedVariable;

    .line 124
    goto :goto_1

    .line 126
    :pswitch_2
    iget-object p2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mFromSpeed:Lcom/miui/maml/data/IndexedVariable;

    .line 127
    if-eqz p2, :cond_c

    .line 129
    invoke-virtual {p2, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 131
    iput-object p0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mFromSpeed:Lcom/miui/maml/data/IndexedVariable;

    .line 134
    goto :goto_1

    .line 136
    :pswitch_3
    iget-object p2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mEase:Lcom/miui/maml/data/IndexedVariable;

    .line 137
    if-eqz p2, :cond_8

    .line 139
    invoke-virtual {p2, p0}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 141
    iput-object p0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mEase:Lcom/miui/maml/data/IndexedVariable;

    .line 144
    :cond_8
    iget-object p2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mEaseLen:Lcom/miui/maml/data/IndexedVariable;

    .line 146
    if-eqz p2, :cond_c

    .line 148
    invoke-virtual {p2, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 150
    iput-object p0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mEaseLen:Lcom/miui/maml/data/IndexedVariable;

    .line 153
    goto :goto_1

    .line 155
    :pswitch_4
    iget-object p2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mProperty:Lcom/miui/maml/data/IndexedVariable;

    .line 156
    if-eqz p2, :cond_9

    .line 158
    invoke-virtual {p2, p0}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 160
    iput-object p0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mProperty:Lcom/miui/maml/data/IndexedVariable;

    .line 163
    :cond_9
    iget-object p2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mPropertyLen:Lcom/miui/maml/data/IndexedVariable;

    .line 165
    if-eqz p2, :cond_c

    .line 167
    invoke-virtual {p2, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 169
    iput-object p0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mPropertyLen:Lcom/miui/maml/data/IndexedVariable;

    .line 172
    goto :goto_1

    .line 174
    :pswitch_5
    iget-object p2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnBeginCallback:Lcom/miui/maml/data/IndexedVariable;

    .line 175
    if-eqz p2, :cond_a

    .line 177
    invoke-virtual {p2, p0}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 179
    iput-object p0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnBeginCallback:Lcom/miui/maml/data/IndexedVariable;

    .line 182
    :cond_a
    iget-object p2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnBeginCallbackLen:Lcom/miui/maml/data/IndexedVariable;

    .line 184
    if-eqz p2, :cond_c

    .line 186
    invoke-virtual {p2, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 188
    iput-object p0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnBeginCallbackLen:Lcom/miui/maml/data/IndexedVariable;

    .line 191
    goto :goto_1

    .line 193
    :pswitch_6
    iget-object p2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnCompleteCallback:Lcom/miui/maml/data/IndexedVariable;

    .line 194
    if-eqz p2, :cond_b

    .line 196
    invoke-virtual {p2, p0}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 198
    iput-object p0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnCompleteCallback:Lcom/miui/maml/data/IndexedVariable;

    .line 201
    :cond_b
    iget-object p2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnCompleteCallbackLen:Lcom/miui/maml/data/IndexedVariable;

    .line 203
    if-eqz p2, :cond_c

    .line 205
    invoke-virtual {p2, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 207
    iput-object p0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnCompleteCallbackLen:Lcom/miui/maml/data/IndexedVariable;

    .line 210
    :cond_c
    :goto_1
    return-void

    .line 212
    nop

    .line 213
    :sswitch_data_0
    .sparse-switch
        -0x7ea0abc8 -> :sswitch_6
        -0x50a5b1f6 -> :sswitch_5
        -0x3b32222b -> :sswitch_4
        0x2f63ee -> :sswitch_3
        0x42432bd -> :sswitch_2
        0x5b0b983 -> :sswitch_1
        0x5cf50f88 -> :sswitch_0
    .end sparse-switch

    .line 214
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 244
.end method

.method private updateConfigIndexVariable(Lcom/miui/maml/elements/AnimConfigElement$ConfigData;Ljava/lang/String;Ljava/lang/String;[Lcom/miui/maml/data/Expression;)V
    .locals 5

    .line 1
    const-string v0, "."

    .line 2
    invoke-static {p2, v0, p3}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p2

    .line 7
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 8
    move-result-object p0

    .line 11
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    .line 15
    move-result v0

    .line 18
    const/4 v1, 0x1

    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v3, -0x1

    .line 21
    sparse-switch v0, :sswitch_data_0

    .line 22
    goto :goto_0

    .line 25
    :sswitch_0
    const-string v0, "onUpdate"

    .line 26
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result p3

    .line 31
    if-nez p3, :cond_0

    .line 32
    goto :goto_0

    .line 34
    :cond_0
    const/4 v3, 0x6

    .line 35
    goto :goto_0

    .line 36
    :sswitch_1
    const-string v0, "delay"

    .line 37
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    move-result p3

    .line 42
    if-nez p3, :cond_1

    .line 43
    goto :goto_0

    .line 45
    :cond_1
    const/4 v3, 0x5

    .line 46
    goto :goto_0

    .line 47
    :sswitch_2
    const-string v0, "fromSpeed"

    .line 48
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    move-result p3

    .line 53
    if-nez p3, :cond_2

    .line 54
    goto :goto_0

    .line 56
    :cond_2
    const/4 v3, 0x4

    .line 57
    goto :goto_0

    .line 58
    :sswitch_3
    const-string v0, "ease"

    .line 59
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    move-result p3

    .line 64
    if-nez p3, :cond_3

    .line 65
    goto :goto_0

    .line 67
    :cond_3
    const/4 v3, 0x3

    .line 68
    goto :goto_0

    .line 69
    :sswitch_4
    const-string v0, "property"

    .line 70
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    move-result p3

    .line 75
    if-nez p3, :cond_4

    .line 76
    goto :goto_0

    .line 78
    :cond_4
    const/4 v3, 0x2

    .line 79
    goto :goto_0

    .line 80
    :sswitch_5
    const-string v0, "onBegin"

    .line 81
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    move-result p3

    .line 86
    if-nez p3, :cond_5

    .line 87
    goto :goto_0

    .line 89
    :cond_5
    move v3, v1

    .line 90
    goto :goto_0

    .line 91
    :sswitch_6
    const-string v0, "onComplete"

    .line 92
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    move-result p3

    .line 97
    if-nez p3, :cond_6

    .line 98
    goto :goto_0

    .line 100
    :cond_6
    move v3, v2

    .line 101
    :goto_0
    const-string p3, ".length"

    .line 102
    const/4 v0, 0x0

    .line 104
    packed-switch v3, :pswitch_data_0

    .line 105
    return-void

    .line 108
    :pswitch_0
    iget-object v0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnUpdateCallback:Lcom/miui/maml/data/IndexedVariable;

    .line 109
    if-nez v0, :cond_7

    .line 111
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    .line 113
    invoke-direct {v0, p2, p0, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 115
    iput-object v0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnUpdateCallback:Lcom/miui/maml/data/IndexedVariable;

    .line 118
    :cond_7
    iget-object v0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnUpdateCallbackLen:Lcom/miui/maml/data/IndexedVariable;

    .line 120
    if-nez v0, :cond_8

    .line 122
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    .line 124
    invoke-static {p2, p3}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 126
    move-result-object p2

    .line 129
    invoke-direct {v0, p2, p0, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 130
    iput-object v0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnUpdateCallbackLen:Lcom/miui/maml/data/IndexedVariable;

    .line 133
    :cond_8
    iget-object p0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnUpdateCallback:Lcom/miui/maml/data/IndexedVariable;

    .line 135
    iget-object p1, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnUpdateCallbackLen:Lcom/miui/maml/data/IndexedVariable;

    .line 137
    goto/16 :goto_2

    .line 139
    :pswitch_1
    iget-object p3, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mDelay:Lcom/miui/maml/data/IndexedVariable;

    .line 141
    if-nez p3, :cond_9

    .line 143
    new-instance p3, Lcom/miui/maml/data/IndexedVariable;

    .line 145
    invoke-direct {p3, p2, p0, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 147
    iput-object p3, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mDelay:Lcom/miui/maml/data/IndexedVariable;

    .line 150
    :cond_9
    iget-object p0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mDelay:Lcom/miui/maml/data/IndexedVariable;

    .line 152
    goto :goto_1

    .line 154
    :pswitch_2
    iget-object p3, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mFromSpeed:Lcom/miui/maml/data/IndexedVariable;

    .line 155
    if-nez p3, :cond_a

    .line 157
    new-instance p3, Lcom/miui/maml/data/IndexedVariable;

    .line 159
    invoke-direct {p3, p2, p0, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 161
    iput-object p3, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mFromSpeed:Lcom/miui/maml/data/IndexedVariable;

    .line 164
    :cond_a
    iget-object p0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mFromSpeed:Lcom/miui/maml/data/IndexedVariable;

    .line 166
    :goto_1
    move p1, v2

    .line 168
    goto/16 :goto_3

    .line 169
    :pswitch_3
    iget-object v0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mEase:Lcom/miui/maml/data/IndexedVariable;

    .line 171
    if-nez v0, :cond_b

    .line 173
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    .line 175
    invoke-direct {v0, p2, p0, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 177
    iput-object v0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mEase:Lcom/miui/maml/data/IndexedVariable;

    .line 180
    :cond_b
    iget-object v0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mEaseLen:Lcom/miui/maml/data/IndexedVariable;

    .line 182
    if-nez v0, :cond_c

    .line 184
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    .line 186
    invoke-static {p2, p3}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 188
    move-result-object p2

    .line 191
    invoke-direct {v0, p2, p0, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 192
    iput-object v0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mEaseLen:Lcom/miui/maml/data/IndexedVariable;

    .line 195
    :cond_c
    iget-object p0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mEase:Lcom/miui/maml/data/IndexedVariable;

    .line 197
    iget-object v0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mEaseLen:Lcom/miui/maml/data/IndexedVariable;

    .line 199
    move p1, v1

    .line 201
    move v1, v2

    .line 202
    goto :goto_3

    .line 203
    :pswitch_4
    iget-object v0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mProperty:Lcom/miui/maml/data/IndexedVariable;

    .line 204
    if-nez v0, :cond_d

    .line 206
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    .line 208
    invoke-direct {v0, p2, p0, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 210
    iput-object v0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mProperty:Lcom/miui/maml/data/IndexedVariable;

    .line 213
    :cond_d
    iget-object v0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mPropertyLen:Lcom/miui/maml/data/IndexedVariable;

    .line 215
    if-nez v0, :cond_e

    .line 217
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    .line 219
    invoke-static {p2, p3}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 221
    move-result-object p2

    .line 224
    invoke-direct {v0, p2, p0, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 225
    iput-object v0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mPropertyLen:Lcom/miui/maml/data/IndexedVariable;

    .line 228
    :cond_e
    iget-object p0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mProperty:Lcom/miui/maml/data/IndexedVariable;

    .line 230
    iget-object p1, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mPropertyLen:Lcom/miui/maml/data/IndexedVariable;

    .line 232
    goto :goto_2

    .line 234
    :pswitch_5
    iget-object v0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnBeginCallback:Lcom/miui/maml/data/IndexedVariable;

    .line 235
    if-nez v0, :cond_f

    .line 237
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    .line 239
    invoke-direct {v0, p2, p0, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 241
    iput-object v0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnBeginCallback:Lcom/miui/maml/data/IndexedVariable;

    .line 244
    :cond_f
    iget-object v0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnBeginCallbackLen:Lcom/miui/maml/data/IndexedVariable;

    .line 246
    if-nez v0, :cond_10

    .line 248
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    .line 250
    invoke-static {p2, p3}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 252
    move-result-object p2

    .line 255
    invoke-direct {v0, p2, p0, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 256
    iput-object v0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnBeginCallbackLen:Lcom/miui/maml/data/IndexedVariable;

    .line 259
    :cond_10
    iget-object p0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnBeginCallback:Lcom/miui/maml/data/IndexedVariable;

    .line 261
    iget-object p1, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnBeginCallbackLen:Lcom/miui/maml/data/IndexedVariable;

    .line 263
    goto :goto_2

    .line 265
    :pswitch_6
    iget-object v0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnCompleteCallback:Lcom/miui/maml/data/IndexedVariable;

    .line 266
    if-nez v0, :cond_11

    .line 268
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    .line 270
    invoke-direct {v0, p2, p0, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 272
    iput-object v0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnCompleteCallback:Lcom/miui/maml/data/IndexedVariable;

    .line 275
    :cond_11
    iget-object v0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnCompleteCallbackLen:Lcom/miui/maml/data/IndexedVariable;

    .line 277
    if-nez v0, :cond_12

    .line 279
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    .line 281
    invoke-static {p2, p3}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 283
    move-result-object p2

    .line 286
    invoke-direct {v0, p2, p0, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 287
    iput-object v0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnCompleteCallbackLen:Lcom/miui/maml/data/IndexedVariable;

    .line 290
    :cond_12
    iget-object p0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnCompleteCallback:Lcom/miui/maml/data/IndexedVariable;

    .line 292
    iget-object p1, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnCompleteCallbackLen:Lcom/miui/maml/data/IndexedVariable;

    .line 294
    :goto_2
    move-object v0, p1

    .line 296
    move p1, v2

    .line 297
    move v1, p1

    .line 298
    :goto_3
    array-length p2, p4

    .line 299
    if-lez p2, :cond_18

    .line 300
    if-eqz v1, :cond_13

    .line 302
    aget-object p1, p4, v2

    .line 304
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 306
    move-result-wide p3

    .line 309
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 310
    move-result-object p1

    .line 313
    goto :goto_6

    .line 314
    :cond_13
    if-eqz p1, :cond_15

    .line 315
    new-array p1, p2, [D

    .line 317
    :goto_4
    if-ge v2, p2, :cond_17

    .line 319
    aget-object p3, p4, v2

    .line 321
    if-eqz p3, :cond_14

    .line 323
    invoke-virtual {p3}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 325
    move-result-wide v3

    .line 328
    aput-wide v3, p1, v2

    .line 329
    :cond_14
    add-int/lit8 v2, v2, 0x1

    .line 331
    goto :goto_4

    .line 333
    :cond_15
    new-array p1, p2, [Ljava/lang/String;

    .line 334
    :goto_5
    if-ge v2, p2, :cond_17

    .line 336
    aget-object p3, p4, v2

    .line 338
    if-eqz p3, :cond_16

    .line 340
    invoke-virtual {p3}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 342
    move-result-object p3

    .line 345
    aput-object p3, p1, v2

    .line 346
    :cond_16
    add-int/lit8 v2, v2, 0x1

    .line 348
    goto :goto_5

    .line 350
    :cond_17
    :goto_6
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 351
    if-eqz v0, :cond_18

    .line 354
    int-to-double p0, p2

    .line 356
    invoke-virtual {v0, p0, p1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 357
    :cond_18
    return-void

    .line 360
    nop

    .line 361
    :sswitch_data_0
    .sparse-switch
        -0x7ea0abc8 -> :sswitch_6
        -0x50a5b1f6 -> :sswitch_5
        -0x3b32222b -> :sswitch_4
        0x2f63ee -> :sswitch_3
        0x42432bd -> :sswitch_2
        0x5b0b983 -> :sswitch_1
        0x5cf50f88 -> :sswitch_0
    .end sparse-switch

    .line 362
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 392
.end method


# virtual methods
.method public clearConfigData()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AnimConfigElement;->mConfigs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 4
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 21
    check-cast v1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;

    .line 22
    const-string v2, "fromSpeed"

    .line 24
    invoke-direct {p0, v1, v2}, Lcom/miui/maml/elements/AnimConfigElement;->removeConfigIndexVariable(Lcom/miui/maml/elements/AnimConfigElement$ConfigData;Ljava/lang/String;)V

    .line 26
    const-string v2, "delay"

    .line 29
    invoke-direct {p0, v1, v2}, Lcom/miui/maml/elements/AnimConfigElement;->removeConfigIndexVariable(Lcom/miui/maml/elements/AnimConfigElement$ConfigData;Ljava/lang/String;)V

    .line 31
    const-string v2, "ease"

    .line 34
    invoke-direct {p0, v1, v2}, Lcom/miui/maml/elements/AnimConfigElement;->removeConfigIndexVariable(Lcom/miui/maml/elements/AnimConfigElement$ConfigData;Ljava/lang/String;)V

    .line 36
    const-string v2, "property"

    .line 39
    invoke-direct {p0, v1, v2}, Lcom/miui/maml/elements/AnimConfigElement;->removeConfigIndexVariable(Lcom/miui/maml/elements/AnimConfigElement$ConfigData;Ljava/lang/String;)V

    .line 41
    const-string v2, "onUpdate"

    .line 44
    invoke-direct {p0, v1, v2}, Lcom/miui/maml/elements/AnimConfigElement;->removeConfigIndexVariable(Lcom/miui/maml/elements/AnimConfigElement$ConfigData;Ljava/lang/String;)V

    .line 46
    const-string v2, "onBegin"

    .line 49
    invoke-direct {p0, v1, v2}, Lcom/miui/maml/elements/AnimConfigElement;->removeConfigIndexVariable(Lcom/miui/maml/elements/AnimConfigElement$ConfigData;Ljava/lang/String;)V

    .line 51
    const-string v2, "onComplete"

    .line 54
    invoke-direct {p0, v1, v2}, Lcom/miui/maml/elements/AnimConfigElement;->removeConfigIndexVariable(Lcom/miui/maml/elements/AnimConfigElement$ConfigData;Ljava/lang/String;)V

    .line 56
    goto :goto_0

    .line 59
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/elements/AnimConfigElement;->mConfigs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 60
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 62
    return-void
    .line 65
.end method

.method public evaluateConfigValue()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ConfigElement;->mTempValueList:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/AnimConfigElement;->mConfigs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 9
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v0

    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 20
    if-eqz v1, :cond_7

    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 26
    check-cast v1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;

    .line 27
    new-instance v2, Lcom/miui/maml/folme/ConfigValue;

    .line 29
    invoke-direct {v2}, Lcom/miui/maml/folme/ConfigValue;-><init>()V

    .line 31
    iget-object v3, v1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mDelay:Lcom/miui/maml/data/IndexedVariable;

    .line 34
    if-eqz v3, :cond_0

    .line 36
    invoke-virtual {v3}, Lcom/miui/maml/data/IndexedVariable;->getDouble()D

    .line 38
    move-result-wide v3

    .line 41
    double-to-long v3, v3

    .line 42
    iput-wide v3, v2, Lcom/miui/maml/folme/ConfigValue;->mDelay:J

    .line 43
    :cond_0
    iget-object v3, v1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mFromSpeed:Lcom/miui/maml/data/IndexedVariable;

    .line 45
    if-eqz v3, :cond_1

    .line 47
    invoke-virtual {v3}, Lcom/miui/maml/data/IndexedVariable;->getDouble()D

    .line 49
    move-result-wide v3

    .line 52
    double-to-long v3, v3

    .line 53
    long-to-float v3, v3

    .line 54
    iput v3, v2, Lcom/miui/maml/folme/ConfigValue;->mFromSpeed:F

    .line 55
    const/4 v3, 0x1

    .line 57
    iput-boolean v3, v2, Lcom/miui/maml/folme/ConfigValue;->mHasFromSpeed:Z

    .line 58
    :cond_1
    iget-object v3, v1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mEase:Lcom/miui/maml/data/IndexedVariable;

    .line 60
    if-eqz v3, :cond_2

    .line 62
    invoke-direct {p0, v3}, Lcom/miui/maml/elements/AnimConfigElement;->getEase(Lcom/miui/maml/data/IndexedVariable;)Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 64
    move-result-object v3

    .line 67
    iput-object v3, v2, Lcom/miui/maml/folme/ConfigValue;->mEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 68
    :cond_2
    iget-object v3, v1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mProperty:Lcom/miui/maml/data/IndexedVariable;

    .line 70
    if-eqz v3, :cond_3

    .line 72
    iget-object v4, v2, Lcom/miui/maml/folme/ConfigValue;->mRelatedProperty:Landroidx/collection/ArraySet;

    .line 74
    invoke-direct {p0, v3, v4}, Lcom/miui/maml/elements/AnimConfigElement;->getConfigValueFromVarToSet(Lcom/miui/maml/data/IndexedVariable;Landroidx/collection/ArraySet;)V

    .line 76
    :cond_3
    iget-object v3, v1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnBeginCallback:Lcom/miui/maml/data/IndexedVariable;

    .line 79
    if-eqz v3, :cond_4

    .line 81
    iget-object v4, v2, Lcom/miui/maml/folme/ConfigValue;->mOnBeginCallback:Landroidx/collection/ArraySet;

    .line 83
    invoke-direct {p0, v3, v4}, Lcom/miui/maml/elements/AnimConfigElement;->getConfigValueFromVarToSet(Lcom/miui/maml/data/IndexedVariable;Landroidx/collection/ArraySet;)V

    .line 85
    :cond_4
    iget-object v3, v1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnCompleteCallback:Lcom/miui/maml/data/IndexedVariable;

    .line 88
    if-eqz v3, :cond_5

    .line 90
    iget-object v4, v2, Lcom/miui/maml/folme/ConfigValue;->mOnCompleteCallback:Landroidx/collection/ArraySet;

    .line 92
    invoke-direct {p0, v3, v4}, Lcom/miui/maml/elements/AnimConfigElement;->getConfigValueFromVarToSet(Lcom/miui/maml/data/IndexedVariable;Landroidx/collection/ArraySet;)V

    .line 94
    :cond_5
    iget-object v1, v1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnUpdateCallback:Lcom/miui/maml/data/IndexedVariable;

    .line 97
    if-eqz v1, :cond_6

    .line 99
    iget-object v3, v2, Lcom/miui/maml/folme/ConfigValue;->mOnUpdateCallback:Landroidx/collection/ArraySet;

    .line 101
    invoke-direct {p0, v1, v3}, Lcom/miui/maml/elements/AnimConfigElement;->getConfigValueFromVarToSet(Lcom/miui/maml/data/IndexedVariable;Landroidx/collection/ArraySet;)V

    .line 103
    :cond_6
    iget-object v1, p0, Lcom/miui/maml/elements/ConfigElement;->mTempValueList:Ljava/util/ArrayList;

    .line 106
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    goto :goto_0

    .line 111
    :cond_7
    return-void
    .line 112
.end method

.method public removeConfigData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AnimConfigElement;->mConfigs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 7
    check-cast p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;

    .line 8
    if-eqz p1, :cond_0

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/AnimConfigElement;->removeConfigIndexVariable(Lcom/miui/maml/elements/AnimConfigElement$ConfigData;Ljava/lang/String;)V

    .line 12
    :cond_0
    return-void
    .line 15
.end method

.method public updateConfigData(Ljava/lang/String;Ljava/lang/String;[Lcom/miui/maml/data/Expression;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AnimConfigElement;->mConfigs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;

    .line 8
    if-nez v0, :cond_0

    .line 10
    new-instance v0, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;

    .line 12
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, p0, v1}, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;-><init>(Lcom/miui/maml/elements/AnimConfigElement;Lcom/miui/maml/elements/AnimConfigElement$1;)V

    .line 15
    iget-object v1, p0, Lcom/miui/maml/elements/AnimConfigElement;->mConfigs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 18
    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_0
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/miui/maml/elements/AnimConfigElement;->updateConfigIndexVariable(Lcom/miui/maml/elements/AnimConfigElement$ConfigData;Ljava/lang/String;Ljava/lang/String;[Lcom/miui/maml/data/Expression;)V

    .line 23
    return-void
    .line 26
.end method
