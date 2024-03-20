.class Lcom/android/settings/applications/MiuiAppLaunchSettings$1;
.super Ljava/lang/Object;
.source "MiuiAppLaunchSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/MiuiAppLaunchSettings;->buildState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/MiuiAppLaunchSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/MiuiAppLaunchSettings;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/android/settings/applications/MiuiAppLaunchSettings$1;->this$0:Lcom/android/settings/applications/MiuiAppLaunchSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 207
    iget-object p1, p0, Lcom/android/settings/applications/MiuiAppLaunchSettings$1;->this$0:Lcom/android/settings/applications/MiuiAppLaunchSettings;

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/android/settings/applications/MiuiAppLaunchSettings;->-$$Nest$mupdateSummary(Lcom/android/settings/applications/MiuiAppLaunchSettings;Ljava/lang/String;)V

    .line 208
    iget-object p0, p0, Lcom/android/settings/applications/MiuiAppLaunchSettings$1;->this$0:Lcom/android/settings/applications/MiuiAppLaunchSettings;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/settings/applications/MiuiAppLaunchSettings;->-$$Nest$mupdateAppLinkState(Lcom/android/settings/applications/MiuiAppLaunchSettings;I)Z

    move-result p0

    return p0
.end method
