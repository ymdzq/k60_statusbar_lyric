.class Lcom/android/settings/wifi/WifiTipActivity$2;
.super Ljava/lang/Object;
.source "WifiTipActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiTipActivity;->showWifiTipDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiTipActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiTipActivity;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/android/settings/wifi/WifiTipActivity$2;->this$0:Lcom/android/settings/wifi/WifiTipActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 64
    move-object p2, p1

    check-cast p2, Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p2}, Lmiuix/appcompat/app/AlertDialog;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 66
    iget-object p2, p0, Lcom/android/settings/wifi/WifiTipActivity$2;->this$0:Lcom/android/settings/wifi/WifiTipActivity;

    invoke-static {p2}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 67
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiTipActivity$2;->this$0:Lcom/android/settings/wifi/WifiTipActivity;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiTipActivity;->-$$Nest$fgetmDialogType(Lcom/android/settings/wifi/WifiTipActivity;)I

    move-result v0

    invoke-static {v0}, Lcom/android/settings/wifi/WifiTipActivity;->getPreferenceKey(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 69
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 70
    iget-object p0, p0, Lcom/android/settings/wifi/WifiTipActivity$2;->this$0:Lcom/android/settings/wifi/WifiTipActivity;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method
