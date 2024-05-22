.class public final Lcom/android/keyguard/AwesomeLockScreenImp/LockscreenActionCommandFactory;
.super Lcom/miui/maml/ObjectFactory$ActionCommandFactory;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# virtual methods
.method public final doCreate(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)Lcom/miui/maml/ActionCommand;
    .locals 1

    .line 1
    invoke-interface {p2}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    .line 2
    move-result-object p0

    .line 5
    const-string v0, "UnlockVerifyPasswordCommand"

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    new-instance p0, Lcom/android/keyguard/AwesomeLockScreenImp/UnlockVerifyPasswordCommand;

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/AwesomeLockScreenImp/UnlockVerifyPasswordCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    .line 16
    return-object p0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    return-object p0
    .line 21
.end method
