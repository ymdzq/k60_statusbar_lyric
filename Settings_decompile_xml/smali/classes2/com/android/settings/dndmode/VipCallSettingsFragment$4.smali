.class Lcom/android/settings/dndmode/VipCallSettingsFragment$4;
.super Landroid/os/AsyncTask;
.source "VipCallSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dndmode/VipCallSettingsFragment;->deleteVipList(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic this$0:Lcom/android/settings/dndmode/VipCallSettingsFragment;

.field final synthetic val$deleteId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/dndmode/VipCallSettingsFragment;Ljava/lang/String;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/android/settings/dndmode/VipCallSettingsFragment$4;->this$0:Lcom/android/settings/dndmode/VipCallSettingsFragment;

    iput-object p2, p0, Lcom/android/settings/dndmode/VipCallSettingsFragment$4;->val$deleteId:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 246
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/dndmode/VipCallSettingsFragment$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6

    .line 252
    iget-object p1, p0, Lcom/android/settings/dndmode/VipCallSettingsFragment$4;->this$0:Lcom/android/settings/dndmode/VipCallSettingsFragment;

    invoke-static {p1}, Lcom/android/settings/dndmode/VipCallSettingsFragment;->-$$Nest$fgetmContext(Lcom/android/settings/dndmode/VipCallSettingsFragment;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " _id = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/dndmode/VipCallSettingsFragment$4;->val$deleteId:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const-string/jumbo v0, "sync_dirty"

    if-eqz p1, :cond_0

    .line 255
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 259
    invoke-static {p1}, Lmiuix/core/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 260
    throw p0

    :cond_0
    const/4 v1, -0x1

    .line 259
    :goto_0
    invoke-static {p1}, Lmiuix/core/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    const/4 p1, 0x3

    const/4 v2, 0x0

    if-eq v1, p1, :cond_2

    const/4 p1, 0x2

    if-ne v1, p1, :cond_1

    goto :goto_1

    .line 272
    :cond_1
    iget-object p1, p0, Lcom/android/settings/dndmode/VipCallSettingsFragment$4;->this$0:Lcom/android/settings/dndmode/VipCallSettingsFragment;

    invoke-static {p1}, Lcom/android/settings/dndmode/VipCallSettingsFragment;->-$$Nest$fgetmContext(Lcom/android/settings/dndmode/VipCallSettingsFragment;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    iget-object p0, p0, Lcom/android/settings/dndmode/VipCallSettingsFragment$4;->val$deleteId:Ljava/lang/String;

    .line 273
    invoke-static {v0, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 272
    invoke-virtual {p1, p0, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2

    .line 265
    :cond_2
    :goto_1
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x1

    .line 266
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 267
    iget-object v0, p0, Lcom/android/settings/dndmode/VipCallSettingsFragment$4;->this$0:Lcom/android/settings/dndmode/VipCallSettingsFragment;

    invoke-static {v0}, Lcom/android/settings/dndmode/VipCallSettingsFragment;->-$$Nest$fgetmContext(Lcom/android/settings/dndmode/VipCallSettingsFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    iget-object p0, p0, Lcom/android/settings/dndmode/VipCallSettingsFragment$4;->val$deleteId:Ljava/lang/String;

    .line 268
    invoke-static {v1, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 267
    invoke-virtual {v0, p0, p1, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_2
    return-object v2
.end method
