.class public abstract Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NextAlarmController;
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final mAlarmManager:Landroid/app/AlarmManager;

.field public final mChangeCallbacks:Ljava/util/ArrayList;

.field public mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

.field public final mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Landroid/app/AlarmManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/settings/UserTracker;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    .line 10
    new-instance v0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl$1;

    .line 12
    move-object v1, p0

    .line 14
    check-cast v1, Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl;

    .line 15
    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl;)V

    .line 17
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    .line 20
    const-string v1, "NextAlarmController"

    .line 22
    invoke-virtual {p4, v1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 24
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->mAlarmManager:Landroid/app/AlarmManager;

    .line 27
    iput-object p5, p0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 29
    new-instance p2, Landroid/content/IntentFilter;

    .line 31
    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    .line 33
    const-string p4, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    .line 36
    invoke-virtual {p2, p4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 38
    const/4 p4, 0x0

    .line 41
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 42
    invoke-virtual {p3, p0, p2, p4, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)V

    .line 44
    check-cast p5, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 47
    invoke-virtual {p5, v0, p1}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    .line 49
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->updateNextAlarm()V

    .line 52
    return-void
    .line 55
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string p2, "mNextAlarm="

    .line 2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    .line 7
    if-eqz p2, :cond_1

    .line 9
    new-instance p2, Ljava/util/Date;

    .line 11
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    .line 13
    invoke-virtual {v0}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    .line 15
    move-result-wide v0

    .line 18
    invoke-direct {p2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 19
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 22
    const-string p2, "  PendingIntentPkg="

    .line 25
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 27
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    .line 30
    invoke-virtual {p2}, Landroid/app/AlarmManager$AlarmClockInfo;->getShowIntent()Landroid/app/PendingIntent;

    .line 32
    move-result-object p2

    .line 35
    if-eqz p2, :cond_0

    .line 36
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    .line 38
    invoke-virtual {p2}, Landroid/app/AlarmManager$AlarmClockInfo;->getShowIntent()Landroid/app/PendingIntent;

    .line 40
    move-result-object p2

    .line 43
    invoke-virtual {p2}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    .line 44
    move-result-object p2

    .line 47
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 48
    goto :goto_0

    .line 51
    :cond_0
    const-string/jumbo p2, "showIntent=null"

    .line 52
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 55
    goto :goto_0

    .line 58
    :cond_1
    const-string p2, "null"

    .line 59
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 61
    :goto_0
    const-string p2, "Registered Callbacks:"

    .line 64
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 66
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    .line 69
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 71
    move-result-object p0

    .line 74
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    move-result p2

    .line 78
    if-eqz p2, :cond_2

    .line 79
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    move-result-object p2

    .line 84
    check-cast p2, Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;

    .line 85
    const-string v0, "    "

    .line 87
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 92
    move-result-object p2

    .line 95
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 96
    goto :goto_1

    .line 99
    :cond_2
    return-void
    .line 100
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    move-result-object p1

    .line 5
    const-string p2, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    .line 6
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->updateNextAlarm()V

    .line 14
    :cond_0
    return-void
    .line 17
.end method

.method public final removeCallback(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    return-void
    .line 9
.end method

.method public final updateNextAlarm()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->mAlarmManager:Landroid/app/AlarmManager;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 4
    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 6
    invoke-virtual {v1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 8
    move-result v1

    .line 11
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;

    .line 12
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    .line 16
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 20
    move-result v0

    .line 23
    const/4 v1, 0x0

    .line 24
    :goto_0
    if-ge v1, v0, :cond_0

    .line 25
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v2

    .line 32
    check-cast v2, Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;

    .line 33
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    .line 35
    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;->onNextAlarmChanged(Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 37
    add-int/lit8 v1, v1, 0x1

    .line 40
    goto :goto_0

    .line 42
    :cond_0
    return-void
    .line 43
.end method
