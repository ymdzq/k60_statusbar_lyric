.class Lcom/android/settings/LockScreenActionsSettings$1;
.super Ljava/lang/Object;
.source "LockScreenActionsSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/LockScreenActionsSettings;->setupLockScreenNotification()V
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

    .line 65
    iput-object p1, p0, Lcom/android/settings/LockScreenActionsSettings$1;->this$0:Lcom/android/settings/LockScreenActionsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/settings/LockScreenActionsSettings$1;->this$0:Lcom/android/settings/LockScreenActionsSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Landroid/app/MiuiStatusBarManager;->setExpandableUnderKeyguard(Landroid/content/Context;Z)V

    const/4 p0, 0x1

    return p0
.end method
