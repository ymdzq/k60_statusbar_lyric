.class Lcom/android/settings/recommend/PageIndexManager$M11yMenuIndexDetail;
.super Lcom/android/settings/recommend/bean/IndexDetail;
.source "PageIndexManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/recommend/PageIndexManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "M11yMenuIndexDetail"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/recommend/PageIndexManager;


# direct methods
.method public constructor <init>(Lcom/android/settings/recommend/PageIndexManager;I)V
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/android/settings/recommend/PageIndexManager$M11yMenuIndexDetail;->this$0:Lcom/android/settings/recommend/PageIndexManager;

    .line 299
    invoke-direct {p0, p2}, Lcom/android/settings/recommend/bean/IndexDetail;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/recommend/PageIndexManager;ILjava/lang/String;Lcom/android/settingslib/core/AbstractPreferenceController;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/android/settings/recommend/PageIndexManager$M11yMenuIndexDetail;->this$0:Lcom/android/settings/recommend/PageIndexManager;

    .line 303
    invoke-direct {p0, p2, p3, p4}, Lcom/android/settings/recommend/bean/IndexDetail;-><init>(ILjava/lang/String;Lcom/android/settingslib/core/AbstractPreferenceController;)V

    return-void
.end method


# virtual methods
.method public getRawIntent()Landroid/content/Intent;
    .locals 6

    const-string v0, "com.android.settings/com.android.settings.accessibility.accessibilitymenu.AccessibilityMenuService"

    .line 309
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 311
    iget-object v2, p0, Lcom/android/settings/recommend/PageIndexManager$M11yMenuIndexDetail;->this$0:Lcom/android/settings/recommend/PageIndexManager;

    invoke-static {v2}, Lcom/android/settings/recommend/PageIndexManager;->-$$Nest$fgetmContext(Lcom/android/settings/recommend/PageIndexManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    .line 313
    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityManager;->getInstalledServiceInfoWithComponentName(Landroid/content/ComponentName;)Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    .line 319
    :cond_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "preference_key"

    .line 320
    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcom/android/settings/recommend/PageIndexManager$M11yMenuIndexDetail;->this$0:Lcom/android/settings/recommend/PageIndexManager;

    invoke-static {v0}, Lcom/android/settings/recommend/PageIndexManager;->-$$Nest$fgetmContext(Lcom/android/settings/recommend/PageIndexManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "summary"

    invoke-virtual {v4, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget-object p0, p0, Lcom/android/settings/recommend/PageIndexManager$M11yMenuIndexDetail;->this$0:Lcom/android/settings/recommend/PageIndexManager;

    invoke-static {p0}, Lcom/android/settings/recommend/PageIndexManager;->-$$Nest$fgetmContext(Lcom/android/settings/recommend/PageIndexManager;)Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->accessibility_menu_item_settings:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "settings_title"

    invoke-virtual {v4, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "component_name"

    .line 323
    invoke-virtual {v4, p0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 325
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.SubSettings"

    .line 326
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    const-class v0, Lcom/android/settings/accessibility/InvisibleToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":settings:show_fragment"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, ":settings:show_fragment_args"

    .line 328
    invoke-virtual {p0, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v0, ":settings:show_fragment_title_res_package_name"

    .line 329
    invoke-virtual {p0, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, ":settings:show_fragment_title_resid"

    .line 331
    sget v1, Lcom/android/settings/R$string;->accessibility_menu_service_name:I

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p0
.end method
