.class public final synthetic Lcom/android/systemui/assist/PhoneStateMonitor$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/assist/PhoneStateMonitor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/assist/PhoneStateMonitor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/assist/PhoneStateMonitor$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/assist/PhoneStateMonitor;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/assist/PhoneStateMonitor$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/assist/PhoneStateMonitor;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/assist/PhoneStateMonitor;->mTopActivity:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 4
    if-eqz v0, :cond_1

    .line 6
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 8
    if-nez v0, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/assist/PhoneStateMonitor;->mDefaultHome:Landroid/content/ComponentName;

    .line 13
    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 15
    move-result v0

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 20
    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/assist/PhoneStateMonitor;->mLauncherShowing:Z

    .line 21
    return-void
    .line 23
.end method
