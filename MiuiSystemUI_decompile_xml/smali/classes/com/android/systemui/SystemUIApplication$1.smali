.class public final Lcom/android/systemui/SystemUIApplication$1;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/SystemUIApplication;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/SystemUIApplication;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/SystemUIApplication$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/SystemUIApplication$1;->this$0:Lcom/android/systemui/SystemUIApplication;

    .line 4
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/SystemUIApplication$1;->$r8$classId:I

    .line 2
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    goto :goto_2

    .line 8
    :pswitch_0
    iget-object p1, p0, Lcom/android/systemui/SystemUIApplication$1;->this$0:Lcom/android/systemui/SystemUIApplication;

    .line 9
    iget-object p1, p1, Lcom/android/systemui/SystemUIApplication;->mBootCompleteCache:Lcom/android/systemui/BootCompleteCacheImpl;

    .line 11
    invoke-virtual {p1}, Lcom/android/systemui/BootCompleteCacheImpl;->isBootComplete()Z

    .line 13
    move-result p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    goto :goto_1

    .line 19
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/SystemUIApplication$1;->this$0:Lcom/android/systemui/SystemUIApplication;

    .line 20
    invoke-virtual {p1, p0}, Landroid/app/Application;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 22
    iget-object p1, p0, Lcom/android/systemui/SystemUIApplication$1;->this$0:Lcom/android/systemui/SystemUIApplication;

    .line 25
    iget-object p1, p1, Lcom/android/systemui/SystemUIApplication;->mBootCompleteCache:Lcom/android/systemui/BootCompleteCacheImpl;

    .line 27
    invoke-virtual {p1}, Lcom/android/systemui/BootCompleteCacheImpl;->setBootComplete()V

    .line 29
    iget-object p1, p0, Lcom/android/systemui/SystemUIApplication$1;->this$0:Lcom/android/systemui/SystemUIApplication;

    .line 32
    iget-boolean p2, p1, Lcom/android/systemui/SystemUIApplication;->mServicesStarted:Z

    .line 34
    if-eqz p2, :cond_1

    .line 36
    iget-object p1, p1, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/CoreStartable;

    .line 38
    array-length p1, p1

    .line 40
    :goto_0
    if-ge v1, p1, :cond_1

    .line 41
    iget-object p2, p0, Lcom/android/systemui/SystemUIApplication$1;->this$0:Lcom/android/systemui/SystemUIApplication;

    .line 43
    iget-object p2, p2, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/CoreStartable;

    .line 45
    aget-object p2, p2, v1

    .line 47
    invoke-static {p2}, Lcom/android/systemui/SystemUIApplication;->notifyBootCompleted(Lcom/android/systemui/CoreStartable;)V

    .line 49
    add-int/lit8 v1, v1, 0x1

    .line 52
    goto :goto_0

    .line 54
    :cond_1
    :goto_1
    return-void

    .line 55
    :goto_2
    const-string v0, "android.intent.action.LOCALE_CHANGED"

    .line 56
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 58
    move-result-object p2

    .line 61
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    move-result p2

    .line 65
    if-eqz p2, :cond_3

    .line 66
    iget-object p0, p0, Lcom/android/systemui/SystemUIApplication$1;->this$0:Lcom/android/systemui/SystemUIApplication;

    .line 68
    iget-object p0, p0, Lcom/android/systemui/SystemUIApplication;->mBootCompleteCache:Lcom/android/systemui/BootCompleteCacheImpl;

    .line 70
    invoke-virtual {p0}, Lcom/android/systemui/BootCompleteCacheImpl;->isBootComplete()Z

    .line 72
    move-result p0

    .line 75
    if-nez p0, :cond_2

    .line 76
    goto :goto_3

    .line 78
    :cond_2
    new-instance p0, Lcom/android/systemui/SystemUIApplication$2$1;

    .line 79
    invoke-direct {p0, p1}, Lcom/android/systemui/SystemUIApplication$2$1;-><init>(Landroid/content/Context;)V

    .line 81
    new-array p1, v1, [Ljava/lang/Void;

    .line 84
    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 86
    :cond_3
    :goto_3
    return-void

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 90
.end method
