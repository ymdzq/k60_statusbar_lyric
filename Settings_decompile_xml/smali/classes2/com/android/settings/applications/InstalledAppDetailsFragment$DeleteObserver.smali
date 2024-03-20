.class Lcom/android/settings/applications/InstalledAppDetailsFragment$DeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "InstalledAppDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/InstalledAppDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/InstalledAppDetailsFragment;


# direct methods
.method private constructor <init>(Lcom/android/settings/applications/InstalledAppDetailsFragment;)V
    .locals 0

    .line 784
    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment$DeleteObserver;->this$0:Lcom/android/settings/applications/InstalledAppDetailsFragment;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/applications/InstalledAppDetailsFragment;Lcom/android/settings/applications/InstalledAppDetailsFragment$DeleteObserver-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetailsFragment$DeleteObserver;-><init>(Lcom/android/settings/applications/InstalledAppDetailsFragment;)V

    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .locals 2

    .line 787
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "uninstall success, package = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", return code  = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "InstalledAppDetails"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    iget-object p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment$DeleteObserver;->this$0:Lcom/android/settings/applications/InstalledAppDetailsFragment;

    invoke-static {p1}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->-$$Nest$fgetmHandler(Lcom/android/settings/applications/InstalledAppDetailsFragment;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 789
    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 790
    iget-object p0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment$DeleteObserver;->this$0:Lcom/android/settings/applications/InstalledAppDetailsFragment;

    invoke-static {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->-$$Nest$fgetmHandler(Lcom/android/settings/applications/InstalledAppDetailsFragment;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
