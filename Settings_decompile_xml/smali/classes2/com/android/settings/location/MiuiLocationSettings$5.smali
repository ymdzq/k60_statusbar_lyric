.class Lcom/android/settings/location/MiuiLocationSettings$5;
.super Ljava/lang/Object;
.source "MiuiLocationSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/location/MiuiLocationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/location/MiuiLocationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/location/MiuiLocationSettings;)V
    .locals 0

    .line 621
    iput-object p1, p0, Lcom/android/settings/location/MiuiLocationSettings$5;->this$0:Lcom/android/settings/location/MiuiLocationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 4

    .line 624
    iget-object p1, p0, Lcom/android/settings/location/MiuiLocationSettings$5;->this$0:Lcom/android/settings/location/MiuiLocationSettings;

    invoke-static {p1}, Lcom/android/settings/location/MiuiLocationSettings;->-$$Nest$fgetmManagedProfileSwitch(Lcom/android/settings/location/MiuiLocationSettings;)Lcom/android/settingslib/RestrictedSwitchPreference;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    .line 625
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings$5;->this$0:Lcom/android/settings/location/MiuiLocationSettings;

    invoke-static {v0}, Lcom/android/settings/location/MiuiLocationSettings;->-$$Nest$fgetmUm(Lcom/android/settings/location/MiuiLocationSettings;)Landroid/os/UserManager;

    move-result-object v0

    xor-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lcom/android/settings/location/MiuiLocationSettings$5;->this$0:Lcom/android/settings/location/MiuiLocationSettings;

    invoke-static {v2}, Lcom/android/settings/location/MiuiLocationSettings;->-$$Nest$fgetmManagedProfile(Lcom/android/settings/location/MiuiLocationSettings;)Landroid/os/UserHandle;

    move-result-object v2

    const-string/jumbo v3, "no_share_location"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    .line 627
    iget-object p0, p0, Lcom/android/settings/location/MiuiLocationSettings$5;->this$0:Lcom/android/settings/location/MiuiLocationSettings;

    invoke-static {p0}, Lcom/android/settings/location/MiuiLocationSettings;->-$$Nest$fgetmManagedProfileSwitch(Lcom/android/settings/location/MiuiLocationSettings;)Lcom/android/settingslib/RestrictedSwitchPreference;

    move-result-object p0

    if-eqz p1, :cond_0

    .line 628
    sget p1, Lcom/android/settings/R$string;->switch_on_text:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/android/settings/R$string;->switch_off_text:I

    .line 627
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    const/4 p0, 0x1

    return p0
.end method
