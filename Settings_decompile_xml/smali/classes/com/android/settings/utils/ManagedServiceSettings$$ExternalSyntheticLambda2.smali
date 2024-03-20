.class public final synthetic Lcom/android/settings/utils/ManagedServiceSettings$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/utils/ManagedServiceSettings;

.field public final synthetic f$1:Ljava/lang/CharSequence;

.field public final synthetic f$2:Landroid/content/ComponentName;

.field public final synthetic f$3:Lcom/android/settings/utils/ManagedServiceSettings$OnCheckResult;

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/utils/ManagedServiceSettings;Ljava/lang/CharSequence;Landroid/content/ComponentName;Lcom/android/settings/utils/ManagedServiceSettings$OnCheckResult;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/utils/ManagedServiceSettings$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/utils/ManagedServiceSettings;

    iput-object p2, p0, Lcom/android/settings/utils/ManagedServiceSettings$$ExternalSyntheticLambda2;->f$1:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/android/settings/utils/ManagedServiceSettings$$ExternalSyntheticLambda2;->f$2:Landroid/content/ComponentName;

    iput-object p4, p0, Lcom/android/settings/utils/ManagedServiceSettings$$ExternalSyntheticLambda2;->f$3:Lcom/android/settings/utils/ManagedServiceSettings$OnCheckResult;

    iput-object p5, p0, Lcom/android/settings/utils/ManagedServiceSettings$$ExternalSyntheticLambda2;->f$4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    .line 0
    iget-object v0, p0, Lcom/android/settings/utils/ManagedServiceSettings$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/utils/ManagedServiceSettings;

    iget-object v1, p0, Lcom/android/settings/utils/ManagedServiceSettings$$ExternalSyntheticLambda2;->f$1:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/settings/utils/ManagedServiceSettings$$ExternalSyntheticLambda2;->f$2:Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/settings/utils/ManagedServiceSettings$$ExternalSyntheticLambda2;->f$3:Lcom/android/settings/utils/ManagedServiceSettings$OnCheckResult;

    iget-object v4, p0, Lcom/android/settings/utils/ManagedServiceSettings$$ExternalSyntheticLambda2;->f$4:Ljava/lang/String;

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/android/settings/utils/ManagedServiceSettings;->$r8$lambda$3KDl2GXV4R_24deHY3wADWJ3S54(Lcom/android/settings/utils/ManagedServiceSettings;Ljava/lang/CharSequence;Landroid/content/ComponentName;Lcom/android/settings/utils/ManagedServiceSettings$OnCheckResult;Ljava/lang/String;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
