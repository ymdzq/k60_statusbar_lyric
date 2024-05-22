.class Lcom/android/settings/LockScreenActionsSettings$3;
.super Ljava/lang/Object;
.source "LockScreenActionsSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/LockScreenActionsSettings;->setupLockScreenDeviceControl()V
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

    .line 118
    iput-object p1, p0, Lcom/android/settings/LockScreenActionsSettings$3;->this$0:Lcom/android/settings/LockScreenActionsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 121
    iget-object p1, p0, Lcom/android/settings/LockScreenActionsSettings$3;->this$0:Lcom/android/settings/LockScreenActionsSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p1, p2}, Lcom/android/settings/utils/StatusBarUtils;->setLockScreenDeviceControl(Landroid/content/Context;Z)V

    .line 122
    iget-object p0, p0, Lcom/android/settings/LockScreenActionsSettings$3;->this$0:Lcom/android/settings/LockScreenActionsSettings;

    invoke-static {p0}, Lcom/android/settings/LockScreenActionsSettings;->-$$Nest$mupdateLockScreenAllowTrivialControls(Lcom/android/settings/LockScreenActionsSettings;)V

    const/4 p0, 0x1

    return p0
.end method
