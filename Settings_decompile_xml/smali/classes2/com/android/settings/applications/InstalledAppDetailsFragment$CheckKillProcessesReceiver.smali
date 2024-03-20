.class Lcom/android/settings/applications/InstalledAppDetailsFragment$CheckKillProcessesReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InstalledAppDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/InstalledAppDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckKillProcessesReceiver"
.end annotation


# instance fields
.field private mFragmentRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/applications/InstalledAppDetailsFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/settings/applications/InstalledAppDetailsFragment;)V
    .locals 1

    .line 1470
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1471
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment$CheckKillProcessesReceiver;->mFragmentRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/applications/InstalledAppDetailsFragment;Lcom/android/settings/applications/InstalledAppDetailsFragment$CheckKillProcessesReceiver-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetailsFragment$CheckKillProcessesReceiver;-><init>(Lcom/android/settings/applications/InstalledAppDetailsFragment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1476
    iget-object p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment$CheckKillProcessesReceiver;->mFragmentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1477
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getResultCode()I

    move-result p1

    .line 1478
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "force stop, result code = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "InstalledAppDetails"

    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    iget-object p0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment$CheckKillProcessesReceiver;->mFragmentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p0, p1}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->-$$Nest$mupdateForceStopButton(Lcom/android/settings/applications/InstalledAppDetailsFragment;Z)V

    :cond_1
    return-void
.end method
