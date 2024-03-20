.class Lcom/android/settings/notification/SilentModeNetWorkAlarmSummaryPreference$1;
.super Landroid/text/style/ClickableSpan;
.source "SilentModeNetWorkAlarmSummaryPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/SilentModeNetWorkAlarmSummaryPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/SilentModeNetWorkAlarmSummaryPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/SilentModeNetWorkAlarmSummaryPreference;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/android/settings/notification/SilentModeNetWorkAlarmSummaryPreference$1;->this$0:Lcom/android/settings/notification/SilentModeNetWorkAlarmSummaryPreference;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 60
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.MAIN"

    .line 61
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.SubSettings"

    .line 62
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, ":settings:show_fragment"

    const-string v1, "com.android.settings.notification.SilentModeNetWorkAlarmAppFragment"

    .line 63
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, ":android:no_headers"

    const/4 v1, 0x1

    .line 64
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 65
    iget-object p0, p0, Lcom/android/settings/notification/SilentModeNetWorkAlarmSummaryPreference$1;->this$0:Lcom/android/settings/notification/SilentModeNetWorkAlarmSummaryPreference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
