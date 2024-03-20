.class Lcom/android/settings/deviceinfo/MiuiStorageVolumePreferenceCategory$ReadVolumeTask;
.super Landroid/os/AsyncTask;
.source "MiuiStorageVolumePreferenceCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/MiuiStorageVolumePreferenceCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReadVolumeTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/os/storage/VolumeInfo;",
        "Ljava/lang/Integer;",
        "Landroid/util/Pair<",
        "Ljava/lang/Long;",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mUI:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/deviceinfo/MiuiStorageVolumePreferenceCategory;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method protected varargs doInBackground([Landroid/os/storage/VolumeInfo;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/storage/VolumeInfo;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    .line 274
    aget-object p0, p1, p0

    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object p0

    .line 275
    invoke-virtual {p0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v0

    .line 276
    invoke-virtual {p0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide p0

    .line 277
    new-instance v2, Landroid/util/Pair;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {v2, p0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 263
    check-cast p1, [Landroid/os/storage/VolumeInfo;

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/MiuiStorageVolumePreferenceCategory$ReadVolumeTask;->doInBackground([Landroid/os/storage/VolumeInfo;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Landroid/util/Pair;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiStorageVolumePreferenceCategory$ReadVolumeTask;->mUI:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 283
    iget-object p0, p0, Lcom/android/settings/deviceinfo/MiuiStorageVolumePreferenceCategory$ReadVolumeTask;->mUI:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/deviceinfo/MiuiStorageVolumePreferenceCategory;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/settings/deviceinfo/MiuiStorageVolumePreferenceCategory;->-$$Nest$mupdateApproximate(Lcom/android/settings/deviceinfo/MiuiStorageVolumePreferenceCategory;JJ)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 263
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/MiuiStorageVolumePreferenceCategory$ReadVolumeTask;->onPostExecute(Landroid/util/Pair;)V

    return-void
.end method
