.class public final synthetic Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    const/4 v0, 0x1

    .line 4
    packed-switch p0, :pswitch_data_0

    .line 5
    goto :goto_1

    .line 8
    :pswitch_0
    check-cast p1, Lcom/android/wifitrackerlib/WifiEntry;

    .line 9
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    .line 11
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :pswitch_1
    check-cast p1, Lcom/android/wifitrackerlib/WifiEntry;

    .line 16
    iget p0, p1, Lcom/android/wifitrackerlib/WifiEntry;->mLevel:I

    .line 18
    neg-int p0, p0

    .line 20
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :pswitch_2
    check-cast p1, Lcom/android/wifitrackerlib/WifiEntry;

    .line 26
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->isSuggestion()Z

    .line 28
    move-result p0

    .line 31
    xor-int/2addr p0, v0

    .line 32
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 33
    move-result-object p0

    .line 36
    return-object p0

    .line 37
    :pswitch_3
    check-cast p1, Lcom/android/wifitrackerlib/WifiEntry;

    .line 38
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    .line 40
    move-result p0

    .line 43
    xor-int/2addr p0, v0

    .line 44
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 45
    move-result-object p0

    .line 48
    return-object p0

    .line 49
    :pswitch_4
    check-cast p1, Lcom/android/wifitrackerlib/WifiEntry;

    .line 50
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->isSubscription()Z

    .line 52
    move-result p0

    .line 55
    xor-int/2addr p0, v0

    .line 56
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 57
    move-result-object p0

    .line 60
    return-object p0

    .line 61
    :pswitch_5
    check-cast p1, Lcom/android/wifitrackerlib/WifiEntry;

    .line 62
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->canConnect()Z

    .line 64
    move-result p0

    .line 67
    xor-int/2addr p0, v0

    .line 68
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 69
    move-result-object p0

    .line 72
    return-object p0

    .line 73
    :pswitch_6
    check-cast p1, Lcom/android/wifitrackerlib/WifiEntry;

    .line 74
    instance-of p0, p1, Lcom/android/wifitrackerlib/HotspotNetworkEntry;

    .line 76
    xor-int/2addr p0, v0

    .line 78
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 79
    move-result-object p0

    .line 82
    return-object p0

    .line 83
    :pswitch_7
    check-cast p1, Lcom/android/wifitrackerlib/WifiEntry;

    .line 84
    instance-of p0, p1, Lcom/android/wifitrackerlib/KnownNetworkEntry;

    .line 86
    xor-int/2addr p0, v0

    .line 88
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 89
    move-result-object p0

    .line 92
    return-object p0

    .line 93
    :pswitch_8
    check-cast p1, Lcom/android/wifitrackerlib/WifiEntry;

    .line 94
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    .line 96
    move-result p0

    .line 99
    const/4 p1, 0x2

    .line 100
    if-eq p0, p1, :cond_0

    .line 101
    goto :goto_0

    .line 103
    :cond_0
    const/4 v0, 0x0

    .line 104
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 105
    move-result-object p0

    .line 108
    return-object p0

    .line 109
    :pswitch_9
    check-cast p1, Lcom/android/wifitrackerlib/WifiEntry;

    .line 110
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    .line 112
    move-result-object p0

    .line 115
    return-object p0

    .line 116
    :pswitch_a
    check-cast p1, Lcom/android/wifitrackerlib/WifiEntry;

    .line 117
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->isPrimaryNetwork()Z

    .line 119
    move-result p0

    .line 122
    xor-int/2addr p0, v0

    .line 123
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 124
    move-result-object p0

    .line 127
    return-object p0

    .line 128
    :goto_1
    check-cast p1, Ljava/net/InetAddress;

    .line 129
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 131
    move-result-object p0

    .line 134
    return-object p0

    .line 135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 136
.end method
