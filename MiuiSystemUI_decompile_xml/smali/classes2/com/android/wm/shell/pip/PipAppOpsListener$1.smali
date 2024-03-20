.class public final Lcom/android/wm/shell/pip/PipAppOpsListener$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/app/AppOpsManager$OnOpChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/pip/PipAppOpsListener;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/pip/PipAppOpsListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/pip/PipAppOpsListener$1;->this$0:Lcom/android/wm/shell/pip/PipAppOpsListener;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onOpChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipAppOpsListener$1;->this$0:Lcom/android/wm/shell/pip/PipAppOpsListener;

    .line 2
    iget-object p1, p1, Lcom/android/wm/shell/pip/PipAppOpsListener;->mContext:Landroid/content/Context;

    .line 4
    invoke-static {p1}, Lcom/android/wm/shell/pip/PipUtils;->getTopPipActivity(Landroid/content/Context;)Landroid/util/Pair;

    .line 6
    move-result-object p1

    .line 9
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 10
    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipAppOpsListener$1;->this$0:Lcom/android/wm/shell/pip/PipAppOpsListener;

    .line 14
    iget-object v0, v0, Lcom/android/wm/shell/pip/PipAppOpsListener;->mContext:Landroid/content/Context;

    .line 16
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 18
    move-result-object v0

    .line 21
    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 22
    check-cast v1, Ljava/lang/Integer;

    .line 24
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 26
    move-result v1

    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-virtual {v0, p2, v2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    .line 31
    move-result-object v0

    .line 34
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 35
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 37
    check-cast p1, Landroid/content/ComponentName;

    .line 39
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 44
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    move-result p1

    .line 48
    if-eqz p1, :cond_0

    .line 49
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipAppOpsListener$1;->this$0:Lcom/android/wm/shell/pip/PipAppOpsListener;

    .line 51
    iget-object p1, p1, Lcom/android/wm/shell/pip/PipAppOpsListener;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 53
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 55
    const/16 v1, 0x43

    .line 57
    invoke-virtual {p1, v1, v0, p2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    .line 59
    move-result p1

    .line 62
    if-eqz p1, :cond_0

    .line 63
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipAppOpsListener$1;->this$0:Lcom/android/wm/shell/pip/PipAppOpsListener;

    .line 65
    iget-object p1, p1, Lcom/android/wm/shell/pip/PipAppOpsListener;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 67
    new-instance p2, Lcom/android/wm/shell/pip/PipAppOpsListener$1$$ExternalSyntheticLambda0;

    .line 69
    invoke-direct {p2, p0}, Lcom/android/wm/shell/pip/PipAppOpsListener$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip/PipAppOpsListener$1;)V

    .line 71
    check-cast p1, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 74
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    goto :goto_0

    .line 79
    :catch_0
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipAppOpsListener$1;->this$0:Lcom/android/wm/shell/pip/PipAppOpsListener;

    .line 80
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipAppOpsListener;->mAppOpsChangedListener:Lcom/android/wm/shell/pip/PipAppOpsListener$1;

    .line 82
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipAppOpsListener;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 84
    invoke-virtual {p0, p1}, Landroid/app/AppOpsManager;->stopWatchingMode(Landroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 86
    :cond_0
    :goto_0
    return-void
    .line 89
.end method
