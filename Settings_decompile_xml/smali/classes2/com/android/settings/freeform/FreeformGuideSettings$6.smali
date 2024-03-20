.class Lcom/android/settings/freeform/FreeformGuideSettings$6;
.super Ljava/lang/Object;
.source "FreeformGuideSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/freeform/FreeformGuideSettings;->initDropDown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/freeform/FreeformGuideSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/freeform/FreeformGuideSettings;)V
    .locals 0

    .line 440
    iput-object p1, p0, Lcom/android/settings/freeform/FreeformGuideSettings$6;->this$0:Lcom/android/settings/freeform/FreeformGuideSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 443
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 444
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isFoldDevice()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0x8

    .line 445
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addMiuiFlags(I)Landroid/content/Intent;

    .line 447
    :cond_1
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    const-string v1, "com.miui.freeform"

    if-eqz v0, :cond_2

    .line 448
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.miui.freeform.FreeformTutorialSettingActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 450
    :cond_2
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.miui.freeform.FreeformDemoActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :goto_0
    const-string v0, "DEMO_TYPE"

    const-string v1, "DEMO_DROP_DOWN_TO_FULLSCREEN"

    .line 452
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 453
    iget-object p0, p0, Lcom/android/settings/freeform/FreeformGuideSettings$6;->this$0:Lcom/android/settings/freeform/FreeformGuideSettings;

    invoke-static {p0}, Lcom/android/settings/freeform/FreeformGuideSettings;->-$$Nest$fgetmContext(Lcom/android/settings/freeform/FreeformGuideSettings;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method
