.class Lcom/android/settings/KeyguardPasswordSlidingGuideActivity$2;
.super Ljava/lang/Object;
.source "KeyguardPasswordSlidingGuideActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity$2;->this$0:Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 99
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 100
    iget-object v0, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity$2;->this$0:Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;

    invoke-static {v0}, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;->-$$Nest$fgetmKey(Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "key"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    iget-object v0, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity$2;->this$0:Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 102
    iget-object p0, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideActivity$2;->this$0:Lcom/android/settings/KeyguardPasswordSlidingGuideActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
