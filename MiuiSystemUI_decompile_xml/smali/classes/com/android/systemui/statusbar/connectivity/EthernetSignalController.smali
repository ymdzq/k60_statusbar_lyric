.class public final Lcom/android/systemui/statusbar/connectivity/EthernetSignalController;
.super Lcom/android/systemui/statusbar/connectivity/SignalController;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/connectivity/CallbackHandler;Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;)V
    .locals 10

    .line 1
    const-string v1, "EthernetSignalController"

    .line 2
    const/4 v3, 0x3

    .line 4
    move-object v0, p0

    .line 5
    move-object v2, p1

    .line 6
    move-object v4, p2

    .line 7
    move-object v5, p3

    .line 8
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/connectivity/SignalController;-><init>(Ljava/lang/String;Landroid/content/Context;ILcom/android/systemui/statusbar/connectivity/CallbackHandler;Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;)V

    .line 9
    iget-object p1, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/SignalIcon$State;

    .line 12
    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mLastState:Lcom/android/systemui/statusbar/SignalIcon$State;

    .line 14
    new-instance p2, Lcom/android/systemui/statusbar/SignalIcon$IconGroup;

    .line 16
    const-string v1, "Ethernet Icons"

    .line 18
    sget-object v2, Lcom/android/systemui/statusbar/connectivity/EthernetIcons;->ETHERNET_ICONS:[[I

    .line 20
    const/4 v3, 0x0

    .line 22
    sget-object v4, Lcom/android/settingslib/AccessibilityContentDescriptions;->ETHERNET_CONNECTION_VALUES:[I

    .line 23
    const/4 v5, 0x0

    .line 25
    const/4 v6, 0x0

    .line 26
    const/4 v7, 0x0

    .line 27
    const/4 v8, 0x0

    .line 28
    const/4 p3, 0x0

    .line 29
    aget v9, v4, p3

    .line 30
    move-object v0, p2

    .line 32
    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/statusbar/SignalIcon$IconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIII)V

    .line 33
    iput-object p2, p0, Lcom/android/systemui/statusbar/SignalIcon$State;->iconGroup:Lcom/android/systemui/statusbar/SignalIcon$IconGroup;

    .line 36
    iput-object p2, p1, Lcom/android/systemui/statusbar/SignalIcon$State;->iconGroup:Lcom/android/systemui/statusbar/SignalIcon$IconGroup;

    .line 38
    return-void
    .line 40
.end method


# virtual methods
.method public final cleanState()Lcom/android/systemui/statusbar/SignalIcon$State;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/systemui/statusbar/SignalIcon$State;

    .line 2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalIcon$State;-><init>()V

    .line 4
    return-object p0
    .line 7
.end method

.method public final getContentDescription()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/SignalIcon$State;

    .line 2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalIcon$State;->connected:Z

    .line 4
    if-eqz v0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/SignalIcon$State;->iconGroup:Lcom/android/systemui/statusbar/SignalIcon$IconGroup;

    .line 8
    iget-object p0, p0, Lcom/android/systemui/statusbar/SignalIcon$IconGroup;->contentDesc:[I

    .line 10
    const/4 v0, 0x1

    .line 12
    aget p0, p0, v0

    .line 13
    return p0

    .line 15
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/SignalIcon$State;->iconGroup:Lcom/android/systemui/statusbar/SignalIcon$IconGroup;

    .line 16
    iget p0, p0, Lcom/android/systemui/statusbar/SignalIcon$IconGroup;->discContentDesc:I

    .line 18
    return p0
    .line 20
.end method

.method public final notifyListeners(Lcom/android/systemui/statusbar/connectivity/SignalCallback;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/SignalIcon$State;

    .line 2
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/SignalIcon$State;->connected:Z

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/EthernetSignalController;->getContentDescription()I

    .line 6
    move-result v2

    .line 9
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/connectivity/SignalController;->getTextIfExists(I)Ljava/lang/CharSequence;

    .line 10
    move-result-object p0

    .line 13
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 17
    new-instance v2, Lcom/android/systemui/statusbar/connectivity/IconState;

    .line 18
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/SignalIcon$State;->connected:Z

    .line 20
    if-eqz v3, :cond_0

    .line 22
    iget-object v3, v0, Lcom/android/systemui/statusbar/SignalIcon$State;->iconGroup:Lcom/android/systemui/statusbar/SignalIcon$IconGroup;

    .line 24
    iget-object v3, v3, Lcom/android/systemui/statusbar/SignalIcon$IconGroup;->sbIcons:[[I

    .line 26
    iget v4, v0, Lcom/android/systemui/statusbar/SignalIcon$State;->inetCondition:I

    .line 28
    aget-object v3, v3, v4

    .line 30
    iget v0, v0, Lcom/android/systemui/statusbar/SignalIcon$State;->level:I

    .line 32
    aget v0, v3, v0

    .line 34
    goto :goto_0

    .line 36
    :cond_0
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/SignalIcon$State;->enabled:Z

    .line 37
    if-eqz v3, :cond_1

    .line 39
    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalIcon$State;->iconGroup:Lcom/android/systemui/statusbar/SignalIcon$IconGroup;

    .line 41
    iget v0, v0, Lcom/android/systemui/statusbar/SignalIcon$IconGroup;->sbDiscState:I

    .line 43
    goto :goto_0

    .line 45
    :cond_1
    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalIcon$State;->iconGroup:Lcom/android/systemui/statusbar/SignalIcon$IconGroup;

    .line 46
    iget v0, v0, Lcom/android/systemui/statusbar/SignalIcon$IconGroup;->sbNullState:I

    .line 48
    :goto_0
    invoke-direct {v2, v1, v0, p0}, Lcom/android/systemui/statusbar/connectivity/IconState;-><init>(ZILjava/lang/String;)V

    .line 50
    invoke-interface {p1, v2}, Lcom/android/systemui/statusbar/connectivity/SignalCallback;->setEthernetIndicators(Lcom/android/systemui/statusbar/connectivity/IconState;)V

    .line 53
    return-void
    .line 56
.end method
