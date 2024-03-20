.class Lcom/miui/maml/ActionCommand$WifiSwitchCommand;
.super Lcom/miui/maml/ActionCommand$NotificationReceiver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field private final mOnOffHelper:Lcom/miui/maml/ActionCommand$OnOffCommandHelper;

.field private final mWifiState:Lcom/miui/maml/ActionCommand$StateTracker;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string/jumbo v0, "wifi_state"

    .line 2
    sget-object v1, Lcom/miui/maml/NotifierManager;->TYPE_WIFI_STATE:Ljava/lang/String;

    .line 5
    invoke-direct {p0, p1, v0, v1}, Lcom/miui/maml/ActionCommand$NotificationReceiver;-><init>(Lcom/miui/maml/elements/ScreenElement;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance p1, Lcom/miui/maml/ActionCommand$WifiStateTracker;

    .line 10
    const/4 v0, 0x0

    .line 12
    invoke-direct {p1, v0}, Lcom/miui/maml/ActionCommand$WifiStateTracker;-><init>(Lcom/miui/maml/ActionCommand$1;)V

    .line 13
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$WifiSwitchCommand;->mWifiState:Lcom/miui/maml/ActionCommand$StateTracker;

    .line 16
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$WifiSwitchCommand;->update()V

    .line 18
    new-instance p1, Lcom/miui/maml/ActionCommand$OnOffCommandHelper;

    .line 21
    invoke-direct {p1, p2}, Lcom/miui/maml/ActionCommand$OnOffCommandHelper;-><init>(Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$WifiSwitchCommand;->mOnOffHelper:Lcom/miui/maml/ActionCommand$OnOffCommandHelper;

    .line 26
    return-void
    .line 28
.end method


# virtual methods
.method public doPerform()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getContext()Landroid/content/Context;

    .line 2
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$WifiSwitchCommand;->mOnOffHelper:Lcom/miui/maml/ActionCommand$OnOffCommandHelper;

    .line 6
    iget-boolean v1, v1, Lcom/miui/maml/ActionCommand$OnOffCommandHelper;->mIsToggle:Z

    .line 8
    if-eqz v1, :cond_0

    .line 10
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$WifiSwitchCommand;->mWifiState:Lcom/miui/maml/ActionCommand$StateTracker;

    .line 12
    invoke-virtual {v1, v0}, Lcom/miui/maml/ActionCommand$StateTracker;->toggleState(Landroid/content/Context;)V

    .line 14
    goto :goto_2

    .line 17
    :cond_0
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$WifiSwitchCommand;->mWifiState:Lcom/miui/maml/ActionCommand$StateTracker;

    .line 18
    invoke-virtual {v1, v0}, Lcom/miui/maml/ActionCommand$StateTracker;->getTriState(Landroid/content/Context;)I

    .line 20
    move-result v1

    .line 23
    const/4 v2, 0x1

    .line 24
    if-eqz v1, :cond_2

    .line 25
    if-eq v1, v2, :cond_1

    .line 27
    goto :goto_0

    .line 29
    :cond_1
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$WifiSwitchCommand;->mOnOffHelper:Lcom/miui/maml/ActionCommand$OnOffCommandHelper;

    .line 30
    iget-boolean v1, v1, Lcom/miui/maml/ActionCommand$OnOffCommandHelper;->mIsOn:Z

    .line 32
    if-nez v1, :cond_3

    .line 34
    goto :goto_1

    .line 36
    :cond_2
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$WifiSwitchCommand;->mOnOffHelper:Lcom/miui/maml/ActionCommand$OnOffCommandHelper;

    .line 37
    iget-boolean v1, v1, Lcom/miui/maml/ActionCommand$OnOffCommandHelper;->mIsOn:Z

    .line 39
    if-eqz v1, :cond_3

    .line 41
    goto :goto_1

    .line 43
    :cond_3
    :goto_0
    const/4 v2, 0x0

    .line 44
    :goto_1
    if-eqz v2, :cond_4

    .line 45
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$WifiSwitchCommand;->mWifiState:Lcom/miui/maml/ActionCommand$StateTracker;

    .line 47
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$WifiSwitchCommand;->mOnOffHelper:Lcom/miui/maml/ActionCommand$OnOffCommandHelper;

    .line 49
    iget-boolean v2, v2, Lcom/miui/maml/ActionCommand$OnOffCommandHelper;->mIsOn:Z

    .line 51
    invoke-virtual {v1, v0, v2}, Lcom/miui/maml/ActionCommand$StateTracker;->requestStateChange(Landroid/content/Context;Z)V

    .line 53
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$WifiSwitchCommand;->update()V

    .line 56
    return-void
    .line 59
.end method

.method public onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$WifiSwitchCommand;->mWifiState:Lcom/miui/maml/ActionCommand$StateTracker;

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/ActionCommand$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    .line 4
    invoke-super {p0, p1, p2, p3}, Lcom/miui/maml/ActionCommand$NotificationReceiver;->onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V

    .line 7
    return-void
    .line 10
.end method

.method public update()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$WifiSwitchCommand;->mWifiState:Lcom/miui/maml/ActionCommand$StateTracker;

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/miui/maml/ActionCommand$StateTracker;->getTriState(Landroid/content/Context;)I

    .line 8
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_4

    .line 13
    const/4 v2, 0x1

    .line 15
    if-eq v0, v2, :cond_2

    .line 16
    const/4 v2, 0x5

    .line 18
    if-eq v0, v2, :cond_0

    .line 19
    goto :goto_1

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$WifiSwitchCommand;->mWifiState:Lcom/miui/maml/ActionCommand$StateTracker;

    .line 22
    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand$StateTracker;->isTurningOn()Z

    .line 24
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    const/4 v1, 0x3

    .line 30
    :cond_1
    invoke-virtual {p0, v1}, Lcom/miui/maml/ActionCommand$StatefulActionCommand;->updateState(I)V

    .line 31
    goto :goto_1

    .line 34
    :cond_2
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$WifiSwitchCommand;->mWifiState:Lcom/miui/maml/ActionCommand$StateTracker;

    .line 35
    check-cast v0, Lcom/miui/maml/ActionCommand$WifiStateTracker;

    .line 37
    iget-boolean v0, v0, Lcom/miui/maml/ActionCommand$WifiStateTracker;->zConnected:Z

    .line 39
    if-eqz v0, :cond_3

    .line 41
    goto :goto_0

    .line 43
    :cond_3
    const/4 v2, 0x2

    .line 44
    :goto_0
    invoke-virtual {p0, v2}, Lcom/miui/maml/ActionCommand$StatefulActionCommand;->updateState(I)V

    .line 45
    goto :goto_1

    .line 48
    :cond_4
    invoke-virtual {p0, v1}, Lcom/miui/maml/ActionCommand$StatefulActionCommand;->updateState(I)V

    .line 49
    :goto_1
    return-void
    .line 52
.end method
