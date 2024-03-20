.class final Lcom/android/systemui/power/PowerUI$SkinThermalEventListener;
.super Landroid/os/IThermalEventListener$Stub;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/power/PowerUI;


# direct methods
.method public constructor <init>(Lcom/android/systemui/power/PowerUI;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/power/PowerUI$SkinThermalEventListener;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 2
    invoke-direct {p0}, Landroid/os/IThermalEventListener$Stub;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final notifyThrottling(Landroid/os/Temperature;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/os/Temperature;->getStatus()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x5

    .line 6
    if-lt v0, v1, :cond_1

    .line 7
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI$SkinThermalEventListener;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 9
    iget-object v1, v1, Lcom/android/systemui/power/PowerUI;->mCentralSurfacesOptionalLazy:Ldagger/Lazy;

    .line 11
    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 13
    move-result-object v1

    .line 16
    check-cast v1, Ljava/util/Optional;

    .line 17
    new-instance v2, Lcom/android/systemui/power/PowerUI$SkinThermalEventListener$$ExternalSyntheticLambda0;

    .line 19
    invoke-direct {v2}, Lcom/android/systemui/power/PowerUI$SkinThermalEventListener$$ExternalSyntheticLambda0;-><init>()V

    .line 21
    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    .line 24
    move-result-object v1

    .line 27
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 28
    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 33
    check-cast v1, Ljava/lang/Boolean;

    .line 34
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 36
    move-result v1

    .line 39
    if-nez v1, :cond_3

    .line 40
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI$SkinThermalEventListener;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 42
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    .line 44
    check-cast p0, Lcom/android/systemui/power/PowerNotificationWarnings;

    .line 46
    iget-boolean v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighTempWarning:Z

    .line 48
    if-eqz v1, :cond_0

    .line 50
    goto :goto_0

    .line 52
    :cond_0
    const/4 v1, 0x1

    .line 53
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighTempWarning:Z

    .line 54
    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    .line 56
    const v3, 0x7f130528    # @string/high_temp_notif_message 'Some features limited while phone cools down.\nTap for more info'

    .line 58
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 61
    move-result-object v3

    .line 64
    new-instance v4, Landroid/app/Notification$Builder;

    .line 65
    const-string v5, "ALR"

    .line 67
    invoke-direct {v4, v2, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 69
    const v5, 0x7f080fc6    # @drawable/ic_device_thermostat_24 'res/drawable/ic_device_thermostat_24.xml'

    .line 72
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 75
    move-result-object v4

    .line 78
    const-wide/16 v5, 0x0

    .line 79
    invoke-virtual {v4, v5, v6}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 81
    move-result-object v4

    .line 84
    const/4 v5, 0x0

    .line 85
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 86
    move-result-object v4

    .line 89
    const v6, 0x7f130529    # @string/high_temp_title 'Phone is getting warm'

    .line 90
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 93
    move-result-object v6

    .line 96
    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 97
    move-result-object v4

    .line 100
    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 101
    move-result-object v4

    .line 104
    new-instance v6, Landroid/app/Notification$BigTextStyle;

    .line 105
    invoke-direct {v6}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 107
    invoke-virtual {v6, v3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 110
    move-result-object v3

    .line 113
    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 114
    move-result-object v3

    .line 117
    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 118
    move-result-object v1

    .line 121
    const-string v3, "PNW.clickedTempWarning"

    .line 122
    invoke-virtual {p0, v3}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    .line 124
    move-result-object v3

    .line 127
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 128
    move-result-object v1

    .line 131
    const-string v3, "PNW.dismissedTempWarning"

    .line 132
    invoke-virtual {p0, v3}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    .line 134
    move-result-object v3

    .line 137
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 138
    move-result-object v1

    .line 141
    const v3, 0x1010543    # @android:attr/colorError

    .line 142
    invoke-static {v2, v3, v5}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    .line 145
    move-result v3

    .line 148
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 149
    move-result-object v1

    .line 152
    invoke-static {v2, v1, v5}, Lcom/android/systemui/SystemUIApplication;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;Z)V

    .line 153
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 156
    move-result-object v1

    .line 159
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 160
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    .line 162
    const-string v3, "high_temp"

    .line 164
    const/4 v4, 0x4

    .line 166
    invoke-virtual {p0, v3, v4, v1, v2}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 167
    :goto_0
    const-string p0, "SkinThermalEventListener: notifyThrottling was called , current skin status = "

    .line 170
    const-string v1, ", temperature = "

    .line 172
    invoke-static {p0, v0, v1}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    move-result-object p0

    .line 177
    invoke-virtual {p1}, Landroid/os/Temperature;->getValue()F

    .line 178
    move-result p1

    .line 181
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    move-result-object p0

    .line 188
    const-string p1, "PowerUI"

    .line 189
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    goto :goto_1

    .line 194
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI$SkinThermalEventListener;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 195
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    .line 197
    check-cast p0, Lcom/android/systemui/power/PowerNotificationWarnings;

    .line 199
    iget-boolean p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighTempWarning:Z

    .line 201
    if-nez p1, :cond_2

    .line 203
    goto :goto_1

    .line 205
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissHighTemperatureWarningInternal()V

    .line 206
    :cond_3
    :goto_1
    return-void
    .line 209
.end method
