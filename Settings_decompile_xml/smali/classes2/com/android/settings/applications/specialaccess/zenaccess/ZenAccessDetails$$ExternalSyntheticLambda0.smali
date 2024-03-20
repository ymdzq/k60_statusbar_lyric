.class public final synthetic Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;

.field public final synthetic f$1:Ljava/lang/CharSequence;

.field public final synthetic f$2:Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails$OnCheckResult;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;Ljava/lang/CharSequence;Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails$OnCheckResult;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;

    iput-object p2, p0, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails$$ExternalSyntheticLambda0;->f$1:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails$$ExternalSyntheticLambda0;->f$2:Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails$OnCheckResult;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;

    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails$$ExternalSyntheticLambda0;->f$1:Ljava/lang/CharSequence;

    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails$$ExternalSyntheticLambda0;->f$2:Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails$OnCheckResult;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;->$r8$lambda$8FWYn2hlmduBvDXJ51gKp0AQ84E(Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;Ljava/lang/CharSequence;Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails$OnCheckResult;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
