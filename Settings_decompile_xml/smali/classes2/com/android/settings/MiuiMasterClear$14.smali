.class Lcom/android/settings/MiuiMasterClear$14;
.super Landroid/os/AsyncTask;
.source "MiuiMasterClear.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MiuiMasterClear;->wipeFrpBlockDataAndDoMasterClear(Landroid/app/Activity;Lcom/android/settings/MiuiMasterClear$WipeCallback;)V
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
.field mOldOrientation:I

.field mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

.field final synthetic this$0:Lcom/android/settings/MiuiMasterClear;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$callback:Lcom/android/settings/MiuiMasterClear$WipeCallback;

.field final synthetic val$pdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiMasterClear;Landroid/service/persistentdata/PersistentDataBlockManager;Landroid/app/Activity;Lcom/android/settings/MiuiMasterClear$WipeCallback;)V
    .locals 0

    .line 951
    iput-object p1, p0, Lcom/android/settings/MiuiMasterClear$14;->this$0:Lcom/android/settings/MiuiMasterClear;

    iput-object p2, p0, Lcom/android/settings/MiuiMasterClear$14;->val$pdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;

    iput-object p3, p0, Lcom/android/settings/MiuiMasterClear$14;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/android/settings/MiuiMasterClear$14;->val$callback:Lcom/android/settings/MiuiMasterClear$WipeCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 951
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiMasterClear$14;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 957
    iget-object p0, p0, Lcom/android/settings/MiuiMasterClear$14;->val$pdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;

    invoke-virtual {p0}, Landroid/service/persistentdata/PersistentDataBlockManager;->wipe()V

    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 951
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiMasterClear$14;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .line 963
    iget-object p1, p0, Lcom/android/settings/MiuiMasterClear$14;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->hide()V

    .line 964
    iget-object p1, p0, Lcom/android/settings/MiuiMasterClear$14;->val$activity:Landroid/app/Activity;

    if-eqz p1, :cond_1

    .line 965
    iget v0, p0, Lcom/android/settings/MiuiMasterClear$14;->mOldOrientation:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 966
    iget-object p1, p0, Lcom/android/settings/MiuiMasterClear$14;->val$callback:Lcom/android/settings/MiuiMasterClear$WipeCallback;

    if-eqz p1, :cond_0

    .line 967
    invoke-interface {p1}, Lcom/android/settings/MiuiMasterClear$WipeCallback;->onWipeFinished()V

    goto :goto_0

    .line 969
    :cond_0
    iget-object p0, p0, Lcom/android/settings/MiuiMasterClear$14;->this$0:Lcom/android/settings/MiuiMasterClear;

    invoke-static {p0}, Lcom/android/settings/MiuiMasterClear;->-$$Nest$mdoMasterClear(Lcom/android/settings/MiuiMasterClear;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 976
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear$14;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/settings/MiuiMasterClear;->-$$Nest$smgetProgressDialog(Landroid/app/Activity;)Lmiuix/appcompat/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiMasterClear$14;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    .line 977
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 980
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear$14;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/android/settings/MiuiMasterClear$14;->mOldOrientation:I

    .line 981
    iget-object p0, p0, Lcom/android/settings/MiuiMasterClear$14;->val$activity:Landroid/app/Activity;

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method
