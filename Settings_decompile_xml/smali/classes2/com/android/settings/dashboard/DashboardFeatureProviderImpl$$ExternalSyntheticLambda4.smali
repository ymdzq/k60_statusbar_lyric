.class public final synthetic Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

.field public final synthetic f$1:Landroid/net/Uri;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Landroidx/preference/Preference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Landroid/net/Uri;ZLandroidx/preference/Preference;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda4;->f$0:Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

    iput-object p2, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda4;->f$1:Landroid/net/Uri;

    iput-boolean p3, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda4;->f$2:Z

    iput-object p4, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda4;->f$3:Landroidx/preference/Preference;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda4;->f$0:Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda4;->f$1:Landroid/net/Uri;

    iget-boolean v2, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda4;->f$2:Z

    iget-object p0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda4;->f$3:Landroidx/preference/Preference;

    invoke-static {v0, v1, v2, p0}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->$r8$lambda$ULkHXJB6T_E8-2Vr7TY3d_zXBKU(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Landroid/net/Uri;ZLandroidx/preference/Preference;)V

    return-void
.end method
