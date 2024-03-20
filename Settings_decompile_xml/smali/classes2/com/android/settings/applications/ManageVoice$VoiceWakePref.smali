.class Lcom/android/settings/applications/ManageVoice$VoiceWakePref;
.super Ljava/lang/Object;
.source "ManageVoice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ManageVoice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VoiceWakePref"
.end annotation


# instance fields
.field public curPkgName:Ljava/lang/String;

.field public intent:Landroid/content/Intent;

.field public intentFilter:Landroid/content/IntentFilter;

.field public label:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/applications/ManageVoice;

.field public wakePref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/ManageVoice;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 72
    iput-object p1, p0, Lcom/android/settings/applications/ManageVoice$VoiceWakePref;->this$0:Lcom/android/settings/applications/ManageVoice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-virtual {p1, p3}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p3

    check-cast p3, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iput-object p3, p0, Lcom/android/settings/applications/ManageVoice$VoiceWakePref;->wakePref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    if-eqz p3, :cond_1

    const/4 v0, 0x1

    .line 75
    invoke-virtual {p3, v0}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 76
    new-instance p3, Landroid/content/IntentFilter;

    invoke-direct {p3, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/android/settings/applications/ManageVoice$VoiceWakePref;->intentFilter:Landroid/content/IntentFilter;

    .line 77
    invoke-static {p3}, Lcom/android/settings/applications/DefaultAppsHelper;->getIntent(Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/applications/ManageVoice$VoiceWakePref;->intent:Landroid/content/Intent;

    .line 78
    invoke-static {p1}, Lcom/android/settings/applications/ManageVoice;->-$$Nest$fgetmPackageManager(Lcom/android/settings/applications/ManageVoice;)Landroid/content/pm/PackageManager;

    move-result-object p2

    iget-object p3, p0, Lcom/android/settings/applications/ManageVoice$VoiceWakePref;->intent:Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 79
    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz p2, :cond_0

    .line 80
    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settings/applications/ManageVoice$VoiceWakePref;->curPkgName:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lcom/android/settings/applications/ManageVoice$VoiceWakePref;->curPkgName:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/applications/ManageVoice;->-$$Nest$fgetmPackageManager(Lcom/android/settings/applications/ManageVoice;)Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-static {p2, p3, p1}, Lcom/android/settings/applications/DefaultAppsHelper;->getApplicationLabel(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/ManageVoice$VoiceWakePref;->label:Ljava/lang/String;

    .line 82
    iget-object p0, p0, Lcom/android/settings/applications/ManageVoice$VoiceWakePref;->wakePref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_0
    iget-object p1, p0, Lcom/android/settings/applications/ManageVoice$VoiceWakePref;->wakePref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    sget p2, Lcom/android/settings/R$string;->preferred_app_settings_default:I

    invoke-virtual {p1, p2}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(I)V

    .line 85
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Can not resolve this intent "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/applications/ManageVoice$VoiceWakePref;->intent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ManageVoice"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
