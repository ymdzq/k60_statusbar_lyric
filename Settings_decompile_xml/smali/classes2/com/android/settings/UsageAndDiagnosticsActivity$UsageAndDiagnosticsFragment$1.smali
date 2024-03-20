.class Lcom/android/settings/UsageAndDiagnosticsActivity$UsageAndDiagnosticsFragment$1;
.super Ljava/lang/Object;
.source "UsageAndDiagnosticsActivity.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/UsageAndDiagnosticsActivity$UsageAndDiagnosticsFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/UsageAndDiagnosticsActivity$UsageAndDiagnosticsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/UsageAndDiagnosticsActivity$UsageAndDiagnosticsFragment;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/android/settings/UsageAndDiagnosticsActivity$UsageAndDiagnosticsFragment$1;->this$0:Lcom/android/settings/UsageAndDiagnosticsActivity$UsageAndDiagnosticsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 40
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/UsageAndDiagnosticsActivity$UsageAndDiagnosticsFragment$1;->this$0:Lcom/android/settings/UsageAndDiagnosticsActivity$UsageAndDiagnosticsFragment;

    invoke-static {p0}, Lcom/android/settings/UsageAndDiagnosticsActivity$UsageAndDiagnosticsFragment;->-$$Nest$fgetmContentResolver(Lcom/android/settings/UsageAndDiagnosticsActivity$UsageAndDiagnosticsFragment;)Landroid/content/ContentResolver;

    move-result-object p0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Landroid/provider/MiuiSettings$Secure;->enableUploadDebugLog(Landroid/content/ContentResolver;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 42
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method
