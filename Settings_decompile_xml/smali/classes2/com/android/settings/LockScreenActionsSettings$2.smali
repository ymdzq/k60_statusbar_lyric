.class Lcom/android/settings/LockScreenActionsSettings$2;
.super Ljava/lang/Object;
.source "LockScreenActionsSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/LockScreenActionsSettings;->setupLockScreenControlCenter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/LockScreenActionsSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/LockScreenActionsSettings;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/android/settings/LockScreenActionsSettings$2;->this$0:Lcom/android/settings/LockScreenActionsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 85
    iget-object p1, p0, Lcom/android/settings/LockScreenActionsSettings$2;->this$0:Lcom/android/settings/LockScreenActionsSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p1, p2}, Lcom/android/settings/utils/StatusBarUtils;->setExpandableUnderLockscreen(Landroid/content/Context;I)V

    .line 86
    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p1, :cond_0

    .line 87
    iget-object p1, p0, Lcom/android/settings/LockScreenActionsSettings$2;->this$0:Lcom/android/settings/LockScreenActionsSettings;

    invoke-static {p1}, Lcom/android/settings/LockScreenActionsSettings;->-$$Nest$mupdateLockScreenDeviceControl(Lcom/android/settings/LockScreenActionsSettings;)V

    .line 88
    iget-object p1, p0, Lcom/android/settings/LockScreenActionsSettings$2;->this$0:Lcom/android/settings/LockScreenActionsSettings;

    invoke-static {p1}, Lcom/android/settings/LockScreenActionsSettings;->-$$Nest$mupdateLockScreenXiaomiSmartHub(Lcom/android/settings/LockScreenActionsSettings;)V

    .line 90
    :cond_0
    iget-object p1, p0, Lcom/android/settings/LockScreenActionsSettings$2;->this$0:Lcom/android/settings/LockScreenActionsSettings;

    invoke-static {p1}, Lcom/android/settings/LockScreenActionsSettings;->-$$Nest$mupdateLockScreenSmartDeviceControl(Lcom/android/settings/LockScreenActionsSettings;)V

    .line 91
    iget-object p0, p0, Lcom/android/settings/LockScreenActionsSettings$2;->this$0:Lcom/android/settings/LockScreenActionsSettings;

    invoke-static {p0}, Lcom/android/settings/LockScreenActionsSettings;->-$$Nest$mupdateLockScreenAllowTrivialControls(Lcom/android/settings/LockScreenActionsSettings;)V

    const/4 p0, 0x1

    return p0
.end method
