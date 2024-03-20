.class Lcom/android/settings/MiuiUtils$1;
.super Ljava/lang/Object;
.source "MiuiUtils.java"

# interfaces
.implements Lmiuix/appcompat/widget/Spinner$OnSpinnerDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MiuiUtils;->setSpinnerDisplayLocation(Lmiuix/appcompat/widget/Spinner;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiUtils;

.field final synthetic val$spinnerParent:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiUtils;Landroid/view/ViewGroup;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 599
    iput-object p1, p0, Lcom/android/settings/MiuiUtils$1;->this$0:Lcom/android/settings/MiuiUtils;

    iput-object p2, p0, Lcom/android/settings/MiuiUtils$1;->val$spinnerParent:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpinnerDismiss()V
    .locals 3

    .line 602
    iget-object v0, p0, Lcom/android/settings/MiuiUtils$1;->val$spinnerParent:Landroid/view/ViewGroup;

    filled-new-array {v0}, [Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, v2}, Lmiuix/animation/ITouchStyle;->touchUp([Lmiuix/animation/base/AnimConfig;)V

    .line 603
    iget-object p0, p0, Lcom/android/settings/MiuiUtils$1;->val$spinnerParent:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    return-void
.end method
