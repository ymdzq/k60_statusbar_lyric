.class Lcom/android/settings/MiuiTetherSettings$12;
.super Ljava/lang/Object;
.source "MiuiTetherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MiuiTetherSettings;->showSharePasswordDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiTetherSettings;

.field final synthetic val$lp:Landroid/view/WindowManager$LayoutParams;

.field final synthetic val$originalScreenBrightness:F

.field final synthetic val$window:Landroid/view/Window;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiTetherSettings;Landroid/view/WindowManager$LayoutParams;FLandroid/view/Window;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1114
    iput-object p1, p0, Lcom/android/settings/MiuiTetherSettings$12;->this$0:Lcom/android/settings/MiuiTetherSettings;

    iput-object p2, p0, Lcom/android/settings/MiuiTetherSettings$12;->val$lp:Landroid/view/WindowManager$LayoutParams;

    iput p3, p0, Lcom/android/settings/MiuiTetherSettings$12;->val$originalScreenBrightness:F

    iput-object p4, p0, Lcom/android/settings/MiuiTetherSettings$12;->val$window:Landroid/view/Window;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1117
    iget-object p1, p0, Lcom/android/settings/MiuiTetherSettings$12;->val$lp:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const v1, 0x3f4ccccd    # 0.8f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 1118
    iget v0, p0, Lcom/android/settings/MiuiTetherSettings$12;->val$originalScreenBrightness:F

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 1119
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings$12;->val$window:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1121
    :cond_0
    iget-object p0, p0, Lcom/android/settings/MiuiTetherSettings$12;->val$window:Landroid/view/Window;

    const/16 p1, 0x80

    invoke-virtual {p0, p1}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method
