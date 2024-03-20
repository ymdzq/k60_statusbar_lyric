.class public final Lcom/android/systemui/statusbar/policy/HeadsUpManager$1;
.super Landroid/database/ContentObserver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/HeadsUpManager;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$1;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 2
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$1;->val$context:Landroid/content/Context;

    .line 4
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$1;->val$context:Landroid/content/Context;

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    move-result-object p1

    .line 7
    const-string v0, "heads_up_snooze_length_ms"

    .line 8
    const/4 v1, -0x1

    .line 10
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 11
    move-result p1

    .line 14
    if-le p1, v1, :cond_0

    .line 15
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$1;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 17
    iget v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mSnoozeLengthMs:I

    .line 19
    if-eq p1, v0, :cond_0

    .line 21
    iput p1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mSnoozeLengthMs:I

    .line 23
    iget-object p0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mLogger:Lcom/android/systemui/statusbar/policy/HeadsUpManagerLogger;

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 30
    sget-object v1, Lcom/android/systemui/statusbar/policy/HeadsUpManagerLogger$logSnoozeLengthChange$2;->INSTANCE:Lcom/android/systemui/statusbar/policy/HeadsUpManagerLogger$logSnoozeLengthChange$2;

    .line 32
    const-string v2, "HeadsUpManager"

    .line 34
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManagerLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 36
    const/4 v3, 0x0

    .line 38
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 39
    move-result-object v0

    .line 42
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 43
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 46
    :cond_0
    return-void
    .line 49
.end method
