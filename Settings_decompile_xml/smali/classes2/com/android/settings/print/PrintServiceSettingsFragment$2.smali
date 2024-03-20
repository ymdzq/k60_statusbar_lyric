.class Lcom/android/settings/print/PrintServiceSettingsFragment$2;
.super Ljava/lang/Object;
.source "PrintServiceSettingsFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/print/PrintServiceSettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/print/PrintServiceSettingsFragment;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$2;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 231
    iget-object p1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$2;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-static {p1}, Lcom/android/settings/print/PrintServiceSettingsFragment;->-$$Nest$fgetmPreferenceKey(Lcom/android/settings/print/PrintServiceSettingsFragment;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->-$$Nest$monPreferenceToggled(Lcom/android/settings/print/PrintServiceSettingsFragment;Ljava/lang/String;Z)V

    goto :goto_0

    .line 233
    :cond_0
    iget-object p1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$2;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-static {p1}, Lcom/android/settings/print/PrintServiceSettingsFragment;->-$$Nest$fgetmSwitchBar(Lcom/android/settings/print/PrintServiceSettingsFragment;)Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setCheckedInternal(Z)V

    .line 234
    iget-object p1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$2;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "EXTRA_CHECKED"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 235
    iget-object p1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$2;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-static {p1}, Lcom/android/settings/print/PrintServiceSettingsFragment;->-$$Nest$fgetmPreferenceKey(Lcom/android/settings/print/PrintServiceSettingsFragment;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->-$$Nest$monPreferenceToggled(Lcom/android/settings/print/PrintServiceSettingsFragment;Ljava/lang/String;Z)V

    .line 237
    :goto_0
    iget-object p0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$2;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-static {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->-$$Nest$mupdateEmptyView(Lcom/android/settings/print/PrintServiceSettingsFragment;)V

    return-void
.end method
