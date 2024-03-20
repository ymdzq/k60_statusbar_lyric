.class Lcom/android/settings/FullScreenDisplaySettings$5;
.super Ljava/lang/Object;
.source "FullScreenDisplaySettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/FullScreenDisplaySettings;->initAppSwitchGuide()V
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

    .line 227
    iput-object p1, p0, Lcom/android/settings/FullScreenDisplaySettings$5;->this$0:Lcom/android/settings/FullScreenDisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 230
    iget-object p1, p0, Lcom/android/settings/FullScreenDisplaySettings$5;->this$0:Lcom/android/settings/FullScreenDisplaySettings;

    invoke-static {p1}, Lcom/android/settings/FullScreenDisplaySettings;->-$$Nest$misAppSwitchFeatureEnable(Lcom/android/settings/FullScreenDisplaySettings;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 231
    iget-object p1, p0, Lcom/android/settings/FullScreenDisplaySettings$5;->this$0:Lcom/android/settings/FullScreenDisplaySettings;

    invoke-static {p1}, Lcom/android/settings/FullScreenDisplaySettings;->-$$Nest$fgetmContext(Lcom/android/settings/FullScreenDisplaySettings;)Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/FullScreenDisplaySettings$5;->this$0:Lcom/android/settings/FullScreenDisplaySettings;

    invoke-static {p0}, Lcom/android/settings/FullScreenDisplaySettings;->-$$Nest$fgetmContext(Lcom/android/settings/FullScreenDisplaySettings;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->navigation_guide_appswitch_click:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 232
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
