.class Lcom/android/settings/FullScreenDisplaySettings$LauncherPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "FullScreenDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/FullScreenDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LauncherPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/FullScreenDisplaySettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/FullScreenDisplaySettings;)V
    .locals 0

    .line 451
    iput-object p1, p0, Lcom/android/settings/FullScreenDisplaySettings$LauncherPackageMonitor;->this$0:Lcom/android/settings/FullScreenDisplaySettings;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/FullScreenDisplaySettings;Lcom/android/settings/FullScreenDisplaySettings$LauncherPackageMonitor-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/FullScreenDisplaySettings$LauncherPackageMonitor;-><init>(Lcom/android/settings/FullScreenDisplaySettings;)V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 0

    .line 460
    invoke-virtual {p0, p1}, Lcom/android/settings/FullScreenDisplaySettings$LauncherPackageMonitor;->onPackageModified(Ljava/lang/String;)V

    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z
    .locals 0

    .line 454
    invoke-virtual {p0, p1}, Lcom/android/settings/FullScreenDisplaySettings$LauncherPackageMonitor;->onPackageModified(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 470
    iget-object v0, p0, Lcom/android/settings/FullScreenDisplaySettings$LauncherPackageMonitor;->this$0:Lcom/android/settings/FullScreenDisplaySettings;

    invoke-static {v0, p1}, Lcom/android/settings/FullScreenDisplaySettings;->-$$Nest$misMatchDefaultHome(Lcom/android/settings/FullScreenDisplaySettings;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 471
    iget-object p1, p0, Lcom/android/settings/FullScreenDisplaySettings$LauncherPackageMonitor;->this$0:Lcom/android/settings/FullScreenDisplaySettings;

    invoke-static {p1}, Lcom/android/settings/FullScreenDisplaySettings;->-$$Nest$fgetmContext(Lcom/android/settings/FullScreenDisplaySettings;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/utils/Utils;->isRecentsWithinLauncher(Landroid/content/Context;)Z

    move-result p1

    .line 472
    iget-object v0, p0, Lcom/android/settings/FullScreenDisplaySettings$LauncherPackageMonitor;->this$0:Lcom/android/settings/FullScreenDisplaySettings;

    invoke-static {v0}, Lcom/android/settings/FullScreenDisplaySettings;->-$$Nest$fgetmIsRecentsWithinLauncher(Lcom/android/settings/FullScreenDisplaySettings;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 473
    iget-object v0, p0, Lcom/android/settings/FullScreenDisplaySettings$LauncherPackageMonitor;->this$0:Lcom/android/settings/FullScreenDisplaySettings;

    invoke-static {v0, p1}, Lcom/android/settings/FullScreenDisplaySettings;->-$$Nest$fputmIsRecentsWithinLauncher(Lcom/android/settings/FullScreenDisplaySettings;Z)V

    .line 474
    iget-object p1, p0, Lcom/android/settings/FullScreenDisplaySettings$LauncherPackageMonitor;->this$0:Lcom/android/settings/FullScreenDisplaySettings;

    invoke-static {p1}, Lcom/android/settings/FullScreenDisplaySettings;->-$$Nest$mupdateHideGesturePreference(Lcom/android/settings/FullScreenDisplaySettings;)V

    .line 475
    iget-object p0, p0, Lcom/android/settings/FullScreenDisplaySettings$LauncherPackageMonitor;->this$0:Lcom/android/settings/FullScreenDisplaySettings;

    invoke-static {p0}, Lcom/android/settings/FullScreenDisplaySettings;->-$$Nest$mupdateGestureLineOfNavBarGuideView(Lcom/android/settings/FullScreenDisplaySettings;)V

    :cond_0
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 0

    .line 465
    invoke-virtual {p0, p1}, Lcom/android/settings/FullScreenDisplaySettings$LauncherPackageMonitor;->onPackageModified(Ljava/lang/String;)V

    return-void
.end method
