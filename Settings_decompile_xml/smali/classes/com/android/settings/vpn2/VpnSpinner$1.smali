.class Lcom/android/settings/vpn2/VpnSpinner$1;
.super Ljava/lang/Object;
.source "VpnSpinner.java"

# interfaces
.implements Lmiuix/appcompat/widget/Spinner$OnSpinnerDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/vpn2/VpnSpinner;->setSpinnerDisplayLocation(Landroid/view/ViewGroup;Lmiuix/appcompat/widget/Spinner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/vpn2/VpnSpinner;

.field final synthetic val$spinnerParent:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/android/settings/vpn2/VpnSpinner;Landroid/view/ViewGroup;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 110
    iput-object p1, p0, Lcom/android/settings/vpn2/VpnSpinner$1;->this$0:Lcom/android/settings/vpn2/VpnSpinner;

    iput-object p2, p0, Lcom/android/settings/vpn2/VpnSpinner$1;->val$spinnerParent:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpinnerDismiss()V
    .locals 1

    .line 113
    iget-object p0, p0, Lcom/android/settings/vpn2/VpnSpinner$1;->val$spinnerParent:Landroid/view/ViewGroup;

    filled-new-array {p0}, [Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p0

    invoke-interface {p0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p0, v0}, Lmiuix/animation/ITouchStyle;->touchUp([Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method
