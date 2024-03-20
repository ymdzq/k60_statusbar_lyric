.class public final Lcom/android/keyguard/MiuiBleUnlockHelper$8;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/miui/interfaces/IMiuiTopActivityObserver$TopActivityMayChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/MiuiBleUnlockHelper;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/MiuiBleUnlockHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/MiuiBleUnlockHelper$8;->this$0:Lcom/android/keyguard/MiuiBleUnlockHelper;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onTopActivityMayChanged(Landroid/content/ComponentName;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/MiuiBleUnlockHelper$8;->this$0:Lcom/android/keyguard/MiuiBleUnlockHelper;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const/4 v0, 0x1

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz p1, :cond_0

    .line 9
    const-string v2, "com.celltick.lockscreen"

    .line 11
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 16
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    move p1, v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move p1, v1

    .line 25
    :goto_0
    if-eqz p1, :cond_1

    .line 26
    iput-boolean v0, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mIsMXtelcelActivity:Z

    .line 28
    goto :goto_1

    .line 30
    :cond_1
    iput-boolean v1, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mIsMXtelcelActivity:Z

    .line 31
    :goto_1
    return-void
    .line 33
.end method
