.class Lcom/android/settings/GxzwNewFingerprintFragment$13;
.super Landroid/os/AsyncTask;
.source "GxzwNewFingerprintFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/GxzwNewFingerprintFragment;->updateNeedShowGxzwGuide(Z)V
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
.field final synthetic this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

.field final synthetic val$need:Z


# direct methods
.method constructor <init>(Lcom/android/settings/GxzwNewFingerprintFragment;Z)V
    .locals 0

    .line 796
    iput-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment$13;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    iput-boolean p2, p0, Lcom/android/settings/GxzwNewFingerprintFragment$13;->val$need:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 796
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/GxzwNewFingerprintFragment$13;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 800
    iget-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment$13;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {p1}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmActivity(Lcom/android/settings/GxzwNewFingerprintFragment;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 801
    iget-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment$13;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {p1}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmActivity(Lcom/android/settings/GxzwNewFingerprintFragment;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 802
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string/jumbo v0, "need_show_gxzw_guide"

    .line 803
    iget-boolean p0, p0, Lcom/android/settings/GxzwNewFingerprintFragment$13;->val$need:Z

    invoke-interface {p1, v0, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 804
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
