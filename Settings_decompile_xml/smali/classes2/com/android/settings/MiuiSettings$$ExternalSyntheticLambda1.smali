.class public final synthetic Lcom/android/settings/MiuiSettings$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/MiuiSettings;

.field public final synthetic f$1:Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;

.field public final synthetic f$2:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/MiuiSettings;Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/MiuiSettings$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/MiuiSettings;

    iput-object p2, p0, Lcom/android/settings/MiuiSettings$$ExternalSyntheticLambda1;->f$1:Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;

    iput-object p3, p0, Lcom/android/settings/MiuiSettings$$ExternalSyntheticLambda1;->f$2:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/settings/MiuiSettings$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/MiuiSettings;

    iget-object v1, p0, Lcom/android/settings/MiuiSettings$$ExternalSyntheticLambda1;->f$1:Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;

    iget-object p0, p0, Lcom/android/settings/MiuiSettings$$ExternalSyntheticLambda1;->f$2:Ljava/util/ArrayList;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/android/settings/MiuiSettings;->$r8$lambda$C3eknPQCtJjIV5qoNELKKyAjw54(Lcom/android/settings/MiuiSettings;Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;Ljava/util/ArrayList;Landroid/content/DialogInterface;I)V

    return-void
.end method
