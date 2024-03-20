.class public Lcom/miui/maml/util/IntentInfo;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TaskVariable"


# instance fields
.field private mClassNameExp:Lcom/miui/maml/data/Expression;

.field private mExtraList:Ljava/util/ArrayList;

.field private mPackageNameExp:Lcom/miui/maml/data/Expression;

.field private mTask:Lcom/miui/maml/util/Task;

.field private mUri:Ljava/lang/String;

.field private mUriExp:Lcom/miui/maml/data/Expression;

.field private mVariables:Lcom/miui/maml/data/Variables;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/miui/maml/util/IntentInfo;->mExtraList:Ljava/util/ArrayList;

    .line 10
    if-nez p1, :cond_0

    .line 12
    return-void

    .line 14
    :cond_0
    invoke-static {p1}, Lcom/miui/maml/util/Task;->load(Lorg/w3c/dom/Element;)Lcom/miui/maml/util/Task;

    .line 15
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/miui/maml/util/IntentInfo;->mTask:Lcom/miui/maml/util/Task;

    .line 19
    iput-object p2, p0, Lcom/miui/maml/util/IntentInfo;->mVariables:Lcom/miui/maml/data/Variables;

    .line 21
    const-string v0, "packageExp"

    .line 23
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 28
    invoke-static {p2, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 29
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/miui/maml/util/IntentInfo;->mPackageNameExp:Lcom/miui/maml/data/Expression;

    .line 33
    const-string v0, "classExp"

    .line 35
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 40
    invoke-static {p2, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 41
    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/miui/maml/util/IntentInfo;->mClassNameExp:Lcom/miui/maml/data/Expression;

    .line 45
    const-string/jumbo v0, "uri"

    .line 47
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 53
    iput-object v0, p0, Lcom/miui/maml/util/IntentInfo;->mUri:Ljava/lang/String;

    .line 54
    const-string/jumbo v0, "uriExp"

    .line 56
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    move-result-object v0

    .line 62
    invoke-static {p2, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 63
    move-result-object p2

    .line 66
    iput-object p2, p0, Lcom/miui/maml/util/IntentInfo;->mUriExp:Lcom/miui/maml/data/Expression;

    .line 67
    invoke-direct {p0, p1}, Lcom/miui/maml/util/IntentInfo;->loadExtras(Lorg/w3c/dom/Element;)V

    .line 69
    return-void
    .line 72
.end method

.method public static synthetic access$000(Lcom/miui/maml/util/IntentInfo;)Lcom/miui/maml/data/Variables;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/util/IntentInfo;->mVariables:Lcom/miui/maml/data/Variables;

    .line 2
    return-object p0
    .line 4
.end method

.method public static synthetic access$100(Lcom/miui/maml/util/IntentInfo;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/util/IntentInfo;->mExtraList:Ljava/util/ArrayList;

    .line 2
    return-object p0
    .line 4
.end method

.method private loadExtras(Lorg/w3c/dom/Element;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/miui/maml/util/IntentInfo$1;

    .line 2
    invoke-direct {v0, p0}, Lcom/miui/maml/util/IntentInfo$1;-><init>(Lcom/miui/maml/util/IntentInfo;)V

    .line 4
    const-string p0, "Extra"

    .line 7
    invoke-static {p1, p0, v0}, Lcom/miui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/util/Utils$XmlTraverseListener;)V

    .line 9
    return-void
    .line 12
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/util/IntentInfo;->mTask:Lcom/miui/maml/util/Task;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/miui/maml/util/Task;->action:Ljava/lang/String;

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return-object p0
    .line 10
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/util/IntentInfo;->mTask:Lcom/miui/maml/util/Task;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/miui/maml/util/Task;->id:Ljava/lang/String;

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return-object p0
    .line 10
.end method

.method public set(Lcom/miui/maml/util/Task;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/util/IntentInfo;->mTask:Lcom/miui/maml/util/Task;

    .line 2
    return-void
    .line 4
.end method

.method public update(Landroid/content/Intent;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/miui/maml/util/IntentInfo;->mTask:Lcom/miui/maml/util/Task;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, v0, Lcom/miui/maml/util/Task;->action:Ljava/lang/String;

    .line 7
    goto :goto_0

    .line 9
    :cond_0
    move-object v0, v1

    .line 10
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    move-result v2

    .line 14
    if-nez v2, :cond_1

    .line 15
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/util/IntentInfo;->mTask:Lcom/miui/maml/util/Task;

    .line 20
    if-eqz v0, :cond_2

    .line 22
    iget-object v0, v0, Lcom/miui/maml/util/Task;->type:Ljava/lang/String;

    .line 24
    goto :goto_1

    .line 26
    :cond_2
    move-object v0, v1

    .line 27
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    move-result v2

    .line 31
    if-nez v2, :cond_3

    .line 32
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    :cond_3
    iget-object v0, p0, Lcom/miui/maml/util/IntentInfo;->mTask:Lcom/miui/maml/util/Task;

    .line 37
    if-eqz v0, :cond_4

    .line 39
    iget-object v0, v0, Lcom/miui/maml/util/Task;->category:Ljava/lang/String;

    .line 41
    goto :goto_2

    .line 43
    :cond_4
    move-object v0, v1

    .line 44
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 45
    move-result v2

    .line 48
    if-nez v2, :cond_5

    .line 49
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    :cond_5
    iget-object v0, p0, Lcom/miui/maml/util/IntentInfo;->mTask:Lcom/miui/maml/util/Task;

    .line 54
    if-eqz v0, :cond_6

    .line 56
    iget-object v0, v0, Lcom/miui/maml/util/Task;->packageName:Ljava/lang/String;

    .line 58
    goto :goto_3

    .line 60
    :cond_6
    move-object v0, v1

    .line 61
    :goto_3
    iget-object v2, p0, Lcom/miui/maml/util/IntentInfo;->mPackageNameExp:Lcom/miui/maml/data/Expression;

    .line 62
    if-eqz v2, :cond_7

    .line 64
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 66
    move-result-object v0

    .line 69
    :cond_7
    iget-object v2, p0, Lcom/miui/maml/util/IntentInfo;->mTask:Lcom/miui/maml/util/Task;

    .line 70
    if-eqz v2, :cond_8

    .line 72
    iget-object v1, v2, Lcom/miui/maml/util/Task;->className:Ljava/lang/String;

    .line 74
    :cond_8
    iget-object v2, p0, Lcom/miui/maml/util/IntentInfo;->mClassNameExp:Lcom/miui/maml/data/Expression;

    .line 76
    if-eqz v2, :cond_9

    .line 78
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 80
    move-result-object v1

    .line 83
    :cond_9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 84
    move-result v2

    .line 87
    if-nez v2, :cond_b

    .line 88
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 90
    move-result v2

    .line 93
    if-nez v2, :cond_a

    .line 94
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    goto :goto_4

    .line 99
    :cond_a
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    :cond_b
    :goto_4
    invoke-static {v0, v1, p1}, Lcom/miui/maml/util/CustomUtils;->replaceCameraIntentInfoOnF3M(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 103
    iget-object v0, p0, Lcom/miui/maml/util/IntentInfo;->mUri:Ljava/lang/String;

    .line 106
    iget-object v1, p0, Lcom/miui/maml/util/IntentInfo;->mUriExp:Lcom/miui/maml/data/Expression;

    .line 108
    if-eqz v1, :cond_c

    .line 110
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 112
    move-result-object v0

    .line 115
    :cond_c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 116
    move-result v1

    .line 119
    if-nez v1, :cond_d

    .line 120
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 122
    move-result-object v0

    .line 125
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 126
    :cond_d
    iget-object p0, p0, Lcom/miui/maml/util/IntentInfo;->mExtraList:Ljava/util/ArrayList;

    .line 129
    if-eqz p0, :cond_10

    .line 131
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 133
    move-result-object p0

    .line 136
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 137
    move-result v0

    .line 140
    if-eqz v0, :cond_10

    .line 141
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 143
    move-result-object v0

    .line 146
    check-cast v0, Lcom/miui/maml/util/IntentInfo$Extra;

    .line 147
    invoke-virtual {v0}, Lcom/miui/maml/util/IntentInfo$Extra;->isConditionTrue()Z

    .line 149
    move-result v1

    .line 152
    if-eqz v1, :cond_f

    .line 153
    sget-object v1, Lcom/miui/maml/util/IntentInfo$2;->$SwitchMap$com$miui$maml$util$IntentInfo$Type:[I

    .line 155
    iget-object v2, v0, Lcom/miui/maml/util/IntentInfo$Extra;->mType:Lcom/miui/maml/util/IntentInfo$Type;

    .line 157
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 159
    move-result v2

    .line 162
    aget v1, v1, v2

    .line 163
    packed-switch v1, :pswitch_data_0

    .line 165
    goto :goto_5

    .line 168
    :pswitch_0
    invoke-virtual {v0}, Lcom/miui/maml/util/IntentInfo$Extra;->getName()Ljava/lang/String;

    .line 169
    move-result-object v1

    .line 172
    invoke-virtual {v0}, Lcom/miui/maml/util/IntentInfo$Extra;->getDouble()D

    .line 173
    move-result-wide v2

    .line 176
    const-wide/16 v4, 0x0

    .line 177
    cmpl-double v0, v2, v4

    .line 179
    if-lez v0, :cond_e

    .line 181
    const/4 v0, 0x1

    .line 183
    goto :goto_6

    .line 184
    :cond_e
    const/4 v0, 0x0

    .line 185
    :goto_6
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 186
    goto :goto_5

    .line 189
    :pswitch_1
    invoke-virtual {v0}, Lcom/miui/maml/util/IntentInfo$Extra;->getName()Ljava/lang/String;

    .line 190
    move-result-object v1

    .line 193
    invoke-virtual {v0}, Lcom/miui/maml/util/IntentInfo$Extra;->getDouble()D

    .line 194
    move-result-wide v2

    .line 197
    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 198
    goto :goto_5

    .line 201
    :pswitch_2
    invoke-virtual {v0}, Lcom/miui/maml/util/IntentInfo$Extra;->getName()Ljava/lang/String;

    .line 202
    move-result-object v1

    .line 205
    invoke-virtual {v0}, Lcom/miui/maml/util/IntentInfo$Extra;->getDouble()D

    .line 206
    move-result-wide v2

    .line 209
    double-to-float v0, v2

    .line 210
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 211
    goto :goto_5

    .line 214
    :pswitch_3
    invoke-virtual {v0}, Lcom/miui/maml/util/IntentInfo$Extra;->getName()Ljava/lang/String;

    .line 215
    move-result-object v1

    .line 218
    invoke-virtual {v0}, Lcom/miui/maml/util/IntentInfo$Extra;->getDouble()D

    .line 219
    move-result-wide v2

    .line 222
    double-to-long v2, v2

    .line 223
    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 224
    goto :goto_5

    .line 227
    :pswitch_4
    invoke-virtual {v0}, Lcom/miui/maml/util/IntentInfo$Extra;->getName()Ljava/lang/String;

    .line 228
    move-result-object v1

    .line 231
    invoke-virtual {v0}, Lcom/miui/maml/util/IntentInfo$Extra;->getDouble()D

    .line 232
    move-result-wide v2

    .line 235
    double-to-int v0, v2

    .line 236
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 237
    goto :goto_5

    .line 240
    :pswitch_5
    invoke-virtual {v0}, Lcom/miui/maml/util/IntentInfo$Extra;->getName()Ljava/lang/String;

    .line 241
    move-result-object v1

    .line 244
    invoke-virtual {v0}, Lcom/miui/maml/util/IntentInfo$Extra;->getString()Ljava/lang/String;

    .line 245
    move-result-object v0

    .line 248
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    goto :goto_5

    .line 252
    :cond_f
    invoke-virtual {v0}, Lcom/miui/maml/util/IntentInfo$Extra;->getName()Ljava/lang/String;

    .line 253
    move-result-object v0

    .line 256
    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 257
    goto :goto_5

    .line 260
    :cond_10
    return-void

    .line 261
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 262
.end method
