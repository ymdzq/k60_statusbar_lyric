.class public final Lcom/android/systemui/assist/PhoneStateMonitor$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/shared/system/TaskStackChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/assist/PhoneStateMonitor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/assist/PhoneStateMonitor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/assist/PhoneStateMonitor$2;->this$0:Lcom/android/systemui/assist/PhoneStateMonitor;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/assist/PhoneStateMonitor$2;->this$0:Lcom/android/systemui/assist/PhoneStateMonitor;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const/4 v0, 0x0

    .line 7
    if-eqz p1, :cond_1

    .line 8
    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 10
    if-nez v1, :cond_0

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/assist/PhoneStateMonitor;->mDefaultHome:Landroid/content/ComponentName;

    .line 15
    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 17
    move-result v1

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    :goto_0
    move v1, v0

    .line 22
    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/assist/PhoneStateMonitor;->mLauncherShowing:Z

    .line 23
    iput-object p1, p0, Lcom/android/systemui/assist/PhoneStateMonitor;->mTopActivity:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 25
    if-eqz p1, :cond_3

    .line 27
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 29
    if-nez p1, :cond_2

    .line 31
    goto :goto_2

    .line 33
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/assist/PhoneStateMonitor;->mDefaultHome:Landroid/content/ComponentName;

    .line 34
    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result v0

    .line 39
    :cond_3
    :goto_2
    iput-boolean v0, p0, Lcom/android/systemui/assist/PhoneStateMonitor;->mLauncherShowing:Z

    .line 40
    return-void
    .line 42
.end method
