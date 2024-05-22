.class public final Lcom/android/keyguard/AwesomeLockScreenImp/UnlockVerifyPasswordCommand;
.super Lcom/miui/maml/ActionCommand;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mDelayExp:Lcom/miui/maml/data/Expression;

.field public mEnable:Z

.field public final mEnableExp:Lcom/miui/maml/data/Expression;

.field public final mPasswordExp:Lcom/miui/maml/data/Expression;

.field public final mTriggers:Lcom/miui/maml/CommandTriggers;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/ActionCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;)V

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 5
    move-result-object v0

    .line 8
    const-string v1, "password"

    .line 9
    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 14
    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 15
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/android/keyguard/AwesomeLockScreenImp/UnlockVerifyPasswordCommand;->mPasswordExp:Lcom/miui/maml/data/Expression;

    .line 19
    if-nez v0, :cond_0

    .line 21
    const-string v0, "UnlockVerifyPasswordCommand"

    .line 23
    const-string v1, "no password"

    .line 25
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 30
    move-result-object v0

    .line 33
    const-string/jumbo v1, "unlockDelay"

    .line 34
    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 40
    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 41
    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/android/keyguard/AwesomeLockScreenImp/UnlockVerifyPasswordCommand;->mDelayExp:Lcom/miui/maml/data/Expression;

    .line 45
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 47
    move-result-object v0

    .line 50
    const-string v1, "enable"

    .line 51
    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    move-result-object v1

    .line 56
    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 57
    move-result-object v0

    .line 60
    iput-object v0, p0, Lcom/android/keyguard/AwesomeLockScreenImp/UnlockVerifyPasswordCommand;->mEnableExp:Lcom/miui/maml/data/Expression;

    .line 61
    const-string v0, "Triggers"

    .line 63
    invoke-static {p2, v0}, Lcom/miui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 65
    move-result-object p2

    .line 68
    if-eqz p2, :cond_1

    .line 69
    new-instance v0, Lcom/miui/maml/CommandTriggers;

    .line 71
    invoke-direct {v0, p2, p1}, Lcom/miui/maml/CommandTriggers;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V

    .line 73
    iput-object v0, p0, Lcom/android/keyguard/AwesomeLockScreenImp/UnlockVerifyPasswordCommand;->mTriggers:Lcom/miui/maml/CommandTriggers;

    .line 76
    :cond_1
    return-void
    .line 78
.end method


# virtual methods
.method public final doPerform()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/AwesomeLockScreenImp/UnlockVerifyPasswordCommand;->mEnable:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/android/keyguard/AwesomeLockScreenImp/UnlockVerifyPasswordCommand;->mDelayExp:Lcom/miui/maml/data/Expression;

    .line 7
    if-nez v0, :cond_0

    .line 9
    const-wide/16 v2, 0x0

    .line 11
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 14
    move-result-wide v2

    .line 17
    :goto_0
    double-to-int v0, v2

    .line 18
    new-instance v2, Lcom/android/keyguard/AwesomeLockScreenImp/UnlockVerifyPasswordCommand$1;

    .line 19
    invoke-direct {v2, p0, v0}, Lcom/android/keyguard/AwesomeLockScreenImp/UnlockVerifyPasswordCommand$1;-><init>(Lcom/android/keyguard/AwesomeLockScreenImp/UnlockVerifyPasswordCommand;I)V

    .line 21
    new-array p0, v1, [Ljava/lang/Void;

    .line 24
    invoke-virtual {v2, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 26
    goto :goto_1

    .line 29
    :cond_1
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 30
    move-result-object p0

    .line 33
    check-cast p0, Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;

    .line 34
    iget-object p0, p0, Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;->mLockscreenCallback:Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;

    .line 36
    check-cast p0, Lcom/android/keyguard/AwesomeLockScreen;

    .line 38
    const/4 v0, 0x0

    .line 40
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/AwesomeLockScreen;->unlocked(Landroid/content/Intent;I)V

    .line 41
    :goto_1
    return-void
    .line 44
.end method

.method public final finish()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/miui/maml/ActionCommand;->finish()V

    .line 2
    iget-object p0, p0, Lcom/android/keyguard/AwesomeLockScreenImp/UnlockVerifyPasswordCommand;->mTriggers:Lcom/miui/maml/CommandTriggers;

    .line 5
    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/miui/maml/CommandTriggers;->finish()V

    .line 9
    :cond_0
    return-void
    .line 12
.end method

.method public final init()V
    .locals 6

    .line 1
    invoke-super {p0}, Lcom/miui/maml/ActionCommand;->init()V

    .line 2
    iget-object v0, p0, Lcom/android/keyguard/AwesomeLockScreenImp/UnlockVerifyPasswordCommand;->mTriggers:Lcom/miui/maml/CommandTriggers;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/miui/maml/CommandTriggers;->init()V

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/AwesomeLockScreenImp/UnlockVerifyPasswordCommand;->mPasswordExp:Lcom/miui/maml/data/Expression;

    .line 12
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_2

    .line 15
    iget-object v0, p0, Lcom/android/keyguard/AwesomeLockScreenImp/UnlockVerifyPasswordCommand;->mEnableExp:Lcom/miui/maml/data/Expression;

    .line 17
    if-eqz v0, :cond_1

    .line 19
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 21
    move-result-wide v2

    .line 24
    const-wide/16 v4, 0x0

    .line 25
    cmpl-double v0, v2, v4

    .line 27
    if-lez v0, :cond_2

    .line 29
    :cond_1
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 31
    move-result-object v0

    .line 34
    check-cast v0, Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;

    .line 35
    iget-object v0, v0, Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;->mLockscreenCallback:Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;

    .line 37
    invoke-interface {v0}, Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;->getPasswordMode()I

    .line 39
    move-result v0

    .line 42
    const/4 v2, 0x1

    .line 43
    if-ne v0, v2, :cond_2

    .line 44
    goto :goto_0

    .line 46
    :cond_2
    move v2, v1

    .line 47
    :goto_0
    iput-boolean v2, p0, Lcom/android/keyguard/AwesomeLockScreenImp/UnlockVerifyPasswordCommand;->mEnable:Z

    .line 48
    if-eqz v2, :cond_3

    .line 50
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 52
    move-result-object p0

    .line 55
    const/4 v0, 0x7

    .line 56
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/ScreenElementRoot;->setCapability(IZ)V

    .line 57
    :cond_3
    return-void
    .line 60
.end method

.method public final pause()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/miui/maml/ActionCommand;->pause()V

    .line 2
    iget-object p0, p0, Lcom/android/keyguard/AwesomeLockScreenImp/UnlockVerifyPasswordCommand;->mTriggers:Lcom/miui/maml/CommandTriggers;

    .line 5
    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/miui/maml/CommandTriggers;->pause()V

    .line 9
    :cond_0
    return-void
    .line 12
.end method

.method public final resume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/miui/maml/ActionCommand;->resume()V

    .line 2
    iget-object p0, p0, Lcom/android/keyguard/AwesomeLockScreenImp/UnlockVerifyPasswordCommand;->mTriggers:Lcom/miui/maml/CommandTriggers;

    .line 5
    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/miui/maml/CommandTriggers;->resume()V

    .line 9
    :cond_0
    return-void
    .line 12
.end method
