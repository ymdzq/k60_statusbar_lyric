.class Lcom/android/settings/NotificationStatusBarSettings$7;
.super Ljava/lang/Object;
.source "NotificationStatusBarSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/NotificationStatusBarSettings;->setupQuickControlAllDevices()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/NotificationStatusBarSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/NotificationStatusBarSettings;)V
    .locals 0

    .line 549
    iput-object p1, p0, Lcom/android/settings/NotificationStatusBarSettings$7;->this$0:Lcom/android/settings/NotificationStatusBarSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 552
    iget-object p0, p0, Lcom/android/settings/NotificationStatusBarSettings$7;->this$0:Lcom/android/settings/NotificationStatusBarSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/settings/utils/StatusBarUtils;->setQuickControlAllDevices(Landroid/content/Context;Z)V

    const/4 p0, 0x1

    return p0
.end method
