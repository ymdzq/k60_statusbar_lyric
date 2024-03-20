.class Lcom/android/settings/locale/MiuiLocaleSettings$QueryAsyncTask;
.super Landroid/os/AsyncTask;
.source "MiuiLocaleSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/locale/MiuiLocaleSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueryAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lcom/android/settings/locale/LocaleInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mHostFragmentRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/locale/MiuiLocaleSettings;",
            ">;"
        }
    .end annotation
.end field

.field private final mQuery:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/locale/MiuiLocaleSettings;Ljava/lang/String;)V
    .locals 1

    .line 200
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 201
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/locale/MiuiLocaleSettings$QueryAsyncTask;->mHostFragmentRef:Ljava/lang/ref/WeakReference;

    .line 202
    iput-object p2, p0, Lcom/android/settings/locale/MiuiLocaleSettings$QueryAsyncTask;->mQuery:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 195
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/locale/MiuiLocaleSettings$QueryAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/locale/LocaleInfo;",
            ">;"
        }
    .end annotation

    .line 207
    iget-object p1, p0, Lcom/android/settings/locale/MiuiLocaleSettings$QueryAsyncTask;->mHostFragmentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/locale/MiuiLocaleSettings;

    if-eqz p1, :cond_1

    .line 208
    invoke-static {p1}, Lcom/android/settings/locale/MiuiLocaleSettings;->-$$Nest$fgetmQueryAsyncTask(Lcom/android/settings/locale/MiuiLocaleSettings;)Lcom/android/settings/locale/MiuiLocaleSettings$QueryAsyncTask;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/android/settings/locale/MiuiLocaleSettings;->-$$Nest$fgetmQueryAsyncTask(Lcom/android/settings/locale/MiuiLocaleSettings;)Lcom/android/settings/locale/MiuiLocaleSettings$QueryAsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 211
    :cond_0
    invoke-static {p1}, Lcom/android/settings/locale/MiuiLocaleSettings;->-$$Nest$fgetmLocaleSettingsHelper(Lcom/android/settings/locale/MiuiLocaleSettings;)Lcom/android/settings/locale/LocaleSettingsHelper;

    move-result-object v0

    invoke-static {p1}, Lcom/android/settings/locale/MiuiLocaleSettings;->-$$Nest$fgetmQueryAsyncTask(Lcom/android/settings/locale/MiuiLocaleSettings;)Lcom/android/settings/locale/MiuiLocaleSettings$QueryAsyncTask;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/locale/MiuiLocaleSettings$QueryAsyncTask;->mQuery:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p0, v1}, Lcom/android/settings/locale/LocaleSettingsHelper;->queryLocaleInfoItems(Landroid/os/AsyncTask;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 209
    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 195
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/settings/locale/MiuiLocaleSettings$QueryAsyncTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/locale/LocaleInfo;",
            ">;)V"
        }
    .end annotation

    .line 216
    iget-object p0, p0, Lcom/android/settings/locale/MiuiLocaleSettings$QueryAsyncTask;->mHostFragmentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/locale/MiuiLocaleSettings;

    if-nez p0, :cond_0

    return-void

    .line 220
    :cond_0
    invoke-static {p0}, Lcom/android/settings/locale/MiuiLocaleSettings;->-$$Nest$fgetmLocaleAdapter(Lcom/android/settings/locale/MiuiLocaleSettings;)Lcom/android/settings/locale/MiuiLocaleSettings$LocaleAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/locale/MiuiLocaleSettings$LocaleAdapter;->setData(Ljava/util/List;)V

    .line 221
    invoke-static {p0}, Lcom/android/settings/locale/MiuiLocaleSettings;->-$$Nest$fgetmLocaleAdapter(Lcom/android/settings/locale/MiuiLocaleSettings;)Lcom/android/settings/locale/MiuiLocaleSettings$LocaleAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 222
    invoke-static {p0}, Lcom/android/settings/locale/MiuiLocaleSettings;->-$$Nest$fgetmLocaleList(Lcom/android/settings/locale/MiuiLocaleSettings;)Landroid/widget/ListView;

    move-result-object p1

    invoke-static {p0}, Lcom/android/settings/locale/MiuiLocaleSettings;->-$$Nest$fgetmSearchViewEmpty(Lcom/android/settings/locale/MiuiLocaleSettings;)Landroid/widget/LinearLayout;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    return-void
.end method
