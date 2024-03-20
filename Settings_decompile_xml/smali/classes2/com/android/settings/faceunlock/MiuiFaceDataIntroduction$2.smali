.class Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction$2;
.super Ljava/lang/Object;
.source "MiuiFaceDataIntroduction.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;


# direct methods
.method constructor <init>(Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction$2;->this$0:Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 85
    iget-object p1, p0, Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction$2;->this$0:Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;

    invoke-static {p1}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->isSltOpen(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 86
    iget-object p0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction$2;->this$0:Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;

    sget p1, Lcom/android/settings/R$string;->face_enroll_when_slt_on_toast:I

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;II)V

    return-void

    .line 89
    :cond_0
    iget-object p1, p0, Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction$2;->this$0:Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;->-$$Nest$misDeviceProvisioned(Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-class p1, Lcom/android/settings/MiuiSecurityChooseUnlock$InternalActivity;

    goto :goto_0

    :cond_1
    const-class p1, Lcom/android/settings/ProvisionSetUpMiuiSecurityChooseUnlock$InternalActivity;

    .line 90
    :goto_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction$2;->this$0:Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "add_keyguard_password_then_add_face_recoginition"

    const/4 v1, 0x1

    .line 91
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, ":android:show_fragment_title"

    .line 92
    sget v2, Lcom/android/settings/R$string;->empty_title:I

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 93
    iget-object p0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction$2;->this$0:Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
