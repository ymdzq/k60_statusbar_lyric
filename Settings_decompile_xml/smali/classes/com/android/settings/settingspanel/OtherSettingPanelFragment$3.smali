.class Lcom/android/settings/settingspanel/OtherSettingPanelFragment$3;
.super Ljava/lang/Object;
.source "OtherSettingPanelFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/settingspanel/OtherSettingPanelFragment;->getPreference(Ljava/lang/String;)Lcom/android/settings/widget/CustomCheckBoxPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/settingspanel/OtherSettingPanelFragment;

.field final synthetic val$action:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/settingspanel/OtherSettingPanelFragment;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 163
    iput-object p1, p0, Lcom/android/settings/settingspanel/OtherSettingPanelFragment$3;->this$0:Lcom/android/settings/settingspanel/OtherSettingPanelFragment;

    iput-object p2, p0, Lcom/android/settings/settingspanel/OtherSettingPanelFragment$3;->val$action:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 167
    iget-object p1, p0, Lcom/android/settings/settingspanel/OtherSettingPanelFragment$3;->this$0:Lcom/android/settings/settingspanel/OtherSettingPanelFragment;

    iget-object p0, p0, Lcom/android/settings/settingspanel/OtherSettingPanelFragment$3;->val$action:Ljava/lang/String;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p1, p0, p2}, Lcom/android/settings/settingspanel/OtherSettingPanelFragment;->-$$Nest$mpreferenceChange(Lcom/android/settings/settingspanel/OtherSettingPanelFragment;Ljava/lang/String;Z)V

    const/4 p0, 0x1

    return p0
.end method
