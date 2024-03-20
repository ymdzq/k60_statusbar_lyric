.class Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment$6;
.super Ljava/lang/Object;
.source "MiuiSecurityCommonSettings.java"

# interfaces
.implements Lcom/android/settings/faceunlock/FaceRemoveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;)V
    .locals 0

    .line 608
    iput-object p1, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment$6;->this$0:Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 2

    const-string/jumbo v0, "miui_face"

    const-string/jumbo v1, "remove all face failed"

    .line 611
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    iget-object p0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment$6;->this$0:Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;

    invoke-static {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->-$$Nest$mremoveBiometricResult(Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;)V

    return-void
.end method

.method public onRemoved()V
    .locals 2

    const-string/jumbo v0, "miui_face"

    const-string/jumbo v1, "remove all face success"

    .line 617
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    iget-object p0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment$6;->this$0:Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;

    invoke-static {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->-$$Nest$mremoveBiometricResult(Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;)V

    return-void
.end method
