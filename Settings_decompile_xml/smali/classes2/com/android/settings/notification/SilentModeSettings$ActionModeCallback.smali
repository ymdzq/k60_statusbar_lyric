.class Lcom/android/settings/notification/SilentModeSettings$ActionModeCallback;
.super Ljava/lang/Object;
.source "SilentModeSettings.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/SilentModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionModeCallback"
.end annotation


# instance fields
.field private ruleId:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/notification/SilentModeSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/SilentModeSettings;Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/android/settings/notification/SilentModeSettings$ActionModeCallback;->this$0:Lcom/android/settings/notification/SilentModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p2, p0, Lcom/android/settings/notification/SilentModeSettings$ActionModeCallback;->ruleId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 3

    .line 90
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    const/16 v0, 0x64

    const/4 v1, 0x1

    if-eq p2, v0, :cond_1

    packed-switch p2, :pswitch_data_0

    goto :goto_1

    .line 95
    :pswitch_0
    iget-object p2, p0, Lcom/android/settings/notification/SilentModeSettings$ActionModeCallback;->this$0:Lcom/android/settings/notification/SilentModeSettings;

    invoke-static {p2}, Lcom/android/settings/notification/SilentModeSettings;->-$$Nest$fgetmSelectAll(Lcom/android/settings/notification/SilentModeSettings;)Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-static {p2, v0}, Lcom/android/settings/notification/SilentModeSettings;->-$$Nest$fputmSelectAll(Lcom/android/settings/notification/SilentModeSettings;Z)V

    .line 97
    check-cast p1, Lmiuix/view/EditActionMode;

    .line 98
    iget-object p2, p0, Lcom/android/settings/notification/SilentModeSettings$ActionModeCallback;->this$0:Lcom/android/settings/notification/SilentModeSettings;

    invoke-static {p2}, Lcom/android/settings/notification/SilentModeSettings;->-$$Nest$fgetmSelectAll(Lcom/android/settings/notification/SilentModeSettings;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/settings/notification/SilentModeSettings$ActionModeCallback;->this$0:Lcom/android/settings/notification/SilentModeSettings;

    invoke-static {p2}, Lcom/android/settings/notification/SilentModeSettings;->-$$Nest$mgetDeselectAllIcon(Lcom/android/settings/notification/SilentModeSettings;)I

    move-result p2

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/settings/notification/SilentModeSettings$ActionModeCallback;->this$0:Lcom/android/settings/notification/SilentModeSettings;

    invoke-static {p2}, Lcom/android/settings/notification/SilentModeSettings;->-$$Nest$mgetSelectAllIcon(Lcom/android/settings/notification/SilentModeSettings;)I

    move-result p2

    :goto_0
    const v0, 0x102001a    # @android:id/button2

    const/4 v2, 0x0

    .line 97
    invoke-interface {p1, v0, v2, p2}, Lmiuix/view/EditActionMode;->setButton(ILjava/lang/CharSequence;I)V

    .line 99
    iget-object p1, p0, Lcom/android/settings/notification/SilentModeSettings$ActionModeCallback;->this$0:Lcom/android/settings/notification/SilentModeSettings;

    invoke-static {p1}, Lcom/android/settings/notification/SilentModeSettings;->-$$Nest$fgetmAutomationRuleSettings(Lcom/android/settings/notification/SilentModeSettings;)Lcom/android/settings/notification/SilentModeAutomationSettings;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/notification/SilentModeSettings$ActionModeCallback;->this$0:Lcom/android/settings/notification/SilentModeSettings;

    invoke-static {p0}, Lcom/android/settings/notification/SilentModeSettings;->-$$Nest$fgetmSelectAll(Lcom/android/settings/notification/SilentModeSettings;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/notification/SilentModeAutomationSettings;->setSelectedAll(Z)V

    goto :goto_1

    .line 92
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_1

    .line 102
    :cond_1
    iget-object p0, p0, Lcom/android/settings/notification/SilentModeSettings$ActionModeCallback;->this$0:Lcom/android/settings/notification/SilentModeSettings;

    invoke-static {p0}, Lcom/android/settings/notification/SilentModeSettings;->-$$Nest$fgetmAutomationRuleSettings(Lcom/android/settings/notification/SilentModeSettings;)Lcom/android/settings/notification/SilentModeAutomationSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/notification/SilentModeAutomationSettings;->commitRules()Z

    .line 103
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    :goto_1
    return v1

    :pswitch_data_0
    .packed-switch 0x1020019
        :pswitch_1    # @android:id/button1
        :pswitch_0    # @android:id/button2
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/android/settings/notification/SilentModeSettings$ActionModeCallback;->this$0:Lcom/android/settings/notification/SilentModeSettings;

    invoke-static {v0, p1}, Lcom/android/settings/notification/SilentModeSettings;->-$$Nest$fputmEditActionMode(Lcom/android/settings/notification/SilentModeSettings;Landroid/view/ActionMode;)V

    const/16 v0, 0x64

    .line 70
    sget v1, Lcom/android/settings/R$string;->delete_rule:I

    const/4 v2, 0x0

    invoke-interface {p2, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p2

    sget v0, Lcom/android/settings/R$drawable;->action_button_delete:I

    .line 71
    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object p2

    const/4 v0, 0x1

    .line 72
    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 73
    check-cast p1, Lmiuix/view/EditActionMode;

    .line 74
    iget-object p2, p0, Lcom/android/settings/notification/SilentModeSettings$ActionModeCallback;->this$0:Lcom/android/settings/notification/SilentModeSettings;

    invoke-static {p2}, Lcom/android/settings/notification/SilentModeSettings;->-$$Nest$fgetmNightModeUI(Lcom/android/settings/notification/SilentModeSettings;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget p2, Lcom/android/settings/R$drawable;->miuix_appcompat_action_mode_title_button_cancel_dark:I

    goto :goto_0

    .line 75
    :cond_0
    sget p2, Lcom/android/settings/R$drawable;->miuix_appcompat_action_mode_title_button_cancel_light:I

    :goto_0
    const v1, 0x1020019    # @android:id/button1

    const/4 v2, 0x0

    .line 73
    invoke-interface {p1, v1, v2, p2}, Lmiuix/view/EditActionMode;->setButton(ILjava/lang/CharSequence;I)V

    .line 76
    iget-object p2, p0, Lcom/android/settings/notification/SilentModeSettings$ActionModeCallback;->this$0:Lcom/android/settings/notification/SilentModeSettings;

    invoke-static {p2}, Lcom/android/settings/notification/SilentModeSettings;->-$$Nest$mgetSelectAllIcon(Lcom/android/settings/notification/SilentModeSettings;)I

    move-result p2

    const v1, 0x102001a    # @android:id/button2

    invoke-interface {p1, v1, v2, p2}, Lmiuix/view/EditActionMode;->setButton(ILjava/lang/CharSequence;I)V

    .line 77
    iget-object p1, p0, Lcom/android/settings/notification/SilentModeSettings$ActionModeCallback;->this$0:Lcom/android/settings/notification/SilentModeSettings;

    invoke-static {p1}, Lcom/android/settings/notification/SilentModeSettings;->-$$Nest$fgetmAutomationRuleSettings(Lcom/android/settings/notification/SilentModeSettings;)Lcom/android/settings/notification/SilentModeAutomationSettings;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/notification/SilentModeSettings$ActionModeCallback;->ruleId:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lcom/android/settings/notification/SilentModeAutomationSettings;->setEditModeAll(ZLjava/lang/String;)V

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2

    .line 113
    iget-object p1, p0, Lcom/android/settings/notification/SilentModeSettings$ActionModeCallback;->this$0:Lcom/android/settings/notification/SilentModeSettings;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/notification/SilentModeSettings;->-$$Nest$fputmEditActionMode(Lcom/android/settings/notification/SilentModeSettings;Landroid/view/ActionMode;)V

    .line 114
    iget-object p1, p0, Lcom/android/settings/notification/SilentModeSettings$ActionModeCallback;->this$0:Lcom/android/settings/notification/SilentModeSettings;

    invoke-static {p1}, Lcom/android/settings/notification/SilentModeSettings;->-$$Nest$fgetmAutomationRuleSettings(Lcom/android/settings/notification/SilentModeSettings;)Lcom/android/settings/notification/SilentModeAutomationSettings;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/settings/notification/SilentModeAutomationSettings;->setSelectedAll(Z)V

    .line 115
    iget-object p0, p0, Lcom/android/settings/notification/SilentModeSettings$ActionModeCallback;->this$0:Lcom/android/settings/notification/SilentModeSettings;

    invoke-static {p0}, Lcom/android/settings/notification/SilentModeSettings;->-$$Nest$fgetmAutomationRuleSettings(Lcom/android/settings/notification/SilentModeSettings;)Lcom/android/settings/notification/SilentModeAutomationSettings;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/notification/SilentModeAutomationSettings;->setEditModeAll(ZLjava/lang/String;)V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .line 83
    check-cast p1, Lmiuix/view/EditActionMode;

    .line 84
    iget-object p2, p0, Lcom/android/settings/notification/SilentModeSettings$ActionModeCallback;->this$0:Lcom/android/settings/notification/SilentModeSettings;

    invoke-static {p2}, Lcom/android/settings/notification/SilentModeSettings;->-$$Nest$fgetmSelectAll(Lcom/android/settings/notification/SilentModeSettings;)Z

    move-result p2

    iget-object p0, p0, Lcom/android/settings/notification/SilentModeSettings$ActionModeCallback;->this$0:Lcom/android/settings/notification/SilentModeSettings;

    if-eqz p2, :cond_0

    invoke-static {p0}, Lcom/android/settings/notification/SilentModeSettings;->-$$Nest$mgetDeselectAllIcon(Lcom/android/settings/notification/SilentModeSettings;)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/android/settings/notification/SilentModeSettings;->-$$Nest$mgetSelectAllIcon(Lcom/android/settings/notification/SilentModeSettings;)I

    move-result p0

    :goto_0
    const p2, 0x102001a    # @android:id/button2

    const/4 v0, 0x0

    .line 83
    invoke-interface {p1, p2, v0, p0}, Lmiuix/view/EditActionMode;->setButton(ILjava/lang/CharSequence;I)V

    const/4 p0, 0x1

    return p0
.end method
