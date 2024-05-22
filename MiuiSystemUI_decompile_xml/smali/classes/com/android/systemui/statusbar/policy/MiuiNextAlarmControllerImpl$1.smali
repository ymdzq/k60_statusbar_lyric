.class public final Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl$1;
.super Landroid/database/ContentObserver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl;Landroid/os/Handler;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl;

    .line 4
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    .line 1
    iget p1, p0, Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl$1;->$r8$classId:I

    .line 2
    const-string v0, "next_alarm_clock_formatted"

    .line 4
    packed-switch p1, :pswitch_data_0

    .line 6
    goto :goto_0

    .line 9
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl;

    .line 10
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl;->mContext:Landroid/content/Context;

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 14
    move-result-object p1

    .line 17
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 18
    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 20
    invoke-virtual {v1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 22
    move-result v1

    .line 25
    invoke-static {p1, v0, v1}, Landroid/provider/MiuiSettings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 29
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    move-result p1

    .line 33
    xor-int/lit8 p1, p1, 0x1

    .line 34
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl;->mMiuiAlarmHandler:Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl$MiuiAlarmHandle;

    .line 36
    const v0, 0x186a3

    .line 38
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 41
    move-result-object p1

    .line 44
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 45
    move-result-object p0

    .line 48
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 49
    return-void

    .line 52
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl;

    .line 53
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl;->mContext:Landroid/content/Context;

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 57
    move-result-object p1

    .line 60
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 61
    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 63
    invoke-virtual {v1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 65
    move-result v1

    .line 68
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 72
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 73
    move-result p1

    .line 76
    xor-int/lit8 p1, p1, 0x1

    .line 77
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl;->mMiuiAlarmHandler:Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl$MiuiAlarmHandle;

    .line 79
    const v0, 0x186a4

    .line 81
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 84
    move-result-object p1

    .line 87
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 88
    move-result-object p0

    .line 91
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 92
    return-void

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 96
.end method
