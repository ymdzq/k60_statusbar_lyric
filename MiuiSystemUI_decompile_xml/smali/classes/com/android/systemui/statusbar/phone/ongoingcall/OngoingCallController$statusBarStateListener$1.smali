.class public final Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$statusBarStateListener$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$statusBarStateListener$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onFullscreenStateChanged(Z)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$statusBarStateListener$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    .line 2
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->isFullscreen:Z

    .line 4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->callNotificationInfo:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$CallNotificationInfo;

    .line 6
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez v0, :cond_0

    .line 10
    goto :goto_1

    .line 12
    :cond_0
    if-eqz p1, :cond_2

    .line 13
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->ongoingCallFlags:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallFlags;

    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    sget-object v0, Lcom/android/systemui/flags/Flags;->ONGOING_CALL_STATUS_BAR_CHIP:Lcom/android/systemui/flags/ReleasedFlag;

    .line 20
    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallFlags;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 22
    move-object v3, p1

    .line 24
    check-cast v3, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 25
    invoke-virtual {v3, v0}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 27
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    sget-object v0, Lcom/android/systemui/flags/Flags;->ONGOING_CALL_IN_IMMERSIVE:Lcom/android/systemui/flags/ReleasedFlag;

    .line 33
    invoke-virtual {v3, v0}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 35
    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    move v0, v1

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    move v0, v2

    .line 43
    :goto_0
    if-eqz v0, :cond_2

    .line 44
    sget-object v0, Lcom/android/systemui/flags/Flags;->ONGOING_CALL_IN_IMMERSIVE_CHIP_TAP:Lcom/android/systemui/flags/ReleasedFlag;

    .line 46
    check-cast p1, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 48
    invoke-virtual {p1, v0}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 50
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->callNotificationInfo:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$CallNotificationInfo;

    .line 53
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->swipeStatusBarAwayGestureHandler:Ljava/util/Optional;

    .line 55
    if-eqz p1, :cond_5

    .line 57
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$CallNotificationInfo;->statusBarSwipedAway:Z

    .line 59
    if-ne p1, v1, :cond_3

    .line 61
    goto :goto_2

    .line 63
    :cond_3
    move v1, v2

    .line 64
    :goto_2
    if-nez v1, :cond_5

    .line 65
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->isFullscreen:Z

    .line 67
    if-nez p1, :cond_4

    .line 69
    goto :goto_3

    .line 71
    :cond_4
    new-instance p1, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$updateGestureListening$2;

    .line 72
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$updateGestureListening$2;-><init>(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;)V

    .line 74
    invoke-virtual {v0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 77
    goto :goto_4

    .line 80
    :cond_5
    :goto_3
    sget-object p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$removeChip$1;->INSTANCE$5:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$removeChip$1;

    .line 81
    invoke-virtual {v0, p0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 83
    :goto_4
    return-void
    .line 86
.end method
