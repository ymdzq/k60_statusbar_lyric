.class Lcom/miui/maml/ActionCommand$IntentCommand;
.super Lcom/miui/maml/ActionCommand;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field private static final TAG_FALLBACK:Ljava/lang/String; = "Fallback"

.field public static final TAG_NAME:Ljava/lang/String; = "IntentCommand"


# instance fields
.field private mActivityOptionsBundle:Lcom/miui/maml/ActionCommand$ObjVar;

.field private mFallbackTrigger:Lcom/miui/maml/CommandTrigger;

.field private mFlags:I

.field private mIntent:Landroid/content/Intent;

.field private mIntentInfo:Lcom/miui/maml/util/IntentInfo;

.field private mIntentType:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

.field private mIntentVar:Lcom/miui/maml/data/IndexedVariable;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/ActionCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;)V

    .line 2
    sget-object v0, Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;->Activity:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    .line 5
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntentType:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    .line 7
    new-instance v1, Lcom/miui/maml/util/IntentInfo;

    .line 9
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 11
    move-result-object v2

    .line 14
    invoke-direct {v1, p2, v2}, Lcom/miui/maml/util/IntentInfo;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;)V

    .line 15
    iput-object v1, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntentInfo:Lcom/miui/maml/util/IntentInfo;

    .line 18
    const-string v1, "broadcast"

    .line 20
    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object v2

    .line 25
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 26
    move-result v2

    .line 29
    const-string/jumbo v3, "type"

    .line 30
    invoke-interface {p2, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object v3

    .line 36
    if-nez v2, :cond_3

    .line 37
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    move-result v1

    .line 42
    if-eqz v1, :cond_0

    .line 43
    goto :goto_0

    .line 45
    :cond_0
    const-string/jumbo v1, "service"

    .line 46
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    move-result v1

    .line 52
    if-eqz v1, :cond_1

    .line 53
    sget-object v0, Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;->Service:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    .line 55
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntentType:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    .line 57
    goto :goto_1

    .line 59
    :cond_1
    const-string v1, "activity"

    .line 60
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    move-result v1

    .line 65
    if-eqz v1, :cond_2

    .line 66
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntentType:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    .line 68
    goto :goto_1

    .line 70
    :cond_2
    const-string/jumbo v0, "var"

    .line 71
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    move-result v0

    .line 77
    if-eqz v0, :cond_4

    .line 78
    sget-object v0, Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;->Var:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    .line 80
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntentType:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    .line 82
    const-string v0, "intentVar"

    .line 84
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    move-result-object v0

    .line 89
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 90
    move-result v1

    .line 93
    if-nez v1, :cond_4

    .line 94
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    .line 96
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 98
    move-result-object v2

    .line 101
    const/4 v3, 0x0

    .line 102
    invoke-direct {v1, v0, v2, v3}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 103
    iput-object v1, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntentVar:Lcom/miui/maml/data/IndexedVariable;

    .line 106
    goto :goto_1

    .line 108
    :cond_3
    :goto_0
    sget-object v0, Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;->Broadcast:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    .line 109
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntentType:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    .line 111
    :cond_4
    :goto_1
    const-string v0, "flags"

    .line 113
    const/4 v1, -0x1

    .line 115
    invoke-static {p2, v0, v1}, Lcom/miui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    .line 116
    move-result v0

    .line 119
    iput v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mFlags:I

    .line 120
    const-string v0, "activityOption"

    .line 122
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 124
    move-result-object v0

    .line 127
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 128
    move-result v1

    .line 131
    if-eqz v1, :cond_5

    .line 132
    const/4 v0, 0x0

    .line 134
    goto :goto_2

    .line 135
    :cond_5
    new-instance v1, Lcom/miui/maml/ActionCommand$ObjVar;

    .line 136
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 138
    move-result-object v2

    .line 141
    invoke-direct {v1, v0, v2}, Lcom/miui/maml/ActionCommand$ObjVar;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;)V

    .line 142
    move-object v0, v1

    .line 145
    :goto_2
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mActivityOptionsBundle:Lcom/miui/maml/ActionCommand$ObjVar;

    .line 146
    const-string v0, "Fallback"

    .line 148
    invoke-static {p2, v0}, Lcom/miui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 150
    move-result-object p2

    .line 153
    if-eqz p2, :cond_6

    .line 154
    new-instance v0, Lcom/miui/maml/CommandTrigger;

    .line 156
    invoke-direct {v0, p2, p1}, Lcom/miui/maml/CommandTrigger;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V

    .line 158
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lcom/miui/maml/CommandTrigger;

    .line 161
    :cond_6
    return-void
    .line 163
.end method


# virtual methods
.method public doPerform()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    .line 2
    if-eqz v0, :cond_a

    .line 4
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntentInfo:Lcom/miui/maml/util/IntentInfo;

    .line 6
    invoke-virtual {v1, v0}, Lcom/miui/maml/util/IntentInfo;->update(Landroid/content/Intent;)V

    .line 8
    :try_start_0
    sget-object v0, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$IntentCommand$IntentType:[I

    .line 11
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntentType:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    .line 13
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 15
    move-result v1

    .line 18
    aget v0, v0, v1

    .line 19
    const/4 v1, 0x1

    .line 21
    if-eq v0, v1, :cond_3

    .line 22
    const/4 v1, 0x2

    .line 24
    if-eq v0, v1, :cond_2

    .line 25
    const/4 v1, 0x3

    .line 27
    if-eq v0, v1, :cond_1

    .line 28
    const/4 v1, 0x4

    .line 30
    if-eq v0, v1, :cond_0

    .line 31
    goto/16 :goto_2

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntentVar:Lcom/miui/maml/data/IndexedVariable;

    .line 35
    if-eqz v0, :cond_a

    .line 37
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    .line 39
    invoke-virtual {v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 41
    goto/16 :goto_2

    .line 44
    :cond_1
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getContext()Landroid/content/Context;

    .line 46
    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    .line 50
    invoke-static {v0, v1}, Lcom/miui/maml/util/Utils;->startService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 52
    goto/16 :goto_2

    .line 55
    :cond_2
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getContext()Landroid/content/Context;

    .line 57
    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    .line 61
    invoke-static {v0, v1}, Lcom/miui/maml/util/Utils;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 63
    goto/16 :goto_2

    .line 66
    :cond_3
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mActivityOptionsBundle:Lcom/miui/maml/ActionCommand$ObjVar;

    .line 68
    if-eqz v0, :cond_4

    .line 70
    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand$ObjVar;->get()Ljava/lang/Object;

    .line 72
    move-result-object v0

    .line 75
    check-cast v0, Landroid/os/Bundle;

    .line 76
    goto :goto_0

    .line 78
    :cond_4
    const/4 v0, 0x0

    .line 79
    :goto_0
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getContext()Landroid/content/Context;

    .line 80
    move-result-object v1

    .line 83
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 84
    move-result-object v1

    .line 87
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    .line 88
    const/high16 v3, 0x10000

    .line 90
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 92
    move-result-object v1

    .line 95
    if-eqz v1, :cond_6

    .line 96
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 98
    move-result v1

    .line 101
    if-lez v1, :cond_6

    .line 102
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getScreenElement()Lcom/miui/maml/elements/ScreenElement;

    .line 104
    move-result-object v1

    .line 107
    invoke-virtual {v1}, Lcom/miui/maml/elements/ScreenElement;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 108
    move-result-object v1

    .line 111
    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot;->getContextAndRect()Landroid/util/Pair;

    .line 112
    move-result-object v1

    .line 115
    if-eqz v1, :cond_5

    .line 116
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    .line 118
    const-string v3, "maml_view_location_on_screen"

    .line 120
    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 122
    check-cast v4, Landroid/os/Parcelable;

    .line 124
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 126
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 129
    check-cast v1, Landroid/content/Context;

    .line 131
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    .line 133
    invoke-static {v1, v2, v0}, Lcom/miui/maml/util/Utils;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 135
    goto :goto_2

    .line 138
    :cond_5
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getContext()Landroid/content/Context;

    .line 139
    move-result-object v1

    .line 142
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    .line 143
    invoke-static {v1, v2, v0}, Lcom/miui/maml/util/Utils;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 145
    goto :goto_2

    .line 148
    :cond_6
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    .line 149
    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 151
    move-result-object v1

    .line 154
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 155
    move-result v1

    .line 158
    if-nez v1, :cond_7

    .line 159
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    .line 161
    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 163
    move-result-object v1

    .line 166
    goto :goto_1

    .line 167
    :cond_7
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    .line 168
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 170
    move-result-object v1

    .line 173
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 174
    move-result-object v1

    .line 177
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 178
    move-result v1

    .line 181
    if-nez v1, :cond_8

    .line 182
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    .line 184
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 186
    move-result-object v1

    .line 189
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 190
    move-result-object v1

    .line 193
    :goto_1
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getContext()Landroid/content/Context;

    .line 194
    move-result-object v2

    .line 197
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    .line 198
    invoke-static {v2, v1, v3, v0}, Lcom/miui/maml/util/HideSdkDependencyUtils;->PreloadedAppPolicy_installPreloadedDataApp(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    goto :goto_2

    .line 203
    :cond_8
    return-void

    .line 204
    :catch_0
    move-exception v0

    .line 205
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lcom/miui/maml/CommandTrigger;

    .line 206
    const-string v2, "ActionCommand"

    .line 208
    if-eqz v1, :cond_9

    .line 210
    const-string v0, "fail to send Intent, fallback..."

    .line 212
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lcom/miui/maml/CommandTrigger;

    .line 217
    invoke-virtual {p0}, Lcom/miui/maml/CommandTrigger;->perform()V

    .line 219
    goto :goto_2

    .line 222
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 223
    move-result-object p0

    .line 226
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_a
    :goto_2
    return-void
    .line 230
.end method

.method public finish()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lcom/miui/maml/CommandTrigger;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/CommandTrigger;->finish()V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public init()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 2
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntentInfo:Lcom/miui/maml/util/IntentInfo;

    .line 6
    invoke-virtual {v1}, Lcom/miui/maml/util/IntentInfo;->getId()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->findTask(Ljava/lang/String;)Lcom/miui/maml/util/Task;

    .line 12
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    iget-object v1, v0, Lcom/miui/maml/util/Task;->action:Ljava/lang/String;

    .line 18
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    move-result v1

    .line 23
    if-nez v1, :cond_0

    .line 24
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntentInfo:Lcom/miui/maml/util/IntentInfo;

    .line 26
    invoke-virtual {v1, v0}, Lcom/miui/maml/util/IntentInfo;->set(Lcom/miui/maml/util/Task;)V

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntentInfo:Lcom/miui/maml/util/IntentInfo;

    .line 31
    invoke-virtual {v0}, Lcom/miui/maml/util/IntentInfo;->getAction()Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 36
    invoke-static {v0}, Lcom/miui/maml/util/Utils;->isProtectedIntent(Ljava/lang/String;)Z

    .line 37
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    return-void

    .line 43
    :cond_1
    new-instance v0, Landroid/content/Intent;

    .line 44
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 46
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    .line 49
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntentInfo:Lcom/miui/maml/util/IntentInfo;

    .line 51
    invoke-virtual {v1, v0}, Lcom/miui/maml/util/IntentInfo;->update(Landroid/content/Intent;)V

    .line 53
    iget v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mFlags:I

    .line 56
    const/4 v1, -0x1

    .line 58
    if-eq v0, v1, :cond_2

    .line 59
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    .line 61
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 63
    goto :goto_0

    .line 66
    :cond_2
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntentType:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    .line 67
    sget-object v1, Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;->Activity:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    .line 69
    if-ne v0, v1, :cond_3

    .line 71
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    .line 73
    const/high16 v1, 0x34000000

    .line 75
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 77
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lcom/miui/maml/CommandTrigger;

    .line 80
    if-eqz p0, :cond_4

    .line 82
    invoke-virtual {p0}, Lcom/miui/maml/CommandTrigger;->init()V

    .line 84
    :cond_4
    return-void
    .line 87
.end method

.method public pause()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lcom/miui/maml/CommandTrigger;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/CommandTrigger;->pause()V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public resume()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lcom/miui/maml/CommandTrigger;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/CommandTrigger;->resume()V

    .line 6
    :cond_0
    return-void
    .line 9
.end method
