.class Lcom/android/settings/GxzwNewFingerprintFragment$11;
.super Ljava/lang/Object;
.source "GxzwNewFingerprintFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/android/settings/GxzwNewFingerprintFragment;)V
    .locals 0

    .line 762
    iput-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment$11;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 766
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 767
    iget-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment$11;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$mshowGxzwTips(Lcom/android/settings/GxzwNewFingerprintFragment;Z)V

    .line 768
    iget-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment$11;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {p1}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmFingerprintHelper(Lcom/android/settings/GxzwNewFingerprintFragment;)Lcom/android/settings/FingerprintHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/GxzwNewFingerprintFragment$11;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {p2}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmFingerprintAddistener(Lcom/android/settings/GxzwNewFingerprintFragment;)Lcom/android/settings/FingerprintAddListener;

    move-result-object p2

    iget-object p0, p0, Lcom/android/settings/GxzwNewFingerprintFragment$11;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {p0}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmChallengeToken(Lcom/android/settings/GxzwNewFingerprintFragment;)[B

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/android/settings/FingerprintHelper;->startEnrol(Lcom/android/settings/FingerprintAddListener;[B)V

    return-void
.end method
