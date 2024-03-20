.class public final synthetic Lcom/android/settings/MiuiSoundSettings$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/MiuiSoundSettings;

.field public final synthetic f$1:Landroidx/preference/CheckBoxPreference;

.field public final synthetic f$2:Landroidx/preference/Preference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/MiuiSoundSettings;Landroidx/preference/CheckBoxPreference;Landroidx/preference/Preference;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/MiuiSoundSettings$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/MiuiSoundSettings;

    iput-object p2, p0, Lcom/android/settings/MiuiSoundSettings$$ExternalSyntheticLambda1;->f$1:Landroidx/preference/CheckBoxPreference;

    iput-object p3, p0, Lcom/android/settings/MiuiSoundSettings$$ExternalSyntheticLambda1;->f$2:Landroidx/preference/Preference;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/MiuiSoundSettings;

    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings$$ExternalSyntheticLambda1;->f$1:Landroidx/preference/CheckBoxPreference;

    iget-object p0, p0, Lcom/android/settings/MiuiSoundSettings$$ExternalSyntheticLambda1;->f$2:Landroidx/preference/Preference;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/android/settings/MiuiSoundSettings;->$r8$lambda$TmFDzDheBMw3ZecYqUV6ADGtmas(Lcom/android/settings/MiuiSoundSettings;Landroidx/preference/CheckBoxPreference;Landroidx/preference/Preference;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
