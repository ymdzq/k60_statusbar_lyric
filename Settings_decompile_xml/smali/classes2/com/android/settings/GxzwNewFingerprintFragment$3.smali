.class Lcom/android/settings/GxzwNewFingerprintFragment$3;
.super Ljava/lang/Object;
.source "GxzwNewFingerprintFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/GxzwNewFingerprintFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/GxzwNewFingerprintFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/GxzwNewFingerprintFragment;)V
    .locals 0

    .line 447
    iput-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment$3;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 450
    iget-object v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment$3;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {v0}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmActivity(Lcom/android/settings/GxzwNewFingerprintFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->isShowDialogToAddFace(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment$3;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {v0}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmActivity(Lcom/android/settings/GxzwNewFingerprintFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$misDeviceProvisioned(Lcom/android/settings/GxzwNewFingerprintFragment;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    iget-object p0, p0, Lcom/android/settings/GxzwNewFingerprintFragment$3;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {p0}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmActivity(Lcom/android/settings/GxzwNewFingerprintFragment;)Landroid/app/Activity;

    move-result-object p0

    sget v0, Lcom/android/settings/R$style;->AlertDialog_Theme_Dark:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->showDialogToAddFace(Landroid/app/Activity;[BIZ)V

    :cond_0
    return-void
.end method
