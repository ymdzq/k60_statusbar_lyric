.class Lcom/android/settings/notification/SilentModeRuleSettings$2;
.super Ljava/lang/Object;
.source "SilentModeRuleSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/SilentModeRuleSettings;->customActionBar(Lmiuix/appcompat/app/ActionBar;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/SilentModeRuleSettings;

.field final synthetic val$mode:I


# direct methods
.method constructor <init>(Lcom/android/settings/notification/SilentModeRuleSettings;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 93
    iput-object p1, p0, Lcom/android/settings/notification/SilentModeRuleSettings$2;->this$0:Lcom/android/settings/notification/SilentModeRuleSettings;

    iput p2, p0, Lcom/android/settings/notification/SilentModeRuleSettings$2;->val$mode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 96
    iget p1, p0, Lcom/android/settings/notification/SilentModeRuleSettings$2;->val$mode:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 97
    iget-object p1, p0, Lcom/android/settings/notification/SilentModeRuleSettings$2;->this$0:Lcom/android/settings/notification/SilentModeRuleSettings;

    invoke-static {p1}, Lcom/android/settings/notification/SilentModeRuleSettings;->-$$Nest$fgetmAddFragment(Lcom/android/settings/notification/SilentModeRuleSettings;)Lcom/android/settings/notification/SilentModeAddRuleSettings;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/notification/SilentModeRuleSettings$2;->this$0:Lcom/android/settings/notification/SilentModeRuleSettings;

    invoke-static {p1}, Lcom/android/settings/notification/SilentModeRuleSettings;->-$$Nest$fgetmAddFragment(Lcom/android/settings/notification/SilentModeRuleSettings;)Lcom/android/settings/notification/SilentModeAddRuleSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/notification/SilentModeAddRuleSettings;->commitRule()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 98
    iget-object p0, p0, Lcom/android/settings/notification/SilentModeRuleSettings$2;->this$0:Lcom/android/settings/notification/SilentModeRuleSettings;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 101
    iget-object p1, p0, Lcom/android/settings/notification/SilentModeRuleSettings$2;->this$0:Lcom/android/settings/notification/SilentModeRuleSettings;

    invoke-static {p1}, Lcom/android/settings/notification/SilentModeRuleSettings;->-$$Nest$fgetmEditFragment(Lcom/android/settings/notification/SilentModeRuleSettings;)Lcom/android/settings/notification/SilentModeEditRuleSettings;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/notification/SilentModeRuleSettings$2;->this$0:Lcom/android/settings/notification/SilentModeRuleSettings;

    invoke-static {p1}, Lcom/android/settings/notification/SilentModeRuleSettings;->-$$Nest$fgetmEditFragment(Lcom/android/settings/notification/SilentModeRuleSettings;)Lcom/android/settings/notification/SilentModeEditRuleSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/notification/SilentModeEditRuleSettings;->commitRule()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 102
    iget-object p0, p0, Lcom/android/settings/notification/SilentModeRuleSettings$2;->this$0:Lcom/android/settings/notification/SilentModeRuleSettings;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method
