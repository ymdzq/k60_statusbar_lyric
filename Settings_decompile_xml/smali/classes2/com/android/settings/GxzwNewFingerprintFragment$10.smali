.class Lcom/android/settings/GxzwNewFingerprintFragment$10;
.super Landroid/os/AsyncTask;
.source "GxzwNewFingerprintFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/GxzwNewFingerprintFragment;->checkIfShowGxzwGuide()V
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
.field final synthetic this$0:Lcom/android/settings/GxzwNewFingerprintFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/GxzwNewFingerprintFragment;)V
    .locals 0

    .line 728
    iput-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment$10;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    .line 732
    iget-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment$10;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {p1}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmActivity(Lcom/android/settings/GxzwNewFingerprintFragment;)Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_0

    .line 733
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 736
    :cond_0
    iget-object p0, p0, Lcom/android/settings/GxzwNewFingerprintFragment$10;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {p0}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmActivity(Lcom/android/settings/GxzwNewFingerprintFragment;)Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string/jumbo p1, "need_show_gxzw_guide"

    const/4 v0, 0x1

    .line 737
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 728
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/GxzwNewFingerprintFragment$10;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1

    .line 742
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 743
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 744
    iget-object p0, p0, Lcom/android/settings/GxzwNewFingerprintFragment$10;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {p0}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$mshowGxzwGuideDialog(Lcom/android/settings/GxzwNewFingerprintFragment;)V

    goto :goto_0

    .line 746
    :cond_0
    iget-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment$10;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$mshowGxzwTips(Lcom/android/settings/GxzwNewFingerprintFragment;Z)V

    .line 747
    iget-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment$10;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {p1}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmFingerprintHelper(Lcom/android/settings/GxzwNewFingerprintFragment;)Lcom/android/settings/FingerprintHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment$10;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {v0}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmFingerprintAddistener(Lcom/android/settings/GxzwNewFingerprintFragment;)Lcom/android/settings/FingerprintAddListener;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/GxzwNewFingerprintFragment$10;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {p0}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmChallengeToken(Lcom/android/settings/GxzwNewFingerprintFragment;)[B

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/android/settings/FingerprintHelper;->startEnrol(Lcom/android/settings/FingerprintAddListener;[B)V

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 728
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/settings/GxzwNewFingerprintFragment$10;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
