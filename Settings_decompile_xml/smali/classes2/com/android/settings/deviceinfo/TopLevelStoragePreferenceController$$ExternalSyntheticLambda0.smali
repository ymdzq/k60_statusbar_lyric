.class public final synthetic Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController;

.field public final synthetic f$1:Landroidx/preference/Preference;

.field public final synthetic f$2:Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController;Landroidx/preference/Preference;Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController;

    iput-object p2, p0, Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController$$ExternalSyntheticLambda0;->f$1:Landroidx/preference/Preference;

    iput-object p3, p0, Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController$$ExternalSyntheticLambda0;->f$2:Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController$$ExternalSyntheticLambda0;->f$1:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController$$ExternalSyntheticLambda0;->f$2:Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    invoke-static {v0, v1, p0}, Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController;->$r8$lambda$61uIeHrvUueTsZpQk1xW8hynp7I(Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController;Landroidx/preference/Preference;Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;)V

    return-void
.end method
