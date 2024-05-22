.class public final Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/demomode/DemoMode;


# instance fields
.field public demoMcc:Ljava/lang/Integer;

.field public demoMnc:Ljava/lang/Integer;

.field public final subscriptions:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/connectivity/NetworkController;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/demomode/DemoModeController;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 5
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;->subscriptions:Ljava/util/Map;

    .line 10
    new-instance v0, Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider$signalCallback$1;

    .line 12
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider$signalCallback$1;-><init>(Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;)V

    .line 14
    check-cast p1, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    .line 17
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 19
    invoke-virtual {p2, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    .line 22
    invoke-virtual {p3, p0}, Lcom/android/systemui/demomode/DemoModeController;->addCallback(Lcom/android/systemui/demomode/DemoMode;)V

    .line 25
    return-void
    .line 28
.end method


# virtual methods
.method public final demoCommands()Ljava/util/List;
    .locals 0

    .line 1
    const-string p0, "network"

    .line 2
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public final dispatchDemoCommand(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string p2, "mccmnc"

    .line 2
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 11
    move-result p2

    .line 14
    const/4 v0, 0x5

    .line 15
    if-eq p2, v0, :cond_1

    .line 16
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 18
    move-result p2

    .line 21
    const/4 v0, 0x6

    .line 22
    if-eq p2, v0, :cond_1

    .line 23
    return-void

    .line 25
    :cond_1
    const/4 p2, 0x0

    .line 26
    const/4 v0, 0x3

    .line 27
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 28
    move-result-object p2

    .line 31
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 32
    move-result-object p2

    .line 35
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 36
    move-result p2

    .line 39
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    move-result-object p2

    .line 43
    iput-object p2, p0, Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;->demoMcc:Ljava/lang/Integer;

    .line 44
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 46
    move-result p2

    .line 49
    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 50
    move-result-object p1

    .line 53
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 54
    move-result-object p1

    .line 57
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 58
    move-result p1

    .line 61
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    move-result-object p1

    .line 65
    iput-object p1, p0, Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;->demoMnc:Ljava/lang/Integer;

    .line 66
    return-void
    .line 68
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    .line 1
    const-string p2, "Subscriptions below will be inflated with a configuration context with MCC/MNC overrides"

    .line 2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;->subscriptions:Ljava/util/Map;

    .line 7
    check-cast p2, Ljava/util/LinkedHashMap;

    .line 9
    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 11
    move-result-object p2

    .line 14
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object p2

    .line 18
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 28
    check-cast v0, Ljava/util/Map$Entry;

    .line 29
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 31
    move-result-object v1

    .line 34
    check-cast v1, Ljava/lang/Number;

    .line 35
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 37
    move-result v1

    .line 40
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 41
    move-result-object v0

    .line 44
    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 45
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    .line 47
    move-result v2

    .line 50
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getMnc()I

    .line 51
    move-result v0

    .line 54
    const-string v3, "  Subscription with subId("

    .line 55
    const-string v4, ") with MCC/MNC("

    .line 57
    const-string v5, "/"

    .line 59
    invoke-static {v3, v1, v4, v2, v5}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    move-result-object v1

    .line 64
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    const-string v0, ")"

    .line 68
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object v0

    .line 76
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 77
    goto :goto_0

    .line 80
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;->demoMcc:Ljava/lang/Integer;

    .line 81
    const-string v0, "(none)"

    .line 83
    if-nez p2, :cond_1

    .line 85
    move-object p2, v0

    .line 87
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 88
    const-string v2, "  MCC override: "

    .line 90
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    move-result-object p2

    .line 101
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 102
    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;->demoMnc:Ljava/lang/Integer;

    .line 105
    if-nez p0, :cond_2

    .line 107
    goto :goto_1

    .line 109
    :cond_2
    move-object v0, p0

    .line 110
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 111
    const-string p2, "  MNC override: "

    .line 113
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    move-result-object p0

    .line 124
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 125
    return-void
    .line 128
.end method

.method public final onDemoModeFinished()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;->demoMcc:Ljava/lang/Integer;

    .line 3
    iput-object v0, p0, Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;->demoMnc:Ljava/lang/Integer;

    .line 5
    return-void
    .line 7
.end method
