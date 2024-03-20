.class public final Lcom/android/keyguard/negative/MiuiUWBController$mUWBEnableObserver$1;
.super Landroid/database/ContentObserver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/negative/MiuiUWBController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/negative/MiuiUWBController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/negative/MiuiUWBController$mUWBEnableObserver$1;->this$0:Lcom/android/keyguard/negative/MiuiUWBController;

    .line 2
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/negative/MiuiUWBController$mUWBEnableObserver$1;->this$0:Lcom/android/keyguard/negative/MiuiUWBController;

    .line 2
    iget-object p1, p0, Lcom/android/keyguard/negative/MiuiUWBController;->mContext:Landroid/content/Context;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    move-result-object p1

    .line 9
    const-string/jumbo v0, "settings_uwb_lock_screen_entrance_open"

    .line 10
    const/4 v1, 0x0

    .line 13
    invoke-static {p1, v0, v1, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 14
    move-result p1

    .line 17
    const/4 v0, 0x1

    .line 18
    if-ne p1, v0, :cond_0

    .line 19
    move v1, v0

    .line 21
    :cond_0
    iget-boolean p1, p0, Lcom/android/keyguard/negative/MiuiUWBController;->mUWBEnable:Z

    .line 22
    if-eq p1, v1, :cond_1

    .line 24
    iput-boolean v1, p0, Lcom/android/keyguard/negative/MiuiUWBController;->mUWBEnable:Z

    .line 26
    invoke-virtual {p0}, Lcom/android/keyguard/negative/MiuiUWBController;->updateUseUWB()V

    .line 28
    :cond_1
    return-void
    .line 31
.end method
