# classes5.dex

.class public final synthetic Lcom/android/settings/MiuiStatusBarLyricSettings$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Landroidx/preference/Preference;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/preference/Preference;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/MiuiStatusBarLyricSettings$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settings/MiuiStatusBarLyricSettings$$ExternalSyntheticLambda0;->f$1:Landroidx/preference/Preference;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 5

    iget-object v0, p0, Lcom/android/settings/MiuiStatusBarLyricSettings$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/MiuiStatusBarLyricSettings$$ExternalSyntheticLambda0;->f$1:Landroidx/preference/Preference;

    invoke-static {v0, v1, p1, p2}, Lcom/android/settings/MiuiStatusBarLyricSettings;->lambda$setupAppIconCheckbox$0(Ljava/lang/String;Landroidx/preference/Preference;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
