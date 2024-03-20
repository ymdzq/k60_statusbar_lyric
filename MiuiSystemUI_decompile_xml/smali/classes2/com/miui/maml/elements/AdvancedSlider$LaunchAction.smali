.class Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mCommand:Lcom/miui/maml/ActionCommand;

.field public mConfigTaskLoaded:Z

.field public mIntentInfo:Lcom/miui/maml/util/IntentInfo;

.field public mTrigger:Lcom/miui/maml/CommandTrigger;

.field final synthetic this$0:Lcom/miui/maml/elements/AdvancedSlider;


# direct methods
.method private constructor <init>(Lcom/miui/maml/elements/AdvancedSlider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/miui/maml/elements/AdvancedSlider;Lcom/miui/maml/elements/AdvancedSlider$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;-><init>(Lcom/miui/maml/elements/AdvancedSlider;)V

    return-void
.end method

.method private performTask()Landroid/content/Intent;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;->mIntentInfo:Lcom/miui/maml/util/IntentInfo;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    return-object v1

    .line 7
    :cond_0
    iget-boolean v2, p0, Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;->mConfigTaskLoaded:Z

    .line 8
    if-nez v2, :cond_2

    .line 10
    iget-object v2, p0, Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 12
    iget-object v2, v2, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 14
    invoke-virtual {v0}, Lcom/miui/maml/util/IntentInfo;->getId()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 19
    invoke-virtual {v2, v0}, Lcom/miui/maml/ScreenElementRoot;->findTask(Ljava/lang/String;)Lcom/miui/maml/util/Task;

    .line 20
    move-result-object v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    iget-object v2, v0, Lcom/miui/maml/util/Task;->action:Ljava/lang/String;

    .line 26
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    move-result v2

    .line 31
    if-nez v2, :cond_1

    .line 32
    iget-object v2, p0, Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;->mIntentInfo:Lcom/miui/maml/util/IntentInfo;

    .line 34
    invoke-virtual {v2, v0}, Lcom/miui/maml/util/IntentInfo;->set(Lcom/miui/maml/util/Task;)V

    .line 36
    :cond_1
    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;->mConfigTaskLoaded:Z

    .line 40
    :cond_2
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;->mIntentInfo:Lcom/miui/maml/util/IntentInfo;

    .line 42
    invoke-virtual {v0}, Lcom/miui/maml/util/IntentInfo;->getAction()Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 47
    invoke-static {v0}, Lcom/miui/maml/util/Utils;->isProtectedIntent(Ljava/lang/String;)Z

    .line 48
    move-result v0

    .line 51
    if-eqz v0, :cond_3

    .line 52
    return-object v1

    .line 54
    :cond_3
    new-instance v0, Landroid/content/Intent;

    .line 55
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 57
    iget-object p0, p0, Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;->mIntentInfo:Lcom/miui/maml/util/IntentInfo;

    .line 60
    invoke-virtual {p0, v0}, Lcom/miui/maml/util/IntentInfo;->update(Landroid/content/Intent;)V

    .line 62
    const/high16 p0, 0x34000000

    .line 65
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 67
    return-object v0
    .line 70
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;->mCommand:Lcom/miui/maml/ActionCommand;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand;->finish()V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;->mTrigger:Lcom/miui/maml/CommandTrigger;

    .line 9
    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {v0}, Lcom/miui/maml/CommandTrigger;->finish()V

    .line 13
    :cond_1
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;->mConfigTaskLoaded:Z

    .line 17
    return-void
    .line 19
.end method

.method public init()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;->mCommand:Lcom/miui/maml/ActionCommand;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand;->init()V

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;->mTrigger:Lcom/miui/maml/CommandTrigger;

    .line 9
    if-eqz p0, :cond_1

    .line 11
    invoke-virtual {p0}, Lcom/miui/maml/CommandTrigger;->init()V

    .line 13
    :cond_1
    return-void
    .line 16
.end method

.method public pause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;->mCommand:Lcom/miui/maml/ActionCommand;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand;->pause()V

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;->mTrigger:Lcom/miui/maml/CommandTrigger;

    .line 9
    if-eqz p0, :cond_1

    .line 11
    invoke-virtual {p0}, Lcom/miui/maml/CommandTrigger;->pause()V

    .line 13
    :cond_1
    return-void
    .line 16
.end method

.method public perform()Landroid/content/Intent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;->mIntentInfo:Lcom/miui/maml/util/IntentInfo;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;->performTask()Landroid/content/Intent;

    .line 6
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;->mCommand:Lcom/miui/maml/ActionCommand;

    .line 11
    if-eqz v0, :cond_1

    .line 13
    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand;->perform()V

    .line 15
    goto :goto_0

    .line 18
    :cond_1
    iget-object p0, p0, Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;->mTrigger:Lcom/miui/maml/CommandTrigger;

    .line 19
    if-eqz p0, :cond_2

    .line 21
    invoke-virtual {p0}, Lcom/miui/maml/CommandTrigger;->perform()V

    .line 23
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 26
    return-object p0
    .line 27
.end method

.method public resume()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;->mCommand:Lcom/miui/maml/ActionCommand;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand;->resume()V

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;->mTrigger:Lcom/miui/maml/CommandTrigger;

    .line 9
    if-eqz p0, :cond_1

    .line 11
    invoke-virtual {p0}, Lcom/miui/maml/CommandTrigger;->resume()V

    .line 13
    :cond_1
    return-void
    .line 16
.end method
