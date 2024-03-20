.class public final Lcom/android/systemui/contrast/ContrastDialogActivity;
.super Landroid/app/Activity;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final context:Landroid/content/Context;

.field public final mainExecutor:Ljava/util/concurrent/Executor;

.field public final secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public final uiModeManager:Landroid/app/UiModeManager;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/app/UiModeManager;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/util/settings/SecureSettings;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/contrast/ContrastDialogActivity;->context:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/contrast/ContrastDialogActivity;->mainExecutor:Ljava/util/concurrent/Executor;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/contrast/ContrastDialogActivity;->uiModeManager:Landroid/app/UiModeManager;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/contrast/ContrastDialogActivity;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/contrast/ContrastDialogActivity;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 13
    return-void
    .line 15
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    new-instance p1, Lcom/android/systemui/contrast/ContrastDialog;

    .line 5
    iget-object v1, p0, Lcom/android/systemui/contrast/ContrastDialogActivity;->context:Landroid/content/Context;

    .line 7
    iget-object v2, p0, Lcom/android/systemui/contrast/ContrastDialogActivity;->mainExecutor:Ljava/util/concurrent/Executor;

    .line 9
    iget-object v3, p0, Lcom/android/systemui/contrast/ContrastDialogActivity;->uiModeManager:Landroid/app/UiModeManager;

    .line 11
    iget-object v4, p0, Lcom/android/systemui/contrast/ContrastDialogActivity;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 13
    iget-object v5, p0, Lcom/android/systemui/contrast/ContrastDialogActivity;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 15
    move-object v0, p1

    .line 17
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/contrast/ContrastDialog;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/app/UiModeManager;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/util/settings/SecureSettings;)V

    .line 18
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 21
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 24
    return-void
    .line 27
.end method
