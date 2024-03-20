.class Lcom/android/settings/freeform/FreeformGuideSettings$8;
.super Ljava/lang/Object;
.source "FreeformGuideSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/freeform/FreeformGuideSettings;->initFullToFreeform()V
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

    .line 489
    iput-object p1, p0, Lcom/android/settings/freeform/FreeformGuideSettings$8;->this$0:Lcom/android/settings/freeform/FreeformGuideSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 4

    .line 492
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 493
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isFoldDevice()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0x8

    .line 494
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addMiuiFlags(I)Landroid/content/Intent;

    .line 496
    :cond_1
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    const-string v1, "DEMO_TYPE"

    const-string v2, "com.miui.freeform"

    if-eqz v0, :cond_2

    .line 497
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.miui.freeform.FreeformTutorialSettingActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v0, "DEMO_FREEFORM_SLIDE_TO_SMALL_FREEFORM"

    .line 498
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 500
    :cond_2
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.miui.freeform.FreeformDemoActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v0, "DEMO_FULLSCREEN_SLIDE_TO_SMALL_FREEFORM"

    .line 501
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 503
    :goto_0
    iget-object p0, p0, Lcom/android/settings/freeform/FreeformGuideSettings$8;->this$0:Lcom/android/settings/freeform/FreeformGuideSettings;

    invoke-static {p0}, Lcom/android/settings/freeform/FreeformGuideSettings;->-$$Nest$fgetmContext(Lcom/android/settings/freeform/FreeformGuideSettings;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method
