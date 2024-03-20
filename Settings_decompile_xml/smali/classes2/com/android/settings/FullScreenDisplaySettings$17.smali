.class Lcom/android/settings/FullScreenDisplaySettings$17;
.super Ljava/lang/Object;
.source "FullScreenDisplaySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/FullScreenDisplaySettings;->createDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/FullScreenDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/FullScreenDisplaySettings;)V
    .locals 0

    .line 666
    iput-object p1, p0, Lcom/android/settings/FullScreenDisplaySettings$17;->this$0:Lcom/android/settings/FullScreenDisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 669
    iget-object p1, p0, Lcom/android/settings/FullScreenDisplaySettings$17;->this$0:Lcom/android/settings/FullScreenDisplaySettings;

    invoke-static {p1}, Lcom/android/settings/FullScreenDisplaySettings;->-$$Nest$fgetmClickOnDialog(Lcom/android/settings/FullScreenDisplaySettings;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/FullScreenDisplaySettings$17;->this$0:Lcom/android/settings/FullScreenDisplaySettings;

    invoke-static {p1}, Lcom/android/settings/FullScreenDisplaySettings;->-$$Nest$fgetmAlertDialog(Lcom/android/settings/FullScreenDisplaySettings;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 670
    iget-object p1, p0, Lcom/android/settings/FullScreenDisplaySettings$17;->this$0:Lcom/android/settings/FullScreenDisplaySettings;

    invoke-static {p1}, Lcom/android/settings/FullScreenDisplaySettings;->-$$Nest$fgetmAlertDialog(Lcom/android/settings/FullScreenDisplaySettings;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/android/settings/FullScreenDisplaySettings;->-$$Nest$fputmNeedShowDialog(Lcom/android/settings/FullScreenDisplaySettings;Z)V

    .line 671
    iget-object p1, p0, Lcom/android/settings/FullScreenDisplaySettings$17;->this$0:Lcom/android/settings/FullScreenDisplaySettings;

    invoke-static {p1}, Lcom/android/settings/FullScreenDisplaySettings;->-$$Nest$fgetmSharedPreferences(Lcom/android/settings/FullScreenDisplaySettings;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/FullScreenDisplaySettings$17;->this$0:Lcom/android/settings/FullScreenDisplaySettings;

    invoke-static {v0}, Lcom/android/settings/FullScreenDisplaySettings;->-$$Nest$fgetmNeedShowDialog(Lcom/android/settings/FullScreenDisplaySettings;)Z

    move-result v0

    const-string/jumbo v1, "need_show_gesture_line_guide"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 673
    :cond_0
    iget-object p1, p0, Lcom/android/settings/FullScreenDisplaySettings$17;->this$0:Lcom/android/settings/FullScreenDisplaySettings;

    invoke-static {p1}, Lcom/android/settings/FullScreenDisplaySettings;->-$$Nest$fgetmHideGestureLine(Lcom/android/settings/FullScreenDisplaySettings;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/settings/FullScreenDisplaySettings;->-$$Nest$msetHideGestureLine(Lcom/android/settings/FullScreenDisplaySettings;Z)V

    .line 674
    iget-object p0, p0, Lcom/android/settings/FullScreenDisplaySettings$17;->this$0:Lcom/android/settings/FullScreenDisplaySettings;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/FullScreenDisplaySettings;->-$$Nest$fputmAlertDialog(Lcom/android/settings/FullScreenDisplaySettings;Lmiuix/appcompat/app/AlertDialog;)V

    return-void
.end method
