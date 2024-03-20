.class Lcom/android/settings/locale/MiuiLocaleSettings$InstallAppTask;
.super Ljava/lang/Object;
.source "MiuiLocaleSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/locale/MiuiLocaleSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstallAppTask"
.end annotation


# instance fields
.field private mHostFragmentRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/locale/MiuiLocaleSettings;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/settings/locale/MiuiLocaleSettings;)V
    .locals 1

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/locale/MiuiLocaleSettings$InstallAppTask;->mHostFragmentRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 248
    invoke-static {}, Lmiui/os/MiuiInit;->installPreinstallApp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    iget-object p0, p0, Lcom/android/settings/locale/MiuiLocaleSettings$InstallAppTask;->mHostFragmentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/locale/MiuiLocaleSettings;

    if-eqz p0, :cond_1

    .line 250
    invoke-static {p0}, Lcom/android/settings/locale/MiuiLocaleSettings;->-$$Nest$fgetmHandler(Lcom/android/settings/locale/MiuiLocaleSettings;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 254
    :cond_0
    invoke-static {p0}, Lcom/android/settings/locale/MiuiLocaleSettings;->-$$Nest$fgetmHandler(Lcom/android/settings/locale/MiuiLocaleSettings;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x2

    const-wide/16 v1, 0x9c4

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    nop

    :cond_1
    :goto_0
    return-void
.end method
