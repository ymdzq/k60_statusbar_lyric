.class Lcom/android/settings/MiuiStatusBarSettings$10;
.super Ljava/lang/Object;
.source "MiuiStatusBarSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MiuiStatusBarSettings;->setupNotificationStyle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiStatusBarSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiStatusBarSettings;)V
    .locals 0

    .line 423
    iput-object p1, p0, Lcom/android/settings/MiuiStatusBarSettings$10;->this$0:Lcom/android/settings/MiuiStatusBarSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 426
    iget-object p1, p0, Lcom/android/settings/MiuiStatusBarSettings$10;->this$0:Lcom/android/settings/MiuiStatusBarSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/android/settings/utils/Utils;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/settings/utils/StatusBarUtils;->setNotificationStyle(Landroid/content/Context;I)V

    .line 427
    iget-object p0, p0, Lcom/android/settings/MiuiStatusBarSettings$10;->this$0:Lcom/android/settings/MiuiStatusBarSettings;

    invoke-static {p0}, Lcom/android/settings/MiuiStatusBarSettings;->-$$Nest$mupdateNotificationStyle(Lcom/android/settings/MiuiStatusBarSettings;)V

    const/4 p0, 0x1

    return p0
.end method
