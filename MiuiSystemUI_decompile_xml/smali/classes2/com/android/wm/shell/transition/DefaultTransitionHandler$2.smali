.class public final Lcom/android/wm/shell/transition/DefaultTransitionHandler$2;
.super Landroid/database/ContentObserver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/transition/DefaultTransitionHandler;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/transition/DefaultTransitionHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$2;->this$0:Lcom/android/wm/shell/transition/DefaultTransitionHandler;

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
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$2;->this$0:Lcom/android/wm/shell/transition/DefaultTransitionHandler;

    .line 5
    iget-object p1, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mContext:Landroid/content/Context;

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 9
    move-result-object p1

    .line 12
    const-string v0, "device_provisioned"

    .line 13
    const/4 v1, 0x0

    .line 15
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 16
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    const/4 v1, 0x1

    .line 22
    :cond_0
    iput-boolean v1, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mProvisioned:Z

    .line 23
    return-void
    .line 25
.end method
