.class public final synthetic Lcom/android/settings/smarthome/SmartHomePreferenceManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/smarthome/SmartHomePreferenceManager;

.field public final synthetic f$1:Lmiuix/preference/DropDownPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/smarthome/SmartHomePreferenceManager;Lmiuix/preference/DropDownPreference;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/smarthome/SmartHomePreferenceManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/smarthome/SmartHomePreferenceManager;

    iput-object p2, p0, Lcom/android/settings/smarthome/SmartHomePreferenceManager$$ExternalSyntheticLambda1;->f$1:Lmiuix/preference/DropDownPreference;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/settings/smarthome/SmartHomePreferenceManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/smarthome/SmartHomePreferenceManager;

    iget-object p0, p0, Lcom/android/settings/smarthome/SmartHomePreferenceManager$$ExternalSyntheticLambda1;->f$1:Lmiuix/preference/DropDownPreference;

    invoke-static {v0, p0, p1, p2}, Lcom/android/settings/smarthome/SmartHomePreferenceManager;->$r8$lambda$UohWcgaIwhppbfd6Qo2xQvfrVwI(Lcom/android/settings/smarthome/SmartHomePreferenceManager;Lmiuix/preference/DropDownPreference;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
