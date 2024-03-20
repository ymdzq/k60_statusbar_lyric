.class Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment$6;
.super Ljava/lang/Object;
.source "MiuiSecurityBluetoothMatchDeviceFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->switchToSucceedLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)V
    .locals 0

    .line 591
    iput-object p1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment$6;->this$0:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 597
    iget-object p0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment$6;->this$0:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-static {p0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->-$$Nest$fgetmBluetoothDeviceConfirmed(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)Landroid/widget/ImageView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .line 0
    return-void
.end method
