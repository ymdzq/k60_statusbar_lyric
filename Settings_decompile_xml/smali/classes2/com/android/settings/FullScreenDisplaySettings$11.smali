.class Lcom/android/settings/FullScreenDisplaySettings$11;
.super Ljava/lang/Object;
.source "FullScreenDisplaySettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/FullScreenDisplaySettings;->initHideGestureLine()V
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

    .line 321
    iput-object p1, p0, Lcom/android/settings/FullScreenDisplaySettings$11;->this$0:Lcom/android/settings/FullScreenDisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 324
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 325
    iget-object p2, p0, Lcom/android/settings/FullScreenDisplaySettings$11;->this$0:Lcom/android/settings/FullScreenDisplaySettings;

    invoke-static {p2}, Lcom/android/settings/FullScreenDisplaySettings;->-$$Nest$fgetmNeedShowDialog(Lcom/android/settings/FullScreenDisplaySettings;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/settings/FullScreenDisplaySettings$11;->this$0:Lcom/android/settings/FullScreenDisplaySettings;

    invoke-static {p2}, Lcom/android/settings/FullScreenDisplaySettings;->-$$Nest$mcheckDemoExist(Lcom/android/settings/FullScreenDisplaySettings;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 326
    iget-object p1, p0, Lcom/android/settings/FullScreenDisplaySettings$11;->this$0:Lcom/android/settings/FullScreenDisplaySettings;

    invoke-static {p1}, Lcom/android/settings/FullScreenDisplaySettings;->-$$Nest$mcreateDialog(Lcom/android/settings/FullScreenDisplaySettings;)V

    .line 327
    iget-object p1, p0, Lcom/android/settings/FullScreenDisplaySettings$11;->this$0:Lcom/android/settings/FullScreenDisplaySettings;

    invoke-static {p1}, Lcom/android/settings/FullScreenDisplaySettings;->-$$Nest$fgetmAlertDialog(Lcom/android/settings/FullScreenDisplaySettings;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 328
    iget-object p0, p0, Lcom/android/settings/FullScreenDisplaySettings$11;->this$0:Lcom/android/settings/FullScreenDisplaySettings;

    invoke-static {p0}, Lcom/android/settings/FullScreenDisplaySettings;->-$$Nest$fgetmContext(Lcom/android/settings/FullScreenDisplaySettings;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/utils/AnalyticsUtils;->trackLearnGesturesWindowEvent(Landroid/content/Context;)V

    goto :goto_0

    .line 330
    :cond_0
    iget-object p0, p0, Lcom/android/settings/FullScreenDisplaySettings$11;->this$0:Lcom/android/settings/FullScreenDisplaySettings;

    invoke-static {p0, p1}, Lcom/android/settings/FullScreenDisplaySettings;->-$$Nest$msetHideGestureLine(Lcom/android/settings/FullScreenDisplaySettings;Z)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method
