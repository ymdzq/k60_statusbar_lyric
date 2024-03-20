.class Lcom/android/settings/GxzwNewFingerprintFragment$5;
.super Ljava/lang/Object;
.source "GxzwNewFingerprintFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/GxzwNewFingerprintFragment;->setContentDescription(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

.field final synthetic val$str:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/GxzwNewFingerprintFragment;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 638
    iput-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment$5;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    iput-object p2, p0, Lcom/android/settings/GxzwNewFingerprintFragment$5;->val$str:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 641
    iget-object v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment$5;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {v0}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmInstructionTitle(Lcom/android/settings/GxzwNewFingerprintFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/GxzwNewFingerprintFragment$5;->val$str:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method
