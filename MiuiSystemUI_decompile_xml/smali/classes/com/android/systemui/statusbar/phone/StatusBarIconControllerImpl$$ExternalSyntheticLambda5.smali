.class public final synthetic Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;


# direct methods
.method public synthetic constructor <init>(ILcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl$$ExternalSyntheticLambda5;->f$0:I

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl$$ExternalSyntheticLambda5;->f$1:Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl$$ExternalSyntheticLambda5;->f$0:I

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl$$ExternalSyntheticLambda5;->f$1:Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    .line 4
    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;

    .line 6
    check-cast p2, Ljava/util/List;

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    iget p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mType:I

    .line 13
    if-eqz p2, :cond_6

    .line 15
    const/4 v1, 0x1

    .line 17
    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    .line 18
    if-eq p2, v1, :cond_3

    .line 20
    const/4 v1, 0x2

    .line 22
    if-eq p2, v1, :cond_1

    .line 23
    const/4 v1, 0x5

    .line 25
    if-eq p2, v1, :cond_0

    .line 26
    goto :goto_0

    .line 28
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mNetworkSpeedState:Lcom/android/systemui/statusbar/policy/NetworkSpeedState;

    .line 29
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 31
    move-result-object p1

    .line 34
    instance-of p2, p1, Lcom/android/systemui/statusbar/views/NetworkSpeedView;

    .line 35
    if-eqz p2, :cond_7

    .line 37
    check-cast p1, Lcom/android/systemui/statusbar/views/NetworkSpeedView;

    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedState;->networkSpeedNumber:Ljava/lang/String;

    .line 44
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedState;->networkSpeedUnit:Ljava/lang/String;

    .line 46
    invoke-virtual {p1, p2, v0}, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->setNetworkSpeed(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedState;->visible:Z

    .line 51
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->setVisibilityByController(Z)V

    .line 53
    goto :goto_0

    .line 56
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mMobileState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    .line 57
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 59
    move-result-object p1

    .line 62
    instance-of p2, p1, Lcom/android/systemui/statusbar/StatusBarMobileView;

    .line 63
    if-eqz p2, :cond_2

    .line 65
    check-cast p1, Lcom/android/systemui/statusbar/StatusBarMobileView;

    .line 67
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->applyMobileState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)V

    .line 69
    goto :goto_0

    .line 72
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 73
    const-string p1, "Cannot update ModernStatusBarMobileView outside ofthe new pipeline"

    .line 75
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 77
    throw p0

    .line 80
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mWifiState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    .line 81
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 83
    move-result-object p1

    .line 86
    instance-of p2, p1, Lcom/android/systemui/statusbar/StatusBarWifiView;

    .line 87
    if-eqz p2, :cond_4

    .line 89
    check-cast p1, Lcom/android/systemui/statusbar/StatusBarWifiView;

    .line 91
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/StatusBarWifiView;->applyWifiState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V

    .line 93
    goto :goto_0

    .line 96
    :cond_4
    instance-of p0, p1, Lcom/android/systemui/statusbar/pipeline/wifi/ui/view/ModernStatusBarWifiView;

    .line 97
    if-eqz p0, :cond_5

    .line 99
    goto :goto_0

    .line 101
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 102
    const-string p1, "View at "

    .line 104
    const-string p2, " must be of type StatusBarWifiView or ModernStatusBarWifiView"

    .line 106
    invoke-static {p1, v0, p2}, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 108
    move-result-object p1

    .line 111
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 112
    throw p0

    .line 115
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    .line 116
    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->onSetIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V

    .line 118
    :cond_7
    :goto_0
    return-void
    .line 121
.end method
