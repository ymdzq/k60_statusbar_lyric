.class public final synthetic Lcom/android/settings/notification/zen/ZenAccessSettings$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/notification/zen/ZenAccessSettings;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/content/pm/ApplicationInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/zen/ZenAccessSettings;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenAccessSettings$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/notification/zen/ZenAccessSettings;

    iput-object p2, p0, Lcom/android/settings/notification/zen/ZenAccessSettings$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/notification/zen/ZenAccessSettings$$ExternalSyntheticLambda0;->f$2:Landroid/content/pm/ApplicationInfo;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenAccessSettings$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/notification/zen/ZenAccessSettings;

    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenAccessSettings$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenAccessSettings$$ExternalSyntheticLambda0;->f$2:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0, v1, p0, p1}, Lcom/android/settings/notification/zen/ZenAccessSettings;->$r8$lambda$9-ifhUx2SkiqSdiGeFeOSJhztvY(Lcom/android/settings/notification/zen/ZenAccessSettings;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
