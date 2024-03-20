.class Lcom/android/settings/notification/SilentModeDeleteSettings$CustomRuleItemPreference$1;
.super Ljava/lang/Object;
.source "SilentModeDeleteSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/SilentModeDeleteSettings$CustomRuleItemPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/notification/SilentModeDeleteSettings$CustomRuleItemPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/SilentModeDeleteSettings$CustomRuleItemPreference;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/android/settings/notification/SilentModeDeleteSettings$CustomRuleItemPreference$1;->this$1:Lcom/android/settings/notification/SilentModeDeleteSettings$CustomRuleItemPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 112
    iget-object p1, p0, Lcom/android/settings/notification/SilentModeDeleteSettings$CustomRuleItemPreference$1;->this$1:Lcom/android/settings/notification/SilentModeDeleteSettings$CustomRuleItemPreference;

    invoke-static {p1}, Lcom/android/settings/notification/SilentModeDeleteSettings$CustomRuleItemPreference;->-$$Nest$fgetmOnClickDeleteBtnListener(Lcom/android/settings/notification/SilentModeDeleteSettings$CustomRuleItemPreference;)Lcom/android/settings/notification/SilentModeDeleteSettings$OnClickDeleteBtnListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 113
    iget-object p1, p0, Lcom/android/settings/notification/SilentModeDeleteSettings$CustomRuleItemPreference$1;->this$1:Lcom/android/settings/notification/SilentModeDeleteSettings$CustomRuleItemPreference;

    invoke-static {p1}, Lcom/android/settings/notification/SilentModeDeleteSettings$CustomRuleItemPreference;->-$$Nest$fgetmOnClickDeleteBtnListener(Lcom/android/settings/notification/SilentModeDeleteSettings$CustomRuleItemPreference;)Lcom/android/settings/notification/SilentModeDeleteSettings$OnClickDeleteBtnListener;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/notification/SilentModeDeleteSettings$CustomRuleItemPreference$1;->this$1:Lcom/android/settings/notification/SilentModeDeleteSettings$CustomRuleItemPreference;

    invoke-static {p0}, Lcom/android/settings/notification/SilentModeDeleteSettings$CustomRuleItemPreference;->-$$Nest$fgetmId(Lcom/android/settings/notification/SilentModeDeleteSettings$CustomRuleItemPreference;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/settings/notification/SilentModeDeleteSettings$OnClickDeleteBtnListener;->onClick(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
