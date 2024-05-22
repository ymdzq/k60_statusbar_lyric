.class public final Lcom/android/systemui/statusbar/policy/SmartReplyConstants;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mDefaultEditChoicesBeforeSending:Z

.field public final mDefaultEnabled:Z

.field public final mDefaultMaxNumActions:I

.field public final mDefaultMaxSqueezeRemeasureAttempts:I

.field public final mDefaultMinNumSystemGeneratedReplies:I

.field public final mDefaultOnClickInitDelay:I

.field public final mDefaultRequiresP:Z

.field public final mDefaultShowInHeadsUp:Z

.field public final mDeviceConfig:Lcom/android/systemui/util/DeviceConfigProxy;

.field public volatile mEditChoicesBeforeSending:Z

.field public volatile mEnabled:Z

.field public final mHandler:Landroid/os/Handler;

.field public volatile mMaxNumActions:I

.field public volatile mMaxSqueezeRemeasureAttempts:I

.field public volatile mMinNumSystemGeneratedReplies:I

.field public volatile mOnClickInitDelay:J

.field public final mOnPropertiesChangedListener:Lcom/android/systemui/statusbar/policy/SmartReplyConstants$1;

.field public volatile mRequiresTargetingP:Z

.field public volatile mShowInHeadsUp:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;Lcom/android/systemui/util/DeviceConfigProxy;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/KeyValueListParser;

    .line 5
    const/16 v1, 0x2c

    .line 7
    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    .line 9
    new-instance v0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants$1;

    .line 12
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/SmartReplyConstants$1;-><init>(Lcom/android/systemui/statusbar/policy/SmartReplyConstants;)V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mOnPropertiesChangedListener:Lcom/android/systemui/statusbar/policy/SmartReplyConstants$1;

    .line 17
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mHandler:Landroid/os/Handler;

    .line 19
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 21
    move-result-object p1

    .line 24
    const p2, 0x7f050064    # @bool/config_smart_replies_in_notifications_enabled 'true'

    .line 25
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 28
    move-result p2

    .line 31
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mDefaultEnabled:Z

    .line 32
    const p2, 0x7f050065    # @bool/config_smart_replies_in_notifications_requires_targeting_p 'true'

    .line 34
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 37
    move-result p2

    .line 40
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mDefaultRequiresP:Z

    .line 41
    const p2, 0x7f0b004b    # @integer/config_smart_replies_in_notifications_max_squeeze_remeasure_attempts '3'

    .line 43
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 46
    move-result p2

    .line 49
    iput p2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mDefaultMaxSqueezeRemeasureAttempts:I

    .line 50
    const p2, 0x7f050063    # @bool/config_smart_replies_in_notifications_edit_choices_before_sending 'false'

    .line 52
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 55
    move-result p2

    .line 58
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mDefaultEditChoicesBeforeSending:Z

    .line 59
    const p2, 0x7f050066    # @bool/config_smart_replies_in_notifications_show_in_heads_up 'true'

    .line 61
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 64
    move-result p2

    .line 67
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mDefaultShowInHeadsUp:Z

    .line 68
    const p2, 0x7f0b004c    # @integer/config_smart_replies_in_notifications_min_num_system_generated_replies '0'

    .line 70
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 73
    move-result p2

    .line 76
    iput p2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mDefaultMinNumSystemGeneratedReplies:I

    .line 77
    const p2, 0x7f0b004a    # @integer/config_smart_replies_in_notifications_max_num_actions '-1'

    .line 79
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 82
    move-result p2

    .line 85
    iput p2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mDefaultMaxNumActions:I

    .line 86
    const p2, 0x7f0b004d    # @integer/config_smart_replies_in_notifications_onclick_init_delay '200'

    .line 88
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 91
    move-result p1

    .line 94
    iput p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mDefaultOnClickInitDelay:I

    .line 95
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mDeviceConfig:Lcom/android/systemui/util/DeviceConfigProxy;

    .line 97
    new-instance p1, Lcom/android/systemui/statusbar/policy/SmartReplyConstants$$ExternalSyntheticLambda0;

    .line 99
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/policy/SmartReplyConstants$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/policy/SmartReplyConstants;)V

    .line 101
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    const-string/jumbo p2, "systemui"

    .line 107
    invoke-static {p2, p1, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 110
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->updateConstants()V

    .line 113
    return-void
    .line 116
.end method


# virtual methods
.method public final readDeviceConfigBooleanOrDefaultIfEmpty(Ljava/lang/String;Z)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mDeviceConfig:Lcom/android/systemui/util/DeviceConfigProxy;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const-string/jumbo p0, "systemui"

    .line 7
    invoke-static {p0, p1}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object p0

    .line 13
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    return p2

    .line 20
    :cond_0
    const-string/jumbo p1, "true"

    .line 21
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result p1

    .line 27
    if-eqz p1, :cond_1

    .line 28
    const/4 p0, 0x1

    .line 30
    return p0

    .line 31
    :cond_1
    const-string p1, "false"

    .line 32
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result p0

    .line 37
    if-eqz p0, :cond_2

    .line 38
    const/4 p0, 0x0

    .line 40
    return p0

    .line 41
    :cond_2
    return p2
    .line 42
.end method

.method public final updateConstants()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string/jumbo v0, "ssin_enabled"

    .line 3
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mDefaultEnabled:Z

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->readDeviceConfigBooleanOrDefaultIfEmpty(Ljava/lang/String;Z)Z

    .line 8
    move-result v0

    .line 11
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mEnabled:Z

    .line 12
    const-string/jumbo v0, "ssin_requires_targeting_p"

    .line 14
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mDefaultRequiresP:Z

    .line 17
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->readDeviceConfigBooleanOrDefaultIfEmpty(Ljava/lang/String;Z)Z

    .line 19
    move-result v0

    .line 22
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mRequiresTargetingP:Z

    .line 23
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mDeviceConfig:Lcom/android/systemui/util/DeviceConfigProxy;

    .line 25
    const-string/jumbo v1, "systemui"

    .line 27
    const-string/jumbo v2, "ssin_max_squeeze_remeasure_attempts"

    .line 30
    iget v3, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mDefaultMaxSqueezeRemeasureAttempts:I

    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 38
    move-result v0

    .line 41
    iput v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mMaxSqueezeRemeasureAttempts:I

    .line 42
    const-string/jumbo v0, "ssin_edit_choices_before_sending"

    .line 44
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mDefaultEditChoicesBeforeSending:Z

    .line 47
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->readDeviceConfigBooleanOrDefaultIfEmpty(Ljava/lang/String;Z)Z

    .line 49
    move-result v0

    .line 52
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mEditChoicesBeforeSending:Z

    .line 53
    const-string/jumbo v0, "ssin_show_in_heads_up"

    .line 55
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mDefaultShowInHeadsUp:Z

    .line 58
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->readDeviceConfigBooleanOrDefaultIfEmpty(Ljava/lang/String;Z)Z

    .line 60
    move-result v0

    .line 63
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mShowInHeadsUp:Z

    .line 64
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mDeviceConfig:Lcom/android/systemui/util/DeviceConfigProxy;

    .line 66
    const-string/jumbo v1, "systemui"

    .line 68
    const-string/jumbo v2, "ssin_min_num_system_generated_replies"

    .line 71
    iget v3, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mDefaultMinNumSystemGeneratedReplies:I

    .line 74
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 79
    move-result v0

    .line 82
    iput v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mMinNumSystemGeneratedReplies:I

    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mDeviceConfig:Lcom/android/systemui/util/DeviceConfigProxy;

    .line 85
    const-string/jumbo v1, "systemui"

    .line 87
    const-string/jumbo v2, "ssin_max_num_actions"

    .line 90
    iget v3, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mDefaultMaxNumActions:I

    .line 93
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 98
    move-result v0

    .line 101
    iput v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mMaxNumActions:I

    .line 102
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mDeviceConfig:Lcom/android/systemui/util/DeviceConfigProxy;

    .line 104
    const-string/jumbo v1, "systemui"

    .line 106
    const-string/jumbo v2, "ssin_onclick_init_delay"

    .line 109
    iget v3, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mDefaultOnClickInitDelay:I

    .line 112
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 117
    move-result v0

    .line 120
    int-to-long v0, v0

    .line 121
    iput-wide v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mOnClickInitDelay:J

    .line 122
    monitor-exit p0

    .line 124
    return-void

    .line 125
    :catchall_0
    move-exception v0

    .line 126
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    throw v0
    .line 128
.end method
