.class Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$3;
.super Landroid/os/AsyncTask;
.source "NewFingerprintInternalActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->checkIfShowUserNotice([B)V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

.field final synthetic val$token:[B


# direct methods
.method constructor <init>(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;[B)V
    .locals 0

    .line 356
    iput-object p1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$3;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    iput-object p2, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$3;->val$token:[B

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    .line 360
    iget-object p0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$3;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    iget-object p0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mActivity:Landroid/app/Activity;

    if-nez p0, :cond_0

    .line 361
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 364
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string/jumbo p1, "need_show_user_notice"

    const/4 v0, 0x1

    .line 365
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 356
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1

    .line 370
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 371
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 372
    iget-object p1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$3;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    iget-object p0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$3;->val$token:[B

    invoke-static {p1, p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->-$$Nest$mshowGxzwUserNotice(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;[B)V

    goto :goto_0

    .line 374
    :cond_0
    iget-object p1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$3;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    iget-object v0, p1, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mFingerprintHelper:Lcom/android/settings/FingerprintHelper;

    invoke-static {p1}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->-$$Nest$fgetmFingerprintAddistener(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)Lcom/android/settings/FingerprintAddListener;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$3;->val$token:[B

    invoke-virtual {v0, p1, p0}, Lcom/android/settings/FingerprintHelper;->startEnrol(Lcom/android/settings/FingerprintAddListener;[B)V

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 356
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$3;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
