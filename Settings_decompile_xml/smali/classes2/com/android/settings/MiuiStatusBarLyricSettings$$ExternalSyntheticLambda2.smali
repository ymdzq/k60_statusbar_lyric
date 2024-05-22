# classes5.dex

.class public final synthetic Lcom/android/settings/MiuiStatusBarLyricSettings$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/MiuiStatusBarLyricSettings;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/MiuiStatusBarLyricSettings;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/MiuiStatusBarLyricSettings$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/MiuiStatusBarLyricSettings;

    iput-object p2, p0, Lcom/android/settings/MiuiStatusBarLyricSettings$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 5

    iget-object v0, p0, Lcom/android/settings/MiuiStatusBarLyricSettings$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/MiuiStatusBarLyricSettings;

    iget-object v1, p0, Lcom/android/settings/MiuiStatusBarLyricSettings$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lcom/android/settings/MiuiStatusBarLyricSettings;->$r8$lambda$RLp4W-yNmSBqoVhjHlLwDyyt8WU(Lcom/android/settings/MiuiStatusBarLyricSettings;Ljava/lang/String;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
