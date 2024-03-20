.class Lcom/android/settings/GxzwNewFingerprintFragment$12;
.super Ljava/lang/Object;
.source "GxzwNewFingerprintFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/GxzwNewFingerprintFragment;->showGxzwGuideDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

.field final synthetic val$alertDialog:Lmiuix/appcompat/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/GxzwNewFingerprintFragment;Lmiuix/appcompat/app/AlertDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 774
    iput-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment$12;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    iput-object p2, p0, Lcom/android/settings/GxzwNewFingerprintFragment$12;->val$alertDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 777
    iget-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment$12;->val$alertDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 779
    iget-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment$12;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$mupdateNeedShowGxzwGuide(Lcom/android/settings/GxzwNewFingerprintFragment;Z)V

    .line 781
    :cond_0
    iget-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment$12;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {p1}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$mhideNavigationBar(Lcom/android/settings/GxzwNewFingerprintFragment;)V

    .line 782
    iget-object p0, p0, Lcom/android/settings/GxzwNewFingerprintFragment$12;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fputmCurrentShowingDialog(Lcom/android/settings/GxzwNewFingerprintFragment;Lmiuix/appcompat/app/AlertDialog;)V

    return-void
.end method
