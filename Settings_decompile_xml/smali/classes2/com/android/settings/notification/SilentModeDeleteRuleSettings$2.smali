.class Lcom/android/settings/notification/SilentModeDeleteRuleSettings$2;
.super Ljava/lang/Object;
.source "SilentModeDeleteRuleSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/SilentModeDeleteRuleSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/SilentModeDeleteRuleSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/SilentModeDeleteRuleSettings;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/android/settings/notification/SilentModeDeleteRuleSettings$2;->this$0:Lcom/android/settings/notification/SilentModeDeleteRuleSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 41
    iget-object p1, p0, Lcom/android/settings/notification/SilentModeDeleteRuleSettings$2;->this$0:Lcom/android/settings/notification/SilentModeDeleteRuleSettings;

    invoke-static {p1}, Lcom/android/settings/notification/SilentModeDeleteRuleSettings;->-$$Nest$fgetmDeleteRuleSettings(Lcom/android/settings/notification/SilentModeDeleteRuleSettings;)Lcom/android/settings/notification/SilentModeDeleteSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/notification/SilentModeDeleteSettings;->commitRules()Z

    .line 42
    iget-object p0, p0, Lcom/android/settings/notification/SilentModeDeleteRuleSettings$2;->this$0:Lcom/android/settings/notification/SilentModeDeleteRuleSettings;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method
