.class public final Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public mCurrentLevel:I

.field public mIncrement:I

.field public final mSavedLevel:I

.field public final mSavedPluggedIn:Z

.field public final mTestIntent:Landroid/content/Intent;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->val$context:Landroid/content/Context;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 p2, 0x0

    .line 9
    iput p2, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->mCurrentLevel:I

    .line 10
    const/4 p2, 0x1

    .line 12
    iput p2, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->mIncrement:I

    .line 13
    iget p2, p1, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mLevel:I

    .line 15
    iput p2, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->mSavedLevel:I

    .line 17
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mPluggedIn:Z

    .line 19
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->mSavedPluggedIn:Z

    .line 21
    new-instance p1, Landroid/content/Intent;

    .line 23
    const-string p2, "android.intent.action.BATTERY_CHANGED"

    .line 25
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->mTestIntent:Landroid/content/Intent;

    .line 30
    return-void
    .line 32
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->mCurrentLevel:I

    .line 2
    const-string/jumbo v1, "testmode"

    .line 4
    const-string v2, "plugged"

    .line 7
    const-string v3, "level"

    .line 9
    const/4 v4, 0x0

    .line 11
    if-gez v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    .line 14
    iput-boolean v4, v0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mTestMode:Z

    .line 16
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->mTestIntent:Landroid/content/Intent;

    .line 18
    iget v5, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->mSavedLevel:I

    .line 20
    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 22
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->mTestIntent:Landroid/content/Intent;

    .line 25
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->mSavedPluggedIn:Z

    .line 27
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 29
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->mTestIntent:Landroid/content/Intent;

    .line 32
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 34
    goto :goto_0

    .line 37
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->mTestIntent:Landroid/content/Intent;

    .line 38
    invoke-virtual {v5, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 40
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->mTestIntent:Landroid/content/Intent;

    .line 43
    iget v3, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->mIncrement:I

    .line 45
    const/4 v5, 0x1

    .line 47
    if-lez v3, :cond_1

    .line 48
    move v4, v5

    .line 50
    :cond_1
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 51
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->mTestIntent:Landroid/content/Intent;

    .line 54
    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 56
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->val$context:Landroid/content/Context;

    .line 59
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->mTestIntent:Landroid/content/Intent;

    .line 61
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    .line 66
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mTestMode:Z

    .line 68
    if-nez v1, :cond_2

    .line 70
    return-void

    .line 72
    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->mCurrentLevel:I

    .line 73
    iget v2, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->mIncrement:I

    .line 75
    add-int/2addr v1, v2

    .line 77
    iput v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->mCurrentLevel:I

    .line 78
    const/16 v3, 0x64

    .line 80
    if-ne v1, v3, :cond_3

    .line 82
    mul-int/lit8 v2, v2, -0x1

    .line 84
    iput v2, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->mIncrement:I

    .line 86
    :cond_3
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mMainHandler:Landroid/os/Handler;

    .line 88
    const-wide/16 v1, 0xc8

    .line 90
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 92
    return-void
    .line 95
.end method
