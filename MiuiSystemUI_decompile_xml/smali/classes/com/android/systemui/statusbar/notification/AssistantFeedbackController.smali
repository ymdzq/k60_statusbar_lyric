.class public final Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public volatile mFeedbackEnabled:Z

.field public final mHandler:Landroid/os/Handler;

.field public final mIcons:Landroid/util/SparseArray;

.field public final mPropertiesChangedListener:Lcom/android/systemui/statusbar/notification/AssistantFeedbackController$1;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/android/systemui/util/DeviceConfigProxy;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/systemui/statusbar/notification/AssistantFeedbackController$1;

    .line 5
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/AssistantFeedbackController$1;-><init>(Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;)V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;->mPropertiesChangedListener:Lcom/android/systemui/statusbar/notification/AssistantFeedbackController$1;

    .line 10
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;->mHandler:Landroid/os/Handler;

    .line 12
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    const-string p1, "enable_nas_feedback"

    .line 17
    const/4 p2, 0x0

    .line 19
    const-string/jumbo v1, "systemui"

    .line 20
    invoke-static {v1, p1, p2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 23
    move-result p1

    .line 26
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;->mFeedbackEnabled:Z

    .line 27
    new-instance p1, Lcom/android/systemui/statusbar/notification/AssistantFeedbackController$$ExternalSyntheticLambda0;

    .line 29
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/AssistantFeedbackController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;)V

    .line 31
    invoke-static {v1, p1, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 34
    new-instance p1, Landroid/util/SparseArray;

    .line 37
    const/4 p2, 0x4

    .line 39
    invoke-direct {p1, p2}, Landroid/util/SparseArray;-><init>(I)V

    .line 40
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;->mIcons:Landroid/util/SparseArray;

    .line 43
    new-instance p0, Lcom/android/systemui/statusbar/notification/FeedbackIcon;

    .line 45
    const v0, 0x10803c6    # @android:drawable/ic_find_previous_holo_dark

    .line 47
    const v1, 0x1040698    # @android:string/permdesc_observeCompanionDevicePresence

    .line 50
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/FeedbackIcon;-><init>(II)V

    .line 53
    const/4 v0, 0x1

    .line 56
    invoke-virtual {p1, v0, p0}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    .line 57
    new-instance p0, Lcom/android/systemui/statusbar/notification/FeedbackIcon;

    .line 60
    const v0, 0x10803c9    # @android:drawable/ic_find_previous_mtrl_alpha

    .line 62
    const v1, 0x104069b    # @android:string/permdesc_preferredPaymentInfo

    .line 65
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/FeedbackIcon;-><init>(II)V

    .line 68
    const/4 v0, 0x2

    .line 71
    invoke-virtual {p1, v0, p0}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    .line 72
    new-instance p0, Lcom/android/systemui/statusbar/notification/FeedbackIcon;

    .line 75
    const v0, 0x10803ca    # @android:drawable/ic_fingerprint

    .line 77
    const v1, 0x104069a    # @android:string/permdesc_postNotification

    .line 80
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/FeedbackIcon;-><init>(II)V

    .line 83
    const/4 v0, 0x3

    .line 86
    invoke-virtual {p1, v0, p0}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    .line 87
    new-instance p0, Lcom/android/systemui/statusbar/notification/FeedbackIcon;

    .line 90
    const v0, 0x10803c7    # @android:drawable/ic_find_previous_holo_light

    .line 92
    const v1, 0x1040699    # @android:string/permdesc_persistentActivity

    .line 95
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/FeedbackIcon;-><init>(II)V

    .line 98
    invoke-virtual {p1, p2, p0}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    .line 101
    return-void
    .line 104
.end method


# virtual methods
.method public final getFeedbackStatus(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I
    .locals 5

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;->mFeedbackEnabled:Z

    .line 2
    const/4 v0, 0x0

    .line 4
    if-nez p0, :cond_0

    .line 5
    return v0

    .line 7
    :cond_0
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 8
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    .line 10
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    .line 14
    move-result p1

    .line 17
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportance()I

    .line 18
    move-result v1

    .line 21
    const/4 v2, 0x1

    .line 22
    const/4 v3, 0x3

    .line 23
    if-ge p1, v3, :cond_1

    .line 24
    if-lt v1, v3, :cond_1

    .line 26
    return v2

    .line 28
    :cond_1
    if-lt p1, v3, :cond_2

    .line 29
    if-ge v1, v3, :cond_2

    .line 31
    const/4 p0, 0x2

    .line 33
    return p0

    .line 34
    :cond_2
    if-lt p1, v1, :cond_6

    .line 35
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService$Ranking;->getRankingAdjustment()I

    .line 37
    move-result v4

    .line 40
    if-ne v4, v2, :cond_3

    .line 41
    goto :goto_1

    .line 43
    :cond_3
    if-gt p1, v1, :cond_5

    .line 44
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService$Ranking;->getRankingAdjustment()I

    .line 46
    move-result p0

    .line 49
    const/4 p1, -0x1

    .line 50
    if-ne p0, p1, :cond_4

    .line 51
    goto :goto_0

    .line 53
    :cond_4
    return v0

    .line 54
    :cond_5
    :goto_0
    const/4 p0, 0x4

    .line 55
    return p0

    .line 56
    :cond_6
    :goto_1
    return v3
    .line 57
.end method
