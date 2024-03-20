.class Lcom/android/settings/view/NavigationBarGuideView$4;
.super Ljava/lang/Object;
.source "NavigationBarGuideView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/view/NavigationBarGuideView;->createDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/view/NavigationBarGuideView;


# direct methods
.method constructor <init>(Lcom/android/settings/view/NavigationBarGuideView;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/android/settings/view/NavigationBarGuideView$4;->this$0:Lcom/android/settings/view/NavigationBarGuideView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .line 197
    iget-object p1, p0, Lcom/android/settings/view/NavigationBarGuideView$4;->this$0:Lcom/android/settings/view/NavigationBarGuideView;

    invoke-static {p1}, Lcom/android/settings/view/NavigationBarGuideView;->-$$Nest$fgetmClickOnDialog(Lcom/android/settings/view/NavigationBarGuideView;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/view/NavigationBarGuideView$4;->this$0:Lcom/android/settings/view/NavigationBarGuideView;

    invoke-static {p1}, Lcom/android/settings/view/NavigationBarGuideView;->-$$Nest$fgetmAlertDialog(Lcom/android/settings/view/NavigationBarGuideView;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 198
    iget-object p1, p0, Lcom/android/settings/view/NavigationBarGuideView$4;->this$0:Lcom/android/settings/view/NavigationBarGuideView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/settings/view/NavigationBarGuideView;->setScreenButtonHidden(Z)V

    .line 199
    iget-object p1, p0, Lcom/android/settings/view/NavigationBarGuideView$4;->this$0:Lcom/android/settings/view/NavigationBarGuideView;

    invoke-static {p1}, Lcom/android/settings/view/NavigationBarGuideView;->-$$Nest$fgetmFullScreenRadio(Lcom/android/settings/view/NavigationBarGuideView;)Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 200
    iget-object p1, p0, Lcom/android/settings/view/NavigationBarGuideView$4;->this$0:Lcom/android/settings/view/NavigationBarGuideView;

    invoke-static {p1}, Lcom/android/settings/view/NavigationBarGuideView;->-$$Nest$fgetmVirtualKeyRadio(Lcom/android/settings/view/NavigationBarGuideView;)Landroid/widget/RadioButton;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 201
    iget-object p1, p0, Lcom/android/settings/view/NavigationBarGuideView$4;->this$0:Lcom/android/settings/view/NavigationBarGuideView;

    invoke-static {p1}, Lcom/android/settings/view/NavigationBarGuideView;->access$100(Lcom/android/settings/view/NavigationBarGuideView;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 202
    iget-object v1, p0, Lcom/android/settings/view/NavigationBarGuideView$4;->this$0:Lcom/android/settings/view/NavigationBarGuideView;

    invoke-static {v1}, Lcom/android/settings/view/NavigationBarGuideView;->-$$Nest$fgetmAlertDialog(Lcom/android/settings/view/NavigationBarGuideView;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Lmiuix/appcompat/app/AlertDialog;->isChecked()Z

    move-result v2

    xor-int/2addr v0, v2

    invoke-static {v1, v0}, Lcom/android/settings/view/NavigationBarGuideView;->-$$Nest$fputmNeedShowDialog(Lcom/android/settings/view/NavigationBarGuideView;Z)V

    .line 203
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/view/NavigationBarGuideView$4;->this$0:Lcom/android/settings/view/NavigationBarGuideView;

    invoke-static {v0}, Lcom/android/settings/view/NavigationBarGuideView;->-$$Nest$fgetmNeedShowDialog(Lcom/android/settings/view/NavigationBarGuideView;)Z

    move-result v0

    const-string/jumbo v1, "need_show_navigation_guide"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 205
    :cond_0
    iget-object p0, p0, Lcom/android/settings/view/NavigationBarGuideView$4;->this$0:Lcom/android/settings/view/NavigationBarGuideView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/view/NavigationBarGuideView;->-$$Nest$fputmAlertDialog(Lcom/android/settings/view/NavigationBarGuideView;Lmiuix/appcompat/app/AlertDialog;)V

    return-void
.end method
