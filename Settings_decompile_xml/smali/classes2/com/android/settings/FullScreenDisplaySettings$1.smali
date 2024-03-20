.class Lcom/android/settings/FullScreenDisplaySettings$1;
.super Ljava/lang/Object;
.source "FullScreenDisplaySettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/FullScreenDisplaySettings;->initHomeGuide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/FullScreenDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/FullScreenDisplaySettings;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/android/settings/FullScreenDisplaySettings$1;->this$0:Lcom/android/settings/FullScreenDisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 162
    iget-object p1, p0, Lcom/android/settings/FullScreenDisplaySettings$1;->this$0:Lcom/android/settings/FullScreenDisplaySettings;

    invoke-static {p1}, Lcom/android/settings/FullScreenDisplaySettings;->-$$Nest$fgetmContext(Lcom/android/settings/FullScreenDisplaySettings;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "home"

    invoke-static {p1, v0}, Lcom/android/settings/utils/AnalyticsUtils;->trackClickSingleTurorialEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 163
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 164
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.systemui"

    const-string v2, "com.android.systemui.fsgesture.HomeDemoAct"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v0, "DEMO_TYPE"

    const-string v1, "DEMO_TO_HOME"

    .line 165
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    iget-object p0, p0, Lcom/android/settings/FullScreenDisplaySettings$1;->this$0:Lcom/android/settings/FullScreenDisplaySettings;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method
