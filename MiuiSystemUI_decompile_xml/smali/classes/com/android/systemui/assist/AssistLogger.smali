.class public final Lcom/android/systemui/assist/AssistLogger;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final SESSION_END_EVENTS:Ljava/util/Set;


# instance fields
.field public final assistUtils:Lcom/android/internal/app/AssistUtils;

.field public final context:Landroid/content/Context;

.field public currentInstanceId:Lcom/android/internal/logging/InstanceId;

.field public final instanceIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

.field public final phoneStateMonitor:Lcom/android/systemui/assist/PhoneStateMonitor;

.field public final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/systemui/assist/AssistantSessionEvent;->ASSISTANT_SESSION_INVOCATION_CANCELLED:Lcom/android/systemui/assist/AssistantSessionEvent;

    .line 2
    sget-object v1, Lcom/android/systemui/assist/AssistantSessionEvent;->ASSISTANT_SESSION_CLOSE:Lcom/android/systemui/assist/AssistantSessionEvent;

    .line 4
    filled-new-array {v0, v1}, [Lcom/android/systemui/assist/AssistantSessionEvent;

    .line 6
    move-result-object v0

    .line 9
    invoke-static {v0}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    .line 10
    move-result-object v0

    .line 13
    sput-object v0, Lcom/android/systemui/assist/AssistLogger;->SESSION_END_EVENTS:Ljava/util/Set;

    .line 14
    return-void
    .line 16
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/logging/UiEventLogger;Lcom/android/internal/app/AssistUtils;Lcom/android/systemui/assist/PhoneStateMonitor;Lcom/android/systemui/settings/UserTracker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/assist/AssistLogger;->context:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/assist/AssistLogger;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/assist/AssistLogger;->assistUtils:Lcom/android/internal/app/AssistUtils;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/assist/AssistLogger;->phoneStateMonitor:Lcom/android/systemui/assist/PhoneStateMonitor;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/assist/AssistLogger;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 13
    new-instance p1, Lcom/android/internal/logging/InstanceIdSequence;

    .line 15
    const/high16 p2, 0x100000

    .line 17
    invoke-direct {p1, p2}, Lcom/android/internal/logging/InstanceIdSequence;-><init>(I)V

    .line 19
    iput-object p1, p0, Lcom/android/systemui/assist/AssistLogger;->instanceIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

    .line 22
    return-void
    .line 24
.end method


# virtual methods
.method public final getAssistantUid(Landroid/content/ComponentName;)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/assist/AssistLogger;->context:Landroid/content/Context;

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    move-result-object p0

    .line 11
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 16
    move-result-object p0

    .line 19
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    goto :goto_0

    .line 22
    :catch_0
    move-exception p0

    .line 23
    const-string p1, "AssistLogger"

    .line 24
    const-string v1, "Unable to find Assistant UID"

    .line 26
    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28
    :goto_0
    return v0
    .line 31
.end method

.method public final reportAssistantInvocationEventFromLegacy(IZLandroid/content/ComponentName;Ljava/lang/Integer;)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p4, :cond_0

    .line 3
    move-object p4, v0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget-object v1, Lcom/android/systemui/assist/AssistantInvocationEvent;->ASSISTANT_INVOCATION_UNKNOWN:Lcom/android/systemui/assist/AssistantInvocationEvent;

    .line 7
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 9
    move-result p4

    .line 12
    invoke-static {p4}, Lcom/android/systemui/assist/AssistantInvocationEvent$Companion;->deviceStateFromLegacyDeviceState(I)I

    .line 13
    move-result p4

    .line 16
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    move-result-object p4

    .line 20
    :goto_0
    sget-object v1, Lcom/android/systemui/assist/AssistantInvocationEvent;->ASSISTANT_INVOCATION_UNKNOWN:Lcom/android/systemui/assist/AssistantInvocationEvent;

    .line 21
    if-eqz p2, :cond_1

    .line 23
    packed-switch p1, :pswitch_data_0

    .line 25
    sget-object p1, Lcom/android/systemui/assist/AssistantInvocationEvent;->ASSISTANT_INVOCATION_UNKNOWN:Lcom/android/systemui/assist/AssistantInvocationEvent;

    .line 28
    goto :goto_1

    .line 30
    :pswitch_0
    sget-object p1, Lcom/android/systemui/assist/AssistantInvocationEvent;->ASSISTANT_INVOCATION_POWER_LONG_PRESS:Lcom/android/systemui/assist/AssistantInvocationEvent;

    .line 31
    goto :goto_1

    .line 33
    :pswitch_1
    sget-object p1, Lcom/android/systemui/assist/AssistantInvocationEvent;->ASSISTANT_INVOCATION_HOME_LONG_PRESS:Lcom/android/systemui/assist/AssistantInvocationEvent;

    .line 34
    goto :goto_1

    .line 36
    :pswitch_2
    sget-object p1, Lcom/android/systemui/assist/AssistantInvocationEvent;->ASSISTANT_INVOCATION_QUICK_SEARCH_BAR:Lcom/android/systemui/assist/AssistantInvocationEvent;

    .line 37
    goto :goto_1

    .line 39
    :pswitch_3
    sget-object p1, Lcom/android/systemui/assist/AssistantInvocationEvent;->ASSISTANT_INVOCATION_HOTWORD:Lcom/android/systemui/assist/AssistantInvocationEvent;

    .line 40
    goto :goto_1

    .line 42
    :pswitch_4
    sget-object p1, Lcom/android/systemui/assist/AssistantInvocationEvent;->ASSISTANT_INVOCATION_PHYSICAL_GESTURE:Lcom/android/systemui/assist/AssistantInvocationEvent;

    .line 43
    goto :goto_1

    .line 45
    :pswitch_5
    sget-object p1, Lcom/android/systemui/assist/AssistantInvocationEvent;->ASSISTANT_INVOCATION_TOUCH_GESTURE:Lcom/android/systemui/assist/AssistantInvocationEvent;

    .line 46
    goto :goto_1

    .line 48
    :cond_1
    const/4 p2, 0x1

    .line 49
    if-eq p1, p2, :cond_3

    .line 50
    const/4 p2, 0x2

    .line 52
    if-eq p1, p2, :cond_2

    .line 53
    sget-object p1, Lcom/android/systemui/assist/AssistantInvocationEvent;->ASSISTANT_INVOCATION_START_UNKNOWN:Lcom/android/systemui/assist/AssistantInvocationEvent;

    .line 55
    goto :goto_1

    .line 57
    :cond_2
    sget-object p1, Lcom/android/systemui/assist/AssistantInvocationEvent;->ASSISTANT_INVOCATION_START_PHYSICAL_GESTURE:Lcom/android/systemui/assist/AssistantInvocationEvent;

    .line 58
    goto :goto_1

    .line 60
    :cond_3
    sget-object p1, Lcom/android/systemui/assist/AssistantInvocationEvent;->ASSISTANT_INVOCATION_START_TOUCH_GESTURE:Lcom/android/systemui/assist/AssistantInvocationEvent;

    .line 61
    :goto_1
    if-nez p3, :cond_4

    .line 63
    iget-object p2, p0, Lcom/android/systemui/assist/AssistLogger;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 65
    check-cast p2, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 67
    invoke-virtual {p2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 69
    move-result p2

    .line 72
    iget-object p3, p0, Lcom/android/systemui/assist/AssistLogger;->assistUtils:Lcom/android/internal/app/AssistUtils;

    .line 73
    invoke-virtual {p3, p2}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    .line 75
    move-result-object p3

    .line 78
    :cond_4
    invoke-virtual {p0, p3}, Lcom/android/systemui/assist/AssistLogger;->getAssistantUid(Landroid/content/ComponentName;)I

    .line 79
    move-result v3

    .line 82
    if-eqz p4, :cond_5

    .line 83
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 85
    move-result p2

    .line 88
    goto :goto_2

    .line 89
    :cond_5
    iget-object p2, p0, Lcom/android/systemui/assist/AssistLogger;->phoneStateMonitor:Lcom/android/systemui/assist/PhoneStateMonitor;

    .line 90
    invoke-virtual {p2}, Lcom/android/systemui/assist/PhoneStateMonitor;->getPhoneState()I

    .line 92
    move-result p2

    .line 95
    invoke-static {p2}, Lcom/android/systemui/assist/AssistantInvocationEvent$Companion;->deviceStateFromLegacyDeviceState(I)I

    .line 96
    move-result p2

    .line 99
    :goto_2
    move v6, p2

    .line 100
    const/16 v1, 0x119

    .line 101
    invoke-virtual {p1}, Lcom/android/systemui/assist/AssistantInvocationEvent;->getId()I

    .line 103
    move-result v2

    .line 106
    if-eqz p3, :cond_6

    .line 107
    invoke-virtual {p3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 109
    move-result-object v0

    .line 112
    :cond_6
    if-nez v0, :cond_7

    .line 113
    const-string p1, ""

    .line 115
    move-object v4, p1

    .line 117
    goto :goto_3

    .line 118
    :cond_7
    move-object v4, v0

    .line 119
    :goto_3
    iget-object p1, p0, Lcom/android/systemui/assist/AssistLogger;->currentInstanceId:Lcom/android/internal/logging/InstanceId;

    .line 120
    if-nez p1, :cond_8

    .line 122
    iget-object p1, p0, Lcom/android/systemui/assist/AssistLogger;->instanceIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

    .line 124
    invoke-virtual {p1}, Lcom/android/internal/logging/InstanceIdSequence;->newInstanceId()Lcom/android/internal/logging/InstanceId;

    .line 126
    move-result-object p1

    .line 129
    :cond_8
    iput-object p1, p0, Lcom/android/systemui/assist/AssistLogger;->currentInstanceId:Lcom/android/internal/logging/InstanceId;

    .line 130
    invoke-virtual {p1}, Lcom/android/internal/logging/InstanceId;->getId()I

    .line 132
    move-result v5

    .line 135
    const/4 v7, 0x0

    .line 136
    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;IIZ)V

    .line 137
    return-void

    .line 140
    nop

    .line 141
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 142
.end method

.method public final reportAssistantSessionEvent(Lcom/android/systemui/assist/AssistantSessionEvent;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/assist/AssistLogger;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 2
    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 4
    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 6
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/android/systemui/assist/AssistLogger;->assistUtils:Lcom/android/internal/app/AssistUtils;

    .line 10
    invoke-virtual {v1, v0}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    .line 12
    move-result-object v0

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/systemui/assist/AssistLogger;->getAssistantUid(Landroid/content/ComponentName;)I

    .line 16
    move-result v1

    .line 19
    const/4 v2, 0x0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move-object v0, v2

    .line 28
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/assist/AssistLogger;->currentInstanceId:Lcom/android/internal/logging/InstanceId;

    .line 29
    if-nez v3, :cond_1

    .line 31
    iget-object v3, p0, Lcom/android/systemui/assist/AssistLogger;->instanceIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

    .line 33
    invoke-virtual {v3}, Lcom/android/internal/logging/InstanceIdSequence;->newInstanceId()Lcom/android/internal/logging/InstanceId;

    .line 35
    move-result-object v3

    .line 38
    :cond_1
    iput-object v3, p0, Lcom/android/systemui/assist/AssistLogger;->currentInstanceId:Lcom/android/internal/logging/InstanceId;

    .line 39
    iget-object v4, p0, Lcom/android/systemui/assist/AssistLogger;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 41
    invoke-interface {v4, p1, v1, v0, v3}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    .line 43
    sget-object v0, Lcom/android/systemui/assist/AssistLogger;->SESSION_END_EVENTS:Ljava/util/Set;

    .line 46
    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 48
    move-result p1

    .line 51
    if-eqz p1, :cond_2

    .line 52
    iput-object v2, p0, Lcom/android/systemui/assist/AssistLogger;->currentInstanceId:Lcom/android/internal/logging/InstanceId;

    .line 54
    :cond_2
    return-void
    .line 56
.end method
