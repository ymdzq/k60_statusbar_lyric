.class Lcom/android/settings/display/PageLayoutFragment$1;
.super Ljava/lang/Object;
.source "PageLayoutFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/display/PageLayoutFragment;->addRecommendView(Ljava/lang/CharSequence;Landroid/content/Intent;)Landroid/widget/RelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/PageLayoutFragment;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/settings/display/PageLayoutFragment;Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 726
    iput-object p1, p0, Lcom/android/settings/display/PageLayoutFragment$1;->this$0:Lcom/android/settings/display/PageLayoutFragment;

    iput-object p2, p0, Lcom/android/settings/display/PageLayoutFragment$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 729
    iget-object p1, p0, Lcom/android/settings/display/PageLayoutFragment$1;->this$0:Lcom/android/settings/display/PageLayoutFragment;

    invoke-static {p1}, Lcom/android/settings/display/PageLayoutFragment;->-$$Nest$fgetmContext(Lcom/android/settings/display/PageLayoutFragment;)Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/display/PageLayoutFragment$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
