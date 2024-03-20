.class Lcom/android/settings/autouimode/AutoUIModeBaseFragment$InitAppModeTask;
.super Landroid/os/AsyncTask;
.source "AutoUIModeBaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/autouimode/AutoUIModeBaseFragment;
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
            "Lcom/android/settings/autouimode/AutoUIModeBaseFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/settings/autouimode/AutoUIModeBaseFragment;)V
    .locals 1

    .line 213
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 214
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment$InitAppModeTask;->weakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 210
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/autouimode/AutoUIModeBaseFragment$InitAppModeTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 219
    iget-object p0, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment$InitAppModeTask;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    .line 223
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->getAutoUIController()Lcom/android/settings/special/AutoUIModeGuideController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/special/AutoUIModeGuideController;->getAppList()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->-$$Nest$fputmTotalList(Lcom/android/settings/autouimode/AutoUIModeBaseFragment;Ljava/util/List;)V

    .line 224
    invoke-static {p0}, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->-$$Nest$fgetmTotalList(Lcom/android/settings/autouimode/AutoUIModeBaseFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->-$$Nest$fputmTotalAppCount(Lcom/android/settings/autouimode/AutoUIModeBaseFragment;I)V

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 210
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/autouimode/AutoUIModeBaseFragment$InitAppModeTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    .line 230
    iget-object p0, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment$InitAppModeTask;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;

    if-nez p0, :cond_0

    return-void

    .line 234
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->isSearchMode()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 235
    invoke-static {p0}, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->-$$Nest$mupdateAppList(Lcom/android/settings/autouimode/AutoUIModeBaseFragment;)V

    goto :goto_0

    .line 237
    :cond_1
    invoke-static {p0}, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->-$$Nest$mrefreshInitListUI(Lcom/android/settings/autouimode/AutoUIModeBaseFragment;)V

    :goto_0
    return-void
.end method
