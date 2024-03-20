.class Lcom/android/settings/device/MemoryInfoHelper$ReadMemoryInfoTask;
.super Landroid/os/AsyncTask;
.source "MemoryInfoHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/device/MemoryInfoHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReadMemoryInfoTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mAvailableMemorySize:J

.field private mOuterRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/device/MemoryInfoHelper$Callback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/settings/device/MemoryInfoHelper$Callback;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 25
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/device/MemoryInfoHelper$ReadMemoryInfoTask;->mOuterRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 18
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/device/MemoryInfoHelper$ReadMemoryInfoTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .line 30
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object p1

    .line 31
    invoke-static {p1}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/device/MiuiAboutPhoneUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->getAvailableMemorySize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/device/MemoryInfoHelper$ReadMemoryInfoTask;->mAvailableMemorySize:J

    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/device/MemoryInfoHelper$ReadMemoryInfoTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    .line 37
    iget-object p1, p0, Lcom/android/settings/device/MemoryInfoHelper$ReadMemoryInfoTask;->mOuterRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/device/MemoryInfoHelper$Callback;

    if-eqz p1, :cond_0

    .line 39
    iget-wide v0, p0, Lcom/android/settings/device/MemoryInfoHelper$ReadMemoryInfoTask;->mAvailableMemorySize:J

    invoke-interface {p1, v0, v1}, Lcom/android/settings/device/MemoryInfoHelper$Callback;->handleTaskResult(J)V

    :cond_0
    return-void
.end method
