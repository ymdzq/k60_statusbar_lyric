.class Lcom/android/settings/GxzwNewFingerprintFragment$8;
.super Ljava/lang/Object;
.source "GxzwNewFingerprintFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/GxzwNewFingerprintFragment;->showGxzwUserNotice()V
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

    .line 703
    iput-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment$8;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 707
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 708
    iget-object p0, p0, Lcom/android/settings/GxzwNewFingerprintFragment$8;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-virtual {p0}, Lcom/android/settings/BaseFragment;->finish()V

    return-void
.end method
