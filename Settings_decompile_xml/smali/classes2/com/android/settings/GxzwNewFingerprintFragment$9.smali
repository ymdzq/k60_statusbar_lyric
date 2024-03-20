.class Lcom/android/settings/GxzwNewFingerprintFragment$9;
.super Ljava/lang/Object;
.source "GxzwNewFingerprintFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/GxzwNewFingerprintFragment;->showGxzwUserNotice()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/GxzwNewFingerprintFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/GxzwNewFingerprintFragment;)V
    .locals 0

    .line 690
    iput-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment$9;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 694
    iget-object p2, p0, Lcom/android/settings/GxzwNewFingerprintFragment$9;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {p2}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmActivity(Lcom/android/settings/GxzwNewFingerprintFragment;)Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 695
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string/jumbo v0, "need_show_user_notice"

    const/4 v1, 0x0

    .line 696
    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 697
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 698
    iget-object p2, p0, Lcom/android/settings/GxzwNewFingerprintFragment$9;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {p2}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$mcheckIfShowGxzwGuide(Lcom/android/settings/GxzwNewFingerprintFragment;)V

    .line 699
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 700
    iget-object p0, p0, Lcom/android/settings/GxzwNewFingerprintFragment$9;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fputmCurrentShowingDialog(Lcom/android/settings/GxzwNewFingerprintFragment;Lmiuix/appcompat/app/AlertDialog;)V

    return-void
.end method
