.class Lcom/android/settings/applicationmode/AppControlBaseFragment$InitAppModeTask;
.super Landroid/os/AsyncTask;
.source "AppControlBaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applicationmode/AppControlBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InitAppModeTask"
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
.field weakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/applicationmode/AppControlBaseFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/settings/applicationmode/AppControlBaseFragment;)V
    .locals 1

    .line 238
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 239
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/applicationmode/AppControlBaseFragment$InitAppModeTask;->weakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 235
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/applicationmode/AppControlBaseFragment$InitAppModeTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 244
    iget-object p0, p0, Lcom/android/settings/applicationmode/AppControlBaseFragment$InitAppModeTask;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/applicationmode/AppControlBaseFragment;

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    .line 248
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applicationmode/AppControlBaseFragment;->getAppController()Lcom/android/settings/applicationmode/IAppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/applicationmode/IAppController;->getAppList()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/applicationmode/AppControlBaseFragment;->-$$Nest$fputmTotalList(Lcom/android/settings/applicationmode/AppControlBaseFragment;Ljava/util/List;)V

    .line 249
    invoke-static {p0}, Lcom/android/settings/applicationmode/AppControlBaseFragment;->-$$Nest$fgetmTotalList(Lcom/android/settings/applicationmode/AppControlBaseFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/settings/applicationmode/AppControlBaseFragment;->-$$Nest$fputmTotalAppCount(Lcom/android/settings/applicationmode/AppControlBaseFragment;I)V

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 235
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/applicationmode/AppControlBaseFragment$InitAppModeTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    .line 255
    iget-object p0, p0, Lcom/android/settings/applicationmode/AppControlBaseFragment$InitAppModeTask;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/applicationmode/AppControlBaseFragment;

    if-eqz p0, :cond_2

    .line 256
    invoke-static {p0}, Lcom/android/settings/applicationmode/AppControlBaseFragment;->access$000(Lcom/android/settings/applicationmode/AppControlBaseFragment;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 259
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applicationmode/AppControlBaseFragment;->isSearchMode()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 260
    invoke-static {p0}, Lcom/android/settings/applicationmode/AppControlBaseFragment;->-$$Nest$mupdateAppList(Lcom/android/settings/applicationmode/AppControlBaseFragment;)V

    goto :goto_0

    .line 262
    :cond_1
    invoke-static {p0}, Lcom/android/settings/applicationmode/AppControlBaseFragment;->-$$Nest$mrefreshInitListUI(Lcom/android/settings/applicationmode/AppControlBaseFragment;)V

    :cond_2
    :goto_0
    return-void
.end method
