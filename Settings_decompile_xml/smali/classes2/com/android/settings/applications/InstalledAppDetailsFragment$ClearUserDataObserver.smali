.class Lcom/android/settings/applications/InstalledAppDetailsFragment$ClearUserDataObserver;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "InstalledAppDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/InstalledAppDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClearUserDataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/InstalledAppDetailsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/InstalledAppDetailsFragment;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment$ClearUserDataObserver;->this$0:Lcom/android/settings/applications/InstalledAppDetailsFragment;

    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 1

    .line 233
    iget-object p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment$ClearUserDataObserver;->this$0:Lcom/android/settings/applications/InstalledAppDetailsFragment;

    invoke-static {p1}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->-$$Nest$fgetmHandler(Lcom/android/settings/applications/InstalledAppDetailsFragment;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 234
    :goto_0
    iput v0, p1, Landroid/os/Message;->arg1:I

    .line 235
    iget-object p0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment$ClearUserDataObserver;->this$0:Lcom/android/settings/applications/InstalledAppDetailsFragment;

    invoke-static {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->-$$Nest$fgetmHandler(Lcom/android/settings/applications/InstalledAppDetailsFragment;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
