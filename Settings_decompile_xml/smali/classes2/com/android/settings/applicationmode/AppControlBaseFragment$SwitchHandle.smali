.class Lcom/android/settings/applicationmode/AppControlBaseFragment$SwitchHandle;
.super Landroid/os/Handler;
.source "AppControlBaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applicationmode/AppControlBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SwitchHandle"
.end annotation


# instance fields
.field private mWeakActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/applicationmode/AppControlBaseFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/applicationmode/AppControlBaseFragment;Landroid/app/Activity;)V
    .locals 0

    .line 450
    iput-object p1, p0, Lcom/android/settings/applicationmode/AppControlBaseFragment$SwitchHandle;->this$0:Lcom/android/settings/applicationmode/AppControlBaseFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 451
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/settings/applicationmode/AppControlBaseFragment$SwitchHandle;->mWeakActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 457
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 458
    iget-object v0, p0, Lcom/android/settings/applicationmode/AppControlBaseFragment$SwitchHandle;->mWeakActivity:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 459
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    :goto_0
    if-nez v0, :cond_1

    .line 461
    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const-string p0, "MagicWinAppControlFragment"

    const-string p1, "mActivity == null"

    .line 462
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 465
    :cond_1
    iget-object p0, p0, Lcom/android/settings/applicationmode/AppControlBaseFragment$SwitchHandle;->this$0:Lcom/android/settings/applicationmode/AppControlBaseFragment;

    invoke-static {p0, p1}, Lcom/android/settings/applicationmode/AppControlBaseFragment;->-$$Nest$mdoMsg(Lcom/android/settings/applicationmode/AppControlBaseFragment;Landroid/os/Message;)V

    return-void
.end method
