.class Lcom/android/settings/settingspanel/OtherSettingPanelFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "OtherSettingPanelFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/settingspanel/OtherSettingPanelFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/settingspanel/OtherSettingPanelFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/settingspanel/OtherSettingPanelFragment;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/android/settings/settingspanel/OtherSettingPanelFragment$1;->this$0:Lcom/android/settings/settingspanel/OtherSettingPanelFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 46
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.nfc.action.ADAPTER_STATE_CHANGED"

    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "android.nfc.extra.ADAPTER_STATE"

    const/4 v0, 0x1

    .line 48
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 50
    iget-object p2, p0, Lcom/android/settings/settingspanel/OtherSettingPanelFragment$1;->this$0:Lcom/android/settings/settingspanel/OtherSettingPanelFragment;

    invoke-static {p2}, Lcom/android/settings/settingspanel/OtherSettingPanelFragment;->-$$Nest$fgetmNFC(Lcom/android/settings/settingspanel/OtherSettingPanelFragment;)Lcom/android/settings/widget/CustomCheckBoxPreference;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 51
    iget-object p0, p0, Lcom/android/settings/settingspanel/OtherSettingPanelFragment$1;->this$0:Lcom/android/settings/settingspanel/OtherSettingPanelFragment;

    invoke-static {p0}, Lcom/android/settings/settingspanel/OtherSettingPanelFragment;->-$$Nest$fgetmNFC(Lcom/android/settings/settingspanel/OtherSettingPanelFragment;)Lcom/android/settings/widget/CustomCheckBoxPreference;

    move-result-object p0

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1

    :cond_2
    const-string p2, "android.intent.action.AIRPLANE_MODE"

    .line 53
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 54
    iget-object p0, p0, Lcom/android/settings/settingspanel/OtherSettingPanelFragment$1;->this$0:Lcom/android/settings/settingspanel/OtherSettingPanelFragment;

    invoke-static {p0}, Lcom/android/settings/settingspanel/OtherSettingPanelFragment;->-$$Nest$msetMobileNetworkAvailable(Lcom/android/settings/settingspanel/OtherSettingPanelFragment;)V

    :cond_3
    :goto_1
    return-void
.end method
