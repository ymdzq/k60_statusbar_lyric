.class public final Lcom/android/wm/shell/pip/PipAppOpsListener;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mAppOpsChangedListener:Lcom/android/wm/shell/pip/PipAppOpsListener$1;

.field public final mAppOpsManager:Landroid/app/AppOpsManager;

.field public final mCallback:Lcom/android/wm/shell/pip/PipAppOpsListener$Callback;

.field public final mContext:Landroid/content/Context;

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/pip/PipAppOpsListener$Callback;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/wm/shell/pip/PipAppOpsListener$1;

    .line 5
    invoke-direct {v0, p0}, Lcom/android/wm/shell/pip/PipAppOpsListener$1;-><init>(Lcom/android/wm/shell/pip/PipAppOpsListener;)V

    .line 7
    iput-object v0, p0, Lcom/android/wm/shell/pip/PipAppOpsListener;->mAppOpsChangedListener:Lcom/android/wm/shell/pip/PipAppOpsListener$1;

    .line 10
    iput-object p1, p0, Lcom/android/wm/shell/pip/PipAppOpsListener;->mContext:Landroid/content/Context;

    .line 12
    iput-object p3, p0, Lcom/android/wm/shell/pip/PipAppOpsListener;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 14
    const-string p3, "appops"

    .line 16
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    move-result-object p1

    .line 21
    check-cast p1, Landroid/app/AppOpsManager;

    .line 22
    iput-object p1, p0, Lcom/android/wm/shell/pip/PipAppOpsListener;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 24
    iput-object p2, p0, Lcom/android/wm/shell/pip/PipAppOpsListener;->mCallback:Lcom/android/wm/shell/pip/PipAppOpsListener$Callback;

    .line 26
    return-void
    .line 28
.end method
